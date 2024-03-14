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



<div class="middle">


<%

if(session.getAttribute("uid")!=null){
String userid=session.getAttribute("uid").toString();

String pid=request.getParameter("pid");


String pname=request.getParameter("pname");
String price=request.getParameter("cost");


%> 

<br><br><br></br>
<form method="post" action="updatecart.jsp">
    <center><table>
     <tr bgColor=#e4f3f9>
         <td colspan="3" align="center"><b>Your Cart</b></td>
     </tr>
     <tr>
         <td width="140"><b>Product</b></td><td width="100"><b>Price</b></td><td><b>Quantity</b></td>
     </tr>
     <tr><td><%=pname%></td><td><%=price%></td><td><input type="text" size="5" name="qty"></td></tr>
     <tr><td colspan="3" align="center"><input type="submit" value="Add"></td></tr>
 </table>
 <input type="hidden" name="pid" value="<%=pid%>">
   <input type="hidden" name="uid" value="<%=userid%>">
  <input type="hidden" name="pname" value="<%=pname%>">
  <input type="hidden" name="price" value="<%=price%>">
 
</form>
<%}%>
</div>
 

</body>
</html> 