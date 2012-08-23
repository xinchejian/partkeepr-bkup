<?php

namespace Proxies\__CG__\PartKeepr\SiPrefix;

/**
 * THIS CLASS WAS GENERATED BY THE DOCTRINE ORM. DO NOT EDIT THIS FILE.
 */
class SiPrefix extends \PartKeepr\SiPrefix\SiPrefix implements \Doctrine\ORM\Proxy\Proxy
{
    private $_entityPersister;
    private $_identifier;
    public $__isInitialized__ = false;
    public function __construct($entityPersister, $identifier)
    {
        $this->_entityPersister = $entityPersister;
        $this->_identifier = $identifier;
    }
    /** @private */
    public function __load()
    {
        if (!$this->__isInitialized__ && $this->_entityPersister) {
            $this->__isInitialized__ = true;

            if (method_exists($this, "__wakeup")) {
                // call this after __isInitialized__to avoid infinite recursion
                // but before loading to emulate what ClassMetadata::newInstance()
                // provides.
                $this->__wakeup();
            }

            if ($this->_entityPersister->load($this->_identifier, $this) === null) {
                throw new \Doctrine\ORM\EntityNotFoundException();
            }
            unset($this->_entityPersister, $this->_identifier);
        }
    }

    /** @private */
    public function __isInitialized()
    {
        return $this->__isInitialized__;
    }

    
    public function setPrefix($prefix)
    {
        $this->__load();
        return parent::setPrefix($prefix);
    }

    public function getPrefix()
    {
        $this->__load();
        return parent::getPrefix();
    }

    public function setSymbol($symbol)
    {
        $this->__load();
        return parent::setSymbol($symbol);
    }

    public function getSymbol()
    {
        $this->__load();
        return parent::getSymbol();
    }

    public function setPower($power)
    {
        $this->__load();
        return parent::setPower($power);
    }

    public function getPower()
    {
        $this->__load();
        return parent::getPower();
    }

    public function serialize()
    {
        $this->__load();
        return parent::serialize();
    }

    public function getId()
    {
        if ($this->__isInitialized__ === false) {
            return (int) $this->_identifier["id"];
        }
        $this->__load();
        return parent::getId();
    }

    public function deserializeChildren(array $sourceArray, \Doctrine\Common\Collections\Collection $collection, $entityClass)
    {
        $this->__load();
        return parent::deserializeChildren($sourceArray, $collection, $entityClass);
    }

    public function serializeChildren(\Doctrine\Common\Collections\Collection $array)
    {
        $this->__load();
        return parent::serializeChildren($array);
    }


    public function __sleep()
    {
        return array('__isInitialized__', 'id', 'prefix', 'symbol', 'power');
    }

    public function __clone()
    {
        if (!$this->__isInitialized__ && $this->_entityPersister) {
            $this->__isInitialized__ = true;
            $class = $this->_entityPersister->getClassMetadata();
            $original = $this->_entityPersister->load($this->_identifier);
            if ($original === null) {
                throw new \Doctrine\ORM\EntityNotFoundException();
            }
            foreach ($class->reflFields AS $field => $reflProperty) {
                $reflProperty->setValue($this, $reflProperty->getValue($original));
            }
            unset($this->_entityPersister, $this->_identifier);
        }
        
    }
}