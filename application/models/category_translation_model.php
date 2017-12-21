<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Category_translation_model extends MY_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->table = "category_translation";
    }

    protected function get_category($input = array())
    {
        $this->db->select('c.level, c.parent_id, c.image image, c.sort_order, s.*');
        $this->db->from('category c');
        $this->db->join('category_translation s', 'c.id = s.cate_id');
        $this->get_list_set_input($input);
    }
    function get_list_category($input = array())
    {
        $this->get_category($input);
        $query = $this->db->get();
        return $query->result();
    }

    function get_list_category_arr($input = array())
    {
        $this->get_category($input);
        $query = $this->db->get();
        return $query->result_array();
    }

    function get_row_category($input = array())
    {
        $this->get_category($input);
        $query = $this->db->get();
        return $query->row();
    }
}
