<div class="featured-cat-thumb">
<div class="featured-categories-container">
<!-- <div class="featured-categories-slider tt-title"><h2><?php echo $heading_title; ?></h2></div> -->
		<div class="owl-featured-categories">
			<?php foreach ($categories as $category) { ?>
				<div class="fcategory-content">
					<div class="content-thum">
						<h2 class="name"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></h2>
						<p class="dec"><?php echo $category['description']; ?></p>
					</div>
					<a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['homethumb_image'] ?>" alt="" /></a>
				</div>
			<?php } ?>
		</div>
</div>
</div>
<script type="text/javascript">
$(document).ready(function() { 
  $(".owl-featured-categories").owlCarousel({
	  slideSpeed: <?php if($config_slide['f_ani_speed']) { echo $config_slide['f_ani_speed'] ;} else { echo 3000;} ?>,
      items : <?php if($config_slide['items']) { echo $config_slide['items'] ;} else { echo 3;} ?>,
	  autoPlay : false,
	  navigation : <?php if($config_slide['f_show_nextback']) { echo 'true' ;} else { echo 'false';} ?>,
	  paginationNumbers : true,
	  pagination : <?php if($config_slide['f_show_ctr']) { echo 'true' ;} else { echo 'false';} ?>,
	  stopOnHover : false,
	itemsDesktop : [1199,3], 
    itemsDesktopSmall : [900,3], // betweem 900px and 601px
    itemsTablet: [768,2], //2 items between 600 and 0
    itemsMobile : [480,1] // itemsMobile disabled - inherit from itemsTablet option
  });
 
});
</script>