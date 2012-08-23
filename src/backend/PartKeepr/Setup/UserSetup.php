<?php
namespace PartKeepr\Setup;

use PartKeepr\User\User;

/**
 * Creates a new admin user, but only if no admin user exists.
 */
class UserSetup extends AbstractSetup {
	public function run () {
		$dql = "SELECT COUNT(u) FROM PartKeepr\User\User u WHERE u.username = :username OR u.admin = :admin";
		$query = $this->entityManager->createQuery($dql);
		$query->setParameter("username", "admin");
		$query->setParameter("admin", true);
		
		if ($query->getSingleScalarResult() == 0) {
			$user = new User();
			$user->setUsername("admin");
			$user->setPassword("admin");
			$user->setAdmin(true);
			
			$this->entityManager->persist($user);
			$this->entityManager->flush();
			
			$this->logMessage("Admin User created");
		} else {
			$this->logMessage(	"Skipped admin user creation, because an user named 'admin'".
								"or another user with an admin flag already exists");
		}
	}
}