<%-- 
    Document   : userhome
    Created on : Nov 28, 2018, 11:21:15 PM
    Author     : chakkara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
 HttpSession sessi=request.getSession(true);
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
     
           String id=request.getParameter("id");
              String l=request.getParameter("type");
            String  ps="user";
             String  ht="place";
             String h="hotel";
              if(l.equals(ps))
  {
q="delete  from per_info where id=? ";
       PreparedStatement st=con.prepareStatement(q); 
         st.setInt(1, Integer.parseInt(request.getParameter("id")));
          st.execute();
    %>
  <jsp:forward page="userinfo.jsp" />
<%
    }
  %>
  <%
              if(l.equals(ht))
  {
q="delete  from PLACE where id=? ";
       PreparedStatement st=con.prepareStatement(q); 
         st.setInt(1, Integer.parseInt(request.getParameter("id")));
          st.execute();
  
  %>
  <jsp:forward page="place.jsp" />
<%
    }
  %>

 <%
              if(l.equals(h))
  {
            String id=request.getParameter("id");
q="delete  from HOTEL where id=? ";
       PreparedStatement st=con.prepareStatement(q); 
         st.setInt(1, Integer.parseInt(request.getParameter("id")));
          st.execute();
  
  %>
  <jsp:forward page="hotel.jsp" />
<%
    }
  %>