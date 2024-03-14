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
          <li class="selected"><a href="viewcart.jsp">View Cart</a></li>
          <li><a href="user.jsp">Log Out</a></li>
          </ul>
      </div>
    </div>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="databaseconnection.databasecon"%>

<%
if(session.getAttribute("uid")!=null){
String userid=session.getAttribute("uid").toString();
ResultSet rs=null;
try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebook","root","root");

        PreparedStatement pst=con.prepareStatement("select * from cart where uid=?");
        pst.setInt(1,Integer.parseInt(userid));
        pst.execute();
        rs=pst.getResultSet();

    }catch(Exception e){
        e.printStackTrace();
        }
if(rs!=null){
%>
<form name="cform" method="post" action="checkout.jsp">

    <center><table width="35%" border="1">
        <tr bgColor=#e4f3f9 ><td width="100%" colspan="3" align="center"><b>Cart Information</b></td></tr>
        <tr><td>
            <table cellpadding="0" cellspacing="10">
         <tr>
            <td><b>Book Name</b></td> <td><b>Price</b></td><td><b>Quantity</b></td><td><b>Total</b></td><td></td>
        </tr>

       <%while(rs.next()){%>

        <tr>
        <td><%=rs.getString("pname")%></td> <td><%=rs.getString("price")%></td><td><%=rs.getInt("qty")%></td><td><%=rs.getString("total")%></td><td>&nbsp;&nbsp;<a href="delcart.jsp?id=<%=rs.getInt("id")%>">delete</a></td>
        </tr>


     <%}%>

       <tr><td><a href="viewbooks.jsp">Want to buy more?</a></td><td colspan="2"><input type="submit" value="Check Out"></td></tr>
      </table></td></tr>
    </table>

</form>

<%}%>
<%}%>