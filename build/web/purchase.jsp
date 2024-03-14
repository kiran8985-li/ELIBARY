<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="databaseconnection.databasecon"%>
<%
                    String ptype = request.getQueryString();
                    String pcost = request.getQueryString();
                    String quantity = request.getQueryString();
                     String pname = request.getQueryString();
                    
           
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebook","root","root");
    
  System.out.println("Database connected");
  
  Statement st=con.createStatement();

 

  
  int i=st.executeUpdate("insert into purchased(ptype,pcost,quantity,pname)values('"+ptype+"','"+pcost+"','"+quantity+"','"+pname+"')");
  if(i!=0)
        response.sendRedirect("viewbooks.jsp?msg=Purchased Successfully");


  
            

%>
              