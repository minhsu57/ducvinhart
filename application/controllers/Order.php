<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Order extends Public_Controller {
	function __construct() {
        // 
		parent::__construct();
		$this->load->library('cart');
		$this->load->helper('url');
		$this->load->database();
		date_default_timezone_set("Asia/Ho_Chi_Minh");
		$this->load->helper('language');
		$this->load->model('payment_model');
		$this->load->model('payment_detail_model');
	}

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{	
		$this->render('user/order_view');
	}
	public function submit(){
		if(isset($_POST['submit'])){
			$name       = $this->input->post('name');
			$email      = $this->input->post('email');
			$address    = $this->input->post('address');
			$phone      = $this->input->post('phone');
	        // insert payment
			$insert_data = array( 'name' => $name, 'email' => $email, 'address' => $address, 'phone' => $phone, 'created_date' => date('Y-m-d H:i:s'));
			if($this->payment_model->create($insert_data))
			{
				$new_id = $this->db->insert_id();
                // get info cart
				$cart = $this->cart->contents();
				foreach ($cart as $item) {
					$insert_detail = array( 'payment_id' => $new_id, 'product_id' => $item["id"], 'quantity' => $item["qty"], 'price' => $item["price"], 'created_date' => date('Y-m-d H:i:s'), 'modified_date' => date('Y-m-d H:i:s'));
					if($this->payment_detail_model->create($insert_detail)){
						$this->cart->destroy();
						$this->send_mail($name, $email, $address, $phone);
						$this->render('user/order_success_view');
					}else{
						echo '<script language="javascript">';
						echo 'alert("error")';
						echo '</script>';
					}	        		
				}

			}else{
				echo '<script language="javascript">';
				echo 'alert("error")';
				echo '</script>';
			}   
			$this->render('user/order_view');     	        
		}else{
			header("Location: ".base_url());
			exit();
		}
		
	}

	protected function send_mail($name, $email, $address, $phone)
    {   
        $config = Array(
            'mailtype' => 'html',
            'charset' => 'utf-8',
            'starttls'  => true,
            'newline'   => "\r\n"
        );
        
        /* Send email to customer */
        $subject = 'Đức Vinh Art - Đơn hàng mới';
        /* ************************ */
        $content = '<p style="text-align: center; font-size: 20px; color: #2196F3;"><b>Thông tin đơn hàng vừa nhận được</b></p>';
        $content .= '<p><b>Tên : '. $name.'</b></p>';
        $content .= '<p><b>Điện thoại : '. $phone.'</b></p>';
        $content .= '<p><b>Email : '. $email.'</b></p>';
        $content .= '<p><b>Địa chỉ : '. $address.'</b></p>';
        $this->load->library('email', $config); 
        $this->email->set_crlf( "\r\n" );
        //$this->email->set_newline("\n");
        $this->email->from('ducvinhart_support@gmail.com'); // change it to yours
        $this->email->to($this->data['website']->admin_email);// change it to yours
        $this->email->subject($subject);
        $this->email->message($content);
        if (!$this->email->send()){
            echo '<script language="javascript">';
			echo 'alert("Gửi mail đơn hàng thất bại")';
			echo '</script>';
        }
    }
}
