<div class="content">
	<div class="">
		<div class="slider">
			<ul class="rslides" id="slider1">
				<?php foreach ($sliders as $key => $value) { ?>
					<li><img src="<?php echo base_url($value->image_url) ?>" alt="<?php echo $value->category_name; ?>"></li>
				<?php } ?>
			</ul>
		</div>
	</div>
</div>