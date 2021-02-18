<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String a=request.getParameter("regno");  
String b=request.getParameter("name"); 
String c=request.getParameter("dept"); 
String d=request.getParameter("email");  
String e=request.getParameter("gender");  
          
	try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/form","root","Abir@mi2000");  
		PreparedStatement ps=con.prepareStatement(  
		"insert into form values(?,?,?,?,?)");  
		ps.setString(1,a);  
		ps.setString(2,b);  
		ps.setString(3,c);  
		ps.setString(4,d); 
		ps.setString(5,e); 
		int i=ps.executeUpdate();  
		if(i>0)
			
			out.println("<h2>") ;
			out.println("You have registered successfully...");
			out.println("</h2></body>");    
	}
	catch (Exception e2) {System.out.println(e2);}    
%>