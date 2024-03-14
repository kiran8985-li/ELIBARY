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
          <li><a href="adminhome.jsp">Home</a></li>
          <li><a href="addbooks.jsp">Add Books</a></li>
          <li><a href="viewusers.jsp">View Users</a></li>
           <li class="selected"><a href="viewsales.jsp">View Sales</a></li>
          <li><a href="admin.jsp">Log Out</a></li>
          </ul>
      </div>
    </div>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="databaseconnection.databasecon"%>

<%
     String k = request.getParameter("uid");
    String l = request.getParameter("pname"); 
    String n = request.getParameter("price");
    String p = request.getParameter("qty");
    String q = request.getParameter("dateoforder");
    String r = request.getParameter("total");
    
    
 try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebook","root","root");
     
     System.out.println("2");
	PreparedStatement pst=con.prepareStatement("select * from salesreport");
        
        
	ResultSet rs=pst.executeQuery();
        %>
         
    
       <center> <table style="width:50%" border="1">
               <br><br>
               <font color="blue" size="3"><b><u>Sales Report</u></b></font>
            <br><br>     
  <tr>
                 <th>User ID</th>
                <th>Book Name</th>
                <th>Price</th> 
                <th>Quantity</th>
                <th>Date of Order</th>
                <th>Total</th>
                <th>Address</th>
                <th>Address1</th>
                <th>Address2</th>
            
     </tr>

<%
       
   while(rs.next()){
            %><tr>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>                
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(8)%></td>
                <td><%=rs.getString(9)%></td>
                <td><%=rs.getString(10)%></td>
                           
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
        
        
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        
       
</div>