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
$current_page = 'contents';
include '../common.php';
include INCLUDE_PATH . 'functions_admin.php';
include 'loggedin.inc.php';
include PACKAGE_PATH . 'ckeditor/ckeditor.php';

if (isset($_POST['action']) && $_POST['action'] == 'update') {
    // clean submission
    $system->writesetting("privacypolicy", ynbool($_POST['privacypolicy']), "str");
    $system->writesetting("privacypolicytext", $system->cleanvars($_POST['privacypolicytext'], true), "str");

    $template->assign_block_vars('alerts', array('TYPE' => 'success', 'MESSAGE' => $MSG['privacy_policy_updated']));
}
loadblock($MSG['enable_privacy_policy'], $MSG['enable_privacy_policy_explain'], 'yesno', 'privacypolicy', $system->SETTINGS['privacypolicy'], array($MSG['yes'], $MSG['no']));

$CKEditor = new CKEditor();
$CKEditor->basePath = $system->SETTINGS['siteurl'] . '/js/ckeditor/';
$CKEditor->returnOutput = true;
$CKEditor->config['width'] = 550;
$CKEditor->config['height'] = 400;

loadblock($MSG['privacy_policy_content'], $MSG['editor_help'], $CKEditor->editor('privacypolicytext', $system->SETTINGS['privacypolicytext']));

$template->assign_vars(array(
        'SITEURL' => $system->SETTINGS['siteurl'],
        'TYPENAME' => $MSG['25_0018'],
        'PAGENAME' => $MSG['privacy_policy']
        ));

include 'header.php';
$template->set_filenames(array(
        'body' => 'adminpages.tpl'
        ));
$template->display('body');
include 'footer.php';
