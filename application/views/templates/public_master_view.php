<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<html lang="vi-VN" style="background: #ffffff;background-size: 100%;background: url(<?php echo $website->body_bg; ?>) no-repeat fixed center;">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
	<?php $this->load->view('templates/_parts/public_master_library_view'); ?>
</head>
<body style="background: url(<?php echo $website->body_bg; ?>) no-repeat fixed center;background-size: 100%;">
<div class="content-section">
	<?php $this->load->view('templates/_parts/public_master_header_view'); ?>

	<?php echo $the_view_content; ?>

	<?php $this->load->view('templates/_parts/public_master_footer_view'); ?>
</div>
	
</body>
</html>