<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Category_translation_model extends MY_Model
{
    public $table = 'category_translation';
    public function __construct()
    {
        parent::__construct();
        $this->table = "category_translation";
    }

    protected function get_category($where)
    {
        $this->db->select('c.level, c.parent_id, c.sort_order, s.*');
        $this->db->from('category c');
        $this->db->join('category_translation s', 'c.id = s.cate_id');
        $this->db->where($where);
        $this->db->order_by('c.sort_order', 'ASC');
    }
    function get_list_category($where)
    {
        $this->get_category($where);
        $query = $this->db->get();
        return $query->result();
    }

    function get_list_category_arr($where)
    {
        $this->get_category($where);
        $query = $this->db->get();
        return $query->result_array();
    }

    function get_row_category($where)
    {
        $this->get_category($where);
        $query = $this->db->get();
        return $query->row();
    }
}
