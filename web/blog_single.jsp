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

	<div id="header-top">
		<p>
			<strong>FREE</strong> delivery on orders over $100. Add promo code <span class="promocode">FREEDEV</span> at checkout. Expires 12 March
		</p>
	</div>
	
	<div class="header-main">
		<div class="logo">
			<a href="index.html" name="top"><img src="images/logo.png" alt="logo" border="0"/></a>
		</div>
		
		<div class="login-block">
			<span class="account"><a href="#" class="account">Sign In</a></span> <span class="cart"><a href="cart.jsp" class="cart">My Cart (0)</a></span>
		</div>
	</div>
	
	<div id="navigation">
		
		<div class="search-container">
			<div class="search-inner">	
				<input type="text" value="I am looking for..." onfocus="if(this.value=='I am looking for...'){this.value=''};" onblur="if(this.value==''){this.value='I am looking for...'};" class="search-field"/>
				<input type="submit" id="s_submit" value="" class="search-btn"/>
			</div>
		</div>
		<div class="navigation-inner">
			<div class="flare"></div>
			<div class="home-icon">
				<a href="index.html"><img src="images/home_icon.png" alt="home" border="0"/></a>
			</div>
			<!-- Navigation start -->
			<ul class="sf-menu">
				<li class="nav-item"><a href="#">Pages</a>
					<ul>
						<li class="sfish-navgiation-item">
							<a href="price_compare.jsp">Price Compare Table</a>
						</li>
						<li class="sfish-navgiation-item">
							<a href="faq.jsp">FAQ</a>
						</li>
						<li class="sfish-navgiation-item">
							<a href="cart.jsp">Shopping Cart</a>
						</li>
						<li class="sfish-navgiation-item">
							<a href="information.jsp">Right Sidebar</a>
						</li>
					</ul>
				</li>
				<li class="nav-item"><a href="grid.jsp">Online Store</a>
					<ul>
						<li class="sfish-navgiation-item">
							<a href="grid.jsp">Product Listing as Grid</a>
						</li>
						<li class="sfish-navgiation-item">
							<a href="list.jsp">Product Listing as List</a>
						</li>
						<li class="sfish-navgiation-item last">
							<a href="details1.jsp">Product Details</a>
						</li>
					</ul>	
				</li>
				<li class="nav-item"><a href="blog.jsp">Blog</a></li>
				<li class="nav-item"><a href="#">Shortcodes</a>
					<ul>
						<li class="sfish-navgiation-item">
							<a href="shortcodes_buttons.jsp">Buttons and Links</a>
						</li>
						<li class="sfish-navgiation-item">
							<a href="shortcodes_columns.jsp">Columns</a>
						</li>
						<li class="sfish-navgiation-item last">
							<a href="shortcodes_tabs.jsp">Tabs and Accordions</a>
						</li>
					</ul>	
				</li>
				<li class="nav-item"><a href="#">Portfolio</a>
					<ul>
						<li class="sfish-navgiation-item">
							<a href="portfolio_2columns.jsp">Two Columns Layout</a>
						</li>
						<li class="sfish-navgiation-item">
							<a href="portfolio_3columns.jsp">Three Columns Layout</a>
						</li>
						<li class="sfish-navgiation-item last">
							<a href="portfolio_4columns.jsp">Four Columns Layout</a>
						</li>
					</ul>
				</li>
				<li class="nav-item"><a href="contacts.jsp">Contacts</a></li>
			</ul>
			<!-- Navigation end -->
			
			<!-- Megamenu Begin -->
			<ul id="ldd_menu" class="ldd_menu">
				<li>
					<span>Mega Menu</span><!-- Increases to 510px in width-->
					<div class="ldd_submenu">
						<div class="mega-menu-text float-left">
							<h4>What is Mega Menu?</h4>
							Mega menu is a next step of the js based dropdown. It's similar to a normal menu in terms of general behaviour, but enriched with more options, multiple links, complex navigation, form elements like login, search and much more.
						</div>
						<div class="mega-menu-text float-right">
							<h4>Example</h4>
							<p class="newsletter">
								<input type="text" class="megamenu-field" onblur="if(this.value==''){this.value='Enter your e-mail...'};" onfocus="if(this.value=='Enter your e-mail...'){this.value=''};" value="Enter your e-mail...">
							</p>
							<p class="newsletter">
								<input type="text" class="megamenu-field" onblur="if(this.value==''){this.value='Enter your name...'};" onfocus="if(this.value=='Enter your name...'){this.value=''};" value="Enter your name...">
							</p>
						</div><br class="clear"/>
						<div class="mega-menu-text float-left">
							<h4>Why do I need it?</h4>
							Because you can create much more interesting and complex navigation systems, grouping links, improve the UI, improve the user's workflow while filling forms, signing in etc.
						</div>
						<div class="mega-menu-text float-right">
							<h4>Another example</h4>
							<img src="images/slide_small1.jpg">
							<img src="images/slide_small3.jpg">
							<img src="images/slide_small2.jpg">
						</div>
					</div>
				</li>
			</ul>
			<!-- Megamenu End -->
			
		</div>
	</div>

	<div id="content">
	
		<div class="content-top"></div>
		<div class="content-inner">
			
			<!-- List Begin -->
			
			<div class="breadcrumbs">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="blog.jsp">Blog</a></li>
					<li class="last">Single Blog Post</li>
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
						<a href="#">Nunc porta turpis vitae tellus pulvinar dapibus.</a>
						<p>January 12, 2012</p>
					</div>
					<br class="clear"/>
				</div>
				
				<div class="latest-comments">
					<div class="image-container float-left">
						<img src="images/small_blog1.jpg" alt="image"/>
					</div>
					
					<div class="comment-text">
						<a href="#">Lorem ipsum dolor sit amet, consectetur...</a>
						<p>January 12, 2012</p>
					</div>
					<br class="clear"/>
				</div>
				
				<div class="latest-comments last">
					<div class="image-container float-left">
						<img src="images/small_blog4.jpg" alt="image"/>
					</div>
					
					<div class="comment-text">
						<a href="#">Class aptent taciti sociosqu.</a>
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
				<div class="blog-entry single">
					<div class="blog-post-title">
						<div class="blog-date float-left">
							<div class="month">Feb</div>
							<div class="date-number">23</div>
						</div>
						<div class="blog-post-title-inner">
							<a href="#" class="title">Lorem ipsum dolor sit amet, consectetur elit. Nulla sit amet nunc non nibh faucibus dictum.</a>
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
				
					<div class="social-container">
						<!-- Google Begin -->
						<div class="social-container float-left">
							<g:plusone size="medium" width="120"></g:plusone>

							<script type="text/javascript">
							  (function() {
								var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
								po.src = '../../../apis.google.com/js/plusone.js';
								var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
							  })();
							</script>
						</div>
						<!-- Google End -->
								
						<!-- Twitter Begin -->
						<div class="social-container float-left">
							<a href="https://twitter.com/share" class="twitter-share-button">Tweet</a>
							<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="../../../platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
						</div>
						<!-- Twitter End -->
								
						<!-- Facebook Begin -->
						<div class="social-container float-left">
							<div id="fb-root"></div>
							<script>(function(d, s, id) {
							  var js, fjs = d.getElementsByTagName(s)[0];
							  if (d.getElementById(id)) return;
							  js = d.createElement(s); js.id = id;
							  js.src = "../../../connect.facebook.net/en_US/all.js#xfbml=1";
							  fjs.parentNode.insertBefore(js, fjs);
							}(document, 'script', 'facebook-jssdk'));</script>
							<div class="fb-like" data-send="false" data-layout="button_count" data-width="120" data-show-faces="false"></div>
						</div>
						<!-- Facebook End -->
						<br class="clear"/>
					</div>
					
					<h3>Comments</h3>
					
						<!-- Comments Begin -->
						<div class="single-comment blog-page">
							<div class="avatar float-left">
								<img src="images/avatar.png" alt="image"/>
							</div>
							<div class="comment-text">
								<span class="name">John Smith</span>
								<span class="date">January 12, 2012, Wednesday, at 10:23 a.m.</span>
								<p>Nunc porta turpis vitae tellus pulvinar dapibus. Morbi ut leo sapien, vel vulte orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Fusce sed nisi enim, et tincidunt nunc. </p>
							</div>
						</div>
						<div class="comment-form-container">
							<span class="new-comment-heading">Post Your Comment</span>
							<div class="form-name float-left">
								<span>Your Name</span>
								<input type="text" value="" class="form-name input-text"/>
							</div>
							<div class="form-name float-right">
								<span>Your E-mail</span>
								<input type="text" value="" class="form-name input-text"/>
							</div>
							<br class="clear"/>
							<div class="form-comment">
								<span>Comment</span>
								<textarea name="comments" rows="4" cols="20" class="txtarea-comment"></textarea> 
							</div>
							<a href="#" class="general-button-big add-comment"><span class="button-big">Submit your comment</span></a>
						</div>
						<!-- Comments End -->
				
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