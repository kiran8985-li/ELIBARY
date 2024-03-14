
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    String l = request.getParameter("ptype");
    System.out.println(l);
    String m = request.getParameter("pcost");
    System.out.println(m);
    String n = request.getParameter("quantity");
    System.out.println(n);
    String f = request.getParameter("pname");
    System.out.println(f);
    
    

    
    try{
       
       // String user=null;
        //String password=null;
	Class.forName("com.mysql.jdbc.Driver");	
        Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebook","root","root");

PreparedStatement ps = co.prepareStatement("insert into products values(?,?,?,?)");

ps.setString(1,l);
ps.setString(2,m);
ps.setString(3,n);
ps.setString(4,f);



ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("adminhome.jsp?message=success");
out.println("Record Added Successfully");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

    
   
</div>
</body>
</html>