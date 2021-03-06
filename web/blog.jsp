<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<title>Web Shop</title>
<!-- Main style -->
<link rel="stylesheet" href="css/main.css" type="text/css" />

<!-- Fancybox style -->
<link rel="stylesheet" href="fancybox/fancybox/jquery.fancybox-1.3.4.css" type="text/css" media="screen" />

<!-- Product slider style -->
<link rel="stylesheet" href="css/product-slider.css" type="text/css" />

<!-- Style for the superfish navigation menu -->
<link rel="stylesheet" href="superfish/superfish.css" type="text/css" media="screen" />

<!-- Style for Megamenu -->
<link rel="stylesheet" href="css/megamenu.css" type="text/css" /> 

<!-- Style for price range slider -->
<link rel="stylesheet" href="jQueryUI/css/redmond/jquery-ui-1.7.1.custom.css" type="text/css" />
<link rel="Stylesheet" href="jQueryUI/css/ui.slider.extras.css" type="text/css" />

<!-- Google font -->
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Qwigley' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css' />

<!-- JS for jQuery -->
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>

<!-- JS for jQuery Product slider -->
<script type="text/javascript" src="js/jquery.tools.min.js"></script>

<!-- JS for jQuery Fancy Box -->
<script type="text/javascript" src="fancybox/fancybox/jquery.fancybox-1.3.4.pack.js"></script>

<!-- JS for superfish navigation menu -->
<script type="text/javascript" src="superfish/hoverIntent.js"></script> 
<script type="text/javascript" src="superfish/superfish.js"></script> 

<!-- JS for price range slider -->
<script type="text/javascript" src="jQueryUI/js/jquery-ui-1.7.1.custom.min.js"></script>
<script type="text/javascript" src="jQueryUI/js/selectToUISlider.jQuery.js"></script>

<script type="text/javascript">
	
	// Megamenu
	$(function() {
						
		var $menu = $('#ldd_menu');
		
		$menu.children('li').each(function(){
			var $this = $(this);
			var $span = $this.children('span');
			$span.data('width',$span.width());
			
			$this.bind('mouseenter',function(){
				$menu.find('.ldd_submenu').stop(true,true).hide();
				$span.stop().animate({'width':'auto'},150,function(){
					$this.find('.ldd_submenu').slideDown(300);
				});
			}).bind('mouseleave',function(){
				$this.find('.ldd_submenu').stop(true,true).hide();
				$span.stop().animate({'width':$span.data('width')+'px'},300);
			});
		});
	});
	
	$(document).ready(function() {
		
		// Navigation menu
		$("ul.sf-menu").superfish(); 
		
		// Slider
		$(".slider").scrollable();
	
		// Fancybox
		$("a.grouped-elements").fancybox({
			'titlePosition'	: 'inside'
		});

		$("a[rel=group4]").fancybox({
			'transitionIn'		: 'none',
			'transitionOut'		: 'none',
			'titlePosition' 	: 'over',
			'titleFormat'		: function(title, currentArray, currentIndex, currentOpts) {
				return '<span id="fancybox-title-over">Image ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
			}
		});
		
		// Mouseover effect for thumbnails
		$("a.grouped-elements").hover(function() {
			  $(this).find(".imagehover").toggleClass("mouseon");
		});
		
		// Price range
		$('select#valueA, select#valueB').selectToUISlider();

		// Dropdown show/hide
		jQuery(".dropdown").click(function() {
			jQuery(this).find("ul").toggle();
			jQuery(this).find("a.nav-link").toggleClass('selected');
		  });
      
		// Closing the menu if click outside
		jQuery(document).bind('click', function(e) {
			var $clicked = jQuery(e.target);
          
			if (! $clicked.parents().hasClass("dropdown")) {
				jQuery(this).find('.dropdown a.nav-link').removeClass("selected");
				jQuery(".dropdown ul").hide();
			}
          
		});
      
	});

	$(window).load(function() {
		
	});
		
</script>
</head>
<body>

<div id="container">

	<jsp:include page="include/top.jsp" flush="true"/>

	<div id="content">
	
		<div class="content-top"></div>
		<div class="content-inner">
			
			<!-- List Begin -->
			
			<div class="breadcrumbs">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li class="last">Blog</li>
				</ul>
				<br class="clear"/>
			</div>
			
			<!-- Left Column Begin -->
			<div class="left-side float-left">
				<h3>Categories</h3>
				<ul>
					<li><a href="blog.jsp">Make Up</a></li>
					<li>Fragrance</li>
					<li><a href="blog.jsp">Skincare</a></li>
					<li><a href="blog.jsp">Bodycare</a></li>
					<li><a href="blog.jsp">Hand Wash &#38; Soaps</a></li>
				</ul>
				
				<h3>Archive</h3>
				<ul>
					<li><a href="blog.jsp">2011</a></li>
					<li><a href="blog.jsp">2010</a></li>
					<li><a href="blog.jsp">2009</a></li>
				</ul>
				
				<!-- Latest Posts Begin -->
				<h3>Latest Blog Posts</h3>
				<div class="latest-comments">
					<div class="image-container float-left">
						<img src="images/small_blog2.jpg" alt="image"/>
					</div>
					
					<div class="comment-text">
						<a href="blog_single.jsp">Nunc porta turpis vitae tellus pulvinar dapibus.</a>
						<p>January 12, 2012</p>
					</div>
					<br class="clear"/>
				</div>
				
				<div class="latest-comments">
					<div class="image-container float-left">
						<img src="images/small_blog1.jpg" alt="image"/>
					</div>
					
					<div class="comment-text">
						<a href="blog_single.jsp">Lorem ipsum dolor sit amet, consectetur...</a>
						<p>January 12, 2012</p>
					</div>
					<br class="clear"/>
				</div>
				
				<div class="latest-comments last">
					<div class="image-container float-left">
						<img src="images/small_blog4.jpg" alt="image"/>
					</div>
					
					<div class="comment-text">
						<a href="blog_single.jsp">Class aptent taciti sociosqu.</a>
						<p>January 12, 2012</p>
					</div>
					<br class="clear"/>
				</div>
				<!-- Latest Posts Begin -->
				
				<!-- Tags Begin -->
				<h3>Tag Cloud</h3>
				<ul class="tags">
					<li><a href="#">blog</a></li>
					<li><a href="#">business</a></li>
					<li><a href="#">WordPress</a></li>
					<li><a href="#">art</a></li>
					<li><a href="#">fragrance</a></li>
					<li><a href="#">cosmetics</a></li>
					<li><a href="#">perfume</a></li>
					<li><a href="#">Yves Saint Laurent</a></li>
					<li><a href="#">eau de toilette</a></li>
				</ul>
				<!-- Tags End -->
				
			</div>
			<!-- Left Column End -->
			
			<!-- Main Column Begin -->
			<div class="main-content">
				
				<!-- Blog Entry Begin -->
				<div class="blog-entry">
				
					<div class="blog-post-title">
						<div class="blog-date float-left">
							<div class="month">Feb</div>
							<div class="date-number">23</div>
						</div>
						<div class="blog-post-title-inner">
							<a href="blog_single.jsp" class="title">Lorem ipsum dolor sit amet, consectetur elit. Nulla sit amet nunc non nibh faucibus dictum.</a>
						</div>
					</div>
					<br class="clear"/>
					
					<img src="images/blog1.jpg" alt="image" class="full-width-image" />
					
					<div class="user float-left">by <a href="#" class="regular">Admin</a></div>
					<div class="category float-left">posted in <a href="#" class="regular">Photography</a></div>
					<div class="comment float-left"><a href="#" class="regular">23 Comments</a></div>
					<br class="clear"/>
					
					<p>Nunc porta turpis vitae tellus pulvinar dapibus. Morbi ut leo sapien, vel vulte orci. Class aptent taciti pulvinar ut leo sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Fusce sed nisi enim, et tincidunt nunc. Nunc porta turpis vitae tellus pulvinar dapibus. Morbi ut leo sapien, vel vulte orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Fusce sed nisi enim, et tincidunt nunc. </p>
					
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dui purus, pulvinar ac pellentesque faucibus et non lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Etiam facilisis justo vel libero faucibus at rhoncus elit condimentum.</p>
					<a href="blog_single.jsp" class="general-button"><span class="button">View more</span></a>
				</div>
				<!-- Blog Entry End -->
				
				<!-- Blog Entry Begin -->
				<div class="blog-entry">
				
					<div class="blog-post-title">
						<div class="blog-date float-left">
							<div class="month">Feb</div>
							<div class="date-number">23</div>
						</div>
						<div class="blog-post-title-inner">
							<a href="blog_single.jsp" class="title">Quisque vitae purus non quam elementum vestibulum a fringilla velit. Nulla diam lectus, volutpat eu faucibus id.</a>
						</div>
					</div>
					<br class="clear"/>
					
					<img src="images/blog3.jpg" alt="image" class="full-width-image" />
					
					<div class="user float-left">by <a href="#" class="regular">Admin</a></div>
					<div class="category float-left">posted in <a href="#" class="regular">Design</a></div>
					<div class="comment float-left"><a href="#" class="regular">12 Comments</a></div>
					<br class="clear"/>
					
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dui purus, pulvinar ac pellentesque faucibus et non lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Etiam facilisis justo vel libero faucibus at rhoncus elit condimentum.</p>
					<a href="blog_single.jsp" class="general-button"><span class="button">View more</span></a>
				</div>
				<!-- Blog Entry End -->
				
				<!-- Blog Entry Begin -->
				<div class="blog-entry">
				
					<div class="blog-post-title">
						<div class="blog-date float-left">
							<div class="month">Feb</div>
							<div class="date-number">23</div>
						</div>
						<div class="blog-post-title-inner">
							<a href="blog_single.jsp" class="title">Duis molestie porttitor molestie. Donec quis tellus eget blandit.</a>
						</div>
					</div>
					<br class="clear"/>
					
					<img src="images/blog2.jpg" alt="image" class="full-width-image" />
					
					<div class="user float-left">by <a href="#" class="regular">Admin</a></div>
					<div class="category float-left">posted in <a href="#" class="regular">Photo Retouch</a></div>
					<div class="comment float-left"><a href="#" class="regular">17 Comments</a></div>
					<br class="clear"/>
					
					<p>Nunc porta turpis vitae tellus pulvinar dapibus. Morbi ut leo sapien, vel vulte orci. Class aptent taciti pulvinar ut leo sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Fusce sed nisi enim, et tincidunt nunc. Nunc porta turpis vitae tellus pulvinar dapibus. Morbi ut leo sapien, vel vulte orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Fusce sed nisi enim, et tincidunt nunc. </p>
					
					<a href="blog_single.jsp" class="general-button"><span class="button">View more</span></a>
				</div>
				<!-- Blog Entry End -->
				
			</div>
			<!-- Main Column End -->
			
			<br class="clear"/>
			
			<!-- List End -->
			
		</div>
		<div class="shadow"></div>
		
		<br class="clear"/>
	</div>

    <jsp:include page="include/bottom.jsp" flush="true"/>
</div>


</body>
</html>