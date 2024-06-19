<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add:Questions</title>
<Style>
section {
	border-radius: 10px;
	width: 45rem;
	height: 34rem;
	margin-left:20rem;
	margin-top:3rem;
	background-color:rgba(0,0,0,0.5);
	
}
body{
	background-image: url("../images/b4.jpg");
	background-size: cover;
}
h1{
color:white;
margin-left:18rem;
padding-top:2rem;
}
form{
margin-left:4rem;
padding:2rem;
color:white;
}
form input{
color: #fff;
padding:0.5rem;
border:none;
outline:none;
border-radius:0.2rem;
background: linear-gradient(112.6deg, rgb(56, 24, 40) -10.7%, rgb(23, 148, 185) 100.2%);
}
#cancel{
width: 5rem;
margin-left:6rem;
margin-top:1rem;
}
#submit{
width: 5rem;
margin-left:1rem;
margin-top:1rem;
}

#submit:hover{
background: linear-gradient(121.7deg, rgb(41, 116, 250) 22.9%, rgb(67, 212, 255) 69%);
}
#cancel:hover{
background: linear-gradient(121.7deg, rgb(41, 116, 250) 22.9%, rgb(67, 212, 255) 69%);
}

</Style>
</head>
<body>
<%@include file="../Admin/Navigation.jsp" %>

<section class="container">
         <h1>Add Question (C++)</h1>
         <hr>
         <form action="Add_Q1.jsp" method="post">
    ID:&nbsp;&nbsp;&nbsp;<input type="text" name="ID" id="ID" style="width:10rem;"> <br><br>
   Question:&nbsp;&nbsp;<input type="text" name="Question" id="question" style="width:28rem;"> <br><br>
   Option1:&nbsp;&nbsp;&nbsp;<input type="text" name="Option1" id="option1" style="width:28rem;"> <br><br>
    Option2:&nbsp;&nbsp;&nbsp;<input type="text" name="Option2" id="option2" style="width:28rem;"><br><br>
     Option3:&nbsp;&nbsp;&nbsp;<input type="text" name="Option3" id="option3" style="width:28rem;"> <br><br>
      Option4:&nbsp;&nbsp;&nbsp;<input type="text" name="Option4" id="option4" style="width:28rem;"> <br><br>
      Answer:&nbsp;&nbsp;&nbsp;<input type="text" name="Answer" id="answer" style="width:28rem;"> <br><br>
      
       <input type="reset" name="cancel" id="cancel" value="Cancel"> &nbsp;&nbsp;&nbsp;
       <input type="submit" name="submit" id="submit" value="Add">   </form>    
</section>
</body>
</html>