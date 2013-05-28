<?php

defined('COT_CODE') or die('Wrong URL');

$R['admin-config-pagialign'] = 'centered';
$R['admin-config-pagisize'] = 'small';

// Redefine Pagination

$R['link_pagenav_main'] = '<li><a href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_current'] = '<li class="active"><a href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_prev'] = '<li class="previous"><a href="{$url}"{$event}{$rel}>'.$L['pagenav_prev'].'</a></li>';
$R['link_pagenav_next'] = '<li class="next"><a href="{$url}"{$event}{$rel}>'.$L['pagenav_next'].'</a></li>';
$R['link_pagenav_first'] = '<li class=""><a href="{$url}"{$event}{$rel}>'.$L['pagenav_first'].'</a></li>';
$R['link_pagenav_last'] = '<li class=""><a href="{$url}"{$event}{$rel}>'.$L['pagenav_last'].'</a></li>';