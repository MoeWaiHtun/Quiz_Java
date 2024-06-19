
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
    String Question=request.getParameter("question");
    String Option1=request.getParameter("option1");
    String Option2=request.getParameter("option2");
    String Option3=request.getParameter("option3");
    String Option4=request.getParameter("option4");
    String Answer=request.getParameter("answer");
    String url="jdbc:mysql://localhost:3306/Quize";
    String user="root";
    String password="root";
    
    try{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection conn=DriverManager.getConnection(url,user,password);
    	String sql="UPDATE Question1 SET Question=?, Option1=?, Option2=?, Option3=?, Option4=?, Answer=?  WHERE ID=?";
    	PreparedStatement statement=conn.prepareStatement(sql);
    	statement.setString(1,Question);
    	statement.setString(2,Option1);
    	statement.setString(3,Option2);
    	statement.setString(4,Option3);
    	statement.setString(5,Option4);
    	statement.setString(6,Answer);
    	statement.setString(7,ID);
    	int rowsInserted=statement.executeUpdate();
    	if(rowsInserted>0){
    	%>
    	<script>
            alert("Data added successfully!!");
            redirect("../Admin/Update_question(C++).jsp");
        </script>
    	
    	<% 
    	}else{ %>
    	
    	<script>
    		alert("Fail data adding!!");
    		redirect("../Admin/Update_question(C++).jsp");
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
    
    
   