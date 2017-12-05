<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends Public_Controller {
	function __construct() {
		parent::__construct();
		$this->load->helper('url');
        $this->load->database();
        $this->load->library('session');
        $this->load->helper('language');
        $this->load->model('category_translation_model');
        $this->load->model('slider_model');
        $this->load->model('product_model');
        $this->load->model('news_model');
    }

    function index()
    {
        // get content of category
        $input['where'] = array("cate_id" => '1');
        $page = $this->category_translation_model->get_row($input);
        if($page){           
            $this->data['website']->meta_keyword = $page->meta_keyword;
            $this->data['website']->meta_description = $page->meta_description;
            $this->data['website']->image = "123"; 
        }
        // get content of slider
        $input['where'] = array('status' => 1, "s.cate_id" => '1');
        $this->data['sliders'] = $this->slider_model->get_list_slider($input);
        // get list of new product
        $input_product['order'] = array("created_date","desc");
        $input_product['limit'] = array('6','0');
        $this->data['products'] = $this->product_model->get_list_product($input_product);

        // get list of new topic
        $input_news['where'] = array('parent_id<>' => 28);
        $input_news['limit'] = array('6','0');
        $this->data['news'] = $this->news_model->get_list_news($input_news);
        $this->render('user/home_view');
    }
}
