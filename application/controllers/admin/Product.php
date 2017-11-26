<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends Admin_Controller
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

        $this->load->model('product_model');
        $this->load->model('product_translation_model');
        $this->load->model('product_images_model');
        $this->load->model('category_translation_model');        
        $input_categories = array();
        $this->data['categories'] = $this->category_translation_model->get_list_category($input_categories);
        //
        $this->form_validation->set_rules('name', 'Tên', 'trim|required');
        $this->form_validation->set_rules('image', 'Hình ảnh', 'trim|required');
        //        
        $this->where = array();
    }

    public function index()
    {
        $this->data['items'] = $this->product_model->get_list_product($this->where);
        $this->render('admin/product/index_view');
    }

    public function create()
    {
        if($this->input->post('submit')){            
            if ($this->form_validation->run() == FALSE)
            {
                $this->render('admin/product/create_view');
            }else{
                $name = $this->input->post('name');
                $category = $this->input->post('category');
                $model_id = $this->input->post('model_id');
                $price = $this->input->post('price');   
                $image = $this->input->post('image');
                $dimensions = $this->input->post('dimensions');
                $weight = $this->input->post('weight');
                $material = $this->input->post('material');
                $color = $this->input->post('color');
                $trademark = $this->input->post('trademark');
                $description = $this->input->post('description');
                $detail = $this->input->post('detail');
                $meta_keyword = $this->input->post('meta_keyword');
                $meta_description = $this->input->post('meta_description');
                $additions_image = $this->input->post('additions_image');
                $sort_order_images = $this->input->post('sort_order_images');
                // insert product first
                $insert_product = array('cate_id' => $category, 'model_id' => $model_id, 'price' => $price, 'image' => $image, 'dimensions' => $dimensions, 'weight' => $weight,  'status'=> 1, 'created_date' => date('Y-m-d H:i:s'), 'modified_date' => date('Y-m-d H:i:s'));
                if ($this->product_model->create($insert_product)) {
                    // insert product translation
                    $new_id = $this->db->insert_id();
                    $insert_product_translation = array('product_id' => $new_id, 'name' => $name, 'lang_slug' => $this->lang_slug, 'description' => $description, 'detail' => $detail, 'material' => $material, 'color' => $color, 'trademark' => $trademark, 'meta_keyword' => $meta_keyword, 'meta_description' => $meta_description, 'created_date'=>date('Y-m-d H:i:s'), 'modified_date'=>date('Y-m-d H:i:s'));
                    if (!$this->product_translation_model->create($insert_product_translation)) {
                        $this->postal->add('Tạo mới thất bại !', 'error');
                    }else{
                        // insert product images
                        if ($additions_image) 
                        {                    
                            foreach ($additions_image as $key => $value) {
                                $insert_product_image = array('product_id' => $new_id, 'image' => $value, 'sort_order' => $sort_order_images[$key]);
                                if (!$this->product_images_model->create($insert_product_image)) {
                                    break;
                                    $this->postal->add('Tạo mới thất bại !', 'error');
                                }
                            }
                        }
                        $this->postal->add('Tạo mới thành công', 'success');
                    }
                } else {
                    $this->postal->add('Tạo mới thất bại.', 'success');
                }
                redirect('admin/product');
            }                     
        }else{
            $this->render('admin/product/create_view');
        }
    }

    public function edit($id, $translation_id)   
    {
        $this->where = array("p.id" => $id);
        $this->data['item'] = $this->product_model->get_row_product($this->where);
        $this->data['item']->translation_id = $translation_id;
        // get all of additions images
        $input_product_images['where'] = array('product_id' => $id);
        $input_product_images['order'] = array('sort_order' , 'ASC');
        $this->data['product_images'] = $this->product_images_model->get_list($input_product_images);
        if($this->input->post('submit')){
            if ($this->form_validation->run() == FALSE)
            {
                $this->render('admin/product/edit_view');
            }else{                            
                $name = $this->input->post('name');
                $category = $this->input->post('category');
                $model_id = $this->input->post('model_id');
                $price = $this->input->post('price');   
                $image = $this->input->post('image');
                $dimensions = $this->input->post('dimensions');
                $weight = $this->input->post('weight');
                $material = $this->input->post('material');
                $color = $this->input->post('color');
                $trademark = $this->input->post('trademark');
                $description = $this->input->post('description');
                $detail = $this->input->post('detail');
                $meta_keyword = $this->input->post('meta_keyword');
                $meta_description = $this->input->post('meta_description');
                $additions_image = $this->input->post('additions_image');
                $sort_order_images = $this->input->post('sort_order_images');
                // update product first
                $update_product = array('cate_id' => $category, 'model_id' => $model_id, 'price' => $price, 'image' => $image, 'dimensions' => $dimensions, 'weight' => $weight, 'modified_date' => date('Y-m-d H:i:s'));
                if ($this->product_model->update($id, $update_product)) {
                    // update product translation
                    $update_product_translation = array('name' => $name, 'description' => $description, 'detail' => $detail, 'material' => $material, 'color' => $color, 'trademark' => $trademark, 'meta_keyword' => $meta_keyword, 'meta_description' => $meta_description, 'modified_date'=>date('Y-m-d H:i:s'));
                    if (!$this->product_translation_model->update($translation_id, $update_product_translation)) {
                        $this->postal->add('Cập nhật thất bại !', 'error');
                    }else{
                        // update product images
                        if ($additions_image) 
                        {
                            $delete_where = array('product_id' => $id);
                            if(!$this->product_images_model->del_rule($delete_where)){
                                $this->postal->add('Cập nhật hình ảnh bổ sung thất bại !', 'error');
                            }else{
                                foreach ($additions_image as $key => $value) {
                                    $insert_product_image = array('product_id' => $id, 'image' => $value, 'sort_order' => $sort_order_images[$key]);
                                    if (!$this->product_images_model->create($insert_product_image)) {
                                        break;
                                        $this->postal->add('Cập nhật thất bại !', 'error');
                                    }
                                }
                            }                 
                        }
                        $this->postal->add('Cập nhật thành công', 'success');
                    }
                } else {
                    $this->postal->add('Cập nhật thất bại.', 'success');
                }
                redirect('admin/product');
            }            
        }else{
            $this->render('admin/product/edit_view');
        }
    }

    public function delete($product_id){
        $delete_product = array('product_id' => $product_id);
        if (!$this->product_translation_model->del_rule($delete_product)) {
            $this->postal->add('Xóa Sản phẩm (translation) thất bại', 'error');
        } else {
            if (!$this->product_images_model->del_rule($delete_product)) {
                $this->postal->add('Xóa hình ảnh bổ sung thất bại', 'error');
            } else {                
                if($this->product_model->delete($product_id)){
                    $this->postal->add('Xóa Sản phẩm thành công', 'success');
                }else{
                    $this->postal->add('Xóa Sản phẩm thất bại', 'error');
                }  
            }              
        }
        redirect('admin/product');
    }
}