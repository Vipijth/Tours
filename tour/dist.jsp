<%-- 
    Document   : userhome
    Created on : Nov 28, 2018, 11:21:15 PM
    Author     : chakkara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
 HttpSession sess=request.getSession(true);
 
     if(sess.getAttribute("trueemail")==null)
            {%>
                
<jsp:forward page="index.html" />
          <%  }
%>

<%@page import="java.sql.*;" %>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="org.apache.derby.jdbc.ClientDataSource"%>
<%@page import="java.sql.DriverManager;" %>
<%@include file="connection.jsp" %>
<%
    
           String a=sess.getAttribute("trueemail").toString();
            String b=sess.getAttribute("cid").toString();
              
                int cid=Integer.parseInt(b);
          String fname="";
          String lname="";
           String emailid="";
            String mob="";
             String psd=""; 
      String emailsid="";
      String distname=request.getParameter("dist").toUpperCase();
       String distnam=request.getParameter("dist");
        String selectSQL = "select * from PER_INFO where id = ?";
PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
preparedStatement.setString(1,b );
ResultSet rs = preparedStatement.executeQuery();
        while(rs.next())
        {
            fname=rs.getString("fname").toUpperCase();
                         lname=rs.getString("lname").toUpperCase();
                         emailid=rs.getString("id");
                         emailsid=rs.getString("email");
                         mob=rs.getString("mob");                       
                         psd=rs.getString("psd").toUpperCase();      
        }
  

   String rq = "select * from root.DISTRICT where name like ?";
   PreparedStatement ps = con.prepareStatement(rq);
   ps.setString(1,distnam);
ResultSet cc = ps.executeQuery();
String distid="";
String distimg="";
String caption="";
String mapimg="";
 while(cc.next())
        {
            
                         caption=cc.getString("CAPTION").toUpperCase();
                         distid=cc.getString("id");
                         distimg=cc.getString("image");
                         mapimg=cc.getString("mapimg");                       
                           
        }
 
 

 
 
   String tr = "select * from root.TRAVELS where district like ?";
   PreparedStatement ts = con.prepareStatement(tr);
   ts.setString(1,distnam);
ResultSet tc = ts.executeQuery();
String bus="";
String rail="";
String air="";
 while(tc.next())
        {
            
                         bus=tc.getString("bus");
                         rail=tc.getString("rail");
                         air=tc.getString("air");
                                               
                           
        }
 
 
 
 
 
//String place=request.getParameter("hp");


  String hq = "select * from root.HOTEL where district like ? ";
   PreparedStatement hs = con.prepareStatement(hq);
  hs.setString(1,distnam);
  // hs.setString(2,place);
ResultSet hc = hs.executeQuery();
String hname="";
String himg="";
String hcontact="";
String hplace="";
String hnear="";

  String pl = "select * from root.PLACE where district like ? ";
   PreparedStatement pls = con.prepareStatement(pl);
  pls.setString(1,distnam);
  // hs.setString(2,place);
ResultSet plc = pls.executeQuery();
String pname="";
String plimg="";
String pcap="";
String ppmap="";




%>



 
          

	
<!DOCTYPE html>
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
        /><style>
            .a{
                opacity:1;
                background: #000;
            }
            .a:hover{
                opacity:1;
                background: #A492DE;
            }
        .t{opacity: 0.8; height:200px; }
         .t:hover{opacity: 1;transition :6s;transform: scale(2, 3);}
         
         .o{background:#000}
         .o:hover{background: greenyellow}
        </style>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
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
	<div class="header-w3l" style="top:-25px; position: absolute;">
		<!-- navigation -->
		<div class="nav-agile" style="background:black;opacity:0.7;">
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
						<a href="#">Travel Tour</a>
                                    
					</h1>
					<!-- //logo -->
				</div>
				<!-- navbar-header -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<div class="w3l-navtop" style="width:60%;">
						<ul class="nav navbar-nav navbar-right" >
							<li>
								<a href="userhome.jsp" >Home</a>
							</li>
							<li>
								<a href="#dist">Tourist Places</a>
							</li>
                                                        <li>
								<a href="#ht">Hotels& RestRooms</a>
							</li>
					<li>
								<a href="dist.jsp#map">Traveling</a>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Account
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu agile_short_dropdown">
									<li>
										<a href="userhome.jsp#profs">My Profile</a>
									</li>
									<li>
										<a href="logout.jsp"  >Log Out</a>
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
                                            <div class="slider-img" style="background-image: url('images/<%= distimg%>');" >
							<div class="slider_banner_info">
								<h4>
									<span>KL-<%=distid%></span> <%= distname %>
									
								</h4>
								<p><%= caption %></p>
								<div class="readmore-w3-agileits">
									<a href="#dist">Enquire Now</a>
								</div>
							</div>
                                                                
                                                                    
                                                                    <img src="images/<%=mapimg%>" width="20%" height="5%" style="right:0px;top:70px;position:absolute; border:2px solid black">
                                                          
						</div>
					</li>
				
				
				</ul>
			</div>
		</div>
	</div>
	<!-- //banner-slider -->
	<!-- modal (popup) -->
	
	<!-- //modal (popup) -->
               
        
            
  
 
	<!-- //banner -->


	<!-- middle section -->
        <div class="middle-w3l"><section id="map"><br><br>
		<div class="container">
                    <font color="white" face="kalinga"><big><big><b> Select Your Travel Style
                   <table align="right" style="right:0; width:80%; height:100%; ">
                        <tr><td>
                           
                                <iframe  name="s"  align="right" style="width:98%;border:0px solid black; height:500px ;"   scrolling="no">

</iframe>
                    </table>  
                 <table align="left" style="left:0; width:20%; height:71%; ">
                     <tr><td><center>
                         <br>
                         <a href="images/<%=bus %>" target="s"><img src="images/bus.jpg" style="width:70%;border:2px solid red;border-radius:50%;height:150px;"><br><small><font color="white">BUS<br></small>
                             <a href="images/<%=rail %>" target="s"><img src="images/rail.jpg" style="width:70%;border:2px solid white;border-radius:50%;height:150px"><br><small><font color="white"><b>INDIAN RAILWAY<br></small>
                                         <a href="images/<%=air %>" target="s"><img src="images/air.jpg" style="width:70%;border:2px solid greenyellow;border-radius:50%;height:150px"><br><small><font color="white">AIR PORTS<br>
                                         <br>
                 </table>
                   
                                           
                                        
		</div>
	</div>
	<!-- //middle section -->

	<!-- tours sectopn -->
	<div class="trips-section"><selection id="ht">
		<div class="container">
			<h3 class="title">HOTELS & RESTROOMS</h3>
                        
                       <% 
                            while(hc.next())
        {
            
                         hname=hc.getString("name").toUpperCase();
                         himg=hc.getString("img");
                         hcontact=hc.getString("contact");
                         hnear=hc.getString("nearto");                       
                           hplace=hc.getString("place").toUpperCase();
                           
                           %><div class="col-xs-4 exce-grid1-mmstyle">
				<img src="images/<%=himg%>" alt="">
				<div class="grid-ec1" style="height:200px">
                                    <h3><%= hname %></h3>
                                    	<h4>
                                            <i class="fa fa-phone-square"></i><%= hcontact %></h4>
					<h4>
						<i class="fa fa-map-marker"></i><%= hnear %>
                                                <p style=" color:red"> TOURIST PLACE:  <%= hplace %> DISTRICT  <%= distname %>
                                       </h4>
					
				</div>
			</div>
                           
         <%                  
        }
                            %>
                  
			
			
			
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //tours sectopn -->

	<!-- services -->
	
	<!-- //services -->

        
        <div class="trips-section">
		<hr/>
			<div class="container" style="height:500px">
                    <section id="dist">
			<h3 class="title">Places</h3>
                        
                        <% 
                            while(plc.next()) {
            
                         pname=plc.getString("name").toUpperCase();
                         plimg=plc.getString("placeimg");
                         pcap=plc.getString("caption");
                         ppmap=plc.getString("mapimg");                       
                           
                           
                           %>
			<div class="col-xs-4 exce-grid1-mmstyle" >
                            <div  style="overflow: hidden;height:80%; width:99%;">
                                <img src="images/<%= plimg%>" alt="" class="t"></div>
				<div class="grid-ec1" style="height:180px;padding:12px;">
                                    <font color="#000">  <%= pname     %>  </b>     <%=distname%><p> </b><small>About: <%= pcap%> 
                                     <center>	
                                         <a href="<%=ppmap%>" target="_blank"> <button style="color:white;height:30px;width:40%;background:#232;"> viewin map </button></a>
                                            
				</div>
			</div>
			<% }%>
			<div class="clearfix"></div>
		
	</div>
	<!-- //tours sectopn -->


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