<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!-- Slider section -->
<?php //require "slider_view.php" ?>
<!-- End slider section -->
<!---->
<?php 
$year = date('Y', strtotime($item->created_date));
$month = date('m', strtotime($item->created_date));
$date = date('d', strtotime($item->created_date)); 
?>
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
						<div class="fb-share-button" data-href="<?php echo $website->facebook; ?>" data-layout="button" data-size="small"
							data-mobile-iframe="true">
							<a class="fb-xfbml-parse-ignore" target="_blank" href="<?php echo $website->facebook; ?>">Chia sẻ</a>
						</div>
						<span><i class="fa fa-clock-o"></i>Ngày <?php echo $date; ?> tháng <?php echo $month; ?> năm <?php echo $year; ?></span>
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
							<?php foreach ($same_items as $key => $value) { ?>							
							<div class="recent-content-item">
								<a href="<?php echo base_url('dich-vu/'.create_slug($value->title).'-'.$value->id) ?>"><img src="<?php echo base_url($value->image); ?>" alt="<?php echo $value->title; ?>"></a>
								<div class="recent-text">
									<h4><a href="<?php echo base_url('dich-vu/'.create_slug($value->title).'-'.$value->id) ?>"><?php echo $value->title; ?></a></h4>
								</div>
							</div>
							<?php } ?>
						</div>
					</div>
					<div class="single-sidebar-widget">
					<h4 class="title">Từ khóa nổi bật</h4>
						<ul class="tags">
							<li><?php echo $website->keyword; ?></li>
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