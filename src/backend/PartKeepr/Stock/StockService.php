<?php
namespace PartKeepr\Stock;

use PartKeepr\Stock\StockEntry,
	PartKeepr\PartKeepr,
	PartKeepr\User\User,
	PartKeepr\Manager\ManagerFilter,
	PartKeepr\Session\SessionManager,
	PartKeepr\Service\RestfulService,
	PartKeepr\Service\Service;

class StockService extends Service implements RestfulService {
	/**
	 * (non-PHPdoc)
	 * @see PartKeepr\Service.RestfulService::get()
	 */
	public function get () {
		if ($this->hasParameter("id")) {
			return array("data" => StockManager::getInstance()->getEntity($this->getParameter("id"))->serialize());
		} else {
			$parameters = new ManagerFilter($this);
			$parameters->setFilterField("name");
			
			if ($this->hasParameter("part")) {
				$parameters->setFilterCallback(array($this, "filterCallback"));
			}
			return StockManager::getInstance()->getList($parameters);
		}
	}
	
	/**
	 * If the "part" parameter is set, join the part into the result and filter on that 
	 * @param QueryBuilder The $queryBuilder
	 */
	public function filterCallback ($queryBuilder) {
		$queryBuilder->andWhere("q.part = :part");
		$queryBuilder->setParameter("part", $this->getParameter("part"));
	}
	
	public function create () {
		throw new \Exception("Not yet implemented");
	}
	
	/**
	 * (non-PHPdoc)
	 * @see PartKeepr\Service.RestfulService::update()
	 */
	public function update () {
		$this->requireParameter("id");
		
		$stockEntry = StockEntry::loadById($this->getParameter("id"));
		
		if (!SessionManager::getCurrentSession()->getUser()->isAdmin() &&
			!(SessionManager::getCurrentSession()->getUser() && $stockEntry->getUser() && SessionManager::getCurrentSession()->getUser()->getId() == $stockEntry->getUser()->getId() )) {
			throw new \Exception("Permission denied");
		}
		
		/* It's not allowed to edit a price for a removal */
		if (!$stockEntry->isRemoval()) {
			$stockEntry->setPrice(abs($this->getParameter("price")));
		}
		
		/**
		 * Only an admin user may correct the in&out stock levels
		 */
		if (SessionManager::getCurrentSession()->getUser()->isAdmin()) {
			if ($this->getParameter("direction") == "out") {
				$stockEntry->setStockLevel(-(abs($this->getParameter("stockLevel"))));
			} else {
				$stockEntry->setStockLevel($this->getParameter("stockLevel"));
			}
			
		}
		
		if (SessionManager::getCurrentSession()->getUser()->isAdmin()) {
			try {
				$stockEntry->setUser(User::loadById($this->getParameter("user_id")));
			} catch (\Exception $e) {
				$stockEntry->setUser(null);
			}
			
		}
		
		$stockEntry->setComment($this->getParameter("comment"));
		PartKeepr::getEM()->flush();
		
		return array("data" => $stockEntry->serialize());
	}
	
	public function destroy () {
		throw new \Exception("Not yet implemented");
	} 
}