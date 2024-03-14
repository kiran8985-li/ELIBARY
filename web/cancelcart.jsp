 
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@  page import="java.util.*,java.text.*"%>



<%@page import="java.sql.*"%>



<div class="middle">
<br>
<%
 //DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
				//java.util.Date date1 = new java.util.Date();
				//System.out.println(dateFormat.format(date1)); 
    
    

String count = request.getParameter("count(uid)"); 


ResultSet rs=null;


 try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebook","root","root");
 String uid=session.getAttribute("uid").toString();
        PreparedStatement pst=con.prepareStatement("select count(uid) from salesreport where uid=?");
       Statement st=con.createStatement();

         rs=pst.executeQuery();
        %> 
        
         <center> <table style="width:30%" border="1">
            <br><br><br><br>     
  <tr>
    
                <th>count</th>
              
                    
     
     </tr>

<%
       
   while(rs.next()){
            %><tr>
                <td><%=rs.getString(0)%></td>
              
                               
        </tr>
       
        
        
      <%  }
%></table></center>


<%}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
    

        


<br><br><br><br><br><br>
    <br><br><br>
</div>


</body>
</html>