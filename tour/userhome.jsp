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
<%
    String url="jdbc:derby://localhost:1527/tourz";

    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection con=DriverManager.getConnection(url,"root","root");
   
  
%>

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
      String tq=request.getParameter("mob");
      String qq=request.getParameter("warn");
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
        
 String nl=request.getParameter("nl");
        String q="update PER_INFO set lname=? where email like ?";
        
       
          PreparedStatement st=con.prepareStatement(q); 
           st.setString(1, request.getParameter("nl")); 
          st.setString(2, request.getParameter("nemail"));
          st.execute();  
if(st.execute())
{
      %>
<jsp:forward page="sm.jsp" />
<%
}
else{

}
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
					<div class="w3l-navtop" style="width:60%;">
						<ul class="nav navbar-nav navbar-right">
							<li>
								<a href="index.html" class="active">Home</a>
							</li>
							<li>
								<a href="about.html">About</a>
							</li>
                                                        <li>
								<a href="#dist">Our Services</a>
							</li>
					
							<li>
								<a href="gallery.html">Gallery</a>
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
										<a href="userhome.jsp#profs">My Profile</a>
									</li>
									<li>
										<a href="#" data-toggle="modal" data-target="#myModal2">Log Out</a>
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
								<p>Go, fly, roam, travel, voyage, explore, journey, discover, adventure.</p>
								<div class="readmore-w3-agileits">
									<a href="#dist">Enquire Now</a>
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
								<p>Go, fly, roam, travel, voyage, explore, journey, discover, adventure.</p>
								<div class="readmore-w3-agileits">
									<a href="#dist">Enquire Now</a>
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
								<p>Go, fly, roam, travel, voyage, explore, journey, discover, adventure.</p>
								<div class="readmore-w3-agileits">
									<a href="#dist" >Enquire Now</a>
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
                                     
				</div>
			</div>
		</div>
	</div>
	<!-- //modal (popup) -->
               
        	<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" style="background: #000;">
		<div class="modal-dialog" >
			<!-- Modal content-->
			<div class="modal-content" >
				<div class="modal-header" style="box-shadow: 2px 3px 2px 3px white">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
                                        
					<span></span>
                                        <div style="height:170px;">
                   
                                   
                                            <form action="sm.jsp" method="post">

  <div class="form-group">
    <label for="nl">New Email</label>
     <input type="hidden" class="form-control" name="lnames" value="email" required id="nl" placeholder="New Email">
    <input type="email" required class="form-control" name="nl" value=" <%= emailsid %>" required id="nl" placeholder="New Email">
        <input type="hidden" class="form-control" name="nemail"  value="<%= emailid %>" required id="nl" placeholder="New Name">
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
     <input type="hidden" class="form-control" name="lnames" value="fname" required id="nl" placeholder="New Name">
    <input type="text" value="<%= fname %>" class="form-control" name="nl"  required id="nl" placeholder="New Name">
        <input type="hidden" class="form-control" name="nemail" value="<%= emailid %>" required id="nl" placeholder="New Name">
  </div>

<center>
      <Input type="submit" class="btn btn-primary" onclick="return confirm('Do you want to change data?');" value="Change Now"></center>
</form>
                                        </div>
				</div>
			</div>
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
    <label for="nl">New Name</label>
     <input type="hidden" class="form-control" name="lnames" value="lname" required id="nl" placeholder="New Name">
    <input type="text"  value="<%= lname %>" class="form-control" name="nl"  required id="nl" placeholder="New Name">
        <input type="hidden" class="form-control" name="nemail" value="<%= emailid %>" required id="nl" placeholder="New Name">
  </div>

<center>
      <Input type="submit" class="btn btn-primary" onclick="return confirm('Do you want to change data?');" value="Change Now"></center>
</form>
                                        </div>
				</div>
			</div>
		</div>
	</div>
  
  
  
  
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
    <label for="nl">New Number</label>
     <input type="hidden" class="form-control" name="lnames" value="mob" required id="nl">
    <input type="text" maxlength="10" name="mob"   onBlur="val_mob()"   value="<%= mob %>" class="form-control" name="nl"  required id="nl" placeholder="New Number">
         <input type="text" name="warn" value="Your Mobile Number Will be Secured Here!" readonly id="d"  style="background:white;border:0px solid red;width:100%;color:red;font-weight: bold;font-family: kalinga;">
  
    <input type="hidden" class="form-control" name="nemail" value="<%= emailid %>" required id="nl" placeholder="New Name">
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
    <label for="nl">New password</label>
     <input type="hidden" class="form-control" name="lnames" value="psd" required id="nl" placeholder="New password">
    <input type="text"  value="<%= psd %>" class="form-control" name="nl"  required id="nl" placeholder="New Name">
        <input type="hidden" class="form-control" name="nemail" value="<%= emailid %>" required id="nl" placeholder="New Name">
  </div>

<center>
      <Input type="submit" class="btn btn-primary" onclick="return confirm('Do you want to change data?');" value="Change Now"></center>
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
					<a href="#" >Read More</a>
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
        <div class="middle-w3l"><section id="profs"><br><br>
		<div class="container">
                    <div style="height:580px;opacity:0.8;"><b><big><font color="white"><big>
                                    Welcome <%= fname %>   <%= lname %><br><br></big></big>
                                            <table  style="width:100%; height:60%;border:1px solid grey" align="center">
                                                <tr style="color:black; background:#fff;border-bottom:1px solid white;"><td style="color:black; background:#fff;">
                                                 <button style="width:100%; border:1px solid white; height:60%; color:white;background:#126;">First Name</button>
                                                    </td>
                                                    <td>
                                                      <button style="width:100%; border:1px solid white; height:60%; color:white;background:#126;"><%= fname %></button>
                                                    </td>
                                                    <td style="width:35%">
                             <a href="#" data-toggle="modal" data-target="#myModal3" ><button style="width:100%; border:1px solid white; height:60%; color:white;" class="o">edit</button> </a>
                                                                                  
                                                    </td></tr>
                                                    
                                                     <tr style="border-bottom:1px solid white;color:black; background:#fff;"><td style="color:black; background:#fff;">
                                                <b> <button style="width:100%; border:1px solid white; height:60%; color:white;background:red">Last Name:</button>
                                                    </td>
                                                    <td>
                                                       <button style="width:100%; border:1px solid white; height:60%; color:white;background:red;"><%= lname %></button>
                                                    </td>
                                                    <td>
                                                        <a href="#" data-toggle="modal" data-target="#myModal2" ><button style="width:100%; border:1px solid white; height:60%; color:white;" class="o">edit</button> </a>
                                                            </td></tr>
                                                
                                                    
                                                     <tr style="border-bottom:1px solid white;color:black; background:#fff;"><td style="color:black; background:#fff;">
                                         <button style="width:100%; border:1px solid white; height:60%; color:white;background:#126;">Email Id</button>
                                                    </td>
                                                    <td>
                                                       <button style="width:100%; border:1px solid white; height:60%; color:white;background:#125;"><%= emailsid %></button>
                                                    </td>
                                                    <td >
                                                         <button style="width:100%; border:1px solid white; height:60%; color:white;cursor: not-allowed;">Edit Not Available</button> 
                                </td></tr>
                                                
                                                    
                                                    
                                                     <tr style="border-bottom:1px solid white;color:#000; background:#fff;"><td style="color:black; background:#fff;">
                                             <button style="width:100%; border:1px solid white; height:60%; color:white;background:red;">Contact Number</button>
                                                    </td>
                                                    <td>
                                                       <button style="width:100%; border:1px solid white; height:60%; color:white;background:red;"><%= mob %></button>
                                                    </td>
                                                    <td>
                                                        
                                                 	  <a href="#" data-toggle="modal" data-target="#myModal5" ><button style="width:100%; border:1px solid white; height:60%; color:white;" class="o">edit</button> </a>
                                </form></td></tr>
                                                
                                                    
                                                     <tr style="border-bottom:1px solid white;color:black; background:#fff;"><td style="color:black; background:#fff;">
                                              <button style="width:100%; border:1px solid white; height:60%; color:white;background:#126;"> Password</button>
                                                    </td>
                                                    <td>
                                                     <input type="password" style="width:100%; text-align: center;border:1px solid white; height:60%; color:white;background:#126;" value=" <%= psd %>"</button>
                                                    </td>
                                                    <td>
                                                        <a href="#" data-toggle="modal" data-target="#myModal6" ><button style="width:100%; border:1px solid white; height:60%; color:white;" class="o">edit</button> </a>
                                 </td></tr>
                                                
                                                
                                            
                                            </table>
                                            
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

        
        <div class="trips-section">
		<div class="container">
                    <section id="dist">
			<h3 class="title">Districts</h3>
			<div class="col-xs-4 exce-grid1-mmstyle" >
                            <div  style="overflow: hidden;height:80%; width:99%;">
                                <img src="images/ksd.jpg" alt="" class="t"></div>
				<div class="grid-ec1" style="height:40px;padding:12px;">
                                    <form action="dist.jsp" method="post">
                                        <center>	
                                            <input type="hidden" name="dist" value="kasargod">
                                            <input type="submit"  class="a" style="color:white;height:30px;width:40%;" value="KASARGOD">
                                            
                                            </form>
                                        
				</div>
			</div>
			<div class="col-xs-4 exce-grid1-mmstyle" style="overflow: hidden">
                               <div  style="overflow: hidden;height:80%; width:99%;">
                                   <img src="images/knr.jpg" alt="" class="t"></div>
				<div class="grid-ec1" style="height:40px;padding:12px;">
                                  <form action="dist.jsp" method="post">
                                        <center>	
                                            <input type="hidden" name="dist" value="kannur">
                                            <input type="submit"  class="a" style="color:white;height:30px;width:40%;" value="KANNUR">
                                            
                                            </form>
				</div>
			</div>
			<div class="col-xs-4 exce-grid1-mmstyle" style="overflow: hidden">
                               <div  style="overflow: hidden;height:80%; width:99%;">
                                   <img src="images/wnd.jpg" alt="" class="t"></div>
			<div class="grid-ec1" style="height:40px;padding:12px;"><form action="dist.jsp" method="post">
                                        <center>	
                                            <input type="hidden" name="dist" value="wayanad">
                                            <input type="submit"  class="a" style="color:white;height:30px;width:40%;" value="WAYANAD">
                                            
                                            </form>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
            
            
            
            		<div class="container">
			<BR>
			<div class="col-xs-4 exce-grid1-mmstyle" style="overflow: hidden">
                               <div  style="overflow: hidden;height:80%; width:99%;">
                                   <img src="images/kzd.jpg" style="overflow: hidden" alt="" class="t"></div>
				<div class="grid-ec1" style="height:40px;padding:12px;">
                                 <form action="dist.jsp" method="post">
                                        <center>	
                                            <input type="hidden" name="dist" value="kozhikod">
                                            <input type="submit"  class="a" style="color:white;height:30px;width:40%;" value="KOZHIKOD">
                                            
                                            </form>
				</div>
			</div>
			<div class="col-xs-4 exce-grid1-mmstyle" style="overflow: hidden">
                               <div  style="overflow: hidden;height:80%; width:99%;">
				<img src="images/mal.jpg" alt="" class="t">
                               </div>
				<div class="grid-ec1" style="height:40px;padding:12px;">
                               <form action="dist.jsp" method="post">
                                        <center>	
                                            <input type="hidden" name="dist" value="malappuram">
                                            <input type="submit"  class="a" style="color:white;height:30px;width:40%;" value="MALAPPURAM">
                                            
                                            </form>
				</div>
			</div>
			<div class="col-xs-4 exce-grid1-mmstyle" style="overflow: hidden">
                               <div  style="overflow: hidden;height:80%; width:99%;">
                                   <img src="images/pal.jpg" alt="" class="t"></div>
			<div class="grid-ec1" style="height:40px;padding:12px;">
                            <form action="dist.jsp" method="post">
                                        <center>	
                                            <input type="hidden" name="dist" value="palakkad">
                                            <input type="submit"  class="a" style="color:white;height:30px;width:40%;" value="PALAKKAD">
                                            
                                            </form>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
            
            		<div class="container">
			<BR>
			<div class="col-xs-4 exce-grid1-mmstyle" style="overflow: hidden">
                               <div  style="overflow: hidden;height:80%; width:99%;">
                                   <img src="images/thr.jpg" alt="" class="t"></div>
				<div class="grid-ec1" style="height:40px;padding:12px;">
                               <form action="dist.jsp" method="post">
                                        <center>	
                                            <input type="hidden" name="dist" value="thrissur">
                                            <input type="submit"  class="a" style="color:white;height:30px;width:40%;" value="THRISSUR">
                                            
                                            </form>
				</div>
			</div>
			<div class="col-xs-4 exce-grid1-mmstyle" style="overflow: hidden">
                               <div  style="overflow: hidden;height:80%; width:99%;">
                                   <img src="images/ern.jpg" alt="" class="t"></div>
				<div class="grid-ec1" style="height:40px;padding:12px;">
                                    <form action="dist.jsp" method="post">
                                        <center>	
                                            <input type="hidden" name="dist" value="ernakulam">
                                            <input type="submit"  class="a" style="color:white;height:30px;width:40%;" value="ERNAKULAM">
                                            
                                            </form>
				</div>
			</div>
			<div class="col-xs-4 exce-grid1-mmstyle" style="overflow: hidden">
                               <div  style="overflow: hidden;height:80%; width:99%;">
                                   <img src="images/idk.jpg" alt="" class="t"></div>
			<div class="grid-ec1" style="height:40px;padding:12px;">
             <form action="dist.jsp" method="post">
                                        <center>	
                                            <input type="hidden" name="dist" value="idukki">
                                            <input type="submit"  class="a" style="color:white;height:30px;width:40%;" value="IDUKKI">
                                            
                                            </form>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
            
            		<div class="container" >
			<BR>
			<div class="col-xs-4 exce-grid1-mmstyle" style="overflow: hidden">
                               <div  style="overflow: hidden;height:80%; width:99%;">
                                   <img src="images/kot.jpg" alt="" class="t"></div>
				<div class="grid-ec1" style="height:40px;padding:12px;">
                                
                                    <form action="dist.jsp" method="post">
                                        <center>	
                                            <input type="hidden" name="dist" value="kottayam">
                                            <input type="submit"  class="a" style="color:white;height:30px;width:40%;" value="KOTTAYAM">
                                            
                                            </form>
				</div>
			</div>
			<div class="col-xs-4 exce-grid1-mmstyle" style="overflow: hidden">
                               <div  style="overflow: hidden;height:80%; width:99%;">
                                   <img src="images/alp.jpg" alt="" class="t"></div>
				<div class="grid-ec1" style="height:40px;padding:12px;">
                               <form action="dist.jsp" method="post">
                                        <center>	
                                            <input type="hidden" name="dist" value="alappuzha">
                                            <input type="submit"  class="a" style="color:white;height:30px;width:40%;" value="ALAPPUZHA">
                                            
                                            </form>
				</div>
			</div>
			<div class="col-xs-4 exce-grid1-mmstyle" style="overflow: hidden" >
                               <div  style="overflow: hidden;height:80%; width:99%;">
                                   <img src="images/pat.jpg" alt="" class="t"></div>
			<div class="grid-ec1" style="height:40px;padding:12px;">
<form action="dist.jsp" method="post">
                                        <center>	
                                            <input type="hidden" name="dist" value="pathanam thitta">
                                            <input type="submit"  class="a" style="color:white;height:30px;width:50%;" value="PATHANAM THITTA">
                                            
                                            </form>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
            
            
            
            		<div class="container" >
                            <BR>
			<div class="col-xs-4 exce-grid1-mmstyle"  style="overflow: hidden">
                               <div  style="overflow: hidden;height:80%; width:99%;">
				<img src="images/kol.jpg" alt="" class="t"></div>
				<div class="grid-ec1" style="height:40px;padding:12px;">
<form action="dist.jsp" method="post">
                                        <center>	
                                            <input type="hidden" name="dist" value="kollam">
                                            <input type="submit"  class="a" style="color:white;height:30px;width:40%;" value="KOLLAM">
                                            
                                            </form>
				</div>
			</div>
			<div class="col-xs-4 exce-grid1-mmstyle" style="overflow: hidden">
                               <div  style="overflow: hidden;height:80%; width:99%;">
                                   <img src="images/tir.jpg" alt="" class="t"></div>
				<div class="grid-ec1" style="height:40px;padding:12px;">
<form action="dist.jsp" method="post">
                                        <center>	
                                            <input type="hidden" name="dist" value="thiruvanathupuram">
                                            <input type="submit"  class="a" style="color:white;height:30px;width:50%;" value="THIRUVANANTHUPURAM">
                                            
                                            </form>
				</div>
			</div>
			
			<div class="clearfix"></div>
		</div>
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