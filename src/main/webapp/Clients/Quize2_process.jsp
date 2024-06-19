<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.util.*" %>
   
<%@ page import="java.io.*, java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quiz Process</title>
</head>
<body>
<% 
    
    
    
    String RollNo=(String) session.getAttribute("RollNo");
    String Name=(String) session.getAttribute("Name");
    String Gender=(String) session.getAttribute("Gender");
    String Contact=(String) session.getAttribute("Contact");
    String Email=(String) session.getAttribute("Email");
    
    
    
    
    
    List<String> correctAnswers = (List<String>) session.getAttribute("correct");
    int totalQuestions = correctAnswers.size();
    int score = 0;
    
    for (int i = 1; i <= totalQuestions; i++) {
        String userAnswer = request.getParameter("question" + i);
        String correctAnswer = correctAnswers.get(i - 1); 
        if (userAnswer != null && userAnswer.equals(correctAnswer)) {
            score++; 
        }
    }
     
    
   
    double percentage = (double) score / totalQuestions * 100;

    // Determine grade
    String grade;
    if (percentage >= 90) {
        grade = "A";
    } else if (percentage >= 80) {
        grade = "B";
    } else if (percentage >= 70) {
        grade = "C";
    } else if (percentage >= 60) {
        grade = "D";
    } else {
        grade = "F";
    }

    String Marks= String.valueOf(score);
    String Grade= String.valueOf(grade);
   
    String url="jdbc:mysql://localhost:3306/Quize";
    String user="root";
    String password="root";
    
    
    try{

    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection conn=DriverManager.getConnection(url,user,password);
    	String sql="INSERT INTO Result2(RollNo, Name, Gender, Contact, Email, Marks, Grade) VALUES (?,?,?,?,?,?,?)";
    	PreparedStatement statement=conn.prepareStatement(sql);
    	statement.setString(1,RollNo);
    	statement.setString(2,Name);
    	statement.setString(3,Gender);
    	statement.setString(4,Contact);
    	statement.setString(5,Email);
    	statement.setString(6,Marks);
    	statement.setString(7,Grade);
    	int rowsInserted=statement.executeUpdate();
    	
        	conn.close();
        }catch(Exception e){
        	out.println("An error occured:"+e.getMessage());
        	e.printStackTrace();
        }
    
       response.sendRedirect("../Clients/Result.jsp");
        %>
      
    </body>
    </html>
    
