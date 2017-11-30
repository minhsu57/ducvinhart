<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cart extends Public_Controller {
	function __construct() {
        // 
		parent::__construct();
		$this->load->library('cart');
		$this->load->helper('url');
		$this->load->database();
		$this->load->model('product_model');
		$this->load->model('product_translation_model');
	}
	public function index()
	{	
		$this->data["cart_list"] = $this->cart->contents();
		//$this->data['product_new'] = $this->product_model->get_product_new();
		$this->render('user/cart_view');
	}
	public function addToCart(){
		$id   	= $this->input->post('id');
		$qty  	= $this->input->post('qty');
		$price  = $this->input->post('price');
		$data 	= array(
			'id'      => $id,
	        'qty'     => $qty,
	        'price'   => $price,
	        'name'    => "aaaaaaaaa",
	        'coupon'  => "aaaaaaaa"
			);
        // Them san pham vao gio hang
		if($this->cart->insert($data)){
			echo json_encode(array("add_cart"=>TRUE, "qty"=>$this->cart->total_items(), "data"=>$data));
		}else{
			echo json_encode(array("add_cart"=>FALSE, "data"=>$data));
		}
	}
	public function updateCart(){
		$id   	= $this->input->post('id');
		$qty  = $this->input->post('qty');
		$data = $this->cart->contents();
		$total = 0;
		foreach($data as $item){
			if($item['id'] == $id){
				$item['qty'] = $qty;
				$update = array("rowid" => $item['rowid'], "qty" => $item['qty']);
			}
			$total += $item['qty'] * $item['price'];
		}
        // Them san pham vao gio hang
		if($this->cart->update($update)){
			echo json_encode(array("add_cart"=>TRUE,"qty"=>$this->cart->total_items(), "total"=>number_format($total)));
		}else{
			echo json_encode(array("add_cart"=>FALSE));
		}
	}
	public function delCart(){
		$id   	= $this->input->post('id');
		$data = $this->cart->contents();
		$total = 0;
		foreach($data as $item){
			if($item['id'] == $id){
				$item['qty'] = 0;
				$update = array("rowid" => $item['rowid'], "qty" => $item['qty']);
			}
		}
        // Them san pham vao gio hang
		if($this->cart->update($update)){
			echo json_encode(array("del_cart"=>TRUE));
		}else{
			echo json_encode(array("del_cart"=>FALSE));
		}
	}
}
