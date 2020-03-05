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
   String fn="fname";
   String ln="lname";
   String em="email";
   String mb="mob";
   String ps="psd";
           String l=request.getParameter("lnames");
           
 String nl=request.getParameter("nl");
  if(l.equals(fn))
  {
      y="update PER_INFO set fname=? where id = ?";
       PreparedStatement st=con.prepareStatement(y); 
           st.setString(1, request.getParameter("nl")); 
    st.setInt(2, Integer.parseInt(request.getParameter("nemail"))); 
          st.execute(); 
  }else
  if(l.equals(ln))
  {
      q="update PER_INFO set lname=? where id = ?";
       PreparedStatement st=con.prepareStatement(q); 
           st.setString(1, request.getParameter("nl")); 
          st.setInt(2, Integer.parseInt(request.getParameter("nemail"))); 
          st.execute(); 
  }else
           if(l.equals(em))
  {
      q="update PER_INFO set email=? where id = ?";
       PreparedStatement st=con.prepareStatement(q); 
           st.setString(1, request.getParameter("nl")); 
          st.setInt(2, Integer.parseInt(request.getParameter("nemail"))); 
          st.execute(); 
  }else
           
  if(l.equals(mb))
  {
      q="update PER_INFO set mob=? where id = ?";
       PreparedStatement st=con.prepareStatement(q); 
           st.setString(1, request.getParameter("mob")); 
         st.setInt(2, Integer.parseInt(request.getParameter("nemail"))); 
          st.execute(); 
  }
  
  if(l.equals(ps))
  {
      q="update PER_INFO set psd=? where id = ?";
       PreparedStatement st=con.prepareStatement(q); 
           st.setString(1, request.getParameter("nl")); 
     st.setInt(2, Integer.parseInt(request.getParameter("nemail"))); 
          st.execute(); 
  }
%>
<jsp:forward page="userhome.jsp" />