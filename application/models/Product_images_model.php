<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Product_images_model extends MY_Model
{

    function __construct()
    {
        parent::__construct();
        $this->table = 'product_images';
    }
}
