<%-- 
    Document   : ViewEvent
    Created on : Oct 24, 2020, 11:41:54 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Events</title>
        <link rel="stylesheet" href ="../../CSS/Events/ViewEvent.css">
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        
        <div class="pageheader">
                    <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                    <h1>Sl Lens Trends </h1>

                    <div class="headerul">
                        <ul>

                            <li><a href="#" type="button"> Events </a></li>
                            <li><a href="#" type="button"> Album </a></li>
                            <li><a href="#" type="button"> Profile </a></li>
                            <li><a href="#" type="button"> Settings </a></li>

                        </ul>
                    </div>

                    <div class="notifyicn">
                        <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>

                    </div>

                    <div class="logout">
                        <a href="#" type="button"> Logout </a>
                    </div>
                </div>
    </head>
    <body style="background-image: url(../../Resources/Img/VieweEvent.jpg);background-size: 100% ; ">

        <div class="row">
            <div class="column">
                <div class="card">
                    <h1>Client Details</h1>
                    <hr>
                    <form>   
                        <label for="name"><b>Name</b></label><br>
                        <input type="text" name="name"><br>

                        <label for="date"><b>Email</b></label><br>
                        <input type="text" name="email"><br>

                        <label for="Event Venue"><b>Contact Number</b></label><br>
                        <input type="text" name="number"><br>

                        <label for="Event Starting Time"><b>Address</b></label><br>
                        <input type="text" name="address"><br>

                    </form>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="column">
                <div class="card">
                    <h1>New Event</h1>
                    <hr>
                    
                    <form>
                    <label for="name"><b>Event Name</b></label><br>
                    <input type="text" name="name"><br>

                    <label for="date"><b>Date Of Event</b></label><br>
                    <input type="text" name="date"><br>

                    <label for="Event Venue"><b>Event Venue</b></label><br>
                    <input type="text" name="Event Venue"><br>

                    <label for="Event Starting Time"><b>Event Starting Time</b></label><br>
                    <input type="text" name="Event Starting Time"><br>

                    <label for="Event Description"><b>Event Description</b></label><br>
                    <input type="text" name="Event Description"><br>

                    <label for="Estimated Budget Range"><b>Estimated Budget Range</b></label><br>
                    <input type="text" name="Estimated Budget Range"><br>

                    <div class="clearfix">
                        <button type="submit" class="acceptbtn">Accept</button>
                        <button type="button" class="cancelbtn">Reject</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
