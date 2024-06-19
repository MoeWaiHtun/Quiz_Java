<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
 background-image:url("../images/sb2.jpg");

background-size:cover;
}
h1{
margin-top:6rem;
text-align:center;
font-family:monospace;
color:white;
}
#first{
border-radius: 30px;
color:#f1f1f1;
margin-top:5rem;
width:65rem;
margin-left:9.5rem;
height:23rem;
background-color:rgba(0,0,0,0.5);
}
#second{
border-radius: 30px;
width:65rem;
margin-top:5rem;
margin-left:9.5rem;
height:23rem;
background-color: rgba(0,0,0,0.5);
}
#text{
  margin-top:6rem;
  position:absolute;
  margin-left:16rem;
}
#c{
margin-left:4rem;
margin-top:5rem;
float:left;
}
#input{
padding:0.7rem;
margin-left:0.4rem;
border:1px solid white;
background:none;
color:white;
border-radius:0.3rem;
trasition:0.2s;
}
#java{
margin-left:47rem;
margin-top:5rem;
float:left;
}
p{
font-size:20px;
font-style:geogeria;
letter-spacing:0.1rem;
line-spacing:0.1rem;
}
#setext{
 margin-top:7rem;
  position:absolute;
  font-size:20px;
font-style:geogeria;
letter-spacing:0.1rem;
line-spacing:0.1rem;
color:white;
margin-left:2.3rem;
}
#sinput{
padding:0.7rem;
margin-left:8rem;
margin-bottom:5rem;
border:1px solid white;
background:none;
color:white;
border-radius:0.3rem;
trasition:0.2s;

}
#sinput:hover{
transform:scale(1.1);
background-color:purple;
border:none;
outline:none;
}
#input:hover{
transform:scale(1.1);
background-color:purple;
border:none;
outline:none;
}







</style>
</head>
<body>
<%@include file="../Clients/Navigation.jsp" %>

<h1>Choose Courses</h1>

<section id="first">
<form action="../Clients/Register1.jsp" method="post">
<div>
<img src="../images/ccr.png" id="c" width="150px" height="220px">
<p id="text">
C++ is an object-oriented programming language which gives a clear structure<br>
 to programs and allows code to be reused, lowering development costs. C++ is<br> portable
  and can be used develop applications that can be adapted as multiple<br> platforms.
   C++ is fun and easy to learn!<br><br><br>
   <input type="Submit" value="Choose" id="input">
</p>
</div>
</form>
</section>

<section id="second">
<form action="../Clients/Register2.jsp" method="post">
<div>
<p id="setext">
    Java is a widely-used programming language for coding web applications.<br>It has been a popular
     choice among developers for over two decades, 
    with<br> millions of Java applications in use today.The best way to learn Java is to<br> follow 
    the examples/exercises and create your own code.
</p>
<img src="../images/mjava.png" id="java" width="250px" height="200px">
</div>
<input type="Submit" value="Choose" id="sinput">
</form>
</section>



</body>
</html>