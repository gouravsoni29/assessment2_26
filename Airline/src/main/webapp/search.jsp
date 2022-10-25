<%@page import="java.sql.*"%>

<%
String a = request.getParameter("t1");
String b = request.getParameter("t2");
String c = request.getParameter("t3");
String d = request.getParameter("t4");
String e = request.getParameter("t5");

%>


<%
out.println("<h3>Tickets Available!</h3>");
out.println("<a href='book.html'><h4>Click here to Book<h4></a>");

%>

<%  
try{
Class.forName("com.mysql.jdbc.Driver");
//create connection
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline", "root", "Pa55w.rd");
PreparedStatement st=con.prepareStatement("select f_name from flight where f_id=?");
st.setString(1,e);

st.execute();
}
catch(Exception ae)
{
	ae.printStackTrace();
}


%>
