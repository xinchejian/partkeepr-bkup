<?php
namespace PartKeepr\Unit;

use PartKeepr\Util\Singleton,
	PartKeepr\PartKeepr,
	PartKeepr\Unit\Exceptions\UnitNotFoundException;

class UnitManager extends Singleton {
	public function getUnits ($start = 0, $limit = 10, $sort = "name", $dir = "asc", $filter = "") {
			
		$qb = PartKeepr::getEM()->createQueryBuilder();
		$qb->select("u.id, u.name, u.symbol")->from("PartKeepr\Unit\Unit","u");

		if ($filter != "") {
			$qb = $qb->where("LOWER(u.name) LIKE :filter");
			$qb->setParameter("filter", "%".strtolower($filter)."%");
		}
				
		if ($limit > -1) {
			$qb->setMaxResults($limit);
			$qb->setFirstResult($start);
		}
		
		$qb->orderBy("u.".$sort, $dir);
		
		$query = $qb->getQuery();
		
		$result = $query->getResult();
		
		$totalQueryBuilder = PartKeepr::getEM()->createQueryBuilder();
		$totalQueryBuilder->select("COUNT(u.id)")->from("PartKeepr\Unit\Unit","u");
		
		
		
		if ($filter != "") {
			$totalQueryBuilder = $totalQueryBuilder->where("LOWER(u.name) LIKE :filter");
			$totalQueryBuilder->setParameter("filter", "%".strtolower($filter)."%");
		}
		
		$totalQuery = $totalQueryBuilder->getQuery();
		
		foreach ($result as $key => $value) {
			$result[$key]["prefixes"] = $this->getSiPrefixes($value["id"]);
		}
		
		return array("data" => $result, "totalCount" => $totalQuery->getSingleScalarResult());
	}
	
	public function getSiPrefixes ($id) {
		$unit = UnitManager::getInstance()->getUnit($id);
		
		$aData = array();
		
		foreach ($unit->getPrefixes() as $prefix) {
			$aData[] = $prefix->serialize();	
		}
		
		return array("response" => array("totalCount" => count($aData), "data" => $aData));
	}
	
	public function getUnitByName ($name) {
		$dql = "SELECT u FROM PartKeepr\Unit\Unit u WHERE u.name = :name";
		$query = PartKeepr::getEM()->createQuery($dql);
		$query->setParameter("name", $name);
		
		return $query->getSingleResult();
	}
	
	public function unitExists ($name) {
		$dql = "SELECT COUNT(u) FROM PartKeepr\Unit\Unit u WHERE u.name = :name";
		$query = PartKeepr::getEM()->createQuery($dql);
		$query->setParameter("name", $name);
	
		if ($query->getSingleScalarResult() == 0) {
			return false;
		} else {
			return true;
		}
	}
	
	public function getUnit ($id) {
		$unit = PartKeepr::getEM()->find("PartKeepr\Unit\Unit", $id);
		
		if ($unit) {
			return $unit;
		} else {
			throw new UnitNotFoundException();
		}
	}
	
	public function deleteUnit ($id) {
		$unit = $this->getUnit($id);
		
		PartKeepr::getEM()->remove($unit);
		PartKeepr::getEM()->flush();
	}
	

}