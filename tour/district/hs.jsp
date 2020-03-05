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
     
          
q="insert into HOTEL (name,contact,district,img,place,nearto) values(?,?,?,?,?,?)";
       PreparedStatement st=con.prepareStatement(q); 
           st.setString(1, request.getParameter("hname")); 
            st.setString(2, request.getParameter("contact")); 
             st.setString(3, request.getParameter("dname")); 
              st.setString(4, request.getParameter("himage")); 
               st.setString(5, request.getParameter("place")); 
                st.setString(6, request.getParameter("near"));
    
          st.execute(); 
  %>
  
<jsp:forward page="hotel.jsp" />