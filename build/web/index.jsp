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
<%if(request.getAttribute("reg")!=null){
    %>
    <b>Your Registration Successful! You can loing now</b>
<%}%>
<%if(request.getAttribute("productadded")!=null){
    %>
    <b>Product has been added Successfully!</b>
<%}%>
    <%if(request.getAttribute("update")!=null){
    %>
    <b>Your account updated Successfully!</b>
<%}%>
<%if(request.getAttribute("checkout")!=null){
    %>
  <br>  <b>Thanks for Shopping! Have a nice Day
    <br>
       Visit Again!!</b>
<%}%>

<body>
  <div id="main">
    <div id="header">
      <div id="banner">
	    <a href="#">Online Book Store</a>
	  </div>
      <div id="menubar">
        <ul id="menu">
          <li class="selected"><a href="index.jsp">Home</a></li>
          <li><a href="admin.jsp">Admin</a></li>
          <li><a href="user.jsp">User</a></li>
        </ul>
      </div>
    </div>
      <br></br>
      &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<center><img src="images/12.jpg" height="400" wedith="1800"/></center>
    
</body>
</html>
