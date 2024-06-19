<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="javax.sql.*" %>
    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>

    function redirect(url) {

        window.location.href = url;

    }

</script>

</head>
<body>
    <%
    String RollNo=request.getParameter("rollNumber");
    String Name=request.getParameter("name");
    String Gender=request.getParameter("gender");
    String Contact=request.getParameter("contactNumber");
    String Email=request.getParameter("email");
    String Date= new java.text.SimpleDateFormat("dd/MM/yyyy").format(new java.util.Date());
     
    String url="jdbc:mysql://localhost:3306/Quize";
    String user="root";
    String password="root";
    
    try{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection conn=DriverManager.getConnection(url,user,password);
    	String sql="INSERT INTO Register1(RollNo, Name, Gender, Contact, Email, Date) VALUES (?,?,?,?,?,?)";
    	PreparedStatement statement=conn.prepareStatement(sql);
    	statement.setString(1,RollNo);
    	statement.setString(2,Name);
    	statement.setString(3,Gender);
    	statement.setString(4,Contact);
    	statement.setString(5,Email);
    	statement.setString(6,Date);
    	
    	int rowsInserted=statement.executeUpdate();
    	if(rowsInserted>0){
    	
        session.setAttribute("RollNo", RollNo);
        session.setAttribute("Name", Name);
        session.setAttribute("Gender", Gender);
        session.setAttribute("Contact", Contact);
        session.setAttribute("Email", Email);
        
    	%>
        <script>
    		alert("Successfully data adding!!");
    		redirect("../Clients/Rule1.jsp");
    	</script>
    	
    	<% 
    	}else{ %>
    	
    	<script>
    		alert("Fail data adding!!");
    		redirect("../Clients/Register1.jsp");
    	</script>
    	
      <%
      }
    	conn.close();
    }catch(Exception e){
    	out.println("An error occured:"+e.getMessage());
    	e.printStackTrace();
    }
    %>
    
</body>
</html>