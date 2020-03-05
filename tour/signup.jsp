<%-- 
    Document   : signup
    Created on : Nov 28, 2018, 8:07:27 AM
    Author     : chakkara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="org.apache.derby.jdbc.ClientDataSource"%>
<%@page import="java.sql.DriverManager;" %>
<%@include file="connection.jsp" %>
<%
   /*
String url="jdbc:derby://localhost:1527/tourz";

    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection con=DriverManager.getConnection(url,"root","root");
   
  */
%><!DOCTYPE html>

        <% String fname=request.getParameter("fname");
        String lname=request.getParameter("lname");
        String email=request.getParameter("email");
        String mob=request.getParameter("mob");
        String psd=request.getParameter("psd");
            String q="insert into PER_INFO(fname,lname,email,mob,psd)values(?,?,?,?,?)";
        
          PreparedStatement st=con.prepareStatement(q); 
          st.setString(1, request.getParameter("fname"));
          st.setString(2, request.getParameter("lname"));
          st.setString(3, request.getParameter("email"));
          st.setString(4, request.getParameter("mob"));
          st.setString(5, request.getParameter("psd"));
            st.execute();
        %>
     <!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Travel Tours Travel Category Bootstrap Responsive Web Template | Home :: W3layouts</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Travel Tours Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
                
               	function val_psd()
                {
                    
                   var psd=document.getElementById("psd").value; 
                   var cnpsd=document.getElementById("cnfpsd").value; 
                   if(psd!==cnpsd)
                   {
                      document.getElementById("c").value="passwords are not same";
                      var cnpsd=document.getElementById("cnfpsd").value="";
                   }
                   else
                   {
                      document.getElementById("c").value=""; 
                   }        
    }
    
    
       
               	function val_mob()
                {
                    
                   var mob=document.getElementById("mob").value; 
                var len=mob.length;
                if(mob>=1000000000 && mob<=9999999999)
                {
                   if(len!==10)
                   {
                      document.getElementById("d").value="Please Enter a valid Number";
                      document.getElementById("mob").value="";
                   }
                   if(len===10)
                   {
                      document.getElementById("d").value="Your Mobile Number Will be Secured Here!"; 
                   }        
    }
    else
    {
             document.getElementById("d").value="Please Enter a valid Number"; 
             document.getElementById("mob").value="";
    }
                } 
	</script>
	<!--// Meta tag Keywords -->

	<!-- Custom-Files -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //Custom-Files -->

	<!-- Web-Fonts -->
	<link href="//fonts.googleapis.com/css?family=Pacifico&amp;subset=cyrillic,latin-ext,vietnamese" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Amaranth:400,400i,700,700i" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //Web-Fonts -->

</head>

<body>
    

	<!-- header -->
	<div class="header-w3l">
		<!-- navigation -->
		<div class="nav-agile">
			<nav class="navbar navbar-default">
				<div class="navbar-header logo-w3layouts">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- logo -->
					<h1>
						<a href="index.html">Travel Tour</a>
					</h1>
					<!-- //logo -->
				</div>
				<!-- navbar-header -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<div class="w3l-navtop" style="width:80%;">
						<ul class="nav navbar-nav navbar-right">
							<li>
								<a href="index.html" class="active">Home</a>
							</li>
							<li>
								<a href="about.html">About</a>
							</li>
                                                        <li>
								<a href="Services.html">Our Services</a>
							</li>
					
							<li>
								<a href="gallery.html">Gallery</a>
							</li>
                                                        	<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Explore
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu agile_short_dropdown">
									<li>
										<a href="#" >LoG In</a>
									</li>
									<li>
										<a href="#" >Create New Account</a>
									</li>
								</ul>
							</li>
                                                        	<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Stay
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu agile_short_dropdown">
									<li>
										<a href="#" >LoG In</a>
									</li>
									<li>
										<a href="#" >Create New Account</a>
									</li>
								</ul>
							</li>
                                                        
							<li>
								<a href="contact.html">Contact Us</a>
							</li>
                                                       		<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Account
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu agile_short_dropdown">
									<li>
										<a href="#" data-toggle="modal" data-target="#myModal2">LoG In</a>
									</li>
									<li>
										<a href="#" data-toggle="modal" data-target="#myModal1">Create New Account</a>
									</li>
								</ul>
							</li>
                                                        
						</ul>
					</div>
					<!-- social icons -->
					
					<!-- //social icons -->
					<div class="clearfix"> </div>
				</div>
			</nav>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //navigation -->
	<!-- //header -->

	<!-- banner -->
	<!-- banner-slider -->
	<div class="w3l_banner_info">
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides" id="slider3">
					<li>
						<div class="slider-img">
							<div class="slider_banner_info">
								<h4>
									<span>Explore</span> the Distant Corners of the
									<span>World</span>
								</h4>
                                                            <p><b><big>Welcome <%= fname%>,<span style="color:gold">Your Account Created Successfully.</span>Please Click Below To Log In Your Account</p></big>
								<div class="readmore-w3-agileits">
									<a href="#" data-toggle="modal" data-target="#myModal2">Log In Now</a>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="slider-img-2">
							<div class="slider_banner_info">
								<h4>
									<span>Explore</span> the Distant Corners of the
									<span>World</span>
								</h4>
								 <p><b><big>Welcome <%= fname%>,<span style="color:gold">Your Account Created Successfully.</span>Please Click Below To Log In Your Account</p></big>
								<div class="readmore-w3-agileits">
									<a href="#" data-toggle="modal" data-target="#myModal2">Log In Now</a>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="slider-img-3">
							<div class="slider_banner_info">
								<h4>
									<span>Explore</span> the Distant Corners of the
									<span>World</span>
								</h4>
								 <p><b><big>Welcome <%= fname%>,<span style="color:gold">Your Account Created Successfully.</span>Please Click Below To Log In Your Account</p></big>
								<div class="readmore-w3-agileits">
									<a href="#" data-toggle="modal" data-target="#myModal2">Log In Now</a>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //banner-slider -->
	<!-- modal (popup) -->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" style="opacity:0.9;">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
                                        
					<span></span>
                                        <div style="height:500px;">
                                            <form onsubmit="return val()" method="post" action="signup.jsp" >
     <div class="form-group">
    <label for="fname">First Name</label>
    <input type="text" class="form-control" required name="fname" id="fname"  placeholder="Enter Your First Name">
  </div>
                                                
                                                  <div class="form-group">
    <label for="lname">last Name</label>
    <input type="text" class="form-control" name="lname"  required id="lname"  placeholder="Enter Your Last Name">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" name="email"  required id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="mob">Mobile Number</label>
    <input type="text" maxlength="10" name="mob"  onBlur="val_mob()" class="form-control" required id="mob" placeholder="Enter Your Mobile Number">
     <input type="text" value="Your Mobile Number Will be Secured Here!" readonly id="d"  style="background:white;border:0px solid red;width:100%;color:red;font-weight: bold;font-family: kalinga;">
  </div>
  <div class="form-group">
    <label for="psd">Password</label>
    <input type="password" name="psd" class="form-control" required id="psd" placeholder="Password">
  </div>
   <div class="form-group">
        <label for="cnfpsd">Confirm Password</label>
    <input type="password" class="form-control" onBlur="val_psd()" required id="cnfpsd"  placeholder="Re Enter your Password">
 <input type="text" readonly id="c"  style="background:white;border:0px solid red;color:red;font-weight: bold;font-family: kalinga;">
  </div>
<center>
      <Input type="submit" class="btn btn-primary" onClick="val()" value="Sign Up Now"></center>
</form>
                                        </div>
				</div>
			</div>
		</div>
	</div>
	<!-- //modal (popup) -->
        
        
        	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" style="opacity:.9;background: #000;">
		<div class="modal-dialog" >
			<!-- Modal content-->
			<div class="modal-content" >
				<div class="modal-header" style="box-shadow: 2px 3px 2px 3px white">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
                                        
					<span></span>
                                        <div style="height:170px;">
                                            <form onsubmit="return val()" method="post" action="login.jsp">
                                   

  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name="logemail" class="form-control" required id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
   
  </div>

  <div class="form-group">
    <label for="psd">Password</label>
    <input type="password" name="logpsd" class="form-control" required id="psd" placeholder="Password">
  </div>

<center>
      <Input type="submit" class="btn btn-primary" onClick="val()" value="Sign Up Now"></center>
     
</form>
                                        </div>
				</div>
			</div>
		</div>
	</div>
	<!-- //banner -->

	<!-- welcome -->
	<div class="welcome" id="about">
		<div class="container">
			<h3 class="title">Welcome to Our Travel Tours</h3>
			<div class="col-md-6 welcome-left">
				<h3>Traveling, Tours, Adventure.</h3>
				<h4>We are committed to offering travel services of the highest quality, combining our energy and enthusiasm, with our years
					of experience. Our greatest satisfaction comes in serving large numbers of satisfied clients who have experienced the
					joys and inspiration of travel.</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta erat sit amet eros sagittis, quis hendrerit
					libero aliquam. Fusce semper augue ac dolor efficitur, a pretium metus pellentesque.</p>
				<div class="readmore-w3-agileits about-read">
					<a href="#" data-toggle="modal" data-target="#myModal1">Read More</a>
				</div>
			</div>
			<div class="col-md-6 welcome-right">
				<div class="welcome-right-top">
					<img src="images/ab.jpg" alt="Beauty">
				</div>
				<div class="welcome-right-bottom">
					<img src="images/ab1.jpg" alt="Beauty">
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //welcome -->

	<!-- middle section -->
	<div class="middle-w3l">
		<div class="container">
			<div class="middle-left-w3l">
				<h4>Find Travel Perfection With the Professionalism of Experts</h4>
				<p>Go, fly, roam, travel, voyage, explore, journey, discover, adventure.</p>
				<div class="readmore-w3-agileits about-read">
					<a href="contact.html">Contact Us</a>
				</div>
			</div>
		</div>
	</div>
	<!-- //middle section -->

	<!-- tours sectopn -->
	<div class="trips-section">
		<div class="container">
			<h3 class="title">Beautiful Tours</h3>
			<div class="col-xs-4 exce-grid1-mmstyle">
				<img src="images/k1.jpg" alt="">
				<div class="grid-ec1">
					<h3>Sed ut perspiciatis unde omnis iste natus</h3>
					<p>Dignissim elit at ligula laoreet iaculis,sed urna purus, convallis cus eget.</p>
					<h4>
						<i class="fa fa-map-marker"></i>laoreet sed urna purus</h4>
					<h4 class="w3l-name">
						<i class="fa fa-calendar"></i>3 Days</h4>
				</div>
			</div>
			<div class="col-xs-4 exce-grid1-mmstyle">
				<img src="images/k2.jpg" alt="">
				<div class="grid-ec1">
					<h3>Sed ut perspiciatis unde omnis iste natus</h3>
					<p>Dignissim elit at ligula laoreet iaculis,sed urna purus, convallis cus eget.</p>
					<h4>
						<i class="fa fa-map-marker"></i>laoreet sed urna purus</h4>
					<h4 class="w3l-name">
						<i class="fa fa-calendar"></i>2 Days</h4>
				</div>
			</div>
			<div class="col-xs-4 exce-grid1-mmstyle">
				<img src="images/k3.jpg" alt="">
				<div class="grid-ec1">
					<h3>Sed ut perspiciatis unde omnis iste natus</h3>
					<p>Dignissim elit at ligula laoreet iaculis,sed urna purus, convallis cus eget.</p>
					<h4>
						<i class="fa fa-map-marker"></i>laoreet sed urna purus</h4>
					<h4 class="w3l-name">
						<i class="fa fa-calendar"></i>6 Days</h4>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //tours sectopn -->

	<!-- services -->
	<div class="wthree_services" id="services">
		<div class="container">
			<h3 class="title">Our Services</h3>
			<div class="col-md-4 wthree_services_left">
				<div class="col-xs-4 wthree_services_left_grid">
					<div class="wthree_services_left_grid1">
						<i class="fa fa-plane" aria-hidden="true"></i>
					</div>
				</div>
				<div class="col-xs-8 wthree_services_left_grid_left">
					<h3>Travel Arrangements</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing iscing elit</p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-4 wthree_services_left mid-w3l">
				<div class="col-xs-4 w3l_banner_info_left_grid">
					<div class="wthree_services_left_grid1">
						<i class="fa fa-globe" aria-hidden="true"></i>
					</div>
				</div>
				<div class="col-xs-8 wthree_services_left_grid_left">
					<h3>Special Activities</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing iscing elit</p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-4 wthree_services_left">
				<div class="col-xs-4 wthree_services_left_grid">
					<div class="wthree_services_left_grid1">
						<i class="fa fa-suitcase" aria-hidden="true"></i>
					</div>
				</div>
				<div class="col-xs-8 wthree_services_left_grid_left">
					<h3>Beautiful Places</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing iscing elit</p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
			<!-- another-section -->
			<div class="wthree_about_grids">
				<div class="col-md-6 wthree_about_grid_right">
					<iframe src="https://player.vimeo.com/video/71319358?badge=0"></iframe>
				</div>
				<div class="col-md-6 wthree_about_grid_left">
					<h3>Most Popular</h3>
					<p>Fusce semper, nibh eu sollicitudin imperdiet, dolor magna vestibulum mi, vel tincidunt augue ipsum nec erat. Vestibulum
						congue leo elementum ullamcorper commodo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos
						himenaeos.
					</p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<!-- //another-section -->
		</div>
	</div>
	<!-- //services -->

	<!-- testimonials -->
	<div class="testimonials">
		<div class="container">
			<h3 class="title">What Out Clients Says</h3>
			<div class="w3_testimonials_grids">
				<section class="slider">
					<div class="flexslider">
						<ul class="slides">
							<li>
								<div class="w3_testimonials_grid">
									<img src="images/te1.jpg" alt=" " class="img-responsive" />
									<h4>
										<i>
											Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod possimus, omnis voluptas.
										</i>
									</h4>
									<h5>John Frank</h5>
									<p>Tempore Quo</p>
								</div>
							</li>
							<li>
								<div class="w3_testimonials_grid">
									<img src="images/te2.jpg" alt=" " class="img-responsive" />
									<h4>
										<i>
											Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod possimus, omnis voluptas.

										</i>
									</h4>
									<h5>Michael Doe</h5>
									<p>Maxime Omni</p>
								</div>
							</li>
							<li>
								<div class="w3_testimonials_grid">
									<img src="images/te3.jpg" alt=" " class="img-responsive" />
									<h4>
										<i>
											Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod possimus, omnis voluptas.

										</i>
									</h4>
									<h5>Thomas Carl</h5>
									<p>Placeat Quo</p>
								</div>
							</li>
						</ul>
					</div>
				</section>

			</div>
		</div>
	</div>
	<!-- //testimonials -->

	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="footer-row w3layouts-agile">
				<div class="col-md-4 col-xs-4 footer-grids">
					<h2>More Information</h2>
					<p class="footer-one-w3ls">This is a great you can use this space to go into a little more detail about your company. Talk about your team and
						what services you provide. </p>
				</div>
				<div class="col-md-5 col-xs-5 footer-grids w3l-agileits">
					<h3>Newsletter</h3>
					<p>Recieve our latest news straight to your inbox</p>
					<form action="#" method="post">
						<input type="email" placeholder="Email" name="email" required="">
						<input type="submit" value="Subscribe" />
					</form>
				</div>
				<div class="col-md-3 col-xs-3 footer-grids social-agileits">
					<h3>Connect With Us</h3>
					<div class="social-w3l">
						<ul>
							<li>
								<a href="#" class="wthree_facebook">
									<i class="fa fa-facebook" aria-hidden="true"></i>
								</a>
							</li>
							<li>
								<a href="#" class="wthree_twitter">
									<i class="fa fa-twitter" aria-hidden="true"></i>
								</a>
							</li>
							<li>
								<a href="#" class="wthree_dribbble">
									<i class="fa fa-dribbble" aria-hidden="true"></i>
								</a>
							</li>
						</ul>
					</div>
					<div class="social-w3r">
						<ul>
							<li>
								<a href="#">Facebook</a>
							</li>
							<li>
								<a href="#">Twitter</a>
							</li>
							<li>
								<a href="#">Dribbble</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- copyright -->
	<div class="copy-section">
		<p>© 2018 Travel Tours. All rights reserved | Design by
			<a href="http://w3layouts.com">W3layouts</a>
		</p>
	</div>
	<!-- //copyright -->
	<!-- //footer -->


	<!-- Js files -->
	<!-- JavaScript -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- Default-JavaScript-File -->
	<script src="js/bootstrap.js"></script>
	<!-- Necessary-JavaScript-File-For-Bootstrap -->

	<!-- banner Slider -->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
			// Slideshow 4
			$("#slider3").responsiveSlides({
				auto: true,
				pager: true,
				nav: false,
				speed: 500,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<!-- //banner Slider -->

	<!-- flexSlider (for testimonials) -->
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
	<script defer src="js/jquery.flexslider.js"></script>
	<script>
		$(window).load(function () {
			$('.flexslider').flexslider({
				animation: "slide",
				start: function (slider) {
					$('body').removeClass('loading');
				}
			});
		});
	</script>
	<!-- //flexSlider (for testimonials) -->

	<!-- smooth scrolling -->
	<script src="js/SmoothScroll.min.js"></script>
	<!-- //smooth scrolling -->

	<!-- start-smoth-scrolling -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->

	<!-- smooth scrolling-bottom-to-top -->
	<script>
		$(document).ready(function () {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
			$().UItoTop({
				easingType: 'easeOutQuart'
			});
		});
	</script>
	<a href="#" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
	<!-- //smooth scrolling-bottom-to-top -->
	<!-- //Js files -->

</body>

</html>