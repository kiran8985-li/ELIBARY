

<%@page import="robust.Mail"%>
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
 int grandTotal=0;
    ResultSet rs=null;
    ResultSet rs1=null;
    String umail = session.getAttribute("email").toString();
String username=session.getAttribute("username").toString();
     try{

         String address = null;
         String address1 = null;
         String address2 = null;
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebook","root","root");

        String uid=session.getAttribute("uid").toString();
        Statement st=con.createStatement();
        Statement st1 = con.createStatement();
        rs1=st1.executeQuery("select * from reg where uid='"+uid+"'");
        if(rs1.next()){
            address=rs1.getString("address");
             address1=rs1.getString("address1");
              address2=rs1.getString("address2");
        }
        
        %>
        <table> <tr bgColor=#e4f3f9><td width="100%" colspan="4" align="center"><b>Cart Information</b></td></tr>
         <tr>
            <td wigth="100"><b>Book Name</b></td> <td width="100"><b>Price</b></td><td width="100"><b>Quantity</b></td><td><b>Total</b></td>
        </tr>
        <%

        rs=st.executeQuery("select * from cart where uid="+uid);
        while(rs.next()){
        int pid= rs.getInt("pid");
        String pname=rs.getString("pname");
        String price=rs.getString("price");
        int qty=rs.getInt("qty");
        String total=rs.getString("total");
        float tot=Float.parseFloat(total);
        grandTotal+=tot;  
        
        %>

       
        <tr>
        <td><%=pname%></td> <td><%=price%></td><td><%=qty%></td><td><%=total%></td>
        </tr>

      


        <%
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
				java.util.Date date1 = new java.util.Date();
				System.out.println(dateFormat.format(date1)); 

		PreparedStatement pst=con.prepareStatement("insert into salesreport values(?,?,?,?,?,?,?,?,?,?)");
        pst.setInt(1, pid);
        pst.setInt(2, Integer.parseInt(uid));
        pst.setString(3, pname);
        pst.setString(4,price);
        pst.setInt(5,qty);
	pst.setString(6,dateFormat.format(date1));
        pst.setString(7,total);
        pst.setString(8,address);
        pst.setString(9,address1);
        pst.setString(10,address2);
        pst.executeUpdate();
        
       
        pst.close();
        }


        PreparedStatement pst1=con.prepareStatement("delete from cart where uid=?");
        pst1.setInt(1,Integer.parseInt(uid));
        pst1.executeUpdate();

  Mail m = new Mail();
          String msg ="Your Product has been booked Successfully";
          m.secretMail(msg,username,umail);
    }catch(Exception e){
        e.printStackTrace();
        }
    
%>
  <tr><td colspan="4" align="right"><font color="blue"><b>Grand Total:&nbsp;</b></font><font color="red"><b>INR&nbsp;<%=grandTotal%></b></font></td></tr>
  <tr><td colspan="4"><input type="submit" value="CheckOut"></td></tr>
  
     

        <tr>
        <td></td> <td></td><td></td><td>&nbsp;&nbsp;<a href="can.jsp?">cancel</a></td>
        </tr>


 </table>

 </form>
 
    

</body>
</html>