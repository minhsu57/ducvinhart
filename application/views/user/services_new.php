<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!-- Slider section -->
<?php require "slider_view.php" ?>
<!-- End slider section -->
<!-- News -->
<div class="main">
    <div class="title">
        <h3>Dịch vụ của chúng tôi</h3>
    </div>
    <!--breadcrumb-->
    <div class="container">
        <ol class="breadcrumb">
            <li><a href="index.html">Trang chủ</a></li>
            <li class="active">Dịch vụ</li>
            <li class="active"><?php echo $breadcrumb; ?></li>
        </ol>
    </div>
    <!--end breadcrumb-->
    <!-- Services area -->
    <div class="services-area">
        <div class="container">
            <div class="">
                <?php foreach ($items as $key => $value) { ?>                
                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="item">
                        <div class="news-container">
                            <a href="services-details.html"><img src="<?php echo base_url($value->image); ?>" class="img-responsive" alt=""/></a>
                        </div>
                        <h3><a href="services-details.html"><?php echo $value->title; ?></a></h3>
                        <h4><a href="services-details.html"><?php echo $value->short_content; ?></a></h4>
                    </div>
                </div>
                <?php } ?>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<!---->

