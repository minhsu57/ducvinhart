<div class="content">
	<div class="">
		<div class="slider">
			<ul class="rslides" id="slider1">
				<?php if(isset($sliders)){ foreach ($sliders as $key => $value) { ?>
					<li><a href="<?php echo $value->link; ?>"><img src="<?php echo base_url($value->image_url) ?>" alt="<?php echo $value->category_name; ?>"></a></li>
				<?php } } ?>
			</ul>
		</div>
	</div>
</div>