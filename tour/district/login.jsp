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
                  String emaill="";
          String emailz="";
          String psd1="";
        String cid="";
       HttpSession sessio=request.getSession(true);
      
        String selectSQL = "select * from DISTRICT where username like ?";
PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
preparedStatement.setString(1, logemail);
ResultSet rs = preparedStatement.executeQuery();
        while(rs.next())
        {   emaill=rs.getString("username");
           cid=rs.getString("id");
         
                         psd1=rs.getString("password");
                         
                                 if(logemail.equals(emaill) && logpsd.equals(psd1 ))
                        {
                           emailz="true";
                            sessio.setAttribute("dtrueemail",emaill);
                             sessio.setAttribute("dtruepsd",psd1);
                             sessio.setAttribute("dcid",cid);
%>
<jsp:forward page="disthome.jsp" />
<%
                             
                           
           
                        }
                        else
                        {
  emailz=logemail+""+emaill+""+psd1+""+logpsd+"";
%>
<jsp:forward page="error.jsp" />
<%
                          
                        }
                      
        }
          
        

        %>
