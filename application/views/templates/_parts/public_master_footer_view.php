<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="footer-content">
	<div class="container">
		<div class="ftr-grids">
			<div class="col-xs-12 col-md-4 ftr-grid">
				<ul>
					<li><a href="#">> Bảng giá tranh - khung tranh (Tham khảo)</a></li>
					<li><a href="#">> Phương thức thanh toán - mua hàng</a></li>
					<li><a href="#">> Phương thức vận chuyển</a></li>
					<li><a href="#">> Dịch vụ của chúng tôi</a></li>
				</ul>
			</div>
			<div class="col-xs-12 col-md-4 ftr-grid social">
				<ul>
					<li><a target="_blank" href="https://www.facebook.com/DucVinhArtist"><span class="fa fa-map-marker fa-lg"></span> www.facebook.com/ducVinhArtist</a></li>
					<li><a href="#"><span class="fa fa-google-plus circle"></span></a><a href="#"><span class="fa fa-facebook circle"></span></a>
						<a href="#"><span class="fa fa-youtube circle"></span></a>
					</li>
					<?php echo $website->footer_content_1; ?>
				</ul>
			</div>
			<div class="col-xs-12 col-md-4 ftr-grid footer_link">
				<ul>
					<?php echo $website->footer_content_2; ?>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<footer class="footer-area">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<span>Copyright © DucVinhArt.com 2017.All right reserved.Created by <a href="http://sudev.net" target="_blank">Le Minh Su</a></span>
			</div>
		</div>
	</div>
</footer>
<!-- Message modal-->
<div class="modal fade" id="messageModal" role="dialog" style="margin-top: 100px;">
	<div class="modal-dialog">    
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header btn-warning">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title" id="title_modal"></h4>
			</div>
			<div class="modal-body">
				<p id="content_modal"></p>
			</div>
		</div>

	</div>
</div>
<!-- Modal -->
<div class="modal fade" id="cartModal" role="dialog" style="margin-top: 100px;">
	<div class="modal-dialog">    
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header btn-success">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title" id="cart_title">Thêm vào giỏ hàng thành công</h4>
			</div>
			<div class="modal-body">
				<p id="cart_content">Thêm vào giỏ hàng thành công</p>
			</div>
		</div>

	</div>
</div>
<!-- warning modal -->
<!-- Modal -->
  <div class="modal fade" id="warningModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header  btn-warning">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Thông báo</h4>
        </div>
        <div class="modal-body">
          <p id="warning_message"></p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-warning" data-dismiss="modal">Đóng</button>
        </div>
      </div>
    </div>
  </div>