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
          <li><a href="index.jsp">Home</a></li>
          <li><a href="admin.jsp">Admin</a></li>
           <li class="selected"><a href="user.jsp">User</a></li>
        </ul>
      </div>
    </div>
			
               <center>         <h2 class="introhead">User Login </h2></center>
                    </header>

                    <form action="useract.jsp" method="post" id="adminlog" >
                        <br><br>
                        <center>


                            <table>
                                <tr>
                                    <td align="right"><font size="2" color="green"> User Name: </font></td><td> <input type="text" align="left" size="25" name="username" required /></td>
                                </tr>
                                <tr></tr> <tr></tr> <tr></tr>



                                <tr>
                                    <td align="right"><font size="2" color="green">Password:</font> </td><td> <input type="password" align="left" size="25" name="password" required /></td>
                                </tr>
                                <tr></tr> <tr></tr> <tr></tr>


                                <tr>
                                    <td>
                                        <font size="2" color="green"> <input type="submit" form="adminlog" align="right" value='Submit' />
                                    </td>


                                    <td>
                                        <font size="2" color="green"> <input type="reset" align="left" value='Reset'  />
                                    </td>
                                </tr>


                            </table>

                        </center>
                    </form>



                    </body>
                    </html>

&nbsp&nbsp<center><a href="userreg.jsp">Registration</a>

</div>
</body>
</html>