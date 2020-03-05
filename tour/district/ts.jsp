<%-- 
    Document   : userhome
    Created on : Nov 28, 2018, 11:21:15 PM
    Author     : chakkara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
 HttpSession sess=request.getSession(true);
%>
<%@page import="java.sql.*;" %>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="org.apache.derby.jdbc.ClientDataSource"%>
<%@page import="java.sql.DriverManager;" %>
<%@include file="connection.jsp" %>
<%
  /* String url="jdbc:derby://localhost:1527/tourz";

    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection con=DriverManager.getConnection(url,"root","root");*/
   String y=request.getParameter("travel");
      String q="";
     String r="rail";
     String a="air";
     String b="bus";
       if(y.equals(r))
       {
q="update TRAVELS set rail = ? where district =?";
       PreparedStatement st=con.prepareStatement(q); 
           st.setString(1, request.getParameter("mapimg")); 
            st.setString(2, request.getParameter("dname"));
          st.execute(); 
       }
       
    if(y.equals(b))
       {
q="update TRAVELS set bus = ? where district =?";
       PreparedStatement st=con.prepareStatement(q); 
           st.setString(1, request.getParameter("mapimg")); 
            st.setString(2, request.getParameter("dname"));
          st.execute(); 
       }
    
    if(y.equals(a))
       {
q="update TRAVELS set air = ? where district =?";
       PreparedStatement st=con.prepareStatement(q); 
           st.setString(1, request.getParameter("mapimg")); 
            st.setString(2, request.getParameter("dname"));
          st.execute(); 
       }
  %>
  
  <jsp:forward page="travel.jsp" />
  
