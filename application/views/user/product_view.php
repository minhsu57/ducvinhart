 <?php
 defined('BASEPATH') OR exit('No direct script access allowed');
 ?>

 <!-- Slider section -->
 <?php require "slider_view.php" ?>
 <!-- End slider section -->
 <!---->
 <!--header//-->
 <div class="product-model">
    <div class="container">
        <div class="title">
            <h3>Sản phẩm của chúng tôi</h3>
        </div>
        <ol class="breadcrumb fadeInRight animated">
            <li><a href="index.html">Trang chủ</a></li>
            <li class="active">Sản phẩm</li>
            <li class="active"><?php echo $breadcrumb; ?></li>
        </ol>
        <div class="col-md-12 product-model-sec fadeInLeft animated">
            <?php foreach ($items as $key => $value) { ?>                
            <div class="product-grid love-grid">
                <a href="<?php echo base_url(create_slug($value->name).'-'.$value->id); ?>">
                    <div class="more-product"><span> </span></div>
                    <div class="product-img b-link-stripe b-animate-go  thickbox">
                        <img src="<?php echo base_url($value->image) ?>" class="img-responsive" alt="" />
                        <div class="b-wrapper">
                            <h4 class="b-animate b-from-left  b-delay03">
                                <button class="btns"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</button>
                            </h4>
                        </div>
                    </div>
                </a>
                <div class="product-info simpleCart_shelfItem">
                    <div class="product-info-cust prt_name">
                        <h4><?php echo $value->name ?></h4>
                        <p>ID: <?php echo $value->model_id; ?></p>
                        <span class="item_price"><?php echo number_format($value->price,0,",","."); ?> <span class="vnd">VND</span></span>
                        <input type="button" class="item_add items" value="Mua hàng">
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</div>
    <!---->