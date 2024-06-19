<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<style>
body{
      background-image:url("../images/black.avif");
       background-size:cover;
}

.home{
  min-height:100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-flow: initial;
  position: relation;
  z-index: 0;
}

.home .content{
text-align: center;
}

.home .content h1{
 font-style:;
 font-size: 2rem;
 letter-spacing:0.3rem;
 color: #fff;
 text-transform: uppercase;
 text-shadow: 0 .3rem .5rem rgba(0,0,0,.1);
 padding: .5rem 0;
}

.home .content p{
font-size: 1rem;
color: #fff;
font-family:
text-shadow: 0 .3rem .5rem rgba(0,0,0,.1);
padding: .5rem 0;
}

.home .content .btn{
display: inline-block;
margin-top: 1rem;
margin-left: 8rem;
background:none;
color: #fff;
padding: .8rem 3rem;
border: .1rem solid blue;
cursor: pointer;
font-size: 1rem;
border-radius: 10px;
}

.home .content .btn:hover{
 border:none;
 outline:none;
 color: white;
 background-color:red;
}


.container{
        	position: fixed;
            top: -120%;
            left: 0;
            min-height: 100vh;
            z-index: 10000;
            width: 100%;
            background: rgba(0,0,0,0.7);
            display: flex;
            align-item: center;
           justify-content: center;
        }
        
        
        .container.active{
        	top: 0;
        }
        
        .container #close{
        	position: absolute;
        	top: 2rem;
        	right: 3rem;
        	font-size: 5rem;
        	color: #fff;
        	cursor: pointer;
        	font-size: 20px;
        }

        .form-container {
           top:10%;
            width: 30%;
            margin: auto;
            background: linear-gradient(130deg,#00a3cc,transparent,transparent);
            z-index: -1;
            padding: 1rem;
            border: 3px solid #669999;
            margin-top: 8rem;
            color: #fff;
            border-radius: 20px;
            position: relative;
     		overflow: hidden;
            
        }
        
        h2{
        	text-align: center;
        	color: #fff;
        }

        .form-group {
        margin-top: 20px;
            margin-bottom: 15px;
            margin-left: 3rem;
        }

        label {
            display: block;
            margin-bottom: 5px;
            float: left;
        }
        
        .show{
        	position: relative;
        	display: inline-block;
        	left: -7rem;
        	float: right;
        }
        

        input {
            width: 50%;
            padding: 8px;
            box-sizing: border-box;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
            position: relative;
            margin-left: 5rem;
        }

        button {
            background-color: #007a99;
            border: 1px solid #000;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 90px;
            margin-bottom: 2rem;
            margin-left: 20%;
        }
        
         button:hover{
         	background: #003d4d;
         	border: 1px solid #fff;
         }
        
        .btn{
        position: relative;
        left: -5rem;
        }



</style>
</head>
<body>


<%@include file="../Clients/Navigation.jsp" %>



<!--Login Page-->

<div class="container">
<i class="fas fa-times" id="close"></i>

<div class="form-container">
	<h2>Login</h2>
    <form action="loginProcess.jsp" method="post" id="f1">
        <div class="form-group">
            <label for="username">Username:&nbsp;&nbsp;</label>
            <input type="text" id="username" name="username" required placeholder="Enter username">
        </div>

        <div class="form-group">
            <label for="password">Password:&nbsp;&nbsp;&nbsp;</label>
            <input type="password" id="password" name="password" required placeholder="Enter password">
        </div>
       
        
        <div class="form-group">
        	<input type="checkbox" id="showPassword" onclick="togglePassword()">
        	<label for="show" class="show">Show Password </label>
        </div>

        <div class="button-container">
        	<button type="submit" onclick="Sign_in()">Login</button>
        </div>
    </form>
</div>
</div>

<section class="home">

<div class="content">

<h1>Quizzy Braniacs</h1>
<p>A competition or game in which people try to answer questions to test their knowledge.</p>
<a href="Subject.jsp" class="btn" onclick="log()">Start Quiz</a>

</div>

</section>
<script type="text/javascript">

const FormBtn=document.querySelector("#login");
const Login=document.querySelector(".container");
const Close=document.querySelector("#close");
const backclose=document.querySelector("#btn1");

FormBtn.onclick = function(){
	Login.classList.add('active');
}

Close.onclick = function(){
	Login.classList.remove('active');
}

blackclose.onclick = function(){
	Login.classList.remove('active');
}

function togglePassword() {
    var passwordField = document.getElementById("password");
    var showPasswordCheckbox = document.getElementById("showPassword");

    if (showPasswordCheckbox.checked) {
        passwordField.type = "text";
    } else {
        passwordField.type = "password";
    }
}


function Sign_in() {
	// body...
    //Dafault values//
    const dname="Admin";
    const dpass="123456";

	var username=document.getElementById('username').value;
	var password=document.getElementById('password').value;

    
     if(username === dname && password === dpass){

        sessionStorage.setItem('Username',username);
        alert("Sign in successfully!");
        window.location.href="../Admin/home.jsp";
        }else{
            alert("Remember your old password or name please. Please try again!!");
        }

        document.getElementById('f1').reset();

}


</script>




</body>

</html>