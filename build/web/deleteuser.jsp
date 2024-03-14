<!DOCTYPE html>


<%@ page language="java" import="java.sql.*,java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="databaseconnection.databasecon"%>

<% 
String roll=request.getParameter("uid");
try{ 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebook","root","root");
System.out.println("2");
	PreparedStatement pst=con.prepareStatement("delete from reg where uid=?");
        pst.setString(1, roll);
	pst.executeUpdate();
	
	out.println("<center><h1> Deleted Successfuly</h1><br><a href=\"./viewusers.jsp\">Back</a></center>");
}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
        
</body>
</html>