<%@page import="java.sql.*;" %>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="org.apache.derby.jdbc.ClientDataSource"%>
<%@page import="java.sql.DriverManager;" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
   

HttpSession sess=request.getSession(false);
sess.removeAttribute("trueemail");
sess.removeAttribute("cid");

session.invalidate();

%>
<jsp:forward page="index.html" />