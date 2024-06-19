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
    String url="jdbc:mysql://localhost:3306/Quize";
    String user="root";
    String password="root";
    try{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection conn=DriverManager.getConnection(url,user,password);
    	
    	String idDelete=request.getParameter("ID");
    	String deleteQuery="DELETE FROM Question2 WHERE ID=?";
    	PreparedStatement statement=conn.prepareStatement(deleteQuery);
    	statement.setString(1,idDelete);
    	int rowsdeleted=statement.executeUpdate();
    	
    	if(rowsdeleted>0){
        	%>
        	<script>
                alert("Data deleted successfully!!");
                redirect("../Admin/Delete_question(Java).jsp");
            </script>
        	
        	<% 
        	}else{ %>
        	
        	<script>
        		alert("Fail data deleting!!");
        		redirect("../Admin/Delete_question(Java).jsp");
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