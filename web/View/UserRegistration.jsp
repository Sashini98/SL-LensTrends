<%-- 
    Document   : UserRegistration
    Created on : Oct 8, 2020, 6:54:24 AM
    Author     : kesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
        <link rel="stylesheet" href="../CSS/UserRegistration.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500&display=swap" rel="stylesheet">
    </head>
    <body class="body">
        <div class="outterdiv">

            <div class="d1">
                <img src="../Resources/Img/Logo/Picture1.png"/>
            </div>
            <div class="form">

                <div class="topic">
                    <span style="font-size: 24px; font-weight: bold">Welcome to SL-Lens Trends</span>
                    <br />
                    <span class="logintxt">If you already have an account. <a href="">Sign In</a></span>
                </div>

                <div class="content">

                    <div class="formContent">
                        <input type="text" name="email" required/>
                        <label for="email" class="label_name">
                            <span class="content_name"> Email Address </span>
                        </label>
                    </div>

                    <div class="formContent" style="align-items: space-between;">
                        <input type="text" name="fname" required style="width: 49%; align-items: space-between;"/>
                        <label for="fname" class="label_name" style="width: 45%; align-items: space-between; ">
                            <span class="content_name" style="width: 45%; align-items: space-between;"> First name </span>
                        </label>
                        <input type="text" name="lname" required style="width: 50%; align-items: space-between;"/>
                        <label for="lname" class="label_name" style="width: 50%; left: 50%;">
                            <span class="content_name" style="width: 45%; align-items: space-between; "> Last Name</span>
                        </label>
                    </div>

<!--
                    <div class="formContent">
                        <input type="text" name="lname" required/>
                        <label for="lname" class="label_name">
                            <span class="content_name"> Last Name</span>
                        </label>
                    </div>-->


                    <div class="formContent">
                        <input type="password" name="pwd" required/>
                        <label for="pwd" class="label_name">
                            <span class="content_name"> Password </span>
                        </label>
                    </div>


                    <div class="formContent">
                        <input type="date" name="dob" required class="dob"/>
                        <label for="dob" class="label_name">
                            <span class="content_name"> Date of Birth </span>
                        </label>
                    </div>


                    <div class="formContent">
                        <input type="text" name="country" required/>
                        <label for="country" class="label_name">
                            <span class="content_name"> Country </span>
                        </label>
                    </div>


                    <div class="para">
                        <hr style="width: 100%;">
                        The SL-Lens Trends may keep me informed with personalized email<br />
                        about products and services.  <br />

                        See our Privacy Policy for more details or to opt-out at any time. <br />

                    </div>
                    <hr style="width: 100%;">

                    <button class="submit">
                        Submit
                    </button>

                </div>
            </div>
        </div>
    </body>
</html>
