<?php
/***************************************************************************
 *   copyright				: (C) 2008 - 2017 WeBid
 *   site					: http://webidsupport.4up.eu/
 ***************************************************************************/

/***************************************************************************
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 2 of the License, or
 *   (at your option) any later version. Although none of the code may be
 *   sold. If you have been sold this script, get a refund.
 ***************************************************************************/

define('InAdmin', 1);
$current_page = 'settings';
include '../common.php';
include INCLUDE_PATH . 'functions_admin.php';
include 'loggedin.inc.php';

if (isset($_POST['action']) && $_POST['action'] == 'update') {
    // clean submission and update database
    $system->writesetting("catsorting", $system->cleanvars($_POST['catsorting']), "str");
    $system->writesetting("catstoshow", $_POST['catstoshow'], "int");

    $template->assign_block_vars('alerts', array('TYPE' => 'success', 'MESSAGE' => $MSG['category_sorting_updated']));
}

loadblock('', $MSG['category_sorting_explain'], 'sortstacked', 'catsorting', $system->SETTINGS['catsorting'], array($MSG['category_sorting_alpha'], $MSG['category_sorting_count']));
loadblock($MSG['categories_to_show'], $MSG['categories_to_show_explain'], 'percent', 'catstoshow', $system->SETTINGS['catstoshow']);

$template->assign_vars(array(
        'SITEURL' => $system->SETTINGS['siteurl'],
        'TYPENAME' => $MSG['25_0008'],
        'PAGENAME' => $MSG['category_sorting']
        ));

include 'header.php';
$template->set_filenames(array(
        'body' => 'adminpages.tpl'
        ));
$template->display('body');
include 'footer.php';
