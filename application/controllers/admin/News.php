<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class News extends Admin_Controller
{

    function __construct()
    {
        parent::__construct();
        if(!$this->ion_auth->in_group('admin'))
        {
            $this->postal->add('You are not allowed to visit the Categories page','error');
            redirect('admin');
        }
        $this->load->model('news_model');
        $this->load->model('category_translation_model');
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
        date_default_timezone_set("Asia/Ho_Chi_Minh");
        $this->lang->load('form_validation', 'english');
        $this->form_validation->set_error_delimiters('<span class="form_error">','</span>');
        $this->load->library('pagination');
        //
        $this->form_validation->set_rules('category', 'Category', 'trim|required');        
        $this->form_validation->set_rules('title', 'Title', 'trim|required');
        $this->form_validation->set_rules('content', 'Content', 'trim|required');
        $this->form_validation->set_rules('short_content', 'Short Content', 'trim|required');
        $this->form_validation->set_rules('image', 'Wrapper photo', 'trim|required');
        //
        $this->input_categories = array("level<>"=>0); 
    }

    protected function get_categories($type_id){
        $input_categories['where'] = array('parent_id' => $type_id);
        $this->data['type_id'] = $type_id;
        $this->data['categories'] = $this->category_translation_model->get_list_category($input_categories);
    }

    public function index()
    {
        $this->type = $this->input->get("type");
        //condition to get total row and list of news
        if($this->type == "services"){
            $input_news['where'] = array('parent_id' => 28);
            $this->data["type_id"] = 28;
            $config['base_url'] = site_url('admin/news?type=services');
        }else{ 
            $this->data["type_id"] = 35;
            $input_news['where'] = array('parent_id<>' => 28);
            $config['base_url'] = site_url('admin/news');
        }
        //pagination settings
        $config["per_page"] = 15;        
        $config['total_rows'] = $this->news_model->get_total_news($input_news);
        $this->data['total'] = $config['total_rows'];
        $choice = $config["total_rows"] / $config["per_page"];
        $config["num_links"] = $choice;     
        
        // pagination
        $page = ($this->input->get('page')) ? $this->input->get('page') : 1;
        $this->pagination->initialize($config);        
        $this->data['pagination'] = $this->pagination->create_links();
        $offset = ($page  == 1) ? 0 : ($page * $config['per_page']) - $config['per_page'];
        // record number for each page
        $this->data['record_number'] = ($config["per_page"] * ($page - 1) ) + 1;
        // get list data
        $input_news['limit'] = array($config["per_page"], $offset);

        $input_news['order'] = array('modified_date','DESC');
        $this->data['items'] = $this->news_model->get_list_news($input_news);
        //$this->data['next_previous_pages'] = $this->menu_item_model->all_pages;
        $this->render('admin/news/index_view');
    }

    public function create($type_id)
    {  
        $this->get_categories($type_id);     
        if($this->input->post('submit')){
            if ($this->form_validation->run() == FALSE)
            {
               $this->render('admin/news/create_view');
           }else{
            $category = $this->input->post('category');
            $title = $this->input->post('title');
            $content = $this->input->post('content');
            $image   = $this->input->post('image');
            $short_content = $this->input->post('short_content');
            $keyword = $this->input->post('keyword');
            $meta_description = $this->input->post('meta_description');

            $insert_data = array('cate_id' => $category, 'title' => $title, 'short_content' => $short_content,'status' => 1, 'content' => $content, 'image' => $image, 'lang_slug' => $this->lang_slug, 'meta_keyword' => $keyword, 'meta_description' => $meta_description, 'created_date'=>date('Y-m-d H:i:s'), 'modified_date'=>date('Y-m-d H:i:s'));
            if(!$this->news_model->create($insert_data))
            {             
                $this->postal->add('Thêm bài viết thất bại !','error');
            }else{ $this->postal->add('Thêm bài viết thành công.','success'); }
            if($type_id == 28){ redirect('admin/news?type=services'); } else{ redirect('admin/news');  } 
        }

    }else{ $this->render('admin/news/create_view'); } 
}

public function edit($item_id,$type_id)
{
    $this->get_categories($type_id);
    $input['where'] = array('id' => $item_id);
    $this->data['item'] = $this->news_model->get_row($input);        
    if($this->input->post('submit')){
        if ($this->form_validation->run() == FALSE)
        {
           $this->render('admin/news/edit_view');
       }else{
        $category   = $this->input->post('category');
        $title   = $this->input->post('title');
        $content = $this->input->post('content');
        $image   = $this->input->post('image');
        $short_content = $this->input->post('short_content');
        $keyword = $this->input->post('keyword');
        $meta_description = $this->input->post('meta_description');

        $insert_data = array('cate_id' => $category, 'title' => $title,'short_content' => $short_content,'status' => 1, 'content' => $content, 'image' => $image, 'lang_slug' => $this->lang_slug, 'meta_keyword' => $keyword, 'meta_description' => $meta_description, 'modified_date'=>date('Y-m-d H:i:s'));
        if(!$this->news_model->update($item_id, $insert_data))
        {             
            $this->postal->add('Chỉnh sửa bài viết thất bại !','error');
        }else $this->postal->add('Chỉnh sửa bài viết thành công.','success');
        if($type_id == 28){ redirect('admin/news?type=services'); } else{ redirect('admin/news');  }
    }
}else{ $this->render('admin/news/edit_view');}
}

public function delete($item_id){
    $where = array('item_id' => $item_id);

    if(!$this->news_model->delete($item_id))
    {
        $this->postal->add('Tin tức không tồn tại','error');
        redirect('admin/news');
    }else{
        $this->postal->add('Xóa tin tức thành công','success');            
    }
    redirect('admin/news');
}

public function changeStatus($item_id, $status){
    $update_data = array('status' => $status == 0 ? 1 : 0);
    if(!$this->news_model->update($item_id, $update_data))
    {
        $this->postal->add('Thông tin không tồn tại','error');
    } else{            
        $this->postal->add('Cập nhật Trạng thái thành công - mã Tin tức : '.$item_id,'success');        
    }
    redirect('admin/news');
}
}