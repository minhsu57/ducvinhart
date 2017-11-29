<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!-- Slider section -->
<?php require "slider_view.php" ?>
<!-- End slider section -->
<!-- News -->
<div class="main">
    <div class="title">
        <h3><?php echo $page_header; ?> của chúng tôi</h3>
    </div>
    <!--breadcrumb-->
    <div class="container">
        <ol class="breadcrumb">
            <li><a href="index.html">Trang chủ</a></li>
            <li class="active"><?php echo $page_header; ?></li>
            <li class="active"><?php echo $breadcrumb; ?></li>
        </ol>
    </div>
    <!--end breadcrumb-->
    <!-- Services area -->
    <div class="services-area">
        <div class="container">
            <div class="row">
                <?php foreach ($items as $key => $value) {
                    $year = date('Y', strtotime($value->created_date));
                    $month = date('m', strtotime($value->created_date));
                    $date = date('d', strtotime($value->created_date)); 
                    ?>                
                    <div class="col-md-12">
                        <div class="news-row">
                            <div class="news-left-content col-md-3">
                                <a href="<?php echo base_url(create_slug($page_header).'/'.create_slug($value->title).'-'.$value->id) ?>"><img src="<?php echo base_url($value->image); ?>" class="img-responsive" alt=""/></a>
                            </div>
                            <div class="news-right-content col-md-9">                            
                                <h3 class="news-title"><a href="<?php echo base_url(create_slug($page_header).'/'.create_slug($value->title).'-'.$value->id) ?>"><?php echo $value->title; ?></a></h3>
                                <h3 class="news-date"><li class="fa fa-clock-o"> Ngày <?php echo $date; ?> tháng <?php echo $month; ?> năm <?php echo $year; ?></li></h3>
                                <h4 class="news-content"><?php echo $value->short_content; ?></h4>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                    <div class="clearfix"></div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <?php echo $pagination; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!---->

