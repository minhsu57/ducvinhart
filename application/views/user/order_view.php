<div class="order">
	<div class="container">	
		<div class="title">
			<h3>Thanh toán</h3>
		</div>
		<ol class="breadcrumb fadeInRight animated">
			<li><a href="<?php echo base_url(); ?>">Trang chủ</a></li>
			<li class="active">Thanh toán</li>
		</ol>
		<div id="body" class="home_page">
			<div id="login-form" class="col-main col-md-12">
				<!--Page Title -->
				<div class="box-header with-border">
					<h3 class="box-title"><?php echo $this->lang->line('delivery_information'); ?></h3>
				</div>
				<!--Form nhap thong tin ca nhan -->
				<p class="border-bottom-solid"><?php echo $this->lang->line('please_input_your_info'); ?></p>
				<div class="box box-primary col-md-8">
					<!-- /.box-header -->
					<!-- form start -->
					<div role="form" id="form" novalidate="true" >
						<form data-toggle="validator" action="<?php echo base_url('/order/submit') ?>" method="post">
							<div class="box-body">
								<div class="form-group col-md-6">
									<label for="fullname"><span class="required"> Họ tên *</span></label>
									<input type="text" class="form-control" id="InputName" required="required" placeholder="Vui lòng nhập tên" name="name" data-error="<?php echo $this->lang->line('form_validation_input'); ?>" value="<?php if(isset($name)) echo $name; ?>">
									<span class="glyphicon form-control-feedback"></span>
									<span class="help-block with-errors"></span>							
								</div>
								<div class="form-group col-md-6">
									<label for="InputEmail1">Địa chỉ Email<span class="required"> *</span></label>
									<input type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" class="form-control" id="InputEmail" required="required" placeholder="Vui lòng nhập email" name="email" value="<?php if(isset($email)) echo $email; ?>">
									<div class="error help-block"><?php if(isset($account_exist)) echo $this->lang->line('account_exist'); ?> </div>
									<div class="help-block">Định dạng email : abc@gmail.com</div>
								</div>	

								<div class="form-group col-md-6">
									<label for="InputAddress">Địa chỉ</label>
									<input type="text" class="form-control" id="InputAddress" required="required" placeholder="Vui lòng nhập địa chỉ" name="address" data-error="<?php echo $this->lang->line('form_validation_input'); ?>" >
									<span class="glyphicon form-control-feedback"></span>
									<span class="help-block with-errors"></span>
								</div>

								<div class="form-group col-md-6">
									<label for="InputPhone">Số điện thoại<span class="required"> *</span></label>
									<input type="text" pattern="^[_0-9]{6,14}$" data-minlength="6" maxlength="18" class="form-control" id="InputPhone" required="required" placeholder="Vui lòng nhập số điện thoại" name="phone">
									<div class="help-block">Số điện thoại phải từ  : 6 - 14</div>
								</div>

							</div>

							<div class="box-footer col-md-12">

								<!-- Click tao tai khoan se chay ham create_account -->
								<input type="submit" name="submit" class="btn btn-info pull-right" value="Đặt hàng">
							</div>
							<?php echo form_close();?>
						</div>
					</div>
				</div>
				<p>&nbsp;</p>
			</div>
		</div>
	</div>
