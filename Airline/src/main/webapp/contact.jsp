<%@page import="java.sql.*"%>

<%
String a = request.getParameter("t1");
String b = request.getParameter("t2");
String c = request.getParameter("t3");
String d = request.getParameter("t4");

%>


<%
out.println("<h3>We will get back yo you!</h3>");

%>

<%  
try{
Class.forName("com.mysql.jdbc.Driver");
//create connection
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline", "root", "Pa55w.rd");
PreparedStatement st=con.prepareStatement("insert into contact values(?,?,?,?)");
st.setString(1,a);
st.setString(2, b);
st.setString(3,c);
st.setString(4, d);
st.execute();
}
catch(Exception ae)
{
	ae.printStackTrace();
}

%>
