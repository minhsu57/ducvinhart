<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends Public_Controller {
	function __construct() {
		parent::__construct();
		$this->load->helper('url');
        $this->load->database();
        $this->load->library('session');
        $this->load->helper('language');
        $this->load->model('slider_model');
        $this->load->model('category_model');
        $this->load->model('product_model');
        
    }

    public function index($name)
    {
        // get content of category
        $input_cate['where'] = array('name_slug' => $name);
        $page = $this->category_translation_model->get_row_category($input_cate);
        if($page){            
            $this->data['website']->meta_keyword = $page->meta_keyword;
            $this->data['website']->meta_description = $page->meta_description;
            $this->data["breadcrumb"] = $page->name;
            // get content of slider
            $input['where'] = array('status' => 1, "s.cate_id"=>$page->cate_id);
            $this->data['sliders'] = $this->slider_model->get_list_slider($input);
            //get content of this page
            $input['where'] = array('cate_id' => $page->cate_id);
            $this->data['items'] = $this->product_model->get_list_product($input);
            $this->render('user/product_view');
        }        
    }

    public function detail($name, $id)
    {
        //get content of this page
        $where_product['where'] = array('product_id' => $id);
        $this->data['item'] = $this->product_model->get_row_product($where_product);
        $this->data['website']->meta_keyword = $this->data['item']->meta_keyword;
        $this->data['website']->meta_description = $this->data['item']->meta_description;
        // get list products same type
        $input['where'] = array('cate_id' => $this->data['item']->cate_id);
        $input['limit'] = array('4','0');
        $this->data['products'] = $this->product_model->get_list_product($input);
        $this->render('user/product_detail_view');       
    }
}
