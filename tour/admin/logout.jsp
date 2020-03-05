<%@page import="java.sql.*;" %>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="org.apache.derby.jdbc.ClientDataSource"%>
<%@page import="java.sql.DriverManager;" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
   

HttpSession sessi=request.getSession(false);
sessi.removeAttribute("atrueemail");


sessi.invalidate();

%>
<jsp:forward page="index.html" />