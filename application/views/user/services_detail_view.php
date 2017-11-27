<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!-- Slider section -->
<?php //require "slider_view.php" ?>
<!-- End slider section -->
<!---->
<div class="services-details-area">
	<!--breadcrumb-->
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="<?php echo base_url(); ?>">Trang chủ</a></li>
			<li><a href="index.html">Dịch vụ</a></li>
			<li class="active"><?php echo $item->title; ?></li>
		</ol>
	</div>
	<!--end breadcrumb-->
	<!-- start content -->
	<div class="col-md-12 det">
		<div class="container">
			<div class="col-lg-9 col-md-8">
				<div class="single-latest-text">
					<h2 class="title"><?php echo $item->title; ?></h2>
					<div class="single-item-comment-view">
						<div class="fb-share-button" data-href="https://developers.facebook.com/docs/plugins/" data-layout="button" data-size="small"
						data-mobile-iframe="true">
						<a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse">Chia sẻ</a>
					</div>
					<span><i class="fa fa-clock-o"></i>Ngày 25 tháng 11 năm 2017</span>
				</div>
				<div class="service-text">
					<?php echo $item->content; ?>
				</div>
			</div>

		</div>
		<div class="col-lg-3 col-md-4">
			<div class="sidebar-widget">
				<div class="single-sidebar-widget">
					<h4 class="title">Dịch vụ tương tự</h4>
					<div class="recent-content">
						<div class="recent-content-item">
							<a href="#"><img src="images/sen-da.png" alt=""></a>
							<div class="recent-text">
								<h4><a href="#">Ngôn ngữ của tranh dân gian là những ý niệm về vũ trụ quan, nhân sinh quan...</a></h4>
							</div>
						</div>
						<div class="recent-content-item">
							<a href="#"><img src="images/tranh-son-mai-phong-khach1.png" alt=""></a>
							<div class="recent-text">
								<h4><a href="#">Nghệ nhân Nguyễn Hữu Quả, làng tranh Đông Hồ, xã Song Hồ, huyện Thuận Thành, </a></h4>
							</div>
						</div>
						<div class="recent-content-item">
							<a href="#"><img src="images/tranh-son-mai-phong-khach2.png" alt=""></a>
							<div class="recent-text">
								<h4><a href="#">Hơn nữa, nhiều thầy tào, thầy cúng tuổi đã cao nhưng chưa có con cháu có đủ tố chất để truyền...</a></h4>
							</div>
						</div>
						<div class="recent-content-item">
							<a href="#"><img src="images/Wedding-600W-x-600Hpx.jpg" alt=""></a>
							<div class="recent-text">
								<h4><a href="#">Writing Skill</a></h4>
							</div>
						</div>
					</div>
				</div>
				<div class="single-sidebar-widget">
					<h4 class="title">Search by Tags</h4>
					<ul class="tags">
						<li><a href="#">Photoshop</a></li>
						<li><a href="#">Design</a></li>
						<li><a href="#">Tutorial</a></li>
						<li><a href="#">Courses</a></li>
						<li><a href="#">Premium</a></li>
						<li><a href="#">Designtuto</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="clearfix"></div>
</div>
<!---->
<div id="fb-root"></div>
<script>
	(function (d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) return;
		js = d.createElement(s); js.id = id;
		js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11';
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
</script>