<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>


<head>
<meta charset="ISO-8859-1">
<title>Navigation</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel="stylesheet" type="text/css" href="../css/Navigation.css">
</head>
<body>
    <nav>
         <ul>
             <li class="menu-products">
             <a href="#">Add New Question</a>
               <ul class="dropdown1">
                   <li><a href="Add_question(C++).jsp">C++</a></li>
                   <li><a href="Add_question(Java).jsp">Java</a></li>
               </ul>
             </li>
             
             <li class="menu-products">
             <a href="#">Update Question</a>
               <ul class="dropdown2">
                   <li><a href="Update_question(C++).jsp">C++</a></li>
                   <li><a href="Update_question(Java).jsp">Java</a></li>
               </ul>
             </li>
             
             
             
             <li><a href="../Admin/All_question_choice.jsp">All Question</a></li>
              
             
             <li class="menu-products">
             <a href="#">Delete Question</a>
               <ul class="dropdown3">
                   <li><a href="Delete_question(C++).jsp">C++</a></li>
                   <li><a href="Delete_question(Java).jsp">Java</a></li>
               </ul>
             </li>
              <li><a href="../Admin/Register_choice.jsp">User List</a></li>
             <li><a href="../Admin/All_result_choice.jsp">All Student Result</a></li>
             <li><a href="../Clients/Start.jsp">Logout</a></li>
         </ul>
    </nav>
</body>
</html>