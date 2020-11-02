<%-- 
    Document   : eventspost
    Created on : Oct 15, 2020, 10:48:35 AM
    Author     : Sashini Shihara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../../CSS/Events/EventsPost.css">
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
        <title>Post an event</title>
        
        
    </head>
    <body>
        
        <div class="fixedheader">  
            <div class="pageheader">
                <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                        <li><a href="EventHome.jsp" type="button"> Events </a></li>
                        <li><a href="../User/AdvancedSearch.jsp" type="button"> Album </a></li>
                        <li><a href="../User/ClientProfileUpdate.jsp" type="button"> Profile </a></li>
                        <li><a href="../Fourm/forum home.jsp" type="button"> Forum </a></li>
                        <li><a href="../Notifications/notificationsHome.jsp" type="button"> Notifications </a></li>

                    </ul>
                </div>

                <div class="notifyicn">
                    <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>

                </div>

                <div class="logout">
                    <a href="../login.jsp" type="button"> Logout </a>
                </div>
            </div>
        </div>    
        
        
        <div style="float: left; width: 50%; margin-top: 8%;"> 
            
            
            
            <form>
                <fieldset>
                    
                    <legend style="color: gainsboro;text-shadow: 0 0 5px black;font-size: 20px;"><h1>Post an Event</h1></legend><br><br>
                    
                     <div class="formContent">
                        <input type="text" name="name" required/>
                        <label for="name" class="label_name">
                            <span class="content_name"> Event Name </span>
                        </label>
                    </div>
                    
                     <div class="formContent">
                        <input type="date" name="dob" required class="doe"/>
                        <label for="doe" class="label_name">
                            <span class="content_name"> Date of Event </span>
                        </label>
                    </div>
                    
                     <div class="formContent">
                        <input type="text" name="venue" required/>
                        <label for="venue" class="label_name">
                            <span class="content_name"> Event Venue </span>
                        </label>
                    </div>
                    
                     <div class="formContent">
                        <input type="text" name="time" required/>
                        <label for="time" class="label_name">
                            <span class="content_name"> Event Starting Time </span>
                        </label>
                    </div>
                    
                     <div class="formContent">
                        <input type="textarea" name="desc" required rows="10" cols="50"/>
                        <label for="desc" class="label_name">
                            <span class="content_name"> Event Description </span>
                        </label>
                    </div>
                    
                    <div class="formContent">
                        <input type="textarea" name="pname" required/>
                        <label for="pname" class="label_name">
                            <span class="content_name"> Photographer Name </span>
                        </label>
                    </div>
                    
                    <div class="formContent">
                        <input type="textarea" name="estimate" required/>
                        <label for="estimate" class="label_name">
                            <span class="content_name"> Estimated Budget Range</span>
                        </label>
                    </div>
                    
                     
                    
                    <button class="submit">Post</button>
                    
                     

                </fieldset>

            </form>
        </div>
    </body>
</html>
