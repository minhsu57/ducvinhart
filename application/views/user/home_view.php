<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>
	<!-- Slider section -->
	<?php require "slider_view.php" ?>
	<!-- End slider section -->
	<div class="main">
		<!---->
		<div class="introduce_section">
			<div class="container">
				<div class="col-xs-12 col-sm-3 col-md-3 wow fadeInLeft animated">
					<a href="#">
						<img src="<?php echo $website->home_introduce_image; ?>" class="img-thumbnail" alt="<?php echo $website->page_title; ?>">
					</a>
				</div>
				<div class="col-xs-12 col-sm-9 col-md-9 wow fadeInRight animated">
					<div class="mota mota_gioithieu">
						<div class="show">
							<?php echo $website->home_introduce_content; ?>
							<!-- <div class="clearfix"></div>
							<div class="readmore read-more-show pull-right" type="button" data-toggle="collapse" data-target="#collapse_introduce"><span id="collapse_button">...Xem chi tiết</span></div> -->

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- *************** -->
		<div class="title">
			<h3>“ Danh mục sản phẩm ”</h3>
		</div>
		<!-- *************** -->
		<div class="home_product_content">
			<div class="container">
				<?php foreach ($cate_product as $cate) { ?>
				<div class="col-xs-12 col-md-4 col-xs-6 wow fadeInLeft animated" style="visibility: visible; animation-name: fadeInLeft;">
					<div class="item">
						<div class="img">
							<a href="<?php echo base_url('san-pham/'.create_slug($cate['name'])) ?>" class="img"><img src="<?php echo base_url($cate['image']); ?>" alt="Nội thất – Sơn mài "></a>
						</div>
						<h3><a href="<?php echo base_url('san-pham/'.create_slug($cate['name'])) ?>"><?php echo $cate['name']; ?></a></h3>
					</div>
				</div>
				<?php } ?>
			</div>
		</div>
		<!-- *************** -->
		<div class="title">
			<h3>Sản phẩm mới</h3>
		</div>
		<!---->
		<div class="new">
			<div class="container">
				<div class="new-products">
					<?php foreach ($products as $key => $value) { ?>					
					<div class="item4">
						<div>
							<a href="<?php echo base_url(create_slug($value->name).'-'.$value->id); ?>"><img src="<?php echo base_url($value->image); ?>" alt="<?php echo $value->name; ?>"/></a>
							<div class="item-info4">
								<h4><a href="<?php echo base_url(create_slug($value->name).'-'.$value->id); ?>"><?php echo $value->name; ?></a></h4>
								<span>ID: <?php echo $value->model_id; ?></span>
								<h5>Giá: <?php echo number_format($value->price,0,",","."); ?>VND</h5>
								<a <?php if($value->price > 0){ ?> onclick="addToCart('<?php echo base_url(); ?>', <?php echo $value->id; ?>, <?php echo $value->price; ?>)" <?php } ?> ><?php if($value->price <= 0) echo "Liên hệ"; else echo "Mua Ngay"; ?></a>
							</div>
						</div>
					</div>
					<?php } ?>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!-- *************** -->
		<div class="title">
			<h3>Chuyên đề nổi bật</h3>
		</div>
		<!---->
		<div class="news-section">
			<div class="container">
				<div class="">
					<?php foreach ($news as $key => $value) { ?>
					<div class="col-xs-12 col-sm-6 col-md-4">
						<div class="item">
							<div class="news-container img">
								<a href="<?php echo base_url('chuyen-de/'.create_slug($value->title).'-'.$value->id) ?>"><img src="<?php echo base_url($value->image); ?>" class="img-responsive" alt="<?php echo $value->title; ?>"/></a>
							</div>
							<h3><a href="<?php echo base_url('chuyen-de/'.create_slug($value->title).'-'.$value->id) ?>"><?php echo $value->category_name; ?></a></h3>
							<h4><a href="<?php echo base_url('chuyen-de/'.create_slug($value->title).'-'.$value->id) ?>"><?php echo $value->short_content; ?></a></h4>
						</div>
					</div>
					<?php } ?>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>