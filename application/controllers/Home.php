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
    }

    public function index()
    {
        // get content of category
        $input['where'] = array("id" => 'home', "lang_slug" => "vi");
        $page = $this->category_translation_model->get_row($input);
        // $this->data['website']->meta_keyword = $page->meta_keyword;
        // $this->data['website']->meta_description = $page->meta_description;
        // get content of slider
        $input['where'] = array('status' => 1, "category_id" => 'home');
        $this->data['sliders'] = $this->slider_model->get_list($input);

        $this->render('user/home_view');
    }
}
