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
						<img src="public/upload/images/introduce-pic.jpg" class="img-thumbnail"/>
					</a>
				</div>
				<div class="col-xs-12 col-sm-9 col-md-9 wow fadeInRight animated">
					<div class="mota mota_gioithieu">
						<div class="show">
							<p><strong>Giới thiệu:</strong></p>
							<p><strong>Xem cái đẹp và nghệ thuật nâng tầm giá trị sống,</strong><br>
								<em>Luôn sáng tạo và hiện thực ý tưởng của quý khách.</em></p>
							<p>Đức Vinh Art workshop là trang trực tuyến chuyên cung cấp sản phẩm và dịch vụ về hội hoạ, Sản phẩm thủ công, Trang
								trí – Trưng bày. Ngoài ra trang còn phục vụ Tư vấn – Thiết kế – Thi công cảnh quan mang đến những dịch vụ đa dạng,
								phong phú nhằm thoả mãn nhu cầu của quý khách hàng.</p>
							<div id="collapse_introduce" class="collapse">
								<p><strong>Tầm nhìn: </strong><em>Nghệ thuật luôn hữu hình và vô tận – để mang những tác phẩm nâng tầm thẩm mĩ, giá trị sống cho quý khách</em>.
									Đức Vinh Art workshop gallery thấu hiểu nhu cầu cần thiết về trang trí không gian sống, nơi làm việc – văn phòng
									kinh doanh. Trang là nơi tập hợp, khuyến khích các bạn hoạt động cùng ngành nghề cộng tác, đồng thời là đối tác
									tiên phong ở các lãnh vực văn hoá nghệ thuật.</p>
								<p>Các Sản phẩm và Dịch vụ của chúng tôi: <em>Tranh Trang trí</em>; <em>Sản phẩm thủ công</em>; <em>Trang trí – Trưng bày</em></p>
							</div>
							<div class="clearfix"></div>
							<div class="readmore read-more-show pull-right" type="button" data-toggle="collapse" data-target="#collapse_introduce"><span id="collapse_button">...Xem chi tiết</span></div>

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
					<div class="col-md-4">
						<div class="item4">
							<a href="products.html"><img src="<?php echo base_url($value->image); ?>" alt="<?php echo $value->name; ?>"/></a>
							<div class="item-info4">
								<h4><a href="products.html"><?php echo $value->name; ?></a></h4>
								<span>ID: <?php echo $value->model_id; ?></span>
								<h5>Giá: <?php echo number_format($value->price,0,",","."); ?>VND</h5>
								<a href="">Mua Ngay</a>
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
							<div class="news-container">
								<a href="<?php echo base_url('chuyen-de/'.create_slug($value->title).'-'.$value->id) ?>"><img src="<?php echo base_url($value->image); ?>" class="img-responsive" alt=""/></a>
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