<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Project Page</title>
    <style>
        body {
          text-align: center;
            font-family: Arial, sans-serif;
            background-image: url('../images/b5.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            color:#000;
        }

        .container {
           
            width: 100%;
            margin: 0 auto;
             margin-top: 7rem;
             padding:10px;
        }
        
        .title h1{
        font-size: 80px;
        font-style: italic;
        }

        .project-info {
            float: right;
            width: 50%;
            margin-right: 20px;
            padding: 30px;
        }

        .project-image {
            float: ;left
            width: 40%;
            margin-left: 30px;
        }

       .project-image img {
            width: 30%;
            max-width: 100%;
            height: auto;
            display: block;
            margin: 0 auto;
            margin-top: 4rem;
        }
        
    </style>
</head>
<body>
<%@include file="../Clients/Navigation.jsp" %>



    <div class="container">
    <div class="title">
    <h1>About us</h1>
    </div>
        <div class="project-info">
            
           
            <p>
              Welcome to our Programming Languages Quiz Project! This project aims
               to educate and entertain users about various programming languages 
               through an interactive quiz format. Whether you're a seasoned developer
                or just starting to explore the world of coding, our quiz is designed 
                to challenge and expand your knowledge.
            </p>
            <h2>Guide</h2>
            <p>
           Using our quiz is simple. Just choose a difficulty level, start 
           answering questions, and see how well you know your programming
            languages! Whether you're looking to test your knowledge solo or
             challenge your friends,our quiz is perfect for individual or group play.
            </p>
            <h2>Meet the Team</h2>
      <p>Our team is passionate about programming languages and dedicated to creating
       engaging and informative content for our users. From research and question creation
       to design and development, we've worked hard to bring this project to life. 
      </p>

      
        </div>

       
        <div style="clear: both;"></div> <!-- Clear the floats to prevent layout issues -->

    </div>

</body>
</html>
