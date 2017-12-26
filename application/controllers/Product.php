<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends Public_Controller {
	function __construct() {
		parent::__construct();
		$this->load->helper('url');
        $this->load->database();
        $this->load->library('session');
        $this->load->helper('language');
        $this->load->library('pagination');
        $this->load->model('slider_model');
        $this->load->model('category_model');
        $this->load->model('product_model');
        $this->load->model('product_images_model');
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
            $input_slider['where'] = array('status' => 1, "s.cate_id"=>$page->cate_id);
            $this->data['sliders'] = $this->slider_model->get_list_slider($input_slider);
            //get content of this page           
            $input_product['order'] = array("created_date" , "desc");            
            $branch = $this->buildTree($page->cate_id); 
            array_push($branch, $page->cate_id);
            $input_product['or_where_in'] = array('cate_id', $branch);
            //pagination settings
            $config['base_url'] = site_url('san-pham/'.$name);
            $config["per_page"] = $this->pagination->per_page;
            $config['total_rows'] = $this->product_model->get_total_product($input_product);
            $this->data['total'] = $config['total_rows'];
            $choice = $config["total_rows"] / $config["per_page"];
            $config["num_links"] = $choice; 
            // pagination
            $pagi = ($this->input->get('page')) ? $this->input->get('page') : 1;
            $this->pagination->initialize($config);        
            $this->data['pagination'] = $this->pagination->create_links();
            $offset = ($pagi  == 1) ? 0 : ($pagi * $config['per_page']) - $config['per_page'];
            // get list data
            $input_product['limit'] = array($config["per_page"], $offset);
            $this->data['items'] = $this->product_model->get_list_product($input_product);
            $this->render('user/product_view');
        }        
    }

    public function search()
    {        
        $this->data["breadcrumb"] = "Tìm Kiếm / ".$this->input->get("id");        
        $input_product['like'] = array('name' => $this->input->get("id"));
        //pagination settings
        $config['base_url'] = site_url('search?id='.$this->input->get("id"));
        $config["per_page"] = $this->pagination->per_page;
        $config['total_rows'] = $this->product_model->get_total_product($input_product);
        $this->data['total'] = $config['total_rows'];
        $choice = $config["total_rows"] / $config["per_page"];
        $config["num_links"] = $choice;       

        // pagination
        $pagi = ($this->input->get('page')) ? $this->input->get('page') : 1;
        $this->pagination->initialize($config);        
        $this->data['pagination'] = $this->pagination->create_links();
        $offset = ($pagi  == 1) ? 0 : ($pagi * $config['per_page']) - $config['per_page'];
                // get list data
        $input_product['limit'] = array($config["per_page"], $offset);
        //$input_product['order'] = array('created_dated','DESC');
        //get content of search result
        $this->data['items'] = $this->product_model->get_list_product($input_product);
        $this->render('user/product_view');        
    }

    public function detail($name, $id)
    {
        //get content of this page
        $where_product['where'] = array('product_id' => $id);
        $this->data['item'] = $this->product_model->get_row_product($where_product);
        $this->data['website']->page_title = $this->data['item']->name.' - '.$this->data['website']->website_name;
        $this->data['website']->meta_keyword = $this->data['item']->meta_keyword;
        $this->data['website']->meta_description = $this->data['item']->meta_description;
        // get list of sub images product
        $input_image['where'] = array('product_id' => $id);
        $input_image['sort'] = array('sort_order' , 'asc');
        $this->data['product_images'] = $this->product_images_model->get_list($input_image);
        // get list products same type
        $input['where'] = array('cate_id' => $this->data['item']->cate_id);
        $input['limit'] = array('6','0');
        $this->data['products'] = $this->product_model->get_list_product($input);
        $this->render('user/product_detail_view');       
    }
}
