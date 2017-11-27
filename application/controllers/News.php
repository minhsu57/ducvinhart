<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class News extends Public_Controller {
    function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->database();
        $this->load->library('session');
        
        $this->load->model('category_translation_model');
        $this->load->model('slider_model');
        $this->load->model('news_model');
        $this->load->library('pagination');
    }
    
    public function index($name)
    {
        // get content of category
        $where_cate = array('name_slug' => $name, 'lang_slug'=>$this->lang_slug);
        $page = $this->category_translation_model->get_row_category($where_cate);
        if($page){
            //condition to get total row and list of news
            $input_news['where'] = array('cate_id' => $page->cate_id);
            //            
            $this->data['website']->meta_keyword = $page->meta_keyword;
            $this->data['website']->meta_description = $page->meta_description;
            $this->data["breadcrumb"] = $page->name;
            //get content of slider
            $input = array('status' => 1, "s.cate_id"=>$page->cate_id);
            $this->data['sliders'] = $this->slider_model->get_list_slider($input);
            //pagination settings
            $config["per_page"] = $this->pagination->per_page;
            $config['base_url'] = site_url('dich-vu');
            $config['total_rows'] = $this->news_model->get_total();
            $this->data['total'] = $config['total_rows'];
            $choice = $config["total_rows"] / $config["per_page"];
            $config["num_links"] = $choice;       

            // pagination
            $pagi = ($this->input->get('page')) ? $this->input->get('page') : 1;
            $this->pagination->initialize($config);        
            $this->data['pagination'] = $this->pagination->create_links();
            $offset = ($pagi  == 1) ? 0 : ($pagi * $config['per_page']) - $config['per_page'];
            // get list data
            $input_news['limit'] = array($config["per_page"], $offset);
            $input_news['order'] = array('title','ASC');
            // get list news	
            $this->data['items'] = $this->news_model->get_list_news($input_news);
            if($page->parent_id == 28) $this->data['page_header'] = "Dịch vụ"; else $this->data['page_header'] = "Chuyên đề";
            $this->render('user/news_view');
        }
    }
    public function service_detail($id)
    {	
      $input["where"] = array('id' => $id);
      $this->data['item'] = $this->news_model->get_row($input);
   //    if($this->data['item']->keyword != "")
   //     $this->data['website']->meta_keyword = $this->data['item']->keyword;
   // if($this->data['item']->meta_description != "")
   //     $this->data['website']->meta_description = $this->data['item']->meta_description;
   // if($this->data['item']->title != "")
   //     $this->data["website"]->page_title = $this->data['item']->title;

   $this->render('user/services_detail_view');
}
}
