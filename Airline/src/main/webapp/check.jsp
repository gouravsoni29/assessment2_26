<%@page import="java.sql.*"%>

<%
String a = request.getParameter("t1");
String b = request.getParameter("t2");
String c = request.getParameter("t3");
String d = request.getParameter("t4");
String e = request.getParameter("t5");
String f = request.getParameter("t6");
String g = request.getParameter("t7");
%>

<%
out.println("<h2><center>You have successfully checked in!</center></h2>");
%>
<% 
try{
Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline", "root", "Pa55w.rd");
PreparedStatement st=con.prepareStatement("insert into checkin(b_id,check_time,f_name,l_name,f_date,f_number,s_number) values(?,?,?,?,?,?,?)");
st.setInt(1, Integer.parseInt(a));
st.setString(2, b);
st.setString(3, c);
st.setString(4, d);
st.setString(5, e);
st.setString(6, f);
st.setString(7, g);


st.execute();
}
catch(Exception ae)
{
	ae.printStackTrace();
}

%>