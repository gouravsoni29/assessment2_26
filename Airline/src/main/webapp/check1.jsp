<%@page import="java.sql.*"%>
<%out.println("<h2><center>Check-In Details</center></h2>"); %>
<%
Connection con = null;
try {
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline", "root", "Pa55w.rd");
	PreparedStatement ps = con.prepareStatement("select * from checkin");
	ResultSet rs = ps.executeQuery();
	out.println("<table border=1 width='75%' align='center'>");
	out.println("<tr><th>Check-In ID<th>Booking ID<th>Check-in Time<th>First Name<th>Last Name<th>Flight Date<th>Flight Number<th>Seat Number</tr>");
	while (rs.next()) {
		out.println("<tr><td>" + rs.getInt(1) + " <td> " + rs.getInt(2) + " <td> " + rs.getString(3) + " <td> "
		+ rs.getString(4) + " <td> " + rs.getString(5)+"<td>"+rs.getString(6)+"<td>"+rs.getString(7)+"<td>"+rs.getString(8)+"</tr>");
	}
	out.println("</table>");
} catch (Exception ae) {
	ae.printStackTrace();
}
%>