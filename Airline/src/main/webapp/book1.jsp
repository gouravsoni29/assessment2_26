<%@page import="java.sql.*"%>

<%out.println("<h2><center>Booking Details</center></h2>"); %>
<%
Connection con = null;
try {
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline", "root", "Pa55w.rd");
	PreparedStatement ps = con.prepareStatement("select * from book");
	ResultSet rs = ps.executeQuery();
	out.println("<table border=1 width='75%' align='center'>");
	out.println("<tr><th>Booking ID<th>Booking date<th>Destination<th>Fare<th>Flight Date<th>Flight Name<th>Source</tr>");
	while (rs.next()) {
		out.println("<tr><td>" + rs.getInt(1) + " <td> " + rs.getString(2) + " <td> " + rs.getString(3) + " <td> "
		+ rs.getInt(4) + " <td> " + rs.getString(5)+"<td>"+rs.getString(6)+"<td>"+rs.getString(7)+"</tr>");
	}
	out.println("</table>");
} catch (Exception ae) {
	ae.printStackTrace();
}
%>