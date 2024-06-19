<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rule1</title>
<style>
  body{
      background-image:url("../images/black.avif");
       background-size:cover;
}


 #rule{
            height: 25rem;
            width: 40rem;
            margin-left: 22rem;
            margin-top: 10rem;
            background: linear-gradient(79.8deg, rgb(101, 132, 154) 3.2%, rgb(160, 197, 201) 89.1%);
            border-radius: 0.7rem;
        }
 h2{
         	margin-left: 7rem;
            color: black;
         	margin-top: 4rem;
         	font-variant: small-caps;
         }
       
         .span{
         	margin-left: 3rem;
         	font-size:23px ;
         	color: black;
         }
         button{
         	border: none;
         	outline: none;
         	padding: 0.7rem;
         	font-size: 18px;
         	background: none;
         	margin-left: 7.5rem;
         	margin-top: 1rem;
         	transition: 0.3s;
         	color:black;
         	

         }
         #p{
            margin-left: 4.5rem;
             font-size:18px ;
         }
         button:hover{
         	transform: scale(1.1);
         	color: orangered;
         	text-shadow: 1px 1px 1px white;
         }
         #box{
         	height: 20rem;
         	margin-left: 2rem;
         	width: 25rem;
            color: black;
         	border: 1px double gray;
         	border-radius: 0.4rem;
         }
         p{
            font-size: 15px;
            font-weight: bold;
            color:black;
         }
         #Start{
         padding:0.7rem;
         margin-left:17rem;
         margin-top:20rem;
         color:black;
         background:none;
         border-color:black;
         trasition:0..2s;
         
         }
         #Start:hover{
         background-color:darkslateblue;
         border:none;
         outline:none;
         color:white;
         transform:scale(1.1);
         }
</style>
</head>
<body>



 <div id="rule">
 <form action="../Clients/Quize1.jsp" method="post">
      <div>  
        <h2 style="text-align: center;margin-left:15.5rem;position: absolute;color:black;">Instruction!</h2>
       </div>
        
    <div id="first" style="margin-bottom:3rem;">
    <img src="../images/r1.png" height="60px" width="55px" style="margin-left:2rem;position:absolute;top:320px;">
       <p style="margin-top: 9rem;margin-left: 6rem;position: absolute;">Must Fill Carefully In The Registration<br> Form.</p>
        <img src="../images/i5.png" height="50px" width="50px" style="margin-top: 7rem;margin-left: 23rem;position: absolute;top:210px;"><p style="margin-top: 9rem;margin-left: 26rem;position: absolute;">Avoid Seeking Solutions Asking<br> External Questions.</p>
    </div>
    
    <div id="second">
        <img src="../images/i7r.png" height="60px" width="60px" style="margin-top: 14rem;margin-left: 2rem;position: absolute;"><p style="margin-top: 15rem;margin-left: 6rem;position: absolute;">Read Carefully All Provided Guidelines.</p>
        <img src="../images/ic8r.png" height="50px" width="50px" style="margin-top: 14rem;margin-left: 22.5rem;position: absolute;"><p style="margin-top: 15rem;margin-left: 26rem;position: absolute;">During Answering,You Will Not<br> Receive Any Marks.</p>
    </div>
    <input type="submit" value="Start Quiz" id="Start">
    </form>
    </div>
     
</body>
</html>