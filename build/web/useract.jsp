<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%@ page session="true" %>
<%
        String username = request.getParameter("username");
    System.out.println(username);
    String password = request.getParameter("password");
    System.out.println(password);
    int uid=-1;
    try{
       
        String user=null;
        String email=null;
        Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from reg where username= '"+username+"' and Password='"+password+"'");
       if(rs.next())
        {
            email=rs.getString(4);
            uid=rs.getInt("uid");
           user = rs.getString(2);
		   session.setAttribute("username",username);
                   session.setAttribute("uid", uid);
                   session.setAttribute("email",email);
                  // session.setAttribute("email", email);
		   System.out.println("User:"+user);
                   
			response.sendRedirect("userhome.jsp");
        }
       else 
        {
            response.sendRedirect("user.jsp?m1=LoginFail");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in emplogact"+e.getMessage());
    }
%>