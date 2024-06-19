
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Question(C++)</title>
	<style>
    	body{
    		/*background: url('login.avif');*/
    		min-height: 100vh;
    		background-repeat: no-repeat;
            background-size: cover;
            background: linear-gradient(to top,#06141B,#11212D,#253745,#4A5C6A);
            background: url("../images/Hla.jpg");
    	}
    	.container{
    		/*background: rgba(0,0,0,0.3);*/
    		margin-top: 3rem;
    		
    	}
    	h2{
    		text-align: center;
    		color: #fff;
    		padding-top: 1rem;
    	}
    	
        table {
            border-collapse: none;
            width: 100%;
            border: none;
        }

        th, td {
            border: 1px solid #669999;
            padding: 8px;
            text-align: left;
            text-align: center;
            background: linear-gradient(90deg,transparent,transparent);
             border-radius: 5px;
             color: #fff;
        }

        /*tr:nth-child(even) {
            background-color: #f2f2f2;
        }*/

        th {
            background: linear-gradient(90deg,#009999,transparent,transparent,#009999);
            color: white;
        }

        /* Set a fixed height for the table rows */
        tr {
            height: 40px;
        }
        
        .Question{
        	width: 500px;
        }
        
        button{
     position:relative;
     left:-34rem;
     width:60px;
     background:#009999;
     border:none;
     border-radius:5px;
     padding:7px;
}

button:hover{
	background-color:#006666;
	border:1px solid #fff;
}

button a{
	text-decoration:none;
	color:#fff;
}
    </style>
</head>
<body>
<%@include file="../Admin/Navigation.jsp" %>

<div class="container">
	<%
            try {
                // Establish the database connection
                Class.forName("com.mysql.jdbc.Driver"); // Make sure to include the MySQL JDBC driver in your project
                //java.sql.Connection connection = DBConnector.getConnection();
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Quize","root","root");

                // Execute a query
                
        %>
        
        
        <h2><button><a href="../Admin/All_question_choice.jsp">Back</a></button>All Questions(C++)</h2>
                    <table border="1">
                    	
                    	<tr>
			                <th>ID</th>
			                <th class="Question">Question</th>
			                <th>Option1</th>
			                <th>Option2</th>
			                <th>Option3</th>
			                <th>Option4</th>
			                <th>Answer</th>
           			   </tr>
                    
         <%
               Statement stmt=con.createStatement();
         	   ResultSet rs=stmt.executeQuery("select * from Question1");
         	   while(rs.next()){
         		    %>
         		    
         		     <tr>
		                    <td><%=rs.getString(1) %></td>
		                    <td><%=rs.getString(2) %></td>
		                    <td><%=rs.getString(3) %></td>
		                    <td><%=rs.getString(4) %></td>
		                    <td><%=rs.getString(5) %></td>
		                    <td><%=rs.getString(6) %></td>
		                    <td><%=rs.getString(7) %></td>
                	</tr>
         	    <% }%> 
         
       </table>
        
        
        
        
        
        <% 
            } catch (Exception e) {
                System.out.print(e);
            }
        %>
 </div>
</body>
</html>