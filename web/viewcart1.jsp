<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
  <title>Online Book Store</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
	<script type="text/javascript" src="jquery-1.4.3.min.js"></script>
	<script type="text/javascript" src="fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
	<script type="text/javascript" src="fancybox/jquery.fancybox-1.3.4.pack.js"></script>
	<link rel="stylesheet" type="text/css" href="fancybox/jquery.fancybox-1.3.4.css" media="screen" />
	
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="banner">
	    <a href="#">Online Book Store</a>
	  </div>
      <div id="menubar">
        <ul id="menu">
          <li><a href="userhome.jsp">Home</a></li>
          <li><a href="viewbooks.jsp">View Books</a></li>
          <li><a href="viewcart.jsp">View Cart</a></li>
          <li><a href="user.jsp">Log Out</a></li>
          </ul>
      </div>
    </div>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="databaseconnection.databasecon"%>

<%
    String l = request.getParameter("ptype"); 
    String m = request.getParameter("pcost");
    String n = request.getParameter("quantity");
    String f = request.getParameter("pname");
    
    
 try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebook","root","root");
     
     System.out.println("2");
	PreparedStatement pst=con.prepareStatement("select * from cart");
        
        
	ResultSet rs=pst.executeQuery();
        %>
         
    
       <center> <table style="width:30%" border="1">
            <br><br><br><br>     
  <tr>
    
                <th>Product Type</th>
                <th>Product Cost</th> 
                <th>Quantity</th>
                <th>Book Name</th>
                <th>Purchase</th>
                <th>Remove</th>
     
     </tr>

<%
       
   while(rs.next()){
            %><tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>                
                <td><%=rs.getString(4)%></td>  
                <td><a href="purchase.jsp?<%=rs.getString("ptype")%>" >Purchase</a> </td>
                <td><a href="removecart.jsp?<%=rs.getString("ptype")%>" >Remove</a> </td>
                      
                               
        </tr>
       
        
        
      <%  }
%></table></center>


<%}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
        <br><br><br>
        
        
        <br><br><br><br><br><br><br><br>
        
       
</div>