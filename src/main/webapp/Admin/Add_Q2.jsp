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
    String ID=request.getParameter("ID");
    String Question=request.getParameter("Question");
    String Option1=request.getParameter("Option1");
    String Option2=request.getParameter("Option2");
    String Option3=request.getParameter("Option3");
    String Option4=request.getParameter("Option4");
    String Answer=request.getParameter("Answer");
    
    String url="jdbc:mysql://localhost:3306/Quize";
    String user="root";
    String password="root";
    
    try{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection conn=DriverManager.getConnection(url,user,password);
    	String sql="INSERT INTO Question2(ID,Question,Option1,Option2,Option3,Option4,Answer) VALUES (?,?,?,?,?,?,?)";
    	PreparedStatement statement=conn.prepareStatement(sql);
    	statement.setString(1,ID);
    	statement.setString(2,Question);
    	statement.setString(3,Option1);
    	statement.setString(4,Option2);
    	statement.setString(5,Option3);
    	statement.setString(6,Option4);
    	statement.setString(7,Answer);
    	int rowsInserted=statement.executeUpdate();
    	if(rowsInserted>0){
    	%>
    	<script>
            alert("Data added successfully!!");
            redirect("../Admin/Add_question(Java).jsp");
        </script>
    	
    	
    	<% }
         else{ 
         %>
    	
    	<script>
    		alert("Fail data adding!!");
    		redirect("../Admin/Add_question(Java).jsp");
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