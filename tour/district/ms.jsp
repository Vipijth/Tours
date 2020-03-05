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
   String y="";
      String q="";
     
           String pname=request.getParameter("pname");
           String cap=request.getParameter("caption");
           String image=request.getParameter("pimage");
           String mapimage=request.getParameter("mapimg");
           String dname=request.getParameter("dname");
           
q="insert into PLACE (name,caption,district,placeimg,mapimg) values(?,?,?,?,?)";
       PreparedStatement st=con.prepareStatement(q); 
           st.setString(1, request.getParameter("pname")); 
            st.setString(2, request.getParameter("caption")); 
             st.setString(3, request.getParameter("dname")); 
              st.setString(4, request.getParameter("pimage")); 
               st.setString(5, request.getParameter("mapimg")); 
              
    
          st.execute(); 
  %>
  
<jsp:forward page="place.jsp" />