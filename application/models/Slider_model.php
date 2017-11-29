<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Slider_model extends MY_Model
{

    function __construct()
    {
        parent::__construct();
        $this->table = 'slider';
    }

    private function get_slider($input = array())
    {
        $this->db->select('c.name category_name, s.*');
        $this->db->from('slider s');
        $this->db->join('category_translation c', 'c.cate_id = s.cate_id');
        if ((isset($input['where'])) && $input['where'])
        {
            $this->db->where($input['where']);
        } 
    }
    function get_list_slider($input = array())
    {
        $this->get_slider($input);        
        $query = $this->db->get();
        return $query->result();
    }

    function get_row_slider($input = array())
    {
        $this->get_slider($input);        
        $query = $this->db->get();
        return $query->row();
    }
}
