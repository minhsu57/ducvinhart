<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Slider_model extends MY_Model
{

    function __construct()
    {
        parent::__construct();
        $this->table = 'slider';
    }

    private function get_slider($where){
        $this->db->select('c.name category_name, s.*');
        $this->db->from('slider s');
        $this->db->join('category_translation c', 'c.cate_id = s.cate_id');
        $this->db->where($where);
        $this->db->order_by("modified_date","desc");
    }
    function get_list_slider($where)
    {
        $this->get_slider($where);        
        $query = $this->db->get();
        return $query->result();
    }

    function get_row_slider($where)
    {
        $this->get_slider($where);        
        $query = $this->db->get();
        return $query->row();
    }
}
