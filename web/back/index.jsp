<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>MyParisBags</title>

<!-- Le styles -->
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<style>

    /* GLOBAL STYLES
    -------------------------------------------------- */
    /* Padding below the footer and lighter body text */

body {
    padding-bottom: 40px;
    color: #5a5a5a;
}



    /* CUSTOMIZE THE NAVBAR
    -------------------------------------------------- */

    /* Special class on .container surrounding .navbar, used for positioning it into place. */
.navbar-wrapper {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    z-index: 10;
    margin-top: 20px;
    margin-bottom: -90px; /* Negative margin to pull up carousel. 90px is roughly margins and height of navbar. */
}
.navbar-wrapper .navbar {

}

    /* Remove border and change up box shadow for more contrast */
.navbar .navbar-inner {
    border: 0;
    -webkit-box-shadow: 0 2px 10px rgba(0,0,0,.25);
    -moz-box-shadow: 0 2px 10px rgba(0,0,0,.25);
    box-shadow: 0 2px 10px rgba(0,0,0,.25);
}

    /* Downsize the brand/project name a bit */
.navbar .brand {
    padding: 14px 20px 16px; /* Increase vertical padding to match navbar links */
    font-size: 16px;
    font-weight: bold;
    text-shadow: 0 -1px 0 rgba(0,0,0,.5);
}

    /* Navbar links: increase padding for taller navbar */
.navbar .nav > li > a {
    padding: 15px 20px;
}

    /* Offset the responsive button for proper vertical alignment */
.navbar .btn-navbar {
    margin-top: 10px;
}



    /* CUSTOMIZE THE CAROUSEL
    -------------------------------------------------- */

    /* Carousel base class */
.carousel {
    margin-bottom: 60px;
}

.carousel .container {
    position: relative;
    z-index: 9;
}

.carousel-control {
    height: 80px;
    margin-top: 0;
    font-size: 120px;
    text-shadow: 0 1px 1px rgba(0,0,0,.4);
    background-color: transparent;
    border: 0;
    z-index: 10;
}

.carousel .item {
    height: 500px;
}
.carousel img {
    position: absolute;
    top: 0;
    left: 0;
    min-width: 100%;
    height: 500px;
}

.carousel-caption {
    background-color: transparent;
    position: static;
    max-width: 550px;
    padding: 0 20px;
    margin-top: 200px;
}
.carousel-caption h1,
.carousel-caption .lead {
    margin: 0;
    line-height: 1.25;
    color: #fff;
    text-shadow: 0 1px 1px rgba(0,0,0,.4);
}
.carousel-caption .btn {
    margin-top: 10px;
}



    /* MARKETING CONTENT
    -------------------------------------------------- */

    /* Center align the text within the three columns below the carousel */
.marketing .span4 {
    text-align: center;
}
.marketing h2 {
    font-weight: normal;
}
.marketing .span4 p {
    margin-left: 10px;
    margin-right: 10px;
}


    /* Featurettes
    ------------------------- */

.featurette-divider {
    margin: 80px 0; /* Space out the Bootstrap <hr> more */
}
.featurette {
    padding-top: 120px; /* Vertically center images part 1: add padding above and below text. */
    overflow: hidden; /* Vertically center images part 2: clear their floats. */
}
.featurette-image {
    margin-top: -120px; /* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
}

    /* Give some space on the sides of the floated elements so text doesn't run right into it. */
.featurette-image.pull-left {
    margin-right: 40px;
}
.featurette-image.pull-right {
    margin-left: 40px;
}

    /* Thin out the marketing headings */
.featurette-heading {
    font-size: 50px;
    font-weight: 300;
    line-height: 1;
    letter-spacing: -1px;
}



    /* RESPONSIVE CSS
    -------------------------------------------------- */

@media (max-width: 979px) {

    .container.navbar-wrapper {
        margin-bottom: 0;
        width: auto;
    }
    .navbar-inner {
        border-radius: 0;
        margin: -20px 0;
    }

    .carousel .item {
        height: 500px;
    }
    .carousel img {
        width: auto;
        height: 500px;
    }

    .featurette {
        height: auto;
        padding: 0;
    }
    .featurette-image.pull-left,
    .featurette-image.pull-right {
        display: block;
        float: none;
        max-width: 40%;
        margin: 0 auto 20px;
    }
}


@media (max-width: 767px) {

    .navbar-inner {
        margin: -20px;
    }

    .carousel {
        margin-left: -20px;
        margin-right: -20px;
    }
    .carousel .container {

    }
    .carousel .item {
        height: 300px;
    }
    .carousel img {
        height: 300px;
    }
    .carousel-caption {
        width: 65%;
        padding: 0 70px;
        margin-top: 100px;
    }
    .carousel-caption h1 {
        font-size: 30px;
    }
    .carousel-caption .lead,
    .carousel-caption .btn {
        font-size: 18px;
    }

    .marketing .span4 + .span4 {
        margin-top: 40px;
    }

    .featurette-heading {
        font-size: 30px;
    }
    .featurette .lead {
        font-size: 18px;
        line-height: 1.5;
    }

}
</style>
</head>

<body>
<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide"  style="margin-top: 100px;">
    <div class="carousel-inner">
        <div class="item active">
            <img src="${pageContext.request.contextPath}/images/slide-01.jpg" alt="">
            <div class="container">
            </div>
        </div>
        <div class="item">
            <img src="${pageContext.request.contextPath}/images/slide-02.jpg" alt="">
            <div class="container">
            </div>
        </div>
        <div class="item">
            <img src="${pageContext.request.contextPath}/images/slide-03.jpg" alt="">
            <div class="container">
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
</div><!-- /.carousel -->
<div class="container marketing">
    <div class="row">
        <div class="span4">
            <img class="img-circle" data-src="holder.js/140x140">
            <h2>Pulau Redang</h2>
            <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>
            <p><a class="btn" href="#">Nothing&raquo;</a></p>
        </div><!-- /.span4 -->
        <div class="span4">
            <img class="img-circle" data-src="holder.js/140x140">
            <h2>Malacca</h2>
            <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
            <p><a class="btn" href="#">Nothing&raquo;</a></p>
        </div><!-- /.span4 -->
        <div class="span4">
            <img class="img-circle" data-src="holder.js/140x140">
            <h2>Pulau Pangkor</h2>
            <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
            <p><a class="btn" href="#">Nothing&raquo;</a></p>
        </div><!-- /.span4 -->
    </div><!-- /.row -->
</div>


<script>
    !function ($) {
        $(function(){
            // carousel demo
            $('#myCarousel').carousel();
        })
    }(window.jQuery)
</script>
</body>
</html>
