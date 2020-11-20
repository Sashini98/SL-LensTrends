<%-- 
    Document   : Error404
    Created on : Nov 13, 2020, 11:29:29 AM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
        <link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/CSS/Error404.css"/>
        <title>Error 404 Page</title>
    </head>
    <body  style="background-color: #f7f6f9;">
        
        <div class="details">
            <img src="<%= request.getContextPath()%>/Resources/Img/Error.png">
            
            <p><span style="font-size: 50px; color: black">404</span><br><span>OOPS! PAGE NOT BE FOUND</span><br><span style="font-size: 20px; color: black">Sorry but the page you are looking for does not exist,<br>
                    have been removed, name changed or is temporarily unavailable.</span><br>
                    <a href="Home.jsp">Back To Home</a></p>       
        </div>

    </body>
</html>
