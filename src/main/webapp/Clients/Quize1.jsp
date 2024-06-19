<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.util.*" %>
    <%@page import="javax.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
    <title>Quiz</title>
</head>
<style>

body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    margin: 0;
    padding: 0;
}

form {
    max-width: 600px;
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
    text-align: center;
    color: #333;
}

label {
    display: block;
    margin-bottom: 10px;
    font-weight: bold;
}

input[type="radio"] {
    margin-right: 5px;
}

input[type="submit"] {
    display: block;
    margin-top: 20px;
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}


</style>
<body>
   <form action="../Clients/Quize1_process.jsp" method="post">
    <h2>Quiz</h2>
        <% 
        String url="jdbc:mysql://localhost:3306/Quize";
        String user="root";
        String password="root";
            List<String> questions = new ArrayList<>();
            List<String> correct_answers = new ArrayList<>();
            Map<String, List<String>> questionOptionsMap = new HashMap<>();
            Map<String, String> questionAnswersMap = new HashMap<>();
            
            try {
                
            	Class.forName("com.mysql.cj.jdbc.Driver");
            	Connection conn=DriverManager.getConnection(url,user,password);
            	String sql="SELECT Question, Option1, Option2, Option3, Option4, Answer FROM Question1 ORDER BY RAND() LIMIT 10";
            	PreparedStatement statement=conn.prepareStatement(sql);
            	ResultSet rs = statement.executeQuery();
                
               
                
               
                while (rs.next()) {
                    String Question = rs.getString("Question");
                    String Option1 = rs.getString("Option1");
                    String Option2 = rs.getString("Option2");
                    String Option3 = rs.getString("Option3");
                    String Option4 = rs.getString("Option4");
                    String Answer = rs.getString("Answer");
                    
                    questions.add(Question);                 
                    correct_answers.add(Answer);
                    session.setAttribute("correct",correct_answers);
                    List<String> options= Arrays.asList(Option1, Option2, Option3, Option4);
                    questionOptionsMap.put(Question, options);
                    questionAnswersMap.put(Question, Answer);
                    
                }
                
               
                int questionNumber = 1;
                for (String Question : questions) {
                                     
        %>
        
        <label for="question<%= questionNumber %>">Question <%= questionNumber %>: <%= Question %></label><br>
        <% List<String> options= questionOptionsMap.get(Question);
           Collections.shuffle(options);%>
        <% 
        for(String option : options){ %>
            <input type="radio" id="q<%= questionNumber %>_answer<%= option %>" name="question<%= questionNumber %>" value="<%= option %>">
            <%= option %><br>
            
            <% } %>
            
            <% 
            
                    questionNumber++;
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } 
        %>
        
        <input type="submit" value="Submit">
    </form>
   
   
</body>
</html>