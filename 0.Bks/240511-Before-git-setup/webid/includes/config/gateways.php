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

if (!defined('InWeBid')) {
    exit('Access denied');
}

$gateway_links = array(
    'paypal' => 'http://paypal.com/',
    'authnet' => 'http://authorize.net/',
    'worldpay' => 'http://rbsworldpay.com/',
    'skrill' => 'http://skrill.com/',
    'toocheckout' => 'http://2checkout.com/'
    );
$address_string = array(
    'paypal' => $MSG['720'],
    'authnet' => $MSG['773'],
    'worldpay' => $MSG['824'],
    'skrill' => $MSG['825'],
    'toocheckout' => $MSG['826']
    );
$password_string = array(
    'authnet' => $MSG['774']
    );
$error_string = array(
    'paypal' => $MSG['810'],
    'authnet' => $MSG['811'],
    'worldpay' => $MSG['823'],
    'skrill' => $MSG['822'],
    'toocheckout' => $MSG['821']
);
