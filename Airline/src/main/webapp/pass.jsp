<%@page import="java.sql.*"%>

<%
String a = request.getParameter("t1");
String b = request.getParameter("t2");
String c = request.getParameter("flexRadioDefault");
String d = request.getParameter("t4");


%>


<%


%>

<%  
try{
Class.forName("com.mysql.jdbc.Driver");
//create connection
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline", "root", "Pa55w.rd");
PreparedStatement st=con.prepareStatement("insert into pass(f_name,l_name,gender,b_id) values(?,?,?,?)");
st.setString(1,a);
st.setString(2,b);
st.setString(3,c);
st.setInt(4,Integer.parseInt(d));

st.execute();
}
catch(Exception ae)
{
	ae.printStackTrace();
}
response.sendRedirect("payment.html");

%>
