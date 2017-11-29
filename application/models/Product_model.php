<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Product_model extends MY_Model
{

    function __construct()
    {
        parent::__construct();
        $this->table = 'product';
    }

    private function get_product($input = array()){
        $this->db->select('t.id translation_id, t.name, t.description, t.detail, t.material, t.color, t.trademark, t.meta_keyword, t.meta_description, p.*');
        $this->db->from('product p');
        $this->db->join('product_translation t', 't.product_id = p.id');
        $this->get_list_set_input($input);
    }
    function get_list_product($input = array())
    {
        $this->get_product($input);        
        $query = $this->db->get();
        return $query->result();
    }

    function get_row_product($input = array())
    {
        $this->get_product($input);        
        $query = $this->db->get();
        return $query->row();
    }
}
