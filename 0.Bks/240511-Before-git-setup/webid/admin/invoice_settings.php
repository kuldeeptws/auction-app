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
$current_page = 'fees';
include '../common.php';
include INCLUDE_PATH . 'functions_admin.php';
include 'loggedin.inc.php';

if (isset($_POST['action']) && $_POST['action'] == 'update') {
    // clean submission and update database
    $system->writesetting("invoice_yellow_line", $system->cleanvars($_POST['invoice_yellow_line']), "str");
    $system->writesetting("invoice_thankyou", $system->cleanvars($_POST['invoice_thankyou']), "str");
    $template->assign_block_vars('alerts', array('TYPE' => 'success', 'MESSAGE' => $MSG['invoice_settings_updated']));
}

loadblock($MSG['invoice_notice'], $MSG['invoice_notice_explain'], 'textarea', 'invoice_yellow_line', $system->SETTINGS['invoice_yellow_line']);
loadblock($MSG['invoice_end_msg'], $MSG['invoice_end_msg_explain'], 'textarea', 'invoice_thankyou', $system->SETTINGS['invoice_thankyou']);

$template->assign_vars(array(
        'SITEURL' => $system->SETTINGS['siteurl'],
        'TYPENAME' => $MSG['25_0012'],
        'PAGENAME' => $MSG['invoice_settings']
        ));

include 'header.php';
$template->set_filenames(array(
        'body' => 'adminpages.tpl'
        ));
$template->display('body');
include 'footer.php';
