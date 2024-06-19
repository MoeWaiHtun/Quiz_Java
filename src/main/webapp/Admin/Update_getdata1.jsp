<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%
       String url="jdbc:mysql://localhost:3306/Quize";
       String user="root";
       String password="root";
       String data ="";
       String idDelete=request.getParameter("ID");
    try {
        Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection(url,user,password);
    	
    	
        String query = "SELECT ID, Question, Option1, Option2, Option3, Option4, Answer FROM Question1 WHERE ID=? OR Question=?";
        PreparedStatement pstmt = conn.prepareStatement(query);
        pstmt.setString(1, idDelete);
        pstmt.setString(2, idDelete);
        
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            String ID=rs.getString("ID");
            String Question = rs.getString("Question");
            String Option1 = rs.getString("Option1");
            String Option2 = rs.getString("Option2");
            String Option3 = rs.getString("Option3");
            String Option4 = rs.getString("Option4");
            String Answer = rs.getString("Answer");
            
            data =ID + "|" + Question + "|" + Option1 + "|" + Option2 + "|" + Option3 + "|" + Option4 + "|" + Answer;
        } else {
            data = "No data found.";
        }
        conn.close();
    } catch (Exception e) {
        data = "Error: " + e.getMessage();
    }
    
    out.println(data);
%>
    
    
    
    
    
    
    