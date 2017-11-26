<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!-- header -->
<div class="header_master">
	<div class="top_bg">
		<div class="container">
			<div class="header_top-sec">
				<div class="top_right">
					<ul>
						<li><a href="#">help</a></li>|
						<li><a href="contact.html">Contact</a></li>|
						<li><a href="login.html">Track Order</a></li>
					</ul>
				</div>
				<div class="top_left">
					<ul>
						<li class="top_link" title="Email"><i class="fa fa-envelope-o fa-lg"></i><a href="mailto@example.com"><?php echo $website->email; ?></a></li>|
						<li class="top_link" title="Phone"><i class="fa fa-phone fa-lg"></i><a href=""><?php echo $website->phone; ?></a></li>|
					</ul>
					<div class="social">
						<ul>
							<li title="Facebook"><a href="<?php echo $website->facebook; ?>"><i class="fa fa-facebook fa-lg"></i></a></li>
							<li title="Youtube"><a href="<?php echo $website->youtube; ?>"><i class="fa fa-youtube fa-lg"></i></a></li>
							<li title="Google plus"><a href="<?php echo $website->google_plus; ?>"><i class="fa fa-google-plus fa-lg"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="header_top">
		<div class="container">
			<div class="logo">
				<a href="index.html" class="col-xs-12 col-md-4 pull-left"><img width="130px" src="<?php echo public_helper('upload/images/logo/logo.png') ?>" alt=""/></a>
				<div class="slogan col-xs-8">
					<span><?php echo $website->website_name; ?></span>
					<span class="slogan_small"><?php echo $website->slogan; ?></span>
				</div>
			</div>
			<div class="header_right">

				<div class="cart box_1">
					<a href="cart.html">
						<h3> <span class="simpleCart_total">$0.00</span> (<span id="simpleCart_quantity" class="simpleCart_quantity">0</span> items)
							<img src="images/bag.png" alt=""></h3>
						</a>
						<!-- <p><a href="javascript:;" class="simpleCart_empty">Empty cart</a></p> -->
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!---->
	<div class="menu_sec">
		<div class="container">
			<div class="">
				<nav id='cssmenu'>
					<div id="head-mobile"></div>
					<div class="button"></div>
					<!-- start header menu -->
					<ul class="skyblue">
						<li class="active grid"><a class="color1" href="index.html">Home</a></li>
						<li class="grid"><a class="color2" href="#">Sản phẩm</a>
							<ul>
								<?php foreach ($cate_product as $cate) { ?>
								<li><a href=""><?php echo $cate['name']; ?></a>
									<?php 
									if(count($cate['children'])>0){
										echo '<ul>';                   
										foreach ($cate['children'] as $key => $value) {
											echo '<li><a href="'.base_url('english/'.$value['id']).'">'.$value['name'].'</a></li>';                        
										}
										echo '</ul>';
									}
									?>
								</li>
								<?php } ?>
							</ul>
						</li>
						<li><a class="color4" href="">dịch vụ</a>
							<ul>
								<?php foreach ($cate_services as $cate) { ?>
								<li><a href=""><?php echo $cate['name']; ?></a></li>
								<?php } ?>
							</ul>
						</li>
						<li><a class="color5" href="#">Chuyên đề</a>
							<ul>
								<?php foreach ($cate_topic as $cate) { ?>
								<li><a href=""><?php echo $cate['name']; ?></a></li>
								<?php } ?>
							</ul>
						</li>
						<li><a class="color5" href="contact.html">liên hệ</a>
						</ul>
						<div class="search">
							<form>
								<input type="text" value="" placeholder="Search...">
								<input type="submit" value="">
							</form>
						</div>
						<div class="clearfix"></div>
					</nav>
				</div>
			</div>
		</div>
	<!---->