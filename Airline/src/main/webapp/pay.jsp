<%@page import="java.sql.*"%>
<% 
String a = request.getParameter("t1");

%>

<%
out.println("<h2><center>Payment is successful!</center></h2>");

out.println("<a href=index.html><center>Click Here to go back to home page!</center></a>");

%>
<% 
try{
Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline", "root", "Pa55w.rd");
PreparedStatement st=con.prepareStatement("update book set status='booked' where b_id=?");
st.setInt(1, Integer.parseInt(a));



st.execute();
}
catch(Exception ae)
{
	ae.printStackTrace();
}


%>