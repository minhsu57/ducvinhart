<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<div class="container" style="margin-top:0px;">
  <div class="row">
    <div class="col-md-10">
      <h3 class="text-center">Sửa Slider</h3>
      <?php echo form_open_multipart('admin/slider/edit/'.$item->id);?>
      <div class="col-md-6">
        <label>Category </label><span class="error">*</span>
        <select class="form-control" name="category">
          <?php foreach ($categories as $value) {
            ?>
            <option value="<?php echo $value->cate_id; ?>" <?php echo set_select('category',$value->cate_id,( !empty($item->cate_id) && $item->cate_id == $value->cate_id ? TRUE : FALSE )); ?>><?php echo $value->name; ?></option>
            <?php }?>
          </select>
        </div>
        <div class="col-md-4">
          <label>Link </label>
          <?php
          echo form_error('link');
          echo form_input('link',set_value('link', $item->link),'class="form-control"');
          ?>
        </div>
        <div class="col-md-2">
          <label>Status </label><span class="error">*</span>
          <select class="form-control" name="status">
            <option value="<?php echo $item->status; ?>"><?php if($item->status == 1) echo "Hiện"; else echo "Ẩn"; ?></option>
            <option value="<?php if($item->status == 1) echo 0; else echo 1; ?>"><?php if($item->status == 1) echo "Ẩn"; else echo "Hiện"; ?></option>
          </select>
        </div>
        <div class="form-group col-md-12">
          <label>Image <span class="error">*</span></label>
          <?php echo form_error('image','<p class="error">'); ?>
          <div>
            <input type="hidden" name="image" id="image" value="<?php echo set_value("image", $item->image_url); ?>">
            <img src="<?php echo base_url(set_value("image", $item->image_url)); ?>" id="image_link_img" style="max-height: 200px; margin-bottom: 5px" onclick="openPopup()" name="image_link_img">
            <div>
              <button type="button" class="btn btn-default btn-browse-image" onclick="openPopup()"><li class="fa fa-image"></li> Browse Image</button>
            </div>
            <div class="image_note">Kích thước tốt : 1978 x 521 or tỉ lệ dài/cao = 3,8</div>
          </div>
        </div>

        <?php
        $submit_button = 'Save';
        echo form_submit('submit', $submit_button, 'class="btn btn-primary btn-lg btn-block"');?>
        <?php echo anchor('/admin/slider', 'Cancel','class="btn btn-default btn-lg btn-block"');?>
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