<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Category_translation_model extends MY_Model
{
    public $table = 'category_translation';
    public function __construct()
    {
        parent::__construct();
        $this->table = "category_translation";
    }
    
}