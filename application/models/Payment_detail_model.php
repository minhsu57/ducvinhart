<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Payment_detail_model extends MY_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->table = 'payment_detail';
    }    
}