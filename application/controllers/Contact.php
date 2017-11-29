<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends Public_Controller {
	function __construct() {
		parent::__construct();
		$this->load->helper('url');
    $this->load->database();
    $this->load->library('session');
    $this->load->model('category_model');
    $this->load->model('slider_model');
  }

  public function index()
  {
		// get content of category
    $input['where'] = array("id" => '39');
    $page = $this->category_translation_model->get_row($input);
    if($page){            
      $this->data['website']->meta_keyword = $page->meta_keyword;
      $this->data['website']->meta_description = $page->meta_description;
    }
        // get content of slider
    $input['where'] = array('status' => 1, "s.cate_id" => '39');
    $this->data['sliders'] = $this->slider_model->get_list_slider($input);
    $this->render('user/contact_view');
  }
}
