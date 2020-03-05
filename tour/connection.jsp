<%@page contentType="text/html" pageEncoding="UTF-8"%>
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