<?php

include '../../common.php';
include INCLUDE_PATH . 'datacheck.inc.php';
include INCLUDE_PATH . 'functions_sell.php';
include MAIN_PATH . 'language/' . $language . '/categories.inc.php';
include PACKAGE_PATH . 'ckeditor/ckeditor.php';

$emailer = new email_handler();
$emailer->assign_vars(array(
        'SITE_URL' => $system->SETTINGS['siteurl'],
        'SITENAME' => $system->SETTINGS['sitename'],
        ));
$emailer->email_uid = $user->user_data['id'];
$subject = $system->SETTINGS['sitename'] . ' Testing email: ';
var_dump($emailer->email_sender("workwithalex247@gmail.com", 'testemail.inc.php', $subject));
