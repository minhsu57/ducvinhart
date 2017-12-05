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
						<li><a href="<?php echo base_url('lien-he'); ?>">Liên hệ</a></li>
					</ul>
				</div>
				<div class="top_left">
					<ul>
						<li class="top_link" title="Email"><i class="fa fa-envelope-o fa-lg"></i><a href="mailto@example.com"><?php echo $website->email; ?></a></li>|
						<li class="top_link" title="Phone"><i class="fa fa-phone fa-lg"></i><a href=""><?php echo $website->phone; ?></a></li>|
					</ul>
					<div class="social">
						<ul>
							<li title="Facebook"><a target="_blank" href="<?php echo $website->facebook; ?>"><i class="fa fa-facebook-official fa-lg"></i></a></li>
							<li title="Google plus"><a target="_blank" href="<?php echo $website->google_plus; ?>"><i class="fa fa-google-plus fa-lg"></i></a></li>
							<li title="Youtube"><a target="_blank" href="<?php echo $website->youtube; ?>"><i class="fa fa-youtube-square fa-lg"></i></a></li>
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
				<a href="<?php echo base_url(); ?>" class="col-xs-12 col-md-4 pull-left"><img width="130px" src="<?php echo public_helper('upload/images/logo/logo.png') ?>" alt=""/></a>
				<div class="slogan col-xs-8">
					<h1><?php echo $website->website_name; ?></h1>
					<h2><span class="slogan_small"><?php echo $website->slogan; ?></span></h2>
				</div>
			</div>
			<div class="header_right">

				<div class="cart box_1">
					<a href="<?php echo base_url('cart'); ?>">
						<h3> <span class="simpleCart_total"></span><li class="fa fa-cart-plus"></li> Giỏ hàng (<span id="cart_couting" class="simpleCart_quantity"><?php echo $this->cart->total_items(); ?></span>)</h3>
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
						<li class="active grid"><a class="color1" href="<?php echo base_url(); ?>">TRANG CHỦ</a></li>
						<li class="grid"><a class="color2" href="">Sản phẩm</a>
							<ul>
								<?php foreach ($cate_product as $cate) { ?>
								<li><a href="<?php echo base_url('san-pham/'.create_slug($cate['name'])) ?>"><?php echo $cate['name']; ?></a>
									<?php 
									if(count($cate['children'])>0){
										echo '<ul>';                   
										foreach ($cate['children'] as $key => $value) { ?>
											<li><a href="<?php echo base_url('san-pham/'.create_slug($value['name'])) ?>"><?php echo $value['name']; ?></a></li>                      
										<?php }
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
								<li><a href="<?php echo base_url('dich-vu/'.$cate['cate_id'].'-'.create_slug($cate['name'])) ?>"><?php echo $cate['name']; ?></a></li>
								<?php } ?>
							</ul>
						</li>
						<li><a class="color5" href="">Chuyên đề</a>
							<ul>
								<?php foreach ($cate_topic as $cate) { ?>
								<li><a href="<?php echo base_url('chuyen-de/'.$cate['cate_id'].'-'.create_slug($cate['name'])) ?>"><?php echo $cate['name']; ?></a></li>
								<?php } ?>
							</ul>
						</li>
						<li><a class="color5" href="<?php echo base_url('lien-he'); ?>">liên hệ</a>
						</ul>
						<div class="search">
							<form method="get" action="<?php echo base_url('search'); ?>">
								<input type="text" name="id" required placeholder="Tìm kiếm...">
								<input type="submit" value="">
							</form>
						</div>
						<div class="clearfix"></div>
					</nav>
				</div>
			</div>
		</div>
	<!---->