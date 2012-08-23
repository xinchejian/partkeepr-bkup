<?php
namespace PartKeepr\Tests;

use PartKeepr\PartCategory\PartCategoryManager,
	PartKeepr\PartKeepr,
	PartKeepr\User\User;

include(dirname(__DIR__). "/src/backend/PartKeepr/PartKeepr.php");

/**
 * Initializes a bootstrapped PartKeepr environment.
 * 
 * This is done within a function because we don't want to pollute the globals, which would give the following message
 * during unit tests:
 * 
 * "PDOException: You cannot serialize or unserialize PDO instances"
 */
function initializeEnvironment () {
	PartKeepr::initialize("test");
	
	$tool = new \Doctrine\ORM\Tools\SchemaTool(PartKeepr::getEM());
	$classes = PartKeepr::getClassMetaData();
	
	$tool->dropDatabase();
	$tool->createSchema($classes);
	
	/* Some very basic installation things */
	PartCategoryManager::getInstance()->ensureRootExists();
	
	/* Create a blank admin user */
	$user = new User();
	$user->setUsername("admin");
	$user->setPassword("admin");
	$user->setAdmin(true);
	
	PartKeepr::getEM()->persist($user);
	
	/* Create a blank regular user */
	$user2 = new User();
	$user2->setUsername("regular");
	$user2->setPassword("regular");
	$user2->setAdmin(false);
	
	PartKeepr::getEM()->persist($user2);
	
	PartKeepr::getEM()->flush();
}

initializeEnvironment();