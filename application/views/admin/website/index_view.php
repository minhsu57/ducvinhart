<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<div class="container" style="margin-top:0px;">
    <div class="row">
        <div class="col-lg-12">
            <?php echo form_open_multipart('admin/website/index/');?>
            
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="text-center">COMMON PAGE INFO</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="col-xs-12">
                        <button type="submit" value="submit" name="submit" class="btn btn-primary btn-lg btn-sm pull-right"><li class="fa fa-save"></li> Save</button>
                    </div>

                </div>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Tên website','website_name');
                echo form_error('website_name');
                //echo form_input('website_name',set_value('website_name',$item->website_name),'class="form-control"');
                ?>
                <textarea class="form-control" name="website_name"><?php echo $item->website_name ?></textarea> 
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Facebook','facebook');
                echo form_error('facebook');
                echo form_input('facebook',set_value('facebook',$item->facebook),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Youtube','youtube');
                echo form_error('youtube');
                echo form_input('youtube',set_value('youtube',$item->youtube),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Google +','google_plus');
                echo form_error('google_plus');
                echo form_input('google_plus',set_value('google_plus',$item->google_plus),'class="form-control"');
                ?>
            </div>

            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Phone','phone');
                echo form_error('phone');
                echo form_input('phone',set_value('phone',$item->phone),'class="form-control"');
                ?>
            </div>

            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Google Map','google_map');
                echo form_error('google_map');
                echo form_input('google_map',set_value('page_title',$item->google_map),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Email','email');
                echo form_error('email');
                echo form_input('email',set_value('email',$item->email),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Admin email','admin_email');
                echo form_error('admin_email');
                echo form_input('admin_email',set_value('admin_email',$item->admin_email),'class="form-control"');
                ?>
            </div>
            <div class="form-group col-md-4 col-lg-4">
                <?php
                echo form_label('Address','address');
                echo form_error('address');
                echo form_input('address',set_value('address',$item->address),'class="form-control"');
                ?> 
            </div>
            <div class="form-group col-md-2 col-lg-2">
                <?php
                echo form_label('Slogan','slogan');
                echo form_error('slogan');
                echo form_input('slogan',set_value('slogan',$item->slogan),'class="form-control"');
                ?> 
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <strong>Keyword</strong>
                <div>
                    <textarea class="ckeditor" name="keyword"><?php echo $item->keyword ?></textarea> 
                    <?php echo form_error('keyword','<p class="error">'); ?>
                </div>
            </div>

            <div class="form-group col-md-4 col-lg-4">
                <label>Favicon <span class="error">*</span></label>
                <?php echo form_error('favicon','<p class="error">'); ?>
                <div>
                    <input type="hidden" name="favicon" id="favicon" value="<?php echo set_value("favicon",$item->favicon); ?>">
                    <img src="<?php echo base_url(set_value("favicon",$item->favicon)); ?>" id="favicon_link_img" style="max-height: 50px; margin-bottom: 5px; cursor: pointer;" onclick="openPopup()" name="favicon_link_img">
                    <span>
                        <button type="button" class="btn btn-default" onclick="openPopup()"><li class="fa fa-image"></li> Browse Image</button>
                    </span>
                    
                </div>
            </div> 
            <div class="form-group col-md-6 col-lg-6">
                <strong>Footer Content 1</strong>
                <div id="editor">
                    <textarea class="ckeditor" name="footer_content_1"><?php echo $item->footer_content_1 ?></textarea> 
                    <?php echo form_error('footer_content_1','<p class="error">'); ?>
                </div>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <strong>Footer Content 2</strong>
                <div id="editor">
                    <textarea class="ckeditor" name="footer_content_2"><?php echo $item->footer_content_2 ?></textarea> 
                    <?php echo form_error('footer_content_2','<p class="error">'); ?>
                </div>
            </div>                       
             <div class="form-group col-md-6 col-lg-6">
                <strong>Footer Content 3</strong>
                <div id="editor">
                    <textarea class="ckeditor" name="footer_content_3"><?php echo $item->footer_content_3 ?></textarea> 
                    <?php echo form_error('footer_content_3','<p class="error">'); ?>
                </div>
            </div>
            <div class="form-group col-md-6 col-lg-6">
                <label>Phần giới thiệu - Trang chủ<span class="error">*</span></label>
                <?php echo form_error('home_introduce_image','<p class="error">'); ?>
                <div>
                    <input type="hidden" name="home_introduce_image" id="home_introduce_image" value="<?php echo set_value("home_introduce_image",$item->home_introduce_image); ?>">
                    <img src="<?php echo base_url(set_value("home_introduce_image",$item->home_introduce_image)); ?>" id="home_introduce_link_img" style="max-height: 50px; margin-bottom: 5px; cursor: pointer;" onclick="openPopupIntroduceImg()" name="home_introduce_link_img">
                    <span>
                        <button type="button" class="btn btn-default" onclick="openPopupIntroduceImg()"><li class="fa fa-image"></li> Browse Image</button>
                    </span>
                    <div id="editor">
                        <textarea class="ckeditor" name="home_introduce_content"><?php echo $item->home_introduce_content ?></textarea> 
                        <?php echo form_error('home_introduce_content','<p class="error">'); ?>
                    </div>
                </div>
            </div>  
            <!-- AJAX Response will be outputted on this DIV container -->
            <?php echo form_hidden('id',$item->id);?>

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
                   document.getElementById( 'favicon' ).value = file.getUrl();
                   document.getElementById( 'favicon_link_img' ).src = base_url+file.getUrl();
               } );
               finder.on( 'file:choose:resizedImage', function( evt ) {
                   document.getElementById('favicon').value = evt.data.resizedUrl;
                   document.getElementById( 'favicon_link_img' ).src = base_url+evt.data.resizedUrl;
               } );
           }
       } );
   }
   function openPopupIntroduceImg() {
       CKFinder.popup( {
           chooseFiles: true,
           onInit: function( finder ) {
               finder.on( 'files:choose', function( evt ) {
                   var file = evt.data.files.first();
                   document.getElementById( 'home_introduce_image' ).value = file.getUrl();
                   document.getElementById( 'home_introduce_link_img' ).src = base_url+file.getUrl();
               } );
               finder.on( 'file:choose:resizedImage', function( evt ) {
                   document.getElementById('home_introduce_image').value = evt.data.resizedUrl;
                   document.getElementById( 'home_introduce_link_img' ).src = base_url+evt.data.resizedUrl;
               } );
           }
       } );
   }
</script>