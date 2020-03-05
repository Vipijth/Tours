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
      String j;
   String fn="fname";
   String ln="lname";
   String em="email";
   String mb="mob";
   String ps="psd";
           String l=request.getParameter("lnames");
           String kl=request.getParameter("lk");
 String nl=request.getParameter("nl");
  if(l.equals(fn))
  {
      y="update DISTRICT set password=? where id = ?";
       PreparedStatement st=con.prepareStatement(y); 
           st.setString(1, request.getParameter("nl")); 
    st.setInt(2, Integer.parseInt(request.getParameter("nemail"))); 
          st.execute(); 
  }else
  if(l.equals(ln))
  {
      q="update DISTRICT set caption=? where id = ?";
       PreparedStatement st=con.prepareStatement(q); 
           st.setString(1, request.getParameter("nl")); 
          st.setInt(2, Integer.parseInt(request.getParameter("nemail"))); 
          st.execute(); 
  }else
           if(l.equals(em))
  {
      q="update DISTRICT set name=? where id = ?";
       PreparedStatement st=con.prepareStatement(q); 
           st.setString(1, request.getParameter("nl")); 
          st.setInt(2, Integer.parseInt(request.getParameter("nemail"))); 
          st.execute(); 
           j="update PLACE set name=? where name = ?";
       PreparedStatement sst=con.prepareStatement(j); 
           sst.setString(1, request.getParameter("nl")); 
          sst.setString(2, request.getParameter("kl")); 
          sst.execute(); 
  }else
           
  if(l.equals(mb))
  {
      q="update DISTRICT set image=? where id = ?";
       PreparedStatement st=con.prepareStatement(q); 
           st.setString(1, request.getParameter("nl")); 
         st.setInt(2, Integer.parseInt(request.getParameter("nemail"))); 
          st.execute(); 
  }
  
  if(l.equals(ps))
  {
      q="update DISTRICT set mapimg=? where id = ?";
       PreparedStatement st=con.prepareStatement(q); 
           st.setString(1, request.getParameter("nl")); 
     st.setInt(2, Integer.parseInt(request.getParameter("nemail"))); 
          st.execute(); 
  }
%>
<jsp:forward page="disthome.jsp" />