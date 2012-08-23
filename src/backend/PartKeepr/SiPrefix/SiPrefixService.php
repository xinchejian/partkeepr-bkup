<?php
namespace PartKeepr\SiPrefix;

use PartKeepr\Service\RestfulService,
	PartKeepr\Service\Service,
	PartKeepr\PartKeepr,
	PartKeepr\Session\SessionManager;

class SiPrefixService extends Service implements RestfulService {
		public function get () {
			$query = PartKeepr::getEM()->createQuery("SELECT si.id, si.prefix, si.symbol, si.power FROM PartKeepr\SiPrefix\SiPrefix si");
			
			return array("data" => $query->getArrayResult());
	}
	
	public function create () {
		throw new \Exception("Not yet implemented");
	}
	
	public function update () {
		throw new \Exception("Not yet implemented");
	}
	
	public function destroy () {
		throw new \Exception("Not yet implemented");
	}
}
