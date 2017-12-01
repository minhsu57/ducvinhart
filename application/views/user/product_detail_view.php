 <?php
 defined('BASEPATH') OR exit('No direct script access allowed');
 ?>

 <!-- Slider section -->
 <?php //require "slider_view.php" ?>
 <!-- End slider section -->
 <!---->
 <!---->
 <div class="single-sec">
    <div class="container">
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>">Trang chủ</a></li>
            <li class="active">Sản phẩm</li>
            <li class="active"><?php echo $item->name; ?></li>
        </ol>
        <!-- start content -->
        <div class="col-md-12 det">
            <div class="single_left">
                <div class="grid images_3_of_2">
                    <div class="gallery">
                        <div class="single-main-image">
                            <a href="<?php echo base_url($item->image) ?>" title="<?php echo $item->name; ?>"><img src="<?php echo base_url($item->image) ?>" class="img-responsive" alt="<?php echo $item->name; ?>"></a>
                        </div>
                        <div class="single-sub-image">
                            <?php foreach ($product_images as $key => $value) { ?>
                            <div class="thumbnail">
                                <a href="<?php echo base_url($value->image) ?>" title="<?php echo $item->name; ?>"><img class="singe_thumb_image" src="<?php echo base_url($value->image) ?>" alt="<?php echo $item->name; ?>"></a>
                            </div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="single-right">
                <h3><?php echo $item->name; ?></h3>
                <div class="id">
                    <h4>ID: <?php echo $item->model_id; ?></h4>
                </div>
                <form action="" class="sky-form">
                    <fieldset>
                        <section>
                            <div class="rating">
                                <input type="radio" name="stars-rating" id="stars-rating-5">
                                <label for="stars-rating-5"><i class="icon-star"></i></label>
                                <input type="radio" name="stars-rating" id="stars-rating-4">
                                <label for="stars-rating-4"><i class="icon-star"></i></label>
                                <input type="radio" name="stars-rating" id="stars-rating-3">
                                <label for="stars-rating-3"><i class="icon-star"></i></label>
                                <input type="radio" name="stars-rating" id="stars-rating-2">
                                <label for="stars-rating-2"><i class="icon-star"></i></label>
                                <input type="radio" name="stars-rating" id="stars-rating-1">
                                <label for="stars-rating-1"><i class="icon-star"></i></label>
                                <div class="clearfix"></div>
                            </div>
                        </section>
                    </fieldset>
                </form>
                <div class="cost">
                    <div class="prdt-cost">
                        <ul>
                            <!-- <li>MRP:
                                <del>2.000.0000 VND</del>
                            </li> -->
                            <li>Giá: <span class="active product-price"><?php echo number_format($item->price,0,",","."); ?> VND</span></li>
                            <a <?php if($item->price > 0){ ?> onclick="addToCart('<?php echo base_url(); ?>', <?php echo $item->id; ?>, <?php echo $item->price; ?>)" <?php } ?> ><?php if($item->price <= 0) echo "Liên hệ"; else echo "Mua Ngay"; ?></a>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="item-list">
                    <ul>
                        <li>Chất liệu: <?php echo $item->material; ?></li>
                        <li>Màu sắc: <?php echo $item->color; ?></li>
                        <li>Kích thước: <?php echo $item->dimensions; ?></li>
                        <li>Thương hiệu: <?php echo $item->trademark; ?></li>
                    </ul>
                </div>
                <div class="single-bottom1">
                    <h6>Mô tả sản phẩm</h6>
                    <p class="prod-desc"><?php echo $item->description; ?></p>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="sofaset-info">
                    <h4>Chi tiết sản phẩm</h4>
                    <div>
                        <?php echo $item->detail; ?>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>

        <!-- *************** -->
        <div class="title">
            <h3>Sản phẩm cùng loại</h3>
        </div>
        <!---->
        <div class="product-model">
            <div class="container">
                <div class="col-md-12 new-products fadeInLeft animated">
                    <?php foreach ($products as $key => $value) { ?>                       
                    <div class="col-md-3">
                        <div class="item4">
                            <a href="<?php echo base_url(create_slug($value->name).'-'.$value->id); ?>"><img src="<?php echo base_url($value->image); ?>" alt="<?php echo $value->name; ?>"/></a>
                            <div class="item-info4">
                                <h4><a href="<?php echo base_url(create_slug($value->name).'-'.$value->id); ?>"><?php echo $value->name; ?></a></h4>
                                <span>ID: <?php echo $value->model_id; ?></span>
                                <h5>Giá: <?php echo number_format($value->price,0,",","."); ?>VND</h5>
                                <a href="">Mua Ngay</a>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
    <!---->
    <!-- magnific-popup -->
    <link type="text/css" href="<?php echo public_helper('lib/magnific-popup/magnific-popup.css') ?>" rel="stylesheet" media="all" />
    <script src="<?php echo public_helper('lib/magnific-popup/magnific-popup.min.js') ?>"></script>
    <script type="text/javascript">
    $(document).ready(function () {
            $('.gallery').each(function () { // the containers for all your galleries
                $(this).magnificPopup({
                    delegate: 'a', // the selector for gallery item
                    type: 'image',
                    gallery: {
                        enabled: true
                    }
                });
            });
        });
    </script>