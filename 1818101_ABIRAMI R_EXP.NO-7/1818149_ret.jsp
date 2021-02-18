<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "form";
	String userid = "root";
	String password = "Abir@mi2000";
	try
	{
		Class.forName(driver);
	} 
	catch (ClassNotFoundException e) 
	{
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body align="center">
	<h1>RETRIEVED DATA</h1>
	<table align="center" bgcolor="black" style="color:white; padding:2px"border="2">
		<tr>
			<td>REGNO</td>
			<td>NAME</td>
			<td>DEPT</td>
			<td>EMAIL</td>
			<td>GENDER</td>
		</tr>
	<%
		try{
			connection = DriverManager.getConnection(connectionUrl+database, userid, password);
			statement=connection.createStatement();
			String z=request.getParameter("regno");
			String sql ="select * from form where regno='"+z+"'";
			resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
	%>
	<tr>
		<td><%=resultSet.getString("REGNO") %></td>
		<td><%=resultSet.getString("NAME") %></td>
		<td><%=resultSet.getString("DEPT") %></td>
		<td><%=resultSet.getString("EMAIL") %></td>
		<td><%=resultSet.getString("GENDER") %></td>
	</tr>
	<%
	}
	connection.close();
	} 
	catch (Exception e) {
		e.printStackTrace();
	}
	%>
	</table>
</body>
</html>