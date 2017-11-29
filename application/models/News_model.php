<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class News_model extends MY_Model
{

    function __construct()
    {
        parent::__construct();
        $this->table = 'news';
    }

    protected function get_news($input = array())
    {
        $this->db->select('c.level, c.parent_id, c.sort_order, n.*, t.name category_name');
        $this->db->from('category c');
        $this->db->join('news n', 'c.id = n.cate_id');
        $this->db->join('category_translation t','n.cate_id = t.cate_id');
        $this->get_list_set_input($input);
    }
    function get_list_news($input = array())
    {
        $this->get_news($input);
        $query = $this->db->get();
        return $query->result();
    }

    function get_row_news($input = array())
    {
        $this->get_news($input);
        $query = $this->db->get();
        return $query->row();
    }

    function get_total_news($input = array())
    {
        $this->db->select('c.level, c.parent_id, c.sort_order, n.*, t.name category_name');
        $this->db->from('category c');
        $this->db->join('news n', 'c.id = n.cate_id');
        $this->db->join('category_translation t','n.cate_id = t.cate_id');
        if ((isset($input['where'])) && $input['where'])
        {
            $this->db->where($input['where']);
        }        
        $query = $this->db->get();        
        return $query->num_rows();
    }
}