<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String r = request.getParameter("roll");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/Quize","root","root");
	
	String sql="DELETE FROM Result1 where RollNo='" +r+ "' ";
	Statement st=con.createStatement();
	int rs=st.executeUpdate(sql);
	if(rs>0){
		response.sendRedirect("../Admin/All_result_choice1.jsp");
	}
	else{
		out.println("Fail");
		response.sendRedirect("../Admin/All_result_choice1.jsp");
	}
%>
</body>
</html>