<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'home';
$route['admin'] = 'admin/dashboard';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['index.html'] 				= "home";
$route['lien-he'] 					= "contact";
$route['tin-tuc/(:num)-(:any)'] 	= "news/detail/$1";
$route['tin-tuc'] 					= "news/index";
// search
$route['search'] 					= 'product/search';

$route['dich-vu/(:any)-(:num)'] 	= "news/service_detail/$2";
$route['chuyen-de/(:any)-(:num)']	= "news/detail/$2";
$route['dich-vu/(:num)-(:any)']		= "news/index/$1";
$route['chuyen-de/(:num)-(:any)']	= "news/index/$1";
$route['san-pham/(:any)']			= "product/index/$1";
$route['(:any)-(:num)'] 			= "product/detail/$1/$2";
// cart
$route['cart'] 			= 'cart';
$route['(\w{2})/cart'] 	= 'cart';

// order
$route['order'] 			= 'order';
$route['(\w{2})/order'] 	= 'order';
$route['order/submit'] 		= 'order/submit';
$route['(\w{2})/order/submit'] 	= 'order/submit';
