<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
    <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>DucVinhArt.com</title>

    </head>
<body>
<?php
if($this->ion_auth->logged_in()) {
    ?>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand"
                   href="<?php echo base_url(); ?>" target="_new"><?php echo 'DucVinhArt.com'?></a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">MANAGE <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><?php echo anchor('admin/slider','Slider');?></li>
                            <li><?php echo anchor('admin/category','Category');?></li>
                            <li><?php echo anchor('admin/product','Product');?></li>
                            <li><?php echo anchor('admin/page_content','Page Content');?></li>
                            
                        </ul>
                    </li>
                    
                    <li><?php echo anchor('admin/website/index','COMMON INFO');?></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">NEWS <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><?php echo anchor('admin/news?type=services','Dịch Vụ');?></li>
                            <li><?php echo anchor('admin/news','Chuyên Đề');?></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><?php echo $this->ion_auth->user()->row()->username;?> <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><?php echo anchor('admin/users','Users');?></li>
                            <li class="divider"></li>
                            <li><a href="<?php echo site_url('admin/user/logout');?>">Đăng xuất</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </nav>
    <div class="container" style="padding-top:60px;">
        <?php
        echo $this->postal->get();
        ?>
    </div>
<?php
}
?>