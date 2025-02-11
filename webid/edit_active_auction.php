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

$id = intval($_GET['id']);

// Is the seller logged in?
if (!$user->logged_in) {
    $_SESSION['LOGIN_MESSAGE'] = $MSG['5000'];
    $_SESSION['REDIRECT_AFTER_LOGIN'] = 'select_category.php';
    header('location: user_login.php');
    exit;
}

$query = "SELECT id FROM " . $DBPrefix . "bids WHERE auction = :auc_id";
$params = array();
$params[] = array(':auc_id', $id, 'int');
$db->query($query, $params);
if ($db->numrows() > 0) {
    header('location: index.php');
    exit;
}

if (!isset($_POST['action'])) { // already closed auctions
    // Get Closed auctions data
    unset($_SESSION['UPLOADED_PICTURES']);
    unset($_SESSION['UPLOADED_PICTURES_SIZE']);
    $query = "SELECT * FROM " . $DBPrefix . "auctions WHERE id = :auc_id AND user = :user_id";
    $params = array();
    $params[] = array(':auc_id', $id, 'int');
    $params[] = array(':user_id', $user->user_data['id'], 'int');
    $db->query($query, $params);
    $RELISTEDAUCTION = $db->result();
    $difference = strtotime($RELISTEDAUCTION['ends']) - time();

    if ($user->user_data['id'] == $RELISTEDAUCTION['user'] && $difference > 0) {
        $_SESSION['SELL_auction_id']    = $RELISTEDAUCTION['id'];
        $_SESSION['SELL_starts']        = $RELISTEDAUCTION['starts'];
        $_SESSION['SELL_ends']            = $RELISTEDAUCTION['ends'];
        $_SESSION['SELL_title']            = htmlspecialchars($RELISTEDAUCTION['title']);
        $_SESSION['SELL_subtitle']        = htmlspecialchars($RELISTEDAUCTION['subtitle']);
        $_SESSION['SELL_description']    = $RELISTEDAUCTION['description'];
        $_SESSION['SELL_atype']            = $RELISTEDAUCTION['auction_type'];
        $_SESSION['SELL_buy_now_only']    = $RELISTEDAUCTION['bn_only'];
        $_SESSION['SELL_suspended']        = $RELISTEDAUCTION['suspended'];
        $_SESSION['SELL_iquantity']        = $RELISTEDAUCTION['quantity'];
        $_SESSION['SELL_is_bold']            = $RELISTEDAUCTION['bold'];
        $_SESSION['SELL_is_highlighted']    = $RELISTEDAUCTION['highlighted'];
        $_SESSION['SELL_is_featured']        = $RELISTEDAUCTION['featured'];
        $_SESSION['SELL_is_taxed']            = $RELISTEDAUCTION['tax'];
        $_SESSION['SELL_tax_included']        = $RELISTEDAUCTION['taxinc'];
        $_SESSION['SELL_current_fee']        = $RELISTEDAUCTION['current_fee'];
        if ($RELISTEDAUCTION['bn_only'] == 0) {
            $_SESSION['SELL_minimum_bid'] = $system->print_money_nosymbol($RELISTEDAUCTION['minimum_bid']);
        } else {
            $_SESSION['SELL_minimum_bid'] = 0;
        }

        if (floatval($RELISTEDAUCTION['reserve_price']) > 0) {
            $_SESSION['SELL_reserve_price'] = $system->print_money_nosymbol($RELISTEDAUCTION['reserve_price']);
            $_SESSION['SELL_with_reserve']    = 'yes';
        } else {
            $_SESSION['SELL_reserve_price'] = '';
            $_SESSION['SELL_with_reserve']    = 'no';
        }

        $_SESSION['SELL_original_sellcat1'] = $_SESSION['SELL_sellcat1'] = $RELISTEDAUCTION['category'];
        $_SESSION['SELL_original_sellcat2'] = $_SESSION['SELL_sellcat2'] = $RELISTEDAUCTION['secondcat'];

        if (floatval($RELISTEDAUCTION['buy_now']) > 0) {
            $_SESSION['SELL_buy_now_price'] = $system->print_money_nosymbol($RELISTEDAUCTION['buy_now']);
            $_SESSION['SELL_with_buy_now']    = 'yes';
        } else {
            $_SESSION['SELL_buy_now_price'] = '';
            $_SESSION['SELL_with_buy_now']    = 'no';
        }
        $_SESSION['SELL_duration']    = $RELISTEDAUCTION['duration'];
        $_SESSION['SELL_relist']    = $RELISTEDAUCTION['relist'];
        if (floatval($RELISTEDAUCTION['increment']) > 0) {
            $_SESSION['SELL_increment']            = 2;
            $_SESSION['SELL_customincrement']    = $system->print_money_nosymbol($RELISTEDAUCTION['increment']);
        } else {
            $_SESSION['SELL_increment']            = 1;
            $_SESSION['SELL_customincrement']    = 0;
        }
        $_SESSION['SELL_shipping_cost']     = $system->print_money_nosymbol($RELISTEDAUCTION['shipping_cost']);
        $_SESSION['SELL_additional_shipping_cost']    = $system->print_money_nosymbol($RELISTEDAUCTION['additional_shipping_cost']);
        $_SESSION['SELL_shipping']         = $RELISTEDAUCTION['shipping'];
        $_SESSION['SELL_shipping_terms'] = $RELISTEDAUCTION['shipping_terms'];
        $_SESSION['SELL_payment']         = explode(', ', $RELISTEDAUCTION['payment']);
        $_SESSION['SELL_international']     = $RELISTEDAUCTION['international'];
        $_SESSION['SELL_file_uploaded']     = $RELISTEDAUCTION['photo_uploaded'];
        $_SESSION['SELL_pict_url']         = $RELISTEDAUCTION['pict_url'];
        $_SESSION['SELL_pict_url_temp']     = str_replace('thumb-', '', $RELISTEDAUCTION['pict_url']);

        // get gallery images
        $UPLOADED_PICTURES = array();
        $file_types = array('gif', 'jpg', 'jpeg', 'png');
        if (is_dir(UPLOAD_PATH . $id)) {
            $dir = opendir(UPLOAD_PATH . $id);
            while (($myfile = readdir($dir)) !== false) {
                if ($myfile != '.' && $myfile != '..' && !is_file($myfile)) {
                    $file_ext = strtolower(substr($myfile, strrpos($myfile, '.') + 1));
                    if (in_array($file_ext, $file_types) && (strstr($RELISTEDAUCTION['pict_url'], 'thumb-') === false || $RELISTEDAUCTION['pict_url'] != $myfile)) {
                        $UPLOADED_PICTURES[] = $myfile;
                    }
                }
            }
            closedir($dir);
        }
        $_SESSION['UPLOADED_PICTURES'] = $UPLOADED_PICTURES;

        if (count($UPLOADED_PICTURES) > 0) {
            if (!file_exists(UPLOAD_PATH . session_id())) {
                umask();
                mkdir(UPLOAD_PATH . session_id(), 0777);
            }
            foreach ($UPLOADED_PICTURES as $k => $v) {
                $system->move_file(UPLOAD_FOLDER . intval($_GET['id']) . '/' . $v, UPLOAD_FOLDER . session_id() . '/' . $v, false);
            }
            if (!empty($RELISTEDAUCTION['pict_url'])) {
                $system->move_file(UPLOAD_FOLDER . intval($_GET['id']) . '/' . $RELISTEDAUCTION['pict_url'], UPLOAD_FOLDER . session_id() . '/' . $RELISTEDAUCTION['pict_url'], false);
            }
        }

        $_SESSION['SELL_action'] = 'edit';
        if (strtotime($RELISTEDAUCTION['starts']) > time()) {
            $_SESSION['SELL_caneditstartdate'] = true;
        } else {
            $_SESSION['SELL_caneditstartdate'] = false;
        }
        $_SESSION['SELL_hash'] = md5(microtime() . rand(0, 50));
        $_SESSION['SELL_submitted'][$_SESSION['SELL_hash']] = false;
        header('location: sell.php?mode=recall');
    } else {
        header('location: index.php');
    }
}
