<%@page import="java.sql.*"%>


<%out.println("<h2><center>Passenger Details</center></h2>"); %>
<%
Connection con = null;
try {
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline", "root", "Pa55w.rd");
	PreparedStatement ps = con.prepareStatement("select * from pass");
	ResultSet rs = ps.executeQuery();
	out.println("<table border=1 width='75%' align='center'>");
	out.println("<tr><th>Passenger ID<th>First Name<th>Last Name<th>Gender<th>Booking Id</tr>");
	while (rs.next()) {
		out.println("<tr><td>" + rs.getInt(1) + " <td> " + rs.getString(2) + " <td> " + rs.getString(3) + " <td> "
		+ rs.getString(4) + " <td> " + rs.getInt(5)+"</tr>");
	}
	out.println("</table>");
} catch (Exception ae) {
	ae.printStackTrace();
}
%>