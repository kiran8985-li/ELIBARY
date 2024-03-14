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
           <li><a href="user.jsp">User</a></li>
          <li class="last"><a href="contact.jsp">Contact Us</a></li>
        </ul>
      </div>
    </div>
      
    <form  action="userregact.jsp" method="post">
    <center>
<table align="center">
    
    <br>
        <td><strong><font size="10" color="balck">User Registration:</font></strong></td>
   
        <tr>
              <td>
                   
                  <tr>
              <td>
                  
               <td><strong><font size="3" color="black">User Name:</font></strong></td>
        
                <td><input type="text" name="username" id="username1" placeholder=UserName required style="height:30px; width:200px"> </input></td>
            
              </td>
        </tr>
        
       <tr>
              <td>
                <td><strong><font size="3" color="black">Password </font></strong></td>
               <td><input type="password" name="password" id="password1" placeholder= Password required style="height:30px; width:200px"></input></td> 
              </td>
        </tr>
           <tr>
              <td>
                <td><strong><font size="3" color="black">Email: </font></strong></td>
               <td><input type="text" name="email" id="email1" placeholder= Email style="height:30px; width:200px"></input></td> 
              </td>
        </tr> 
            
            <tr>
                
                <tr>
              <td>
                  
               <td><strong><font size="3" color="black">DOB:</font></strong></td>
        
                <td><input type="date" name="dob" id="dob1"  style="height:30px; width:200px"> </input></td>
            
              </td>
        </tr>
        
       <tr>
              <td>
                <td><strong><font size="3" color="black">Address </font></strong></td>
               <td><input type="text" name="address" id="address" placeholder="Address" required style="height:30px; width:200px"></input></td> 
              </td>
        </tr>
                 <tr>
              <td>
                <td><strong><font size="3" color="black">Street </font></strong></td>
               <td><input type="text" name="address1" id="address1" placeholder="Street" required style="height:30px; width:200px"></input></td> 
              </td>
        </tr>
                 <tr>
              <td>
                <td><strong><font size="3" color="black">Pin Code </font></strong></td>
               <td><input type="text" name="address2" id="address2" placeholder="PinCode" required style="height:30px; width:200px"></input></td> 
              </td>
        </tr>
           <tr>
              <td>
                <td><strong><font size="3" color="black">Mobile No: </font></strong></td>
               <td><input type="text" name="cno" id="cno1" placeholder= MobileNo style="height:30px; width:200px"></input></td> 
              </td>
        </tr> 
            
            <tr>
              
              <td>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                  <td><input type="submit" value="Add" style="height:30px; width:60px" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <input type="reset" value="Reset" style="height:30px; width:50px" /></td>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </td>
          </tr>
            </table>
</body>
</html>