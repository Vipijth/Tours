<%-- 
    Document   : disthome
    Created on : Feb 26, 2019, 1:39:39 AM
    Author     : chakkara
--%>

<%-- 
    Document   : userhome
    Created on : Nov 28, 2018, 11:21:15 PM
    Author     : chakkara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
 HttpSession sessio=request.getSession(true);
 
     if(sessio.getAttribute("dtrueemail")==null)
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
    
           String a=sessio.getAttribute("dtrueemail").toString();
            String b=sessio.getAttribute("dcid").toString();
            
%><%
             
              String selectSQL = "select * from DISTRICT where username = ?";
PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
preparedStatement.setString(1,a );
ResultSet rs = preparedStatement.executeQuery();
String id="";
String name="";
String lname="";
String image="";
String mapimage="";
String caption="";
String cp="";
        while(rs.next())
        {
            lname=rs.getString("name");
                         name=rs.getString("name").toUpperCase();
                         id=rs.getString("id");
                         image=rs.getString("image");
                         mapimage=rs.getString("mapimg");  
                          cp=rs.getString("password");         
                         caption=rs.getString("caption").toUpperCase();      
        }



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
       
<body style="background-image: url(' ../images/<%=image%> ')">
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
					<div class="w3l-navtop" style="width:70%;">
						<ul class="nav navbar-nav navbar-right" >
							<li>
								<a href="disthome.jsp" >Home</a>
							</li>
							<li>
								<a href="place.jsp" >Tourist Places</a>
							</li>
                                                        <li>
								<a href="hotel.jsp">Hotels& RestRooms</a>
							</li>
					<li>
								<a href="travel.jsp" style="background:white;color:black;">Traveling</a>
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
                                                                        
                                  
         
        <div class="trips-section">
		<hr/>
			<div class="container" style="height:100% ;width:100%;background:white;">
             
			<h3 class="title">Traveling </h3>  
                    
			<div class="col-xs-4 exce-grid1-mmstyle" >
                            <div  style="overflow: hidden;height:80%; width:99%;"> 
                            
                                <img src="../images/rail.jpg" alt="" class="t" height="240"></div>
				<div class="grid-ec1" style="height:180px;padding:12px;">
                                    <font color="red">    </b>     <p><big> <b>Railway Station  
                                     <center>	
                                         <a href="#"  data-toggle="modal" data-target="#myModal3" > <button style="color:white;height:30px;width:40%;background:#232;"> UPDATE </button></a>
                                       
                                 
				</div>
			</div>
                          
                          
                          <div class="col-xs-4 exce-grid1-mmstyle" >
                            <div  style="overflow: hidden;height:80%; width:99%;"> 
                            
                                <img src="../images/bus.jpg" alt="" class="t"></div>
				<div class="grid-ec1" style="height:180px;padding:12px;">
                                    <font color="#000">  <big>      <p> <b>Bus Stand </big>
                                     <center>	
                                         <a href="#"  data-toggle="modal" data-target="#myModal3" > <button style="color:white;height:30px;width:40%;background:#232;"> UPDATE </button></a>
                                        

				</div>
			</div>
                          
                          
                          <div class="col-xs-4 exce-grid1-mmstyle" >
                            <div  style="overflow: hidden;height:80%; width:99%;"> 
                            
                                <img src="../images/air.jpg" alt="" class="t"></div>
				<div class="grid-ec1" style="height:180px;padding:12px;">
                                    <font color="red">    <b>       <big>    
                                            <p> Air Port </big>
                                     <center>	
                                         <a href="#"  data-toggle="modal" data-target="#myModal3" > <button style="color:white;height:30px;width:40%;background:#232;"> UPDATE </button></a>
                                      
				</div>
			</div>
                                        
                           
			
                        <div class="clearfix"></div>
		
	</div>
                          
   </div>                                                                            
      
      
       
        	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" style="background: #000;">
		<div class="modal-dialog" >
			<!-- Modal content-->
			<div class="modal-content" >
				<div class="modal-header" style="box-shadow: 2px 3px 2px 3px white">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
                                        
					<span></span>
                                        <div style="height:170px;">
                   
                                   
                                            <form action="ts.jsp" method="post">

  <div class="form-group">
      <small>
          </b>
          <small><font face=kalinga">
      <select name="travel">
          <option value="rail">RAil Way</option>
          <option value="bus">BUS Stand</option>
          <option value="air">Air Port </option>
  </select>
              <br>
              <label for="ne">UPLOAD MAP</label><br>
    <input type="file"  required value="" class="form-control" name="mapimg"  required id="ne" placeholder="">
      
    <input type="hidden" class="form-control" name="lnames" value="fname" required  placeholder="New Name">
     
    <input type="hidden" class="form-control" name="dname" value="<%= lname%>" required id="nl" placeholder="New Name">
  </div>

<center>
      <Input type="submit" class="btn btn-primary" onclick="return confirm('Do you want to add data?');" value="ADD DETAILS"></center>
</form>
                                        </div>
				</div>
			</div>
		</div>
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