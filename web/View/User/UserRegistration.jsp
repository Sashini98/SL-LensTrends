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
        <link rel="stylesheet" href ="../../CSS/Photographer/changepassword.css">
        <link rel="stylesheet" href ="../../CSS/Photographer/PhotographerRegistration.css">
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
    </head>
    <body>
        
        <div class="fixedheader">  
            <div class="pageheader">
                <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                        <li><a href="../Events/EventHome.jsp" type="button"> Events </a></li>
                        <li><a href="../User/AdvancedSearch.jsp" type="button"> Album </a></li>
                        <li><a href="ClientProfileUpdate" type="button"> Profile </a></li>
                        <li><a href="../Fourm/forum home.jsp" type="button"> Forum </a></li>
                        <li><a href="../Notifications/notificationsHome.jsp" type="button"> Notifications </a></li>

                    </ul>
                </div>

                <div class="notifyicn">
                    <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>

                </div>

                <div class="logout">
                    <button href="../login.jsp" type="button"> Login </button>
                </div>
            </div>
        </div>
        <br><br><br><br>
        
        <div class="cont"> 

                    <div class="logo">
                        <img src="../../Resources/Img/6.png">
                    </div>
                    <h1>Welcome to SL-Lens Trends</h1>

                    <div class="caption">
                        <p>
                            If you already have an account.<a href="../login.jsp">Sign In</a>
                        </p>
                    </div>

                    <div class="passinfo">
                        <form>
                            <fieldset class="cpass">
                                <legend> Email Address </legend>
                                <input type="text" id="email" name="mail" >
                                <legend> First Name </legend>
                                <input type="text" id="fname" name="name">
                                <legend> Last Name </legend>
                                <input type="text" id="lname" name="namel" >
                                <legend> Password </legend>
                                <input type="password" id="pw" name="password">
                                <legend> Date of Birth </legend>
                                <input type="text" id="dob" name="birth">
                                <legend> Country </legend>
                                <input type="text" id="country" name="contr">
                            </fieldset>                        

                            <div class="change">
                                <a href="#" type="button">Submit</a>
                            </div>
                        </form><br><br><br>
                        <font size="2px">The SL-Lens Trends may keep me informed with personalized email about products and services.See our Privacy Policy for more details or to opt-out at any time.</font>
                    </div>
                </div>
<!--        <div class="outterdiv">

            <div class="d1">
                <img src="../../Resources/Img/Logo/Picture1.png"/>
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
                        <input type="text" name="fname" required/>
                        <label for="fname" class="label_name">
                            <span class="content_name" > First name </span>
                        </label>
                        <input type="text" name="lname" required style="width: 50%; align-items: space-between;"/>
                        <label for="lname" class="label_name" style="width: 50%; left: 50%;">
                            <span class="content_name" style="width: 45%; align-items: space-between; "> Last Name</span>
                        </label>
                    </div>


                    <div class="formContent">
                        <input type="text" name="lname" required/>
                        <label for="lname" class="label_name">
                            <span class="content_name"> Last Name</span>
                        </label>
                    </div>


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
        </div>-->
    </body>
</html>
