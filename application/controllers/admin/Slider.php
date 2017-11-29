<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Slider extends Admin_Controller
{

    function __construct()
    {
        parent::__construct();
        if(!$this->ion_auth->in_group('admin'))
        {
            $this->postal->add('You are not allowed to visit the Categories page','error');
            redirect('admin');
        }
        date_default_timezone_set("Asia/Ho_Chi_Minh");
        $this->load->helper(array('form'));
        $this->lang->load('form_validation', 'english');
        $this->form_validation->set_message('required', $this->lang->line('required'));
        $this->form_validation->set_error_delimiters('<span class="error">', '</span>');

        $this->load->model('slider_model');
        $this->load->model('category_translation_model');
        $this->data['categories'] = $this->category_translation_model->get_list_category();
        //
        $this->form_validation->set_rules('image', 'Image', 'trim|required');
        $this->form_validation->set_rules('link', 'link', 'trim');
    }

    public function index()
    {
        $this->data['items'] = $this->slider_model->get_list_slider();
        $this->render('admin/slider/index_view');
    }

    public function create()
    {
        if($this->input->post('submit')){            
            if ($this->form_validation->run() == FALSE)
            {
                $this->render('admin/slider/create_view');
            }else{
                $category = $this->input->post('category');
                $link = $this->input->post('link');
                $status = $this->input->post('status');
                $image = $this->input->post('image');
                $insert_data = array('cate_id' => $category,'link' => $link, 'status'=>'status', 'image_url'=> $image, 'status' => $status, 'created_date' => date('Y-m-d H:i:s'), 'modified_date' => date('Y-m-d H:i:s'));
                if(!$this->slider_model->create($insert_data))
                {             
                    $this->postal->add('Tạo mới thất bại','error');
                }else $this->postal->add('Tạo mới thành công.','success');
                redirect('admin/slider');
            }                     
        }else{
            $this->render('admin/slider/create_view');
        }
    }

    public function edit($id)   
    {
        $input_slider['where'] = array("s.id" => $id);
        $this->data['item'] = $this->slider_model->get_row_slider($input_slider);
        if($this->input->post('submit')){
            if ($this->form_validation->run() == FALSE)
            {
                $this->render('admin/slider/create_view');
            }else{                            
                $category = $this->input->post('category');
                $link = $this->input->post('link');
                $status = $this->input->post('status');
                $image = $this->input->post('image');
                $update_data = array('cate_id' => $category, 'link' => $link, 'status'=>'status', 'image_url'=> $image, 'status' => $status, 'modified_date' => date('Y-m-d H:i:s'));
                if(!$this->slider_model->update($id , $update_data))
                {             
                    $this->postal->add('Sửa thất bại !','error');
                }else $this->postal->add('Sửa thành công.','success');
                redirect('admin/slider');
            }            
        }else{
            $this->render('admin/slider/edit_view');
        }
    }

    public function delete($slider_id){
        if(!$this->slider_model->delete($slider_id))
        {
            $this->postal->add('Xóa thất bại','error');
        }else{
            $this->postal->add('Xóa thành công','success');            
        }
        redirect('admin/slider');
    }
}