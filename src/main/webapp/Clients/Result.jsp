<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Form using JSP</title>
    <style>
    	 body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('../images/BG.jpg');
            min-height: 100vh;
            background-size: cover;
            color: #fff;
        }
        
        .container{
        	width: 100%;
        	
        	
        }
        
        .form-container {
        	display: flex;
        	width: 60%;
        	align-items: center;
        	position: relative;
        	left: 22%;
        	border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            background: rgba(0,0,0,0.3);
        	
        }
        
        form {
            
            padding: 20px;
            margin-right: 2rem;
        }
        
        h2 {
            text-align: center;
            color: #fff;
            font-size: 2rem;
            background: linear-gradient(180deg,#ff0000,yellow);
            -webkit-background-clip: text;
            color: transparent;
        }
        
        table {
            width: 100%;
            
        }
        
        table tr {
            margin-bottom: 20px;
        }
        
        table td {
            padding: 10px;
            vertical-align: top;
            background: linear-gradient(180deg,#ff0000,yellow);
            -webkit-background-clip: text;
            color: transparent;
        }
        
        
        
        table .input {
            width: calc(100% - 20px);
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            width: 250px;
            border-radius: 5px;
            border: 1px solid #990033;
            background: linear-gradient(60deg,transparent,transparent,#990033);
            color: yellow;
        }
        span{
         font-size: 30px;
         font-family: cursive;
         }
        
       
        .form img{
        	float: right; 
        	}
        button{
        padding: 5px 23px;
        margin-top: 1rem;
        margin-left: 5rem;
        background: linear-gradient(to top right,#ff0000,orange);
        border: none;
        border-radius: 5px;
        color: #fff;
        }
        
        button:hover{
        background: linear-gradient(to top right,orange,#ff0000);
        }
        
    </style>
</head>
<body>
<%
String RollNo=(String) session.getAttribute("RollNo");
String Name=(String) session.getAttribute("Name");
String Email=(String) session.getAttribute("Email");
String Mark=(String) session.getAttribute("Mark");
String Grade=(String) session.getAttribute("Grade");

%>

<div class="container">
    <h2>Student Result</h2>
    <div class="form-container">
    	<form action="../Clients/Subject.jsp" id="deleteForm" method="post" class="form">
        <table>
            <tr>
                <td>Roll No:</td>
                <td class="input"><%= RollNo %></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td class="input"><%= Name %></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td class="input"><%= Email %></td>
            </tr>
            <tr>
                <td>Marks:</td>
                <td class="input"><%= Mark %></td>
            </tr>
            <tr>
                <td>Grade:</td>
                <td class="input"><span><%= Grade %></span></td>
            </tr>
            
        </table>
        
        <button type="submit" value="OK">OK</button>
    	
    
    </form>
    <img src="../images/Success.png" width="300" height="300">
    </div>
    
</div>

</body>
</html>
