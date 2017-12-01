    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <meta name="theme-color" content="#3FB871">  <!-- Chrome, Firefox OS and Opera -->
    <meta name="msapplication-navbutton-color" content="#3FB871"> <!-- Windows Phone -->
    <meta name="apple-mobile-web-app-capable" content="yes"> <!-- iOS Safari -->
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"> <!-- iOS Safari -->

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="<?php echo $website->favicon; ?>" rel="shortcut icon" type="image/x-icon" />
    <meta http-equiv="content-language" content="vi" />
    <meta name="description" content="<?php echo $website->meta_description; ?>" />
    <meta name="keywords" content="<?php echo $website->meta_keyword; ?>" />
    <meta name="robots" content="noodp,index,follow" />
    <meta name='revisit-after' content='1 days' />

    <!-- For Facebook -->
    <meta property="og:title" content="<?php echo $website->page_title; ?>" />
    <meta property="og:type" content="article" />
    <meta property="og:image" content="" />
    <meta property="og:url" content="" />
    <meta property="og:description" content="" />

    <title><?php echo $website->page_title; ?></title>
    <link href='http://fonts.googleapis.com/css?family=Montserrat|Raleway:400,200,300,500,600,700,800,900,100' rel='stylesheet'
    type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,900' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Aladin' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inconsolata|Droid+Sans">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,500,600,700,800,900" rel="stylesheet">
    <!-- CSS -->
    <link rel="stylesheet" href="<?php echo public_helper('lib/bootstrap/css/bootstrap.css'); ?>"/>
    <link rel="stylesheet" href="<?php echo public_helper('lib/font-awesome/css/font-awesome.min.css'); ?>"/>
    <link rel="stylesheet" href="<?php echo public_helper('css/style.css'); ?>"/>

    <!-- Javascript -->
    <script type="text/javascript" src="<?php echo public_helper("lib/jquery/jquery.min.js"); ?>"></script>
    <script type="text/javascript" src="<?php echo public_helper('lib/bootstrap/js/bootstrap.min.js'); ?>"></script>
    
    <!-- animated -->
    <link href="<?php echo public_helper('lib/animate/animate.css') ?>" rel="stylesheet" type="text/css" media="all" />
    <!-- start menu -->
    <link type="text/css" href="<?php echo public_helper('lib/responsivemenu/responsivemenu.css') ?>" rel="stylesheet" media="all" />
    <script type="text/javascript" src="<?php echo public_helper('lib/responsivemenu/responsivemenu.js') ?>"></script>
    <!--responsive slides-->
    <script src="<?php echo public_helper('lib/responsiveslides/responsiveslides.min.js') ?>"></script>
    <!-- script custom -->
    <script src="<?php echo public_helper('js/script.js') ?>"></script>
    <script>
      var base_url = '<?php echo base_url(); ?>';
  </script>
  <script>
		// You can also use "$(window).load(function() {"
		$(function () {
			// Slideshow 1
			$("#slider1").responsiveSlides({
				auto: true,
				nav: true,
				speed: 1000,
				timeout: 7000,
				namespace: "callbacks",
			});
		});
		$(document).ready(function () {
			$("#collapse_introduce").on("hide.bs.collapse", function () {
				$("#collapse_button").html('...Xem chi tiết');
			});
			$("#collapse_introduce").on("show.bs.collapse", function () {
				$("#collapse_button").html('Rút gọn...');
			});
		});
	</script>