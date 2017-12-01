<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Order extends Admin_Controller
{

    function __construct()
    {
        parent::__construct();
        if(!$this->ion_auth->in_group('admin'))
        {
            $this->postal->add('You are not allowed to visit the Categories page','error');
            redirect('admin');
        }
        $this->load->model('payment_model');
        $this->load->model('payment_detail_model');
        date_default_timezone_set("Asia/Ho_Chi_Minh");
    }

    public function index()
    {
        $input['order'] = array('id','DESC');       
        $this->data['items'] = $this->payment_model->get_list($input);
        $this->render('admin/payment/index_view');
    }


    public function delete($item_id){
        $input['where'] = array('payment_id' => $item_id);  
        $details = $this->payment_detail_model->get_list($input);
        foreach ($details as $detail) {
            if(!$this->payment_detail_model->delete($detail->id))
            {
                $this->postal->add('chi tiết đơn hàng không tồn tại '.$detail->id,'error');
            }
        }
        if(!$this->payment_model->delete($item_id))
        {
            $this->postal->add('Record không tồn tại','error');
        }else{
            $this->postal->add('Xóa đơn hàng thành công - ID : '.$item_id,'success');            
        }
        redirect('admin/order');
    }

    public function view($item_id){
        $this->load->model('product_model');
        $this->load->model('product_images_model');
        // update is view state
        $update_data = array('is_view' => 1);
        $this->payment_model->update($item_id,$update_data);
        // end update is view
        $this->data['id'] = $item_id;
        $input['where'] = array('payment_id' => $item_id);  
        $this->data["items"] = $this->payment_detail_model->get_list($input);
        $this->render('admin/payment/edit_view');
    }

    public function delete_detail($item_id, $payment_id){
        if(!$this->payment_detail_model->delete($item_id))
        {
            $this->postal->add('chi tiết đơn hàng không tồn tại '.$detail->id,'error');
        }else{
            $this->postal->add('Xóa chi tiết đơn hàng thành công - ID : '.$item_id,'success');            
        }
        redirect('admin/order/view/'.$payment_id);
    }

    public function set_payment($item_id){
        $update_data = array('is_pay' => 1);
        if(!$this->payment_model->update($item_id, $update_data ))
        {
            $this->postal->add('Record không tồn tại','error');
        }else{
            $this->postal->add('Cập nhật trạng thái đơn hàng thành công - ID : '.$item_id,'success');            
        }
        redirect('admin/order');
    }
    
}