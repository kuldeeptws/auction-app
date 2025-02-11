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
$current_page = 'tools';
include '../common.php';
include INCLUDE_PATH . 'functions_admin.php';
include 'loggedin.inc.php';

$type = (isset($_GET['type'])) ? $_GET['type'] : 'distinct';

if (isset($_POST['action']) && $_POST['action'] == 'clearlog') {
    $query = "DELETE FROM " . $DBPrefix . "logs WHERE type = 'error'";
    $db->direct_query($query);

    $template->assign_block_vars('alerts', array('TYPE' => 'success', 'MESSAGE' => $MSG['error_log_purged']));
}

$data = '';
if ($type == 'distinct') {
    $query = "SELECT DISTINCT(message) FROM " . $DBPrefix . "logs WHERE type = 'error'";
    $db->direct_query($query);
    while ($row = $db->fetch()) {
        $data .= $row['message'] . '<br>';
    }
} else {
    $query = "SELECT * FROM " . $DBPrefix . "logs WHERE type = 'error'";
    $db->direct_query($query);
    while ($row = $db->fetch()) {
        $data .= '<strong>' . $dt->printDateTz($row['timestamp']) . '</strong>: ' . $row['message'] . '<br>';
    }
}

if ($data == '') {
    $data = $MSG['error_log_empty'];
}

$template->assign_vars(array(
        'SITEURL' => $system->SETTINGS['siteurl'],
        'TYPE' => $type,
        'ERRORLOG' => $data
        ));

include 'header.php';
$template->set_filenames(array(
        'body' => 'errorlog.tpl'
        ));
$template->display('body');
include 'footer.php';
