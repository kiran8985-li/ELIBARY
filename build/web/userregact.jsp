
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    String id = request.getParameter("id");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");
    String address = request.getParameter("address");
    String address1 = request.getParameter("address1");
    String address2 = request.getParameter("address2");
    String cno = request.getParameter("cno");
    
    
    try{
       
       // String user=null;
        //String password=null;
	Class.forName("com.mysql.jdbc.Driver");	
        Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebook","root","root");

    PreparedStatement ps = co.prepareStatement("insert into reg values(?,?,?,?,?,?,?,?,?)");

        ps.setString(1,id);    
        ps.setString(2,username);
        ps.setString(3,password);
        ps.setString(4,email);
        ps.setString(5,dob);
        ps.setString(6,address);
        ps.setString(7,address1);
        ps.setString(8,address2);
        ps.setString(9,cno);

    ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("user.jsp?message=success");
out.println("User Registered Successfully");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

    
   
</div>
</body>
</html>