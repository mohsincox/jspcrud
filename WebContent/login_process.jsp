<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String user = request.getParameter("user"); 
/*session.putValue("user",user);*/
String pwd=request.getParameter("pwd"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root",""); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from log_reg where user='"+user+"'"); 
if(rs.next()) 
{ 
	if(rs.getString(3).equals(pwd) && rs.getString(2).equals(user)) 
	{ 
		out.println("welcome "+user); 
	} 
	else 
	{ 
		out.println("Invalid password try again"); 
	} 
} else {
	out.println("Invalid Username and password try again");
}
%>