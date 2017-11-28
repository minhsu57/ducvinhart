<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'home';
$route['admin'] = 'admin/dashboard';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['lien-he'] 					= "contact";
$route['tin-tuc/(:num)-(:any)'] 	= "news/detail/$1";
$route['tin-tuc'] 					= "news/index";
$route['tim-kiem'] 					= "search/index";
$route['dich-vu/(:any)-(:num)'] 	= "news/service_detail/$2";
$route['chuyen-de/(:any)-(:num)']	= "news/detail/$2";
$route['dich-vu/(:num)-(:any)']		= "news/index/$1";
$route['chuyen-de/(:num)-(:any)']	= "news/index/$1";
$route['san-pham/(:any)']			= "product/index/$1";
$route['(:any)-(:num)'] 			= "product/detail/$1/$2";