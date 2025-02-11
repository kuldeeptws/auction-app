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

include 'common.php';

// If user is not logged in redirect to login page
if (!$user->checkAuth()) {
    $_SESSION['LOGIN_MESSAGE'] = $MSG['5000'];
    $_SESSION['REDIRECT_AFTER_LOGIN'] = 'leave_feedback.php';
    header('location: user_login.php');
    exit;
}

$query = "SELECT DISTINCT a.auction, a.seller, a.winner, a.bid, b.id, b.current_bid, b.title, a.qty, a.closingdate
		FROM " . $DBPrefix . "winners a
		LEFT JOIN " . $DBPrefix . "auctions b ON (a.auction = b.id)
		WHERE (b.closed = 1 OR b.bn_only = 1) AND b.suspended = 0
		AND ((a.seller = :user_ids AND a.feedback_sel = 0)
		OR (a.winner = :user_idw AND a.feedback_win = 0))";
$params = array();
$params[] = array(':user_ids', $user->user_data['id'], 'int');
$params[] = array(':user_idw', $user->user_data['id'], 'int');
$db->query($query, $params);

$feedback_data = $db->fetchall();
foreach ($feedback_data as $row) {
    $them = ($row['winner'] == $user->user_data['id']) ? $row['seller'] : $row['winner'];
    // Get details
    $query = "SELECT u.nick, u.email
			FROM " . $DBPrefix . "users u
			WHERE u.id = :them";
    $params = array();
    $params[] = array(':them', $them, 'int');
    $db->query($query, $params);
    $info = $db->result();

    $template->assign_block_vars('fbs', array(
            'ID' => $row['id'],
            'TITLE' => htmlspecialchars($row['title']),
            'WINORSELLNICK' => $info['nick'],
            'WINORSELL' => ($row['winner'] == $user->user_data['id']) ? $MSG['25_0002'] : $MSG['25_0001'],
            'WINORSELLEMAIL' => $info['email'],
            'BID' => $row['bid'],
            'BIDFORM' => $system->print_money($row['bid']),
            'QTY' => ($row['qty'] == 0) ? 1 : $row['qty'],
            'WINNER' => $row['winner'],
            'SELLER' => $row['seller'],
            'CLOSINGDATE' => $dt->formatDate($row['closingdate']),
            'WS' => ($row['winner'] == $user->user_data['id']) ? 'w' : 's'
            ));
}

$TPL_rater_nick = $user->user_data['nick'];
include 'header.php';
$TMP_usmenutitle = $MSG['207'];
include INCLUDE_PATH . 'user_cp.php';
$template->set_filenames(array(
        'body' => 'leave_feedback.tpl'
        ));
$template->display('body');
include 'footer.php';
