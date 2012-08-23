<?php
/**
 * Updates the tip of the day title index.
 * Typically scheduled once or twice a day.
 * 
 * The API to retrieve tips has an upper limit of 500 requests/day, so don't schedule this each minute.
 * 
 * @author felicitus
 *
 */
namespace PartKeepr\Cronjobs;

include(__DIR__."/../src/backend/PartKeepr/PartKeepr.php");

use PartKeepr\PartKeepr,
	PartKeepr\TipOfTheDay\TipOfTheDay,
	PartKeepr\CronLogger\CronLoggerManager;

PartKeepr::initialize();

TipOfTheDay::syncTips();

CronLoggerManager::getInstance()->markCronRun(basename(__FILE__));