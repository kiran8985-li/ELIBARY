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
    <%
           if (request.getAttribute("checkout") != null) {%>
       <script>alert('Thanks for Shopping! Visit Again!!');</script>
       <%}
        
       %>
<%if(request.getAttribute("checkout1")!=null){
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
          <li><a href="userhome.jsp">Home</a></li>
          <li class="selected"><a href="viewbooks.jsp">View Books</a></li>
          <li><a href="viewcart.jsp">View Cart</a></li>
          <li><a href="user.jsp">Log Out</a></li>
          </ul>
      </div>
    </div>
      <%@page import="java.sql.*"%>
      <center>
      
          &nbsp;&nbsp;<h2>Categories :</h2>
<ul>
<li><a href="viewbooks.jsp?cid=1">Comic</a></li>
<li><a href="viewbooks.jsp?cid=2">Story</a></li>
<li><a href="viewbooks.jsp?cid=3">Horror</a></li>
<li><a href="viewbooks.jsp?cid=4">Education</a></li>

<li><a href="viewbooks.jsp?cid=5">Novel</a></li>
<li><a href="viewbooks.jsp?cid=6">GK</a></li>
</ul>


      
<%
if(request.getParameter("cid")!=null){
String cid=request.getParameter("cid");
 ResultSet rs=null;
 try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebook","root","root");
        PreparedStatement pstmt=con.prepareStatement("select * from books where cid=?");
        pstmt.setInt(1,Integer.parseInt(cid));
        pstmt.execute();
        rs =pstmt.getResultSet();
    }catch(Exception e){
        e.printStackTrace();
        }
%>


<table>

    <tr>
        <td><b>Shop The Latest Here!!</b></td>
    </tr>
    
    <tr width="100%">
        <table width="30%">
            <br/><br/>
            <% while(rs.next()){

                 String pname=rs.getString("pname");
                 String price=rs.getString("mrp");
                 
                 
                 %>
           
            <%
            String image=rs.getString("imagename");
           
            %>
            <tr width="10%">
                
                <td><img src="cartimages/<%=image%>"></td>
               <td>  <b>Book Name: &nbsp;</b> <b><%=pname%></b><br> 
                   <b> Quantity: &nbsp;</b>
                <b><%=rs.getString("quantity")%></b><br>
                    
                
                     
                <b>Price: &nbsp;</b> <b><%=price%></b><br>
                
                 <b>Author Name: &nbsp;</b><b><%=rs.getString("aname")%></b>
                </td>
            </tr>
            <tr>  
            <td> <a href="cart.jsp?pid=<%=rs.getString("pid")%>&cost=<%=price%>&pname=<%=pname%>"><img src="images/addtocart.gif"></a> </td>
            </tr> 
                <%}%>   
        </table>
    </tr>


</table>

<%}%>
</div>


</body>
</html> 