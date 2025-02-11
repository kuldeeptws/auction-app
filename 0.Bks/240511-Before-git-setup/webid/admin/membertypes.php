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

if (isset($_POST['action']) && $_POST['action'] = 'update') {
    $old_membertypes = $_POST['old_membertypes'];
    $new_membertypes = $_POST['new_membertypes'];
    $new_membertype = $_POST['new_membertype'];

    // delete with the deletes
    if (isset($_POST['delete']) && is_array($_POST['delete'])) {
        $idslist = implode(',', $_POST['delete']);
        $query = "DELETE FROM " . $DBPrefix . "membertypes WHERE id IN (:idslist)";
        $params = array();
        $params[] = array(':idslist', $idslist, 'str');
        $db->query($query, $params);
    }

    // now update everything else
    if (is_array($old_membertypes)) {
        foreach ($old_membertypes as $id => $val) {
            if ($val != $new_membertypes[$id]) {
                $query = "UPDATE " . $DBPrefix . "membertypes SET
                          feedbacks = :feedbacks,
                          icon = :icon
                          WHERE id = :id";
                $params = array();
                $params[] = array(':feedbacks', $new_membertypes[$id]['feedbacks'], 'int');
                $params[] = array(':icon', $new_membertypes[$id]['icon'], 'str');
                $params[] = array(':id', $id, 'int');
                $db->query($query, $params);
            }
        }
    }

    // If a new membertype was added, insert it into database
    if (!empty($new_membertype['feedbacks'])) {
        $query = "INSERT INTO " . $DBPrefix . "membertypes VALUES (NULL, :feedbacks, :icon);";
        $params = array();
        $params[] = array(':feedbacks', $new_membertype['feedbacks'], 'int');
        $params[] = array(':icon', $new_membertype['icon'], 'str');
        $db->query($query, $params);
    }
    $template->assign_block_vars('alerts', array('TYPE' => 'success', 'MESSAGE' => $MSG['member_types_updates']));
}

$query = "SELECT id, feedbacks, icon FROM " . $DBPrefix . "membertypes ORDER BY feedbacks DESC;";
$db->direct_query($query);
while ($membertype = $db->fetch()) {
    $template->assign_block_vars('mtype', array(
            'ID' => $membertype['id'],
            'FEEDBACK' => $membertype['feedbacks'],
            'ICON' => $membertype['icon']
            ));
}

include 'header.php';
$template->set_filenames(array(
        'body' => 'membertypes.tpl'
        ));
$template->display('body');

include 'footer.php';
