

<%@page import="java.sql.*"%>
<%@  page import="java.util.*,java.text.*"%>

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
<br>
<form method="post" action="done.jsp">
 <%
 int i=0;
    ResultSet rs=null;
    int validationcount = 3;
     try{



        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebook","root","root");

        String uid=session.getAttribute("uid").toString();
        Statement st=con.createStatement();
         Statement st2=con.createStatement();
        %>
        <table> <tr bgColor=#e4f3f9><td width="100%" colspan="4" align="center"><b>Cart Information</b></td></tr>
         <tr>
            <td wigth="100"><b>Book Name</b></td> <td width="100"><b>Price</b></td><td width="100"><b>Quantity</b></td><td><b>Total</b></td>
        </tr>
        <%

        rs=st.executeQuery("select * from salesreport where uid="+uid);
       int f =  rs.getRow();
       System.out.println("xxxxxxxxxxxx"+f);
        while(rs.next()){
       
       rs.getInt(2); 
       i++;
      
       }

if ( validationcount<=i)
{
     PreparedStatement pst=con.prepareStatement("delete from reg where uid="+uid);
        
	pst.executeUpdate();
}

      

 
    }catch(Exception e){
        e.printStackTrace();
        }
    
%>

  
     



 </table>

 </form>
 
    

</body>
</html>