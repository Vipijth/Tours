
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
        }%>
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
								<a href="disthome.jsp" style=background:white;color:black;">Home</a>
							</li>
							<li>
								<a href="place.jsp">Tourist Places</a>
							</li>
                                                        <li>
								<a href="hotel.jsp">Hotels& RestRooms</a>
							</li>
					<li>
								<a href="travel.jsp">Traveling</a>
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
        </div><font color='white' face='kalinga' size="5" style='position:fixed; top:14%;'><b><%=name%></font>
        </b></font>
                                                                        
   <div class="container-fluid" style="width: 50%; position: fixed; top:11%;right:auto;left:30%;background: white;margin: auto;opacity: .9">
                                            
                                   
                                                <br>
  <div class="form-group">
    <label for="emailHelp">Caption</label>
    <input type="name" class="form-control" name="logemail"  required id="emailHelp" aria-describedby="emailHelp" value='<%= caption%>' readonly style='width:99%;border:0px solid white;'> 
                        <a href="#"data-toggle="modal" data-target="#myModal1"  ><button style="width:99%; ;border:1px solid white; padding:7px;color:white;" class="o">edit</button> </a>
  </div>

  <div class="form-group">
    <label for="psd">Password</label>
    <input type="password" class="form-control" name="logpsd"  required id="psd" value='<%= cp %>' readonly style='width:99%;border:0px solid white;'>
      <a href="#" data-toggle="modal" data-target="#myModal2" ><button style="width:99%; border:1px solid white; padding:7px;color:white;" class="o">edit</button> </a>
 
  </div>
      
        <div class="form-group">
    <label for="psd">District Name</label>
    <input type="text" class="form-control" name="logpsd"  required id="psd" value='<%= name %>' readonly style='width:99%;border:0px solid white;'>
      <a href="#" data-toggle="modal" data-target="#myModal3" ><button style="width:99%; border:1px solid white; padding:7px;color:white;" class="o">edit</button> </a>
 
  </div>
  <div class="form-group">
    <label for="psd">District Number</label>
    <input type="text" class="form-control" name="logpsd"  required id="psd" value='<%= id %>' readonly style='width:99%;border:0px solid white;'>
      <a href="#"  ><button style="width:99%; border:1px solid white; padding:7px;color:white; cursor: not-allowed;" class="o">edit</button> </a>
 
  </div>
      
       <div class="form-group">
    <label >District Image</label>
      <a href="#" data-toggle="modal" data-target="#myModal5" ><button style="width:99%; border:1px solid white; padding:7px;color:white;" class="o">Upload Image</button> </a>
 
  </div>
      
          <div class="form-group">
    <label >District Map Image</label>
      <a href="#" data-toggle="modal" data-target="#myModal6" ><button style="width:99%; border:1px solid white; padding:7px;color:white;" class="o">Upload Image</button> </a>
 
  </div>
      
   </div>
      
                                                                              
      
      
       
        	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" style="background: #000;">
		<div class="modal-dialog" >
			<!-- Modal content-->
			<div class="modal-content" >
				<div class="modal-header" style="box-shadow: 2px 3px 2px 3px white">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
                                        
					<span></span>
                                        <div style="height:170px;">
                   
                                   
                                            <form action="sm.jsp" method="post">

  <div class="form-group">
    <label for="nl">New Password</label>
     <input type="hidden" class="form-control" name="lnames" value="fname" required id="nl" placeholder="New Name">
    <input type="text" value="" class="form-control" name="nl"  required id="nl" placeholder="New Password">
        <input type="hidden" class="form-control" name="nemail" value="<%= id%>" required id="nl" placeholder="New Name">
  </div>

<center>
      <Input type="submit" class="btn btn-primary" onclick="return confirm('Do you want to change data?');" value="Change Now"></center>
</form>
                                        </div>
				</div>
			</div>
		</div>
	</div>
  
  
  <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" style="background: #000;">
		<div class="modal-dialog" >
			<!-- Modal content-->
			<div class="modal-content" >
				<div class="modal-header" style="box-shadow: 2px 3px 2px 3px white">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
                                        
					<span></span>
                                        <div style="height:170px;">
                   
                                   
                                            <form action="sm.jsp" method="post">

  <div class="form-group">
    <label for="nl">New Caption</label>
     <input type="hidden" class="form-control" name="lnames" value="lname" required id="nl" placeholder="New Name">
    <input type="text" value="" class="form-control" name="nl"  required id="nl" placeholder="New caption">
        <input type="hidden" class="form-control" name="nemail" value="<%= id%>" required id="nl" placeholder="New Name">
  </div>

<center>
      <Input type="submit" class="btn btn-primary" onclick="return confirm('Do you want to change data?');" value="Change Now"></center>
</form>
                                        </div>
				</div>
			</div>
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
                   
                                   
                                            <form action="sm.jsp" method="post">

  <div class="form-group">
    <label for="nl">New Name</label>
     <input type="hidden" class="form-control" name="lnames" value="email" required id="nl" placeholder="New Name">
      <input type="hidden" class="form-control" name="lk" value="<%= lname%>" required id="nll" placeholder="New Name">
    <input type="text" value="" class="form-control" name="nl"  required id="nl" placeholder="New Name">
        <input type="hidden" class="form-control" name="nemail" value="<%= id%>" required id="nl" placeholder="New Name">
  </div>

<center>
      <Input type="submit" class="btn btn-primary" onclick="return confirm('Do you want to change data?');" value="Change Now"></center>
</form>
                                        </div>
				</div>
			</div>
                </div></div>
  
  
  
    <div class="modal fade" id="myModal5" tabindex="-1" role="dialog" style="background: #000;">
		<div class="modal-dialog" >
			<!-- Modal content-->
			<div class="modal-content" >
				<div class="modal-header" style="box-shadow: 2px 3px 2px 3px white">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
                                        
					<span></span>
                                        <div style="height:170px;">
                   
                                   
                                            <form action="sm.jsp" method="post">

  <div class="form-group">
    <label for="nl">Upload New Photo</label>
     <input type="hidden" class="form-control" name="lnames" value="mob" required id="nl" placeholder="New Name">
    <input type="file" value="" class="form-control" name="nl"  required id="nl" placeholder="New Image">
        <input type="hidden" class="form-control" name="nemail" value="<%= id%>" required id="nl" placeholder="New Name">
  </div>

<center>
      <Input type="submit" class="btn btn-primary" onclick="return confirm('Do you want to change data?');" value="Change Now"></center>
</form>
                                        </div>
				</div>
			</div>
		</div>
  
  
  </div>
      
      
      
    <div class="modal fade" id="myModal6" tabindex="-1" role="dialog" style="background: #000;">
		<div class="modal-dialog" >
			<!-- Modal content-->
			<div class="modal-content" >
				<div class="modal-header" style="box-shadow: 2px 3px 2px 3px white">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
                                        
					<span></span>
                                        <div style="height:170px;">
                   
                                   
                                            <form action="sm.jsp" method="post">

  <div class="form-group">
    <label for="nl">Upload New Photo</label>
     <input type="hidden" class="form-control" name="lnames" value="psd" required id="nl" placeholder="New Name">
    <input type="file" value="" class="form-control" name="nl"  required id="nl" placeholder="New Map Image">
        <input type="hidden" class="form-control" name="nemail" value="<%= id%>" required id="nl" placeholder="New Map Image">
  </div>

<center>
      <Input type="submit" class="btn btn-primary" onclick="return confirm('Do you want to change data?');" value="Change Now"></center>
</form>
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