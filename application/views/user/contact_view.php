 <?php
 defined('BASEPATH') OR exit('No direct script access allowed');
 ?>

 <!-- Slider section -->
 <?php require "slider_view.php" ?>
 <!-- End slider section -->
 <!---->
 <div class="contact">
 	<div class="container">
 		<ol class="breadcrumb">
 			<li><a href="index.html">Home</a></li>
 			<li class="active">Liên hệ</li>
 		</ol>

 		<div class="contact-head">
 			<h2>Liên hệ</h2>
 			<form>
 				<div class="col-md-6 contact-left">
 					<div class="address-info">
 						<h4>Thông tin liên hệ</h4>
 						<p>Địa chỉ: <?php echo $website->address; ?></p>
 						<p>Điện thoại : <?php echo $website->phone; ?></p>
 						<p>Mail: <?php echo $website->email; ?></p>
 						<p>Facebook: <a href="<?php echo $website->facebook; ?>"><?php echo $website->facebook; ?></a></p>
 						<div class="descr_info">
 							<p>Cảm ơn các bạn đã ghé thăm <?php echo $website->website_name; ?>!</p>
 							<p>Nếu có thắc mắc hoặc yêu cầu xin các bạn để lại thông tin cho chúng tôi theo mẫu, Đức Vinh Art sẽ có phản hồi sớm
 								nhất cho các bạn.</p>
 							</div>
 						</div>

 					</div>
 					<div class="col-md-6 contact-right">
 						<input type="text" placeholder="Tên của bạn" required id="full_name">
 						<input type="text" placeholder="E-mail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required id="email">
 						<input type="text" placeholder="Điện thoại" required id="phone">
 						<textarea placeholder="Nội dung" id="message"></textarea>
 						<input type="button" id="btn_send_contact" value="GỬI" onclick="sendInfo('<?php echo base_url(); ?>')">
 					</div>
 					<div class="clearfix"></div>
 				</form>
 			</div>
 		</div>
 			<div class="contact-map">
 				<!--Load google map-->
 				<?php $this->load->view('user/google_map_view') ?>
 			</div>
 	</div>
