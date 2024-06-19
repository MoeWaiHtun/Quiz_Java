<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<style>
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	text-decoration: none;
	outline: none;
	border: none;
	transition: all .2s linear;
}


header{
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	z-index: 1000;
	background: rgba(0, 0, 0, 0.1);
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 0.3rem 3%;
}


header .nav{
	position: absolute;
	top:25px;
	margin-left: 30%;
}
header .nav a,i{
	margin: 0rem 1.5rem;
	color: #fff;
	font-size: 20px;
}
header .nav a:hover{
	color: red;
	margin-top: 80px;
}


</style>
</head>
<body>



<header>

     <div id="logo">
     <img src="../images/l3.png" width="100px" height="60px" id="img">
     <div>
        <nav class="nav">
        	<a href="../Clients/Start.jsp"><i class="fas fa-home icon" style="color: #fff"></i>Home</a>
        	<a href="../Clients/Subject.jsp"><i class="fas fa-book icon" style="color: #fff"></i>Subject</a>
            <a href="../Clients/About.jsp"><i class="fas fa-question icon" style="color: #fff"></i>About</a>       	
        	<a href="#" id="login"><i class="fas fa-user icon" style="color: #fff"></i>Admin</a>
        	
        </nav>



        
</header>


</body>
</html>