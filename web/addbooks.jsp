<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<%@page import="java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
  <title>Online Book Store</title>
  <meta name="description" content="online book sale" />
  <meta name="book,online,books, sale, books sale" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
	<script type="text/javascript" src="jquery-1.4.3.min.js"></script>
	<script type="text/javascript" src="fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
	<script type="text/javascript" src="fancybox/jquery.fancybox-1.3.4.pack.js"></script>
	<link rel="stylesheet" type="text/css" href="fancybox/jquery.fancybox-1.3.4.css" media="screen" />
	<script type="text/javascript" src="script/calendarDateInput.js"></script>
</head>
<script language="JavaScript">

function addProduct(){
    if(document.pform.pname.value=="" || document.pform.mrp.value=="" || document.pform.imagefile.value=="")
        {
            alert("Enter details properly");
            return false;
        }else{
            document.pform.fname.value=document.pform.imagefile.value;
            document.pform.action="addProduct";
            document.pform.submit();
            return true;
        }
}
</script>
    <%if(request.getAttribute("reg")!=null){
    %>
    <b>Your Registration Successful! You can loing now</b>
<%}%>
<%if(request.getAttribute("productadded")!=null){
    %>
    <b>Book added Successfully!</b>
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
          <li><a href="adminhome.jsp">Home</a></li>
          <li class="selected"><a href="addbooks.jsp">Add Books</a></li>
          <li><a href="viewusers.jsp">View Users</a></li>
           <li><a href="viewsales.jsp">View Sales</a></li>
          <li><a href="admin.jsp">Log Out</a></li>
          </ul>
      </div>
    </div>
<%
ResultSet rs=null;
 try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebook","root","root");
        Statement st=con.createStatement();
        rs=st.executeQuery("select * from categories");
}catch(Exception e){
    e.printStackTrace();
    }
%>
<br>
<form name="pform" method="post" onsubmit="return addProduct()"  enctype="multipart/form-data">
    <center>
<table>
    <tr bgColor=#e4f3f9 width="100%">
        
    <td width="100%" colspan="2"><b>Add a New Book</b></td>
    </tr>
    <tr>
        <td><br/>Select Book Category</td>
        <td>
            <br/><select name="cid">
                <%
                while(rs.next()){
                %>
                <option value="<%=rs.getInt("cid")%>"><%=rs.getString("cname")%></option>

                <%}%>
            </select>
        </td>
        </tr>
        <tr>
            <td>Book Name</td><td><input type="text" name="pname"></td>
        </tr>
         <tr>
            <td>Price</td><td><input type="text" name="mrp"></td>
        </tr>
         
         <tr>
            <td>Quantity</td><td><input type="text" name="brand"></td>
        </tr>
         <tr>
            <td>Author Name</td><td><input type="text" name="aname"></td>
        </tr>
         <tr>
            <td>Image file</td><td><input type="file" name="imagefile"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Add Book"></td>
        </tr>
</table>
 <input type="hidden" name="fname">
    
</form>


<!-- ####################################################################################################### -->

</div>
</body>
</html>