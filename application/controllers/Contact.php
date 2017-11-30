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
		
      if($this->input->post('submit')){  
        $config = Array(
            'mailtype' => 'html',
            'charset' => 'utf-8',
            'starttls'  => true,
            'newline'   => "\r\n"
            );
        
        /* get info from user input */       
        $name   = $this->input->post('name');
        $phone  = $this->input->post('phone');
        $email  = $this->input->post('email');
        $message  = $this->input->post('message');
        /* Send email to customer */
        $subject = 'Đức Vinh Art - Khách hàng liên hệ';
        /* ************************ */
        $content = '<p style="text-align: center; font-size: 20px; color: #2196F3;"><b>Thông tin liên hệ vừa nhận được</b></p>';
        $content .= '<p><b>Tên : '. $name.'</b></p>';
        $content .= '<p><b>Điện thoại : '. $phone.'</b></p>';
        $content .= '<p><b>Email : '. $email.'</b></p>';
        $content .= '<p><b>Lời nhắn : '. $message.'</b></p>';
        $this->load->library('email', $config); 
        $this->email->set_crlf( "\r\n" );
        //$this->email->set_newline("\n");
        $this->email->from('ducvinhart_support@gmail.com'); // change it to yours
        $this->email->to($this->data['website']->admin_email);// change it to yours
        $this->email->subject($subject);
        $this->email->message($content);
        if ($this->email->send()){
            echo "send thanh cong";
        }else{
            echo "send fail";
        }
    }else{
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
}
