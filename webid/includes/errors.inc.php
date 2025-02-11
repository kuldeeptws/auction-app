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
    exit();
}

function WeBidErrorHandler($errno, $errstr, $errfile, $errline)
{
    global $system, $_SESSION;
    switch ($errno) {
        case E_ERROR:
            $error = "<b>Fatal error</b> [$errno] $errstr\n";
            $error .= "  Fatal error on line $errline in file $errfile";
            $error .= ", PHP " . PHP_VERSION . " (" . PHP_OS . ")\n";
            $error .= "Aborting...\n";
            break;

        case E_WARNING:
            $error = "<b>Warning</b> [$errno] $errstr on $errfile line $errline\n";
            break;

        case E_NOTICE:
            $error = "<b>Notice</b> [$errno] $errstr on $errfile line $errline\n";
            break;

        case E_USER_ERROR:
            $error = "<b>Fatal error trigger</b> [$errno] $errstr\n";
            $error .= "  Fatal error on line $errline in file $errfile";
            $error .= ", PHP " . PHP_VERSION . " (" . PHP_OS . ")\n";
            $error .= "Aborting...\n";
            break;

        case E_USER_WARNING:
            $error = "<b>Warning trigger</b> [$errno] $errstr on $errfile line $errline\n";
            break;

        case E_USER_NOTICE:
            $error = "<b>Notice trigger</b> [$errno] $errstr on $errfile line $errline\n";
            break;

        case E_STRICT:
            $error = "<b>Strict notice</b> [$errno] $errstr on $errfile line $errline\n";
            break;

        case E_DEPRECATED:
            $error = "<b>Deprecated notice</b> [$errno] $errstr on $errfile line $errline\n";
            break;

        case E_USER_DEPRECATED:
            $error = "<b>Deprecated notice trigger</b> [$errno] $errstr on $errfile line $errline\n";
            break;

        default:
            $error = "Unknown error type: [$errno] $errstr on $errfile line $errline\n";
            break;
    }
    if (!isset($_SESSION['SESSION_ERROR']) || !is_array($_SESSION['SESSION_ERROR'])) {
        $_SESSION['SESSION_ERROR'] = array();
    }
    $_SESSION['SESSION_ERROR'][] = $error;
    // log the error
    $system->log('error', $error);

    if (WeBidDebug) {
        echo $error;
    }

    if ($errno & (E_ERROR|E_USER_ERROR)) {
        exit(1);
    }
    return true;
}
