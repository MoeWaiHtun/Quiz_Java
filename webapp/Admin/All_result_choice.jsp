
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Question</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            min-height: 100vh;
            background-repeat: no-repeat;
            background-size: cover;
            background: linear-gradient(to top,#021024,#052659,#5483B3,#7DA0CA);
   			
        }
        
        h2{
        	position: relative;
        	font-size: 3vw;
        	color: transparent;
        	-webkit-text-stroke: 0.3vw #383d52;
        	text-transform: uppercase;
        	width: 90%;
        }
        
        h2::before{
        	content: attr(data-text);
        	position: absolute;
        	top: 0;
        	left: 31.35rem;
        	width: 0%;
        	height: 100%;
        	color: cyan;
        	-webkit-text-stroke: 0vw #383d52;
        	border-right: 2px solid cyan;
        	overflow: hidden;
        	animation: animate 6s linear infinite;
        }
        
        @keyframes animate
        {
        	15%
        	{
        		width: 0;
        	}
        	
        	70%,90%
        	{
        		width: 17.5%;
        	}
        }
        
        .container{
        	width: 100%;
        	height: 450px;
        	margin-top: 3rem;
        	padding-top:2rem;
        	 background-image: url('../images/blue.png');
        	 min-height: 100vh;
            background-repeat: no-repeat;
            background-size: cover;
        	/*background: linear-gradient(to top,#021024,#052659,#5483B3,#7DA0CA);*/
        }

        .image-link {
            display: inline-block;
            margin: 20px;
            text-decoration: none;
            color: #333;
            margin: 2rem 4rem;
        }

        .image-link:hover {
            opacity: 0.9;
        }
    </style>
</head>

<body>
    
    <%@include file="../Admin/Navigation.jsp" %>
<div class="container">
    <h2 data-text="Choose...">Choose...</h2>

    <a href="../Admin/All_result_choice1.jsp" class="image-link">
        <img src="../images/Plus.png" alt="Image 1" width="250" height="250">
    </a>

    <a href="../Admin/All_result_choice2.jsp" class="image-link">
        <img src="../images/J2SE.png" alt="Image 2" width="300" height="250">
    </a>
</div>
</body>
</html>
