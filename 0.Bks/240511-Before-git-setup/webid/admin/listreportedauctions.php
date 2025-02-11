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
$current_page = 'auctions';
include '../common.php';
include INCLUDE_PATH . 'functions_admin.php';
include 'loggedin.inc.php';

// check if looking for users auctions
$uid = isset($_GET['uid']) ? intval($_GET['uid']) : 0;
$user_sql = isset($_GET['uid']) ? " AND a.user = " . $uid : '';

// Set offset and limit for pagination
if (isset($_GET['PAGE']) && is_numeric($_GET['PAGE'])) {
    $PAGE = intval($_GET['PAGE']);
    $OFFSET = ($PAGE - 1) * $system->SETTINGS['perpage'];
} elseif (isset($_SESSION['RETURN_LIST_OFFSET']) && $_SESSION['RETURN_LIST'] == 'listreportedauctions.php') {
    $PAGE = intval($_SESSION['RETURN_LIST_OFFSET']);
    $OFFSET = ($PAGE - 1) * $system->SETTINGS['perpage'];
} else {
    $OFFSET = 0;
    $PAGE = 1;
}

$_SESSION['RETURN_LIST'] = 'listreportedauctions.php';
$_SESSION['RETURN_LIST_OFFSET'] = $PAGE;

$query = "SELECT COUNT(a.id) As auctions FROM " . $DBPrefix . "auctions a
          INNER JOIN " . $DBPrefix . "reportedauctions r ON (a.id = r.auction_id)
          WHERE a.closed = 0 AND a.suspended = 0 " . $user_sql;
$db->direct_query($query);
$num_auctions = $db->result('auctions');
$PAGES = ($num_auctions == 0) ? 1 : ceil($num_auctions / $system->SETTINGS['perpage']);

$query = "SELECT a.id, u.nick, a.title, a.starts, a.ends, a.suspended, c.cat_name, COUNT(r.auction_id) as times_reported, m.reason FROM " . $DBPrefix . "auctions a
          LEFT JOIN " . $DBPrefix . "users u ON (u.id = a.user)
          LEFT JOIN " . $DBPrefix . "categories c ON (c.cat_id = a.category)
          INNER JOIN " . $DBPrefix . "reportedauctions r ON (a.id = r.auction_id)
          LEFT JOIN " . $DBPrefix . "auction_moderation m ON (a.id = m.auction_id)
          WHERE m.reason IS NULL AND a.closed = 0 AND a.suspended = 0 " . $user_sql . " GROUP BY a.id, u.nick, a.title, a.starts, a.ends, a.suspended, c.cat_name, m.reason ORDER BY nick LIMIT :offset, :perpage";
$params = array();
$params[] = array(':offset', $OFFSET, 'int');
$params[] = array(':perpage', $system->SETTINGS['perpage'], 'int');
$db->query($query, $params);
$username = '';
while ($row = $db->fetch()) {
    $template->assign_block_vars('auctions', array(
            'SUSPENDED' => $row['suspended'],
            'TIMESREPORTED' => $row['times_reported'],
            'IN_MODERATION_QUEUE' => !is_null($row['reason']),
            'ID' => $row['id'],
            'TITLE' => htmlspecialchars($row['title']),
            'START_TIME' => $dt->printDateTz($row['starts']),
            'END_TIME' => $dt->printDateTz($row['ends']),
            'USERNAME' => $row['nick'],
            'CATEGORY' => $row['cat_name'],
            'B_HASWINNERS' => false
            ));
    $username = $row['nick'];
}

// this is used when viewing a users auctions
if ((!isset($username) || empty($username)) && $uid > 0) {
    $query = "SELECT nick FROM " . $DBPrefix . "users WHERE id = :user_id";
    $params = array();
    $params[] = array(':user_id', $uid, 'int');
    $db->query($query, $params);
    $username = $db->result('nick');
}

// get pagenation
$PREV = intval($PAGE - 1);
$NEXT = intval($PAGE + 1);
if ($PAGES > 1) {
    $LOW = $PAGE - 5;
    if ($LOW <= 0) {
        $LOW = 1;
    }
    $COUNTER = $LOW;
    while ($COUNTER <= $PAGES && $COUNTER < ($PAGE + 6)) {
        $template->assign_block_vars('pages', array(
                'PAGE' => ($PAGE == $COUNTER) ? '<b>' . $COUNTER . '</b>' : '<a href="' . $system->SETTINGS['siteurl'] . 'admin/listreportedauctions.php?PAGE=' . $COUNTER . '"><u>' . $COUNTER . '</u></a>'
                ));
        $COUNTER++;
    }
}

$template->assign_vars(array(
        'PAGE_TITLE' => $MSG['view_reported_auctions'],
        'NUM_AUCTIONS' => $num_auctions,
        'B_SEARCHUSER' => ($uid > 0),
        'USERNAME' => $username,

        'PREV' => ($PAGES > 1 && $PAGE > 1) ? '<a href="' . $system->SETTINGS['siteurl'] . 'admin/listreportedauctions.php?PAGE=' . $PREV . '"><u>' . $MSG['5119'] . '</u></a>&nbsp;&nbsp;' : '',
        'NEXT' => ($PAGE < $PAGES) ? '<a href="' . $system->SETTINGS['siteurl'] . 'admin/listreportedauctions.php?PAGE=' . $NEXT . '"><u>' . $MSG['5120'] . '</u></a>' : '',
        'PAGE' => $PAGE,
        'PAGES' => $PAGES
        ));

include 'header.php';
$template->set_filenames(array(
        'body' => 'listauctions.tpl'
        ));
$template->display('body');
include 'footer.php';
