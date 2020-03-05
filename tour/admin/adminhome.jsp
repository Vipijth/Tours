
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
 HttpSession sessi=request.getSession(true);
 
     if(sessi.getAttribute("atrueemail")==null)
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
    
           String a=sessi.getAttribute("atrueemail").toString();
          
            
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
   
    	<!-- Custom-Files -->
	<link rel="stylesheet" href="../css/bootstrap.css">
	<!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link href="../css/font-awesome.css" rel="stylesheet">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //Custom-Files -->

	<!-- Web-Fonts -->
	<link href="//fonts.googleapis.com/css?family=Pacifico&amp;subset=cyrillic,latin-ext,vietnamese" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Amaranth:400,400i,700,700i" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet"></head>
    <style>.o{background:#000}
         .o:hover{background: greenyellow}
        </style>
    </head>
    <body>
       
<body style="background:#552" >
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
								<a href="adminhome.jsp" style=background:white;color:black;">Home</a>
							</li>
							<li>
								<a href="userinfo.jsp">User Info</a>
							</li>
                                                         <li>
								<a href="place.jsp" >Places</a>
							</li>
                                                        <li>
								<a href="hotel.jsp" >Hotel</a>
							</li>
                                                       
									<li>
										<a href="logout.jsp"  >Log Out</a>
									</li>
								
							
                                                        	
                                                                        <li> <A> <%= a%></li>
							
                                                       		
                                                        
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
             <font color='white' face='kalinga' size="5" style='position:fixed; top:14%;'>
       District Details</font>                                                         
   <div class="container-fluid" style="width: 90%; position: absolute; top:19%;right:auto;left:10%;margin: auto;opacity: .9">
       <table align="left" style="width:90%;background: white;"  bgcolor="white">
           <tr>
               <td style="width:10%; padding: 10px; border:1px solid grey">Id</td>
                <td style="width:20%; padding: 10px; border:1px solid grey">District Name</td>
                 <td style="width:20%; padding: 10px; border:1px solid grey">Username</td>
                  <td style="width:20%; padding: 10px; border:1px solid grey">Password</td>
                   <td style="width:30%; padding: 10px; border:1px solid grey">Details</td>
           </tr>
           <%
             
              String selectSQL = "select * from DISTRICT";
PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
ResultSet rs = preparedStatement.executeQuery();
String id;
String name;String cap;String user; String psd;


        while(rs.next())
        {
             id=rs.getString("id");
             name=rs.getString("name").toUpperCase();
             cap=rs.getString("caption").toUpperCase();
             user=rs.getString("username").toUpperCase();
             psd=rs.getString("password").toUpperCase();
             
           %> <tr>
               <td style="width:10%; padding: 10px; border:1px solid grey"><%=id%></td>
               <td style="width:20%; padding: 10px; border:1px solid grey"><%=name%></td>
      
               <td style="width:20%; padding: 10px; border:1px solid grey"><%=user%></td>
      
               <td style="width:20%; padding: 10px; border:1px solid grey"><%=psd%></td>
      
               <td style="width:30%; padding: 10px; border:1px solid grey"><%=cap%></td></tr>
      
      
         <%                    
        }%>
       </table>

      
   </div>
     
<!-- Js files -->
	<!-- JavaScript -->
	<script src="../js/jquery-2.2.3.min.js"></script>
	<!-- Default-JavaScript-File -->
	<script src="../js/bootstrap.js"></script>
	<!-- Necessary-JavaScript-File-For-Bootstrap -->

	<!-- banner Slider -->
	<script src="../js/responsiveslides.min.js"></script>
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
	<link rel="stylesheet" href="../css/flexslider.css" type="text/css" media="screen" property="" />
	<script defer src="../js/jquery.flexslider.js"></script>
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
	<script src="../js/SmoothScroll.min.js"></script>
	<!-- //smooth scrolling -->

	<!-- start-smoth-scrolling -->
	<script src="../js/move-top.js"></script>
	<script src="../js/easing.js"></script>
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