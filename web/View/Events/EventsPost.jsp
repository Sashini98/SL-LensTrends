<%-- 
    Document   : AskQues
    Created on : Nov 8, 2020, 8:02:42 AM
    Author     : Sashini Shihara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../../CSS/Events/EventsPost.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <title>Questions</title>
    </head>
    <body style="background-color: #f7f6f9;">

        <div class="fixedheader">  

            <div class="pageheader">

                <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                        <li><a href="#" type="button"> Events </a></li>
                        <li><a href="#" type="button"> Profile </a></li>
                        <li><a href="#" type="button"> Settings </a></li>

                    </ul>
                </div>
                <div class="searchInput">

                    <input type="text" placeholder="Search">                   


                </div>
                <div class="notifyicn">
                    <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>
                </div>

                <div class="logout">
                    <a href="#" type="button"> Logout </a>
                </div>

            </div>

        </div>

        <div class="main-content">
            
             <div class="side-box"> 
                <div class="home">
                    <ul>
                        <li><a href="../../View/Home.jsp"> Home </a></li>
                        <li><a href="../../View/Fourm/MainForum.jsp"> Past Events</a></li>
                        <li><a href="../../View/Fourm/MainForum.jsp"> Post Event</a></li>
                    </ul>
                </div>


            </div>  
            <div name="s" id="s">
                <div class="events">                
                    <form>
                         <div class="formContent">                             
                        <span class="content_name"> Event Name </span><br>
                        <input type="text" name="name" required/>
                        <label for="name" class="label_name">
                        </label>
                    </div><br>
                    
                     <div class="formContent">
                            <span class="content_name"> Date of Event </span><br>
                        <input type="date" name="dob" required class="doe"/>
                        <label for="doe" class="label_name">
                        </label>
                    </div><br>
                    
                     <div class="formContent">
                            <span class="content_name"> Event Venue </span><br>
                        <input type="text" name="venue" required/>
                        <label for="venue" class="label_name">
                        </label>
                    </div><br>
                    
                     <div class="formContent">
                            <span class="content_name"> Event Starting Time </span><br>
                        <input type="text" name="time" required/>
                        <label for="time" class="label_name">
                        </label>
                    </div><br>
                    
                     <div class="formContent">
                            <span class="content_name"> Event Description </span><br>
                        <input type="text" name="desc" required rows="10" cols="50"/>
                        <label for="desc" class="label_name">
                        </label>
                    </div><br>
                    
                    <div class="formContent">
                            <span class="content_name"> Photographer Name </span><br>
                        <input type="text" name="pname" required/>
                        <label for="pname" class="label_name">
                        </label>
                    </div><br>
                    
                    <div class="formContent">
                            <span class="content_name"> Estimated Budget Range</span><br>
                        <input type="text" name="estimate" required/>
                        <label for="estimate" class="label_name">
                        </label>
                    </div>
                    <br><br><br>
                <input type="submit" id="submit" value="Post Event"><br><br><br>


                    </form>
                </div>       
            </div>

        </div>
    </div>


</div>

</div>


<script src="../../JS/Forum/BrowseQn.js" type="text/javascript" ></script>

</body>
</html>

