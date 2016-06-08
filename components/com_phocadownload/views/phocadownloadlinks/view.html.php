<?php
/*
 * @package		Joomla.Framework
 * @copyright	Copyright (C) 2005 - 2010 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 *
 * @component Phoca Component
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU General Public License version 2 or later;
 */
defined('_JEXEC') or die();
jimport( 'joomla.application.component.view' );
 
class phocaDownloadViewphocaDownloadLinks extends JViewLegacy
{
	function display($tpl = null) {
		$app	= JFactory::getApplication();
		
		//Frontend Changes
		$tUri = '';
		if (!$app->isAdmin()) {
			$tUri = JURI::base();
			require_once( JPATH_ADMINISTRATOR.DS.'components'.DS.'com_phocadownload'.DS.'helpers'.DS.'phocadownload.php' );
		}
		
		$document	=& JFactory::getDocument();
		$uri		=& JFactory::getURI();
		JHTML::stylesheet( 'administrator/components/com_phocadownload/assets/phocadownload.css' );
		
		$eName	= $app->input->get('e_name');
		$eName	= preg_replace( '#[^A-Z0-9\-\_\[\]]#i', '', $eName );
		
		
		$this->t['linkcategories']	= $tUri.'index.php?option=com_phocadownload&amp;view=phocadownloadlinkcats&amp;tmpl=component&amp;e_name='.$eName;
		$this->t['linkcategory']	= $tUri.'index.php?option=com_phocadownload&amp;view=phocadownloadlinkcat&amp;tmpl=component&amp;e_name='.$eName;
		$this->t['linkfile']		= $tUri.'index.php?option=com_phocadownload&amp;view=phocadownloadlinkfile&amp;tmpl=component&amp;e_name='.$eName;
		$this->t['linkytb']		= $tUri.'index.php?option=com_phocadownload&amp;view=phocadownloadlinkytb&amp;tmpl=component&amp;e_name='.$eName;
		
		$this->assignRef('tmpl',	$this->t);
		parent::display($tpl);
	}
}
?>