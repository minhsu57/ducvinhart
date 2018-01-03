<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Category extends Admin_Controller
{

    function __construct()
    {
        parent::__construct();
        if (!$this->ion_auth->in_group('admin')) {
            $this->postal->add('You are not allowed to visit the Categories page', 'error');
            redirect('admin');
        }
        $this->load->helper(array('form', 'url'));
        $this->load->model('slider_model');
        $this->load->model('category_model');
        $this->load->model('category_translation_model');
        date_default_timezone_set("Asia/Ho_Chi_Minh");
        $this->load->library('form_validation');
        $this->lang->load('form_validation', 'english');
        $this->form_validation->set_message('required', $this->lang->line('required'));
        $this->form_validation->set_error_delimiters('<span class="error">', '</span>');
        $this->form_validation->set_rules('name', 'lang:name', 'trim|required');
        $this->form_validation->set_rules('image', 'lang:Image', 'trim|required'); 
        $this->input_categories['order'] = array('sort_order' ,"asc");       
        $this->input_categories['where'] = array('level<>' => 2);        
        $this->data['categories'] = $this->category_translation_model->get_list_category($this->input_categories);
    }

    public function index()
    {     
        $this->data['categories'] = $this->category_translation_model->get_list_category($this->input_categories);
        $input['order'] = array("sort_order", "ASC");
        $this->data['items'] = $this->category_translation_model->get_list_category($input);
        $this->render('admin/category/index_view');
    }

    public function create()
    {
        if ($this->input->post('submit')) {
            if ($this->form_validation->run() == false) {
                $this->render('admin/category/create_view');
            } else {
                $name = $this->input->post('name');
                $parent = $this->input->post('parent') == "" ? null : $this->input->post('parent');
                // get level of parent
                if($parent!=null&&$parent!=""){ $input_where_level['where'] = array('id' => $parent); $parent_item = $this->category_model->get_row($input_where_level); }
                $level = $parent != null && $parent != "" ? $parent_item->level+1 : 0;
                $this->data['sort_order'] = $this->input->post('sort_order');
                $image = $this->input->post('image');
                $meta_keyword = $this->input->post('meta_keyword');
                $meta_description = $this->input->post('meta_description');
                $insert_category = array('sort_order' => $this->data['sort_order'], 'parent_id' => $parent, 'image' => $image, 'level' => $level);
                if ($this->category_model->create($insert_category)) {
                    $new_category_id = $this->db->insert_id();
                    $insert_translation_category = array('cate_id' => $new_category_id, 'lang_slug' => $this->lang_slug, 'name' => $name, 'name_slug' => create_slug($name), 'meta_keyword' => $meta_keyword, 'meta_description' => $meta_description, 'created_date'=>date('Y-m-d H:i:s'), 'modified_date'=>date('Y-m-d H:i:s'));
                    if (!$this->category_translation_model->create($insert_translation_category)) {
                        $this->postal->add('Tạo mới thất bại !', 'error');
                    }else{
                        $this->postal->add('Tạo mới thành công', 'success');
                    }
                } else {
                    $this->postal->add('Tạo mới thất bại.', 'success');
                }
                redirect('admin/category');
            }
        } else {
            $this->render('admin/category/create_view');
        }
    }

    public function edit($id)
    {
        // get data this $id
        $edit_cate['where'] = array('cate_id' => $id, "lang_slug" => $this->lang_slug);
        $this->data["item"] = $this->category_translation_model->get_row_category($edit_cate);
            
        if ($this->input->post('submit')) {
            if ($this->form_validation->run() == false) {
                $this->render('admin/category/edit_view');
            } else {
                $this->data['name']= $this->input->post('name');
                $parent = $this->input->post('parent');
                // get level of parent
                if($parent!=null&&$parent!=""){ $input_where_level['where'] = array('id' => $parent); $parent_item = $this->category_model->get_row($input_where_level); }
                $level = $parent != null && $parent != "" ? $parent_item->level+1 : 0;
                $this->data['sort_order'] = $this->input->post('sort_order');
                $this->data['image'] = $this->input->post('image');
                $this->data['meta_keyword'] = $this->input->post('meta_keyword');
                $this->data['meta_description'] = $this->input->post('meta_description');
                $update_cate = array('sort_order' => $this->data['sort_order'], 'parent_id' => $parent, 'image' => $this->data['image'], 'level' => $level);
                if ($this->category_model->update($id, $update_cate)) {
                    $update_translation_category = array('name' => $this->data['name'], 'name_slug' => create_slug($this->data['name']), 'meta_keyword' => $this->data['meta_keyword'], 'meta_description' => $this->data['meta_description'], 'modified_date'=>date('Y-m-d H:i:s'));
                    if (!$this->category_translation_model->update($this->input->post('translation_id'), $update_translation_category)) {
                        $this->postal->add('Chỉnh sửa thất bại !', 'error');
                    }else{
                        $this->postal->add('Chỉnh sửa thành công', 'success');
                    }
                } else {
                    $this->postal->add('Tạo mới thất bại !', 'success');
                }
                redirect('admin/category');
            }
        } else {
            $this->render('admin/category/edit_view');
        }
    }

    public function delete($id)
    {
        // check exist slider relation with category
        $where = array('cate_id' => $id);
        $is_existed_slider = $this->slider_model->check_exists($where);
        // check exist children category of this category
        $where = array('parent_id' => $id);
        $is_existed_child_category = $this->category_model->check_exists($where);
        if ($is_existed_slider) {
            $this->postal->add('Không thể xóa, vui lòng xóa slider có liên quan đến Category này trước !', 'error');
        } elseif ($is_existed_child_category) {
            $this->postal->add('Không thể xóa, vui lòng xóa category con của category này trước !', 'error');
        } else {
            $delete_translation = array('cate_id' => $id);
            if (!$this->category_translation_model->del_rule($delete_translation)) {
                $this->postal->add('Xóa Category thất bại', 'error');
            } else {
                if($this->category_model->delete($id)){
                    $this->postal->add('Xóa Category thành công', 'success');
                }else{
                    $this->postal->add('Xóa Category thất bại', 'error');
                }                
            }
        }
        redirect('admin/category');
    }
}
