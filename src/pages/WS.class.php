<?php
/**
 * WS.class.php file.
 * This file contains the sourcecode of the WebService abstract class.
 * @package FMB
 * @subpackage Pages
 * @author Benjamin SANS <ziirish@ziirish.info>
 * @version 0.1b
 */
namespace FMB\Pages;
use FMB\Core\Core;
use FMB\Pages\PageInterface;
use FMB\Plugins\PluginEngine;

// Loading required files.
Core::loadFile('src/pages/WS.interface.php', true);

/**
 * WS abstract class.
 * This class is the master class of all AKG WS.
 * @package FMB
 * @subpackage Pages
 * @author Benjamin SANS <ziirish@ziirish.info>
 * @version 0.1b
 * @abstract
 */
abstract class WS implements WSInterface
{
/**
 * @var string Page type.
 * @access public
 */
        public $type;

/**
 * @var string Page title.
 * @access public
 */
        public $title;

/**
 * @var class Template plugin instance.
 * @access public
 */
        public $tpl;

/**
 * @var class Database plugin instance.
 * @access public
 */
        public $db;

        public function __construct($type)
        {
                $this->type = $type;

                $fmbPluginEngine = PluginEngine::getInstance();
                $this->tpl = $fmbPluginEngine->getTemplatePlugin();
                $this->db = $fmbPluginEngine->getDatabasePlugin();
        }
}
