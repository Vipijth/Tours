<%-- 
    Document   : login
    Created on : Nov 28, 2018, 11:07:57 PM
    Author     : chakkara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="org.apache.derby.jdbc.ClientDataSource"%>
<%@page import="java.sql.DriverManager;" %>
<%
    String url="jdbc:derby://localhost:1527/tours";

    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection con=DriverManager.getConnection(url,"root","root");
   
  
%>
  <%  
            
             String logemail=request.getParameter("logemail");
                  String logpsd=request.getParameter("logpsd");
                  String emaill="";
          String emailz="";
          String psd1="";
        
       HttpSession sess=request.getSession(true);
      
        String selectSQL = "select * from PER_INFO where email like ?";
PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
preparedStatement.setString(1, logemail);
ResultSet rs = preparedStatement.executeQuery();
        while(rs.next())
        {
            emaill=rs.getString("email");
                         psd1=rs.getString("psd");
                         
                                 if(logemail.equals(emaill) && logpsd.equals(psd1 ))
                        {
                           emailz="true";
                            sess.setAttribute("trueemail",emaill);
                             sess.setAttribute("truepsd",psd1);
                           
                             
                           
           
                        }
                        else
                        {
  emailz=logemail+""+emaill+""+psd1+""+logpsd+"";

                          
                        }
                      
        }
          
        

        %>
	
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%= emailz %>
    </body>
</html>
