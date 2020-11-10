<%-- 
    Document   : AdminNotification
    Created on : Nov 9, 2020, 9:18:55 PM
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
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/AdminNotification.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <title>Admin Notifications</title>
    </head>
    <body style="background-color: #f7f6f9;">
        
        <div class="box">
            <div class="box1" style="background-color: #EAEAEA">               
                <img src="../../Resources/Img/newmsg.png">  
                <h2><center>New Messages</center></h2> 
            </div>

            <div class="box2" style="background-color: #EAEAEA">
                <img src="../../Resources/Img/replied.png"> 
                <h2><center>Replied</center></h2> 
            </div>
        </div>
        
        <div class="box">
            <div class="box1" style="background-color: #DFF0F7;">               
                <h2>Client Notifications</h2>
                
                <form>
                    <div class="formContent">                             
                        <span class="content_name">Title </span><br>
                        <input type="text" name="title" required/>
                        <label for="title" class="label_name">
                        </label>
                    </div><br>

                    <div class="formContent">
                        <span class="content_name"> Date </span><br>
                        <input type="date" name="dob" required class="doe"/>
                        <label for="doe" class="label_name">
                        </label>
                    </div><br>

                    <div class="formContent">
                        <span class="content_name"> Message </span><br>
                        <textarea class="textarea"></textarea>
                        <label for="msg" class="label_name">
                        </label>
                    </div><br>
                    
                </form>
                <button id="csend" type="submit">Send</button>
            </div>

            <div class="box2" style="background-color: #DFF0F7;">
                <h2>Photographer Notifications</h2>
                
                <form>
                    <div class="formContent">                             
                        <span class="content_name">Title </span><br>
                        <input type="text" name="title" required/>
                        <label for="title" class="label_name">
                        </label>
                    </div><br>

                    <div class="formContent">
                        <span class="content_name"> Date </span><br>
                        <input type="date" name="dob" required class="doe"/>
                        <label for="doe" class="label_name">
                        </label>
                    </div><br>

                    <div class="formContent">
                        <span class="content_name"> Message </span><br>
                        <textarea class="textarea"></textarea>
                        <label for="msg" class="label_name">
                        </label>
                    </div><br>
                    
                </form>
                <button id="psend" type="submit">Send</button>
            </div>
        </div>
        
        <div class="box">
            <div class="box1" style="background-color: #C4E8F2;">               
                <h2>System Notifications</h2>
                
                <form>
                    <div class="formContent">                             
                        <span class="content_name">Title </span><br>
                        <input type="text" name="title" required/>
                        <label for="title" class="label_name">
                        </label>
                    </div><br>

                    <div class="formContent">
                        <span class="content_name"> Date </span><br>
                        <input type="date" name="dob" required class="doe"/>
                        <label for="doe" class="label_name">
                        </label>
                    </div><br>

                    <div class="formContent">
                        <span class="content_name"> Message </span><br>
                        <textarea class="textarea"></textarea>
                        <label for="msg" class="label_name">
                        </label>
                    </div><br>
                    
                </form>
                <button id="ssend" type="submit">Send</button>
            </div>

            <div class="box2" style="background-color: #C4E8F2;">
                <h2>Suspend The System</h2>
                
                <form>
                    <div class="formContent">                             
                        <span class="content_name">Title </span><br>
                        <input type="text" name="title" required/>
                        <label for="title" class="label_name">
                        </label>
                    </div><br>
                    
                    <div class="formContent">                             
                        <span class="content_name">Time </span><br>
                        <input type="text" name="time" required/>
                        <label for="time" class="label_name">
                        </label>
                    </div><br>

                    <div class="formContent">
                        <span class="content_name"> Message </span><br>
                        <textarea class="textarea"></textarea>
                        <label for="msg" class="label_name">
                        </label>
                    </div><br>
                    
                </form>
                <button id="send" type="submit">Send</button>
            </div>
        </div>
    </body>
</html>
