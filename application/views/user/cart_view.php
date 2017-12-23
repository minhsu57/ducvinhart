 <div class="cart">
 	<div class="container">
 		<div class="title">
 			<h3>Giỏ hàng</h3>
 		</div>
 		<ol class="breadcrumb fadeInRight animated">
 			<li><a href="<?php echo base_url(); ?>">Trang chủ</a></li>
 			<li class="active">Giỏ hàng</li>
 		</ol>
 		<div id="body" class="home_page">
 			<div id="login-form" class="col-main col-md-12">
 				<?php if(count($cart_list) > 0){ ?>          
 				<table class="table" id="cart_table">
 					<thead>
 						<tr>
 							<th><?php echo $this->lang->line('product_image'); ?></th>
 							<th><?php echo $this->lang->line('product'); ?></th>
 							<th><?php echo $this->lang->line('price'); ?></th>
 							<th><?php echo $this->lang->line('quanlity'); ?></th>
 							<th><?php echo $this->lang->line('delete'); ?></th>
 							<th><?php echo $this->lang->line('total'); ?></th>
 						</tr>
 					</thead>
 					<tbody>
 						<?php
 						$total_price = 0;
 						foreach ($cart_list as $value) {
 							$total_price += $value["price"] * $value["qty"];
 							$input["where"]  = array('product_id' => $value["id"], 'lang_slug' => $this->lang_slug);
 							$translation = $this->product_model->get_row_product($input);
 							?>
 							<tr>
 								<td><img style="height: 100px !important;" src="<?php echo base_url($translation->image); ?>"></td>
 								<td><?php echo $translation->name; ?></td>
 								<td><?php echo number_format($value["price"]); ?></td>
 								<td><input type="text" style="width: 60px" class="form-control number-only" value="<?php echo $value["qty"]; ?>" onchange="updateCart('<?php echo base_url(); ?>', <?php echo $value["id"] ?>, this.value, <?php echo $value["price"] ?>)"></td>
 								<td><button class="fa fa-remove btn btn-danger" onclick="delCart('<?php echo base_url(); ?>', <?php echo $value["id"] ?>)"></button></td>
 								<td style="color: #FF5722;" id="sum_price_<?php echo $value['id']; ?>"><?php echo number_format($value["qty"] * $value["price"]); ?> VND</td>
 							</tr>
 							<?php } ?>

 						</tbody>
 					</table>
 					<div class="total pull-right">
 						<span>Thành tiền</span> : <span style="color: #FF5722;"><span id="total_price"><?php echo number_format($total_price); ?></span> VND</span>
 						<a href="<?php echo base_url('order'); ?>"><button class="btn btn-info">Đặt hàng</button></a>
 					</div>
 					<?php } ?>
 				</div>
 				<p>&nbsp;</p>
 			</div>
 		</div>
 	</div>