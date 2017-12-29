<?php defined('BASEPATH') or exit('No direct script access allowed');?>
<div class="container" style="margin-top:0px;">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="text-center">NEW PRODUCT</h3>
            <?php echo form_open_multipart('admin/product/create');?>
            <div class="col-lg-12">
                <h3 class="col-lg-10" style="margin-top: 0"></h3>

                <div class="col-lg-2 pull-right">
                    <?php echo form_submit('submit', 'Save', 'class="btn btn-primary btn-lg btn-sm"');?>
                    <?php echo anchor('/admin/product', 'Cancel', 'class="btn btn-default btn-lg btn-sm"');?>
                </div>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <label>Tên <span class="error">*</span></label>
                <span class="error"><?php echo form_error('name'); ?></span>
                <input type="text" name="name" class="form-control" value="<?php echo set_value("name"); ?>">
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Categories', 'parent');
                echo form_error('parent', '<span class="error">');
                ?>
                <select class="form-control" name="category">
                    <?php foreach ($categories as $value) { ?>
                    <option value="<?php echo $value->cate_id; ?>" <?php echo set_select('category',$value->cate_id,( !empty($this->input->get('category')) && $this->input->get('category') == $value->cate_id ? TRUE : FALSE )); ?>><?php if($value->level==1) echo "-- "; else if($value->level==2) echo "------ "; echo $value->name; ?></option>
                    <?php } ?>
                </select>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <label>Model ID</label>
                <span class="error"><?php echo form_error('model_id'); ?></span>
                <input type="text" name="model_id" class="form-control" value="<?php echo set_value("model_id"); ?>">
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <label>Giá</label>
                <span class="error"><?php echo form_error('price'); ?></span>
                <input type="text" name="price" class="form-control" value="<?php echo set_value("price"); ?>">
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <label>Kích thước</label>
                <span class="error"><?php echo form_error('dimensions'); ?></span>
                <input type="text" name="dimensions" class="form-control" value="<?php echo set_value("dimensions"); ?>">
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <label>Cân nặng</label>
                <span class="error"><?php echo form_error('weight'); ?></span>
                <input type="text" name="weight" class="form-control" value="<?php echo set_value("weight"); ?>">
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <label>Chất liệu</label>
                <span class="error"><?php echo form_error('material'); ?></span>
                <input type="text" name="material" class="form-control" value="<?php echo set_value("material"); ?>">
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <label>Màu sắc</label>
                <span class="error"><?php echo form_error('color'); ?></span>
                <input type="text" name="color" class="form-control" value="<?php echo set_value("color"); ?>">
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <label>Thương hiệu</label>
                <span class="error"><?php echo form_error('trademark'); ?></span>
                <input type="text" name="trademark" class="form-control" value="<?php echo set_value("trademark"); ?>">
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <label>Mô tả</label>
                <span class="error"><?php echo form_error('description'); ?></span>
                <textarea class="form-control" name="description"><?php echo set_value("description"); ?></textarea> 
            </div>
            <div class="form-group col-md-8 col-lg-8">
                <label>Chi tiết</label>
                <span class="error"><?php echo form_error('detail'); ?></span>
                <textarea class="ckeditor" name="detail"><?php echo set_value("detail"); ?></textarea>
            </div>
            <div class="form-group col-md-12">
                <label>Hình ảnh <span class="error">*</span></label>
                <?php echo form_error('image','<p class="error">'); ?>
                <div>
                    <input type="hidden" name="image" id="image" value="<?php echo set_value("image"); ?>">
                    <img src="<?php echo base_url(set_value("image")); ?>" id="image_link_img" style="max-height: 100px" onclick="openPopup()" name="image_link_img">
                    <button type="button" class="btn btn-default btn-browse-image" onclick="openPopup()"><li class="fa fa-image"></li> Chọn hình</button>
                    <div class="image_note">Kích thước tốt : Cao = dài</div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <div class="col-lg-12" style="margin-top: 10px;">
                        <?php
                        echo '<table class="table table-hover table-bordered table-condensed">';
                        echo '<thead>';
                        echo '<tr>';
                        echo '<th>Hình ảnh bổ sung</th>';
                        echo '<th><div class="text-center">Sắp xếp</div></th>';
                        echo '<th></th>';
                        echo '</tr>';
                        echo '</thead>';
                        echo '<tbody>';?>
                        <?php
                        echo '<tr class="button_add_row">';
                        echo '<td></td>';
                        echo '<td></td>';
                        echo '<td>';
                        echo '<div class="btn btn-sm btn-primary" onclick="addRowImage()"><li class="fa fa-plus-circle"></li></div>';
                        echo '</td>';
                        echo '</tr>';
                        echo '</tbody>';
                        echo '</table>';
                        ?>
                    </div>
                </div>
            </div>  
            <div class="form-group col-md-12 col-lg-12">
                <h5><b>SEO SECTION</b></h5>
            </div>
            <div class="form-group col-md-12 col-lg-6">
                <?php
                echo form_label('Meta keyword', 'meta_keyword');
                echo form_error('meta_keyword', '<p class="error">');
                ?>
                <textarea class="form-control" name="meta_keyword"><?php set_value("meta_keyword") ?></textarea>
            </div>
            <div class="form-group col-md-12 col-lg-6">
                <?php
                echo form_label('Meta Description', 'meta_description');
                echo form_error('meta_description', '<p class="error">');
                ?>
                <textarea class="form-control" name="meta_description"><?php set_value("meta_description") ?></textarea>
            </div>
            <input type="hidden" name="cate_no" value="<?php echo $this->input->get('category'); ?>">
            <input type="hidden" name="cate_name" value="<?php echo $this->input->get('name'); ?>">
            <input type="hidden" name="model_no" value="<?php echo $this->input->get('model'); ?>">
            <?php echo form_close();?>
        </div>
    </div>
</div>
<script src="<?php echo public_helper('ckfinder/ckfinder.js?t='.rand())?>"></script>
<script>
 function openPopup() {
     CKFinder.popup( {
         chooseFiles: true,
         onInit: function( finder ) {
             finder.on( 'files:choose', function( evt ) {
                 var file = evt.data.files.first();
                 document.getElementById('image' ).value = file.getUrl();
                 document.getElementById('image_link_img').src = base_url+file.getUrl();
             } );
             finder.on( 'file:choose:resizedImage', function( evt ) {
                 document.getElementById('image').value = evt.data.resizedUrl;
                 document.getElementById('image_link_img').src = base_url+evt.data.resizedUrl;
             } );
         }
     } );
 };
 function loadImage(e) {
     CKFinder.popup( {
         chooseFiles: true,
         onInit: function( finder ) {
             finder.on( 'files:choose', function( evt ) {
                 var file = evt.data.files.first();
                   //document.getElementById('image' ).value = file.getUrl();
                   $(e).find("input")[0].value = file.getUrl();
                   $(e).find("img")[0].src = base_url+file.getUrl();
               } );
             finder.on( 'file:choose:resizedImage', function( evt ) {
                   $(e).find("input")[0].value = evt.data.resizedUrl;
                   $(e).find("img")[0].src = base_url+evt.data.resizedUrl;
               } );
         }
     } );
 }
 function addRowImage(){
    $('.button_add_row').before('<tr><td><div onclick="loadImage(this)"><input type="hidden" name="additions_image[]"><img class="img-thumbnail"  style="width: 90px;" src="<?php echo base_url('public/no-image-icon.png'); ?>"></div></td><td><input type="text" name="sort_order_images[]" placeholder="Sort Order" class="form-control"></td><td><div class="btn btn-sm btn-danger" onclick="deleteRow(this)"><li class="fa fa-minus-circle"></li></div></td></tr>');
 }
 function deleteRow(e){
    $(e).parents('tr').remove();
 }
</script>
