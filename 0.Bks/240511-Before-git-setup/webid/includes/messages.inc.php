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

// find installed languages
$LANGUAGES = array();
if ($handle = opendir(MAIN_PATH . 'language')) {
    while (false !== ($file = readdir($handle))) {
        if ('.' != $file && '..' != $file) {
            if (preg_match('/^([a-zA-Z_]{2,})$/i', $file)) {
                $LANGUAGES[$file] = $file;
            }
        }
    }
}
closedir($handle);

// Language management
if (isset($_GET['lan']) && !empty($_GET['lan'])) {
    $language = preg_replace("/[^a-zA-Z_]/", '', $_GET['lan']);
    if (isValidLanguage($language)) {
        if ($user->logged_in) {
            $query = "UPDATE " . $DBPrefix . "users SET language = :language WHERE id = :user_id";
            $params = array();
            $params[] = array(':language', $language, 'str');
            $params[] = array(':user_id', $user->user_data['id'], 'int');
            $db->query($query, $params);
        } else {
            // Set language cookie
            setcookie('USERLANGUAGE', $language, time() + 31536000, '/');
        }
    }
} elseif ($user->logged_in) {
    $language = $user->user_data['language'];
} elseif (isset($_COOKIE['USERLANGUAGE'])) {
    $language = preg_replace("/[^a-zA-Z_]/", '', $_COOKIE['USERLANGUAGE']);
    if (!isValidLanguage($language)) {
        setcookie('USERLANGUAGE', $system->SETTINGS['defaultlanguage'], time() + 31536000, '/');
    }
}

if (!isset($language) || empty($language)) {
    $language = $system->SETTINGS['defaultlanguage'];
}

include MAIN_PATH . 'language/' . $language . '/messages.inc.php';
if (defined('InAdmin')) {
    include MAIN_PATH . 'language/' . $language . '/admin.inc.php';
}

function isValidLanguage(&$language)
{
    global $LANGUAGES, $system;
    // check language exists
    if (!in_array($language, $LANGUAGES)) {
        $language = $system->SETTINGS['defaultlanguage'];
        return false;
    }
    return true;
}

function get_lang_img($string)
{
    global $system, $language;
    return $system->SETTINGS['siteurl'] . 'language/' . $language . '/images/' . $string;
}
