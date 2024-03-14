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
          <li class="selected"><a href="viewusers.jsp">View Users</a></li>
           <li><a href="viewsales.jsp">View Sales</a></li>
          <li><a href="admin.jsp">Log Out</a></li>
          </ul>
      </div>
    </div>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="databaseconnection.databasecon"%>

<%
    String l = request.getParameter("username"); 
    String n = request.getParameter("email");
    String p = request.getParameter("address");
    String q = request.getParameter("cno");
    
    
 try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebook","root","root");
     
     System.out.println("2");
	PreparedStatement pst=con.prepareStatement("select * from reg");
        
        
	ResultSet rs=pst.executeQuery();
        %>
         
    
       <center> <table style="width:50%" border="1">
           <br><br>
               <font color="blue" size="3"><b><u>All Users</u></b></font>
            <br><br>  
  <tr>
                  <th>User ID</th>
                <th>User Name</th>
                <th>Email ID</th> 
                <th>Address</th>
                <th>Contact No</th>
                <th>Delete</th>
     </tr>

<%
       
   while(rs.next()){
            %><tr>
                 <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(6)%></td>                
                <td><%=rs.getString(7)%></td>  
                 <td><a href="deleteuser.jsp?uid=<%=rs.getString(1)%>">Delete</td>  
                           
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