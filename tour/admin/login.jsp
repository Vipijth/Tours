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
<%@include file="connection.jsp" %>
  <%  
            
             String logemail=request.getParameter("logemail");
                  String logpsd=request.getParameter("logpsd");
                 
          String emailz="admin";
          String psd1="password";
       
       HttpSession sessi=request.getSession(true);
      
      if((logemail.equals(emailz))&& (logpsd.equals(psd1)))
            {
                
             sessi.setAttribute("atrueemail",emailz);
%>
<jsp:forward page="adminhome.jsp" />
<%
    }
                             
     else
{
           
                
%>
<jsp:forward page="error.jsp" />
<%
        
}
                      
       
          
        

        %>
