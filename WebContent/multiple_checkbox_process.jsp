<%@page import="java.sql.*"%>
<%
String choosesports="";
String sports[]=request.getParameterValues("sports");
for(int i=0;i<sports.length;i++)
{
	choosesports += sports[i]+" ";
}
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "");
Statement st=con.createStatement();
int i3=st.executeUpdate("insert into sports_details(choosesports) values('"+choosesports+"')");
out.println("Data is successfully inserted into database.");
}
catch(Exception e){
System.out.println(e);
}

%>