<?php defined('BASEPATH') or exit('No direct script access allowed');?>
<div class="container" style="margin-top:0px;">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="text-center">EDIT CATEGORY</h3>
            <?php echo form_open_multipart('admin/category/edit/'.$item->cate_id);?>
            <div class="col-lg-12">
                <h3 class="col-lg-10" style="margin-top: 0"></h3>

                <div class="col-lg-2 pull-right">
                    <?php echo form_submit('submit', 'Save', 'class="btn btn-primary btn-lg btn-sm"');?>
                    <?php echo anchor('/admin/category', 'Cancel', 'class="btn btn-default btn-lg btn-sm"');?>
                </div>
            </div>
            <div class="form-group col-md-5 col-lg-5">
                <label>Title <span class="error">*</span></label>
                <?php
                echo form_error('name');
                ?>
                <input type="text" name="name" class="form-control" value="<?php echo set_value('name', $item->name); ?>" title="<?php echo $item->name; ?>">
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Category Cha', 'parent');
                ?>
                <select class="form-control" name="parent">
                    <option value=""></option>
                    <?php foreach ($categories as $value) { ?>
                    <option value="<?php echo $value->cate_id; ?>" <?php echo set_select('parent',$value->cate_id,( !empty($item->parent_id) && $item->parent_id == $value->cate_id ? TRUE : FALSE )); ?>><?php if($value->level==1) echo "-- "; echo $value->name; ?></option>
                    <?php }?>
                </select>
            </div>
            <div class="form-group col-md-3 col-lg-3">
                <?php
                echo form_label('Sắp xếp (số)', 'sort_order');
                ?>
                <span class="error"><?php echo form_error('sort_order'); ?></span>
                <input type="text" name="sort_order" class="form-control" value="<?php echo set_value('sort_order', $item->sort_order); ?>">
            </div>
            <div class="form-group col-md-12 col-lg-12">
                <label>Ảnh đại diện <span class="error">*</span></label>
                <?php echo form_error('image','<p class="error">'); ?>
                <div>
                    <input type="hidden" name="image" id="image" value="<?php echo set_value("image", $item->image); ?>">
                    <img src="<?php echo base_url(set_value("image", $item->image)); ?>" id="image_link_img" style="max-height: 100px" onclick="openPopup()" name="image_link_img">
                    <button type="button" class="btn btn-default" onclick="openPopup()"><li class="fa fa-image"></li> Browse Image</button>
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
                <textarea class="form-control" name="meta_keyword"><?php echo set_value('meta_keyword', $item->meta_keyword); ?></textarea>
            </div>
            <div class="form-group col-md-12 col-lg-6">
                <?php
                echo form_label('Meta Description', 'meta_description');
                echo form_error('meta_description', '<p class="error">');
                ?>
                <textarea class="form-control" name="meta_description"><?php echo set_value('meta_description', $item->meta_description); ?></textarea>
            </div>
            <input type="hidden" name="translation_id" value="<?php echo $item->id; ?>">
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
                 document.getElementById( 'image' ).value = file.getUrl();
                 document.getElementById( 'image_link_img' ).src = base_url+file.getUrl();
             } );
             finder.on( 'file:choose:resizedImage', function( evt ) {
                 document.getElementById('image').value = evt.data.resizedUrl;
                 document.getElementById( 'image_link_img' ).src = base_url+evt.data.resizedUrl;
             } );
         }
     } );
 }
</script>