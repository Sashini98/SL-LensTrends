<%-- 
    Document   : ManageForum
    Created on : Nov 9, 2020, 8:14:39 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/ManageForum.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <title>Manage Forum</title>
    </head>
    <body style="background-color: #f7f6f9;">

        <div class="box">                
            <h2>Reported Forum Questions</h2>
            <div class="search" style="margin:auto;max-width:300px">
                <input type="text" placeholder="Search" name="search2">
                <button type="submit">Search</button>
            </div><br><br><br>
            <table class="table">
                <th class="th"> ID </th>
                <th class="th" id="th-color1"> TITLE </th>
                <th class="th" id="th-color2"> OPTION </th>
            </table><br><br>

            <form>
                <div class="formContent">                             
                    <span class="content_name"> Category </span><br>
                    <input type="text" name="category" disabled="" required/>
                    <label for="category" class="label_name">
                    </label>
                </div>

                <div class="formContent">                             
                    <span class="content_name">Tags </span><br>
                    <input type="text" name="tags" disabled="" required/>
                    <label for="tags" class="label_name">
                    </label>
                </div>

                <div class="formContent">                             
                    <span class="content_name">Reason </span><br>
                    <input type="text" name="reason" disabled="" required/>
                    <label for="reason" class="label_name">
                    </label>
                </div>

                <button id="remove" type="submit" class="btn">Remove</button>



            </form>
        </div>
    </body>
</html>
