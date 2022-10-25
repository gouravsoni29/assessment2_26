<%@page import="java.sql.*"%>

<%
String a = request.getParameter("t1");
String b = request.getParameter("t2");
String c = request.getParameter("t3");
String d = request.getParameter("t4");
String e = request.getParameter("t5");
String f = request.getParameter("t6");


%>


<%
out.println("<h3> Tickets Booked!</h3>");
out.println("<a href='pass.html'>Click to enter passenger details</a>");

%>

<%  
try{
Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline", "root", "Pa55w.rd");
PreparedStatement st=con.prepareStatement("insert into book(b_date,dst,fare,f_date,f_name,src) values(?,?,?,?,?,?)");
st.setString(1,c);
st.setString(2,b);
try{
st.setInt(3,Integer.parseInt(f));
} catch(Exception ae){
	ae.printStackTrace();
}
st.setString(4,d);
st.setString(5,e);
st.setString(6,a);


st.execute();
}
catch(Exception ae)
{
	ae.printStackTrace();
}
finally{
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline", "root", "Pa55w.rd");
	PreparedStatement ps=con1.prepareStatement("select b_id from book order by b_id desc limit 1");
	ResultSet rs=ps.executeQuery();
	out.println("<table border=1 width='75%'>");
	out.println("<tr><th>Booking ID</th></tr>");
	while(rs.next())
	{
		out.println("<tr><td>"+rs.getInt(1));
	}
}
%>

