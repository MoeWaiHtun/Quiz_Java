<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>All Student Result</title>
    <style>
    .container{
    margin_top: 4rem;
    }
    
        table {
            width: 75%;
            border-collapse: collapse;
            margin-left: 10rem;
            margin-top:3rem;
        }

        table, th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }

        th {
            background:none;
            text-align: center;
          
        }
        h2{
        text-align: center;
        margin-top: 2rem;
        }
        body{
        background-image: url('../images/b5.jpg');
        background-size: cover;
        }
        
        i{
color: #fff;
}
    </style>
</head>
<body>
<%@include file="../Admin/Navigation.jsp" %>

<div class="container">
<h2>All Student</h2>

<table>
    <thead>
        <tr>
            <th>Roll No</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Contact</th>
            <th>Email</th>
            <th>Date</th>
            <th>Item</th>
            
        </tr>
    </thead>
    <tbody>
        <%
            try {
                // Establish database connection
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Quize", "root", "root");
                
                // Execute SQL query
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM Register2");

                // Iterate over result set and display data in table rows
                while(rs.next()) {
        %>
                    <tr>
                        <td><%= rs.getString("RollNo") %></td>
                        <td><%= rs.getString("Name") %></td>
                        <td><%= rs.getString("Gender") %></td>
                        <td><%= rs.getString("Contact") %></td>
                        <td><%= rs.getString("Email") %></td>
                        <td><%= rs.getString("Date") %></td>
                        <td><a href="Delete_User2.jsp?roll=<%=rs.getString("RollNo") %>" onclick="return confirm('Are you sure Do you want to delete?');">
		                    <i class="fas fa-trash-alt"></i></a></td>
                    </tr>
        <%
                }
                
                // Close connections
                rs.close();
                stmt.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </tbody>
</table>
</div>
</body>
</html>