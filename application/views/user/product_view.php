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
            <li><a href="<?php echo base_url(); ?>">Trang chủ</a></li>
            <li class="active">Sản phẩm</li>
            <li class="active"><?php echo $breadcrumb; ?></li>
        </ol>
        <div class="col-md-12 product-model-sec fadeInLeft animated">
            <div class="new-products">
                <?php foreach ($items as $key => $value) { ?>                    
                <div class="col-md-4">
                    <div class="item4">
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
</div>
    <!---->