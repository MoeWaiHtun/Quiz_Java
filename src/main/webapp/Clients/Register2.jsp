<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Fill UP THE FORM</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-image: url('../images/Fill.jpg');
            color: #fff;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
			background: linear-gradient(90deg,#003d4d,transparent,transparent,#003d4d);
            color: white;
            padding: 10px;
        }
        
        .navbar button{
        	background-color: #007a99;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 90px;
        }
        
        .navbar button:hover{
        	 background-color: #007a99;
        	 border: 1px solid #fff;
        }
        

        .form-container {
            width: 60%;
            height: 480px;
            margin: auto;
            background: rgba(0.9,0,0,0.5);
            border-radius: 3rem;
        }
        
         .form{
        	margin-top: 3rem;
        	padding-top: 0.5rem;
        }
        
        h2{
        	background: linear-gradient(180deg,lime,orange,red);
        	-webkit-background-clip: text;
        	color: transparent;
        	
        }

        .form-group {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
            position: relative;
            left: -10rem;
            margin: 2rem;
           
        }

        .form-group label {
            width: 45%;
            text-align: right;
            margin-right: 10px;
        }

        .form-group input, .form-group select {
            width: 50%;
            padding: 8px;
            box-sizing: border-box;
            background: linear-gradient(90deg,transparent,black);
            border: 1px solid #669999;
            color: #fff;
            border-radius: 5px;
        }
        
        .form-group select option{
        	color: #fff;
        	background: #000;
        }

        .btn{
            float: right;
            background-color: #007a99;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            position: relative;
            left: -25.7rem;
        }
        
        .btn:hover{
        	border: 1px solid #fff;
        }
    </style>
</head>
<body>

<div class="navbar">
    <div>
        <h2>Fill UP THE FORM(Java)</h2>
    </div>
    <div style="float: right;">
        <p style="float: left; margin: 1rem;">Date: <%= new java.text.SimpleDateFormat("dd/MM/yyyy").format(new java.util.Date()) %></p>
        <a href="../Clients/Subject.jsp"><button>Back</button></a>
        <a href="../Clients/Start.jsp"><button>Home</button></a>
    </div>
</div>

<div class="form-container">
    <form action="../Clients/Register_R2.jsp" method="post" class="form">
        <div class="form-group">
            <label for="rollNumber">Roll No:</label>
            <input type="text" id="rollNumber" name="rollNumber" required placeholder="Enter Roll Number">
        </div>

        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required placeholder="Enter Name">
        </div>

        <div class="form-group">
            <label for="gender">Gender:</label>
            <select id="gender" name="gender" required>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                
            </select>
        </div>

        <div class="form-group">
            <label for="contactNumber">Contact:</label>
            <input type="text" id="contactNumber" name="contactNumber" required placeholder="Enter Contact Number">
        </div>

        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required placeholder="Enter E-mail">
        </div>

        

        <button type="submit" class="btn">SAVE && NEXT</button>
    </form>
</div>

</body>
</html>
