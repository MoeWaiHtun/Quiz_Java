<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

.search{
padding: 5px 10px;
}

.search i{
margin: 5px;
}
</Style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    
    $(document).ready(function(){
    $("#search").click(function(){
                var ID = $("#ID").val();
                $.ajax({
                    url: "../Admin/Update_getdata1.jsp",
                    method: "POST",
                    data: { ID: ID },
                    success: function(data) {
                        var dataArray = data.split("|");
                        
                        $("#ID").val(dataArray[0]);
                        $("#question").val(dataArray[1]);
                        $("#option1").val(dataArray[2]);
                        $("#option2").val(dataArray[3]);
                        $("#option3").val(dataArray[4]);
                        $("#option4").val(dataArray[5]);
                        $("#answer").val(dataArray[6]);
                    }
                });
            });
        });
 
 
</script>

</head>
<body>

<%@include file="../Admin/Navigation.jsp" %>

<section class="container">
         <h1>Update Question (C++)</h1>
         <hr>
         <form action="../Admin/Update_Q1.jsp" method="post" id="Update">
   <input type="text" name="ID" id="ID" placeholder="Enter ID" style="width:5rem;">&nbsp;&nbsp;
    <button type="button" class="search" id="search"><i class="fas fa-search icon"></i>Search</button><br><br>
   
   Question:&nbsp;&nbsp;<input type="text" name="question" id="question" style="width:28rem;"> <br><br>
   Option1:&nbsp;&nbsp;&nbsp;<input type="text" name="option1" id="option1" style="width:28rem;"> <br><br>
    Option2:&nbsp;&nbsp;&nbsp;<input type="text" name="option2" id="option2" style="width:28rem;"><br><br>
     Option3:&nbsp;&nbsp;&nbsp;<input type="text" name="option3" id="option3" style="width:28rem;"> <br><br>
      Option4:&nbsp;&nbsp;&nbsp;<input type="text" name="option4" id="option4" style="width:28rem;"> <br><br>
      Answer:&nbsp;&nbsp;&nbsp;<input type="text" name="answer" id="answer" style="width:28rem;"> <br><br>
      
       <input type="reset" name="cancel" id="cancel" value="Cancel"> &nbsp;&nbsp;&nbsp;
       <input type="submit" name="submit" id="submit" value="Update">   </form>    
</section>
</body>
</html>