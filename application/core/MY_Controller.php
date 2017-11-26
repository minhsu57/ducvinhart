<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

	function __constructor(){

		parent::__constructor();
	}

	protected function render($the_view = NULL, $template = 'master')
	{
		if($template == 'json' || $this->input->is_ajax_request())
		{
			header('Content-Type: application/json');
			echo json_encode($this->data);
		}
		else if(is_null($template))
		{
			$this->load->view($the_view, $this->data);
		}else
		{
			$this->data['the_view_content'] = (is_null($the_view)) ? '' : $this->load->view($the_view, $this->data, TRUE);
			$this->load->view('templates/' . $template . '_view', $this->data);
		}
	}
}
class Public_Controller extends MY_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('website_model');
		$this->load->model('news_model');
		$this->load->model('category_model');
		$this->load->model('category_translation_model');
		$input['where'] = array('language_slug'=>'vi');
		$this->data['website'] = $this->website_model->get_row($input);	
		$this->data['website']->page_title = $this->data['website']->website_name;
		$this->data['website']->meta_keyword = "";
		$this->data['website']->meta_description = "";

		// get categories of product
		$input_cate = array('parent_id'=>27,'level'=>1);
		$cate_product = $this->category_translation_model->get_list_category_arr($input_cate);
		//
		$this->data['cate_product'] = array();
		foreach ($cate_product as $key=>$item) {
			$input_child_cate = array('parent_id' => $item['cate_id']);
			$cate_child = $this->category_translation_model->get_list_category_arr($input_child_cate);
			$item['children'] = $cate_child;
			array_push($this->data['cate_product'], $item);
		}
		// get categories of service
		$input_cate = array('parent_id'=>28,'level'=>1);
		$this->data["cate_services"] = $this->category_translation_model->get_list_category_arr($input_cate);
		// get categories of topic
		$input_cate = array('parent_id'=>35,'level'=>1);
		$this->data["cate_topic"] = $this->category_translation_model->get_list_category_arr($input_cate);
	}

	protected function render($the_view = NULL, $template = 'public_master')
	{
		parent::render($the_view, $template);
	}
}
class Admin_Controller extends MY_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->library('ion_auth');
		$this->load->library('postal');
		$this->load->helper('url');
		if (!$this->ion_auth->logged_in())
		{
			$_SESSION['redirect_to'] = current_url();
			//redirect them to the login page
			redirect('admin/user/login', 'refresh');
		}
		$_SESSION['IsAuthorized'] = true;
		$current_user = $this->ion_auth->user()->row();
		$this->user_id = $current_user->id;
		$this->data['current_user'] = $current_user;
		$this->data['current_user_menu'] = '';
		//
        $this->lang_slug = "vi";
		if($this->ion_auth->in_group('admin'))
		{
			$this->data['current_user_menu'] = $this->load->view('templates/_parts/user_menu_admin_view.php', NULL, TRUE);
		}
	}
	protected function render($the_view = NULL, $template = 'admin_master')
	{
		parent::render($the_view, $template);
	}
}
