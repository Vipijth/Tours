
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
					<div class="w3l-navtop" style="width:50%;">
						<ul class="nav navbar-nav navbar-right" >
							<li>
								<a href="adminhome.jsp" >Home</a>
							</li>
							<li>
								<a href="userinfo.jsp" >User Info</a>
							</li>
                                                       <li>
								<a href="place.jsp"  >Places</a>
							</li>
                                                        <li>
								<a href="hotel.jsp" style=background:white;color:black;" >Hotel</a>
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
       Hotel Details</font>     
       <form action=""  method="post">
           <select name="dis" style='position:fixed; top:14%;left:15%;padding: 6px'>
            
               <option value="%">All</option>
               <option value="kasargod">KASARGOD</option>
                <option value="kannur">KANNUR</option>
           </select>
           <input type="submit" value="submit" style='position:fixed; top:14%;left:26%;padding: 6px'></form>
   <div class="container-fluid" style="width: 90%; position: absolute; top:29%;right:auto;left:10%;margin: auto;opacity: .9">
                   <%

            String hid=""; 
           if(request.getParameter("hid")!=null){
            hid=request.getParameter("hid");
String q="delete  from HOTEL where id=? ";
      PreparedStatement st=con.prepareStatement(q); 
        st.setInt(1, Integer.parseInt(request.getParameter("hid")));
         st.execute();
           }
            String dis="";%><%=dis%><%
             
               
                    dis=request.getParameter("dis");
                    if (dis!= null)
                    {
  %>
           
       <table align="left" style="width:90%;background: white;"  bgcolor="white">
           <tr>
               <td style="width:10%; padding: 10px; border:4px solid black">Id</td>
                <td style="width:20%; padding: 10px; border:4px solid black"> Name</td>
                <td style="width:10%; padding: 10px; border:4px solid black"> District</td>
                 <td style="width:10%; padding: 10px; border:4px solid black">Contact</td>
                        <td style="width:20%; padding: 10px; border:4px solid black">Place</td>
                               <td style="width:30%; padding: 10px; border:4px solid black">Near To</td>
                
                    <td style="width:20%; padding: 10px; border:4px solid black;background: red;color:white">Remove</td>
           </tr>

           <%
               
              
               
              
             String selectSQL="";
         
               selectSQL = "select * from hotel where district like ?";
         
PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
     preparedStatement.setString(1,dis);
ResultSet rs = preparedStatement.executeQuery();
String id;
String name;String cap;String user; String psd;
String mob;


        while(rs.next())
        {
             id=rs.getString("id");
             name=rs.getString("name").toUpperCase();
             cap=rs.getString("district").toUpperCase();
             user=rs.getString("contact").toUpperCase();
             psd=rs.getString("place").toUpperCase();
              mob=rs.getString("nearto").toUpperCase();
             
           %> <tr>
               <td style="width:10%; padding: 10px; border:1px solid grey"><%=id%></td>
               <td style="width:10%; padding: 10px; border:1px solid grey"><%=name%></td>
      
               <td style="width:10%; padding: 10px; border:1px solid grey"><%=cap%></td>
      
               <td style="width:20%; padding: 10px; border:1px solid grey"><%=user%></td>
       <td style="width:20%; padding: 10px; border:1px solid grey"><%=psd%></td>
        <td style="width:20%; padding: 10px; border:1px solid grey"><%=mob%></td>
             
                 <td style="width:20%; padding: 0px; border:1px solid grey">
                     
                     <form action="" method="post">
                         <input type="hidden" value="hotel" name="type">
                         <input type="hidden" value="<%=id%>" name="hid">
                         <input type="submit" value="remove" style="padding:4px 13px ;background: red;color:white"></form>
                 </td></tr>
      
      
         <%                    
        }}%>
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