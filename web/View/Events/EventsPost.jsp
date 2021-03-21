<%-- 
    Document   : Event Post
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
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
        <title>Post Events</title>
    </head>
    <body style="background-color: #eff0f1;">

        <div class="fixedheader">  

            <div class="pageheader">

                <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                        <li><a href="<%= request.getContextPath()%>/View/User/AdvancedSearch.jsp" type="button"> Photographs </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/PhotographerSearch.jsp" type="button"> Photographers </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Fourm/MainForum.jsp" type="button"> Forum </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Events/MainEventHome.jsp" type="button"> Events </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/Cart.jsp" type="button"> Cart </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/purchasehistory.jsp" type="button"> Purchase History </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/ClientProfileUpdate.jsp" type="button"> Profile </a></li>

                    </ul>
                </div>

                <div class="notifyicn">
                    <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>
                </div>

                <div class="logout">
                    <a href="../../LogOut?loc=me" type="button"> Logout </a>
                </div>

            </div>

        </div>
        <div class="heading">
            <h3>Post your Events </h3>
            
        </div>
        <div class="main-content">

            <div class="events">                
                <form id="e" action="../../PostEvent" method="POST">
                    <h2>Enter Your Event Details</h2>
                    <div class="formContent">                             
                        <span class="content_name"> Event Name </span><br>
                        <input type="text" name="name" required/>
                        <label for="name" class="label_name">
                        </label>
                    </div><br>

                    <div class="formContent">
                        <span class="content_name"> Event Type </span><br>
                        <input type="text" name="type" required/>
                        <label for="type" class="label_name">
                        </label>
                    </div><br>

                    <div class="formContent">
                        <span class="content_name"> Date of Event </span><br>
                        <input type="date" name="dob" required class="doe"/>
                        <label for="doe" class="label_name">
                        </label>
                    </div><br>

                   <div class="formContent">
                        <span class="content_name"> Event Starting Time </span><br>
                        <input type="time" name="time" required/>
                        <label for="time" class="label_name">
                        </label>
                    </div><br>
                    
                     <div class="formContent">
                        <span class="content_name"> Event Venue </span><br>
                        <input type="text" name="venue" required/>
                        <label for="venue" class="label_name">
                        </label>
                    </div><br>
                    
                     <div class="formContent">
                        <span class="content_name"> Hall Number </span><br>
                        <input type="text" name="hall" required/>
                        <label for="hall" class="label_name">
                        </label>
                    </div><br>
                    
                     <div class="formContent">
                        <span class="content_name"> Venue Address(Street) </span><br>
                        <input type="text" name="street" required/>
                        <label for="street" class="label_name">
                        </label>
                    </div><br>
                    
                     <div class="formContent">
                        <span class="content_name"> Venue Address(City) </span><br>
                        <input type="text" name="city" required/>
                        <label for="city" class="label_name">
                        </label>
                    </div><br>
                    
                     <div class="formContent">
                        <span class="content_name"> Venue Address(Province) </span><br>
                        <input type="text" name="province" required/>
                        <label for="province" class="label_name">
                        </label>
                    </div><br>

                    

                    <div class="filter-radio">
                        <label class="container-radio"><h8>Specify Photographers</h8>
                            <input type="radio" id="chkYes" name="photographers" value="Specify Photographers" onclick="ShowHideDiv()">
                            <span class="checkmark-radio"></span>
                        </label>
                        <label class="container-radio"><h8>All Photographers</h8>
                            <input type="radio" id="chkNo" name="photographers" value="All Photographers" onclick="ShowHideDiv()">
                            <span class="checkmark-radio"></span>
                        </label>
                    </div><br><br>



                    <div id="photo" style="display: none">
                        <span class="content_name" style="margin-left: 5%;"> Name :  </span><br><br>
                        <div class="formContent">
                            <span class="content_name"> Photographer Name </span><br>
                            <input  style="width: 80%;" type="text" name="pname" required/>
                            <label for="pname" class="label_name">
                            </label>
                            <button type="button" id="add">Add</button> 
                        </div>
                    </div>

                    <div id="area" style="display: none">
                        <span class="content_name" style="margin-left: 10%;">Photographers from : </span><br>
                        <div class="box">
                            <select name="area">
                                <option value="All Island">All Island</option>
                                <option value="Central Province">Central Province</option>
                                <option value="Western Province">Western Province</option>
                                <option value="Southern Province">Southern Province</option>
                                <option value="Uva Province">Uva Province</option>
                                <option value="Sabaragamuwa Province">Sabaragamuwa Province</option>
                                <option value="North Western Province">North Western Province</option>
                                <option value="North Central Province">North Central Province</option>
                                <option value="Northern Province">Northern Province</option>
                                <option value="Eastern Province">Eastern Province</option>
                            </select>
                        </div>
                    </div>


                    <br><br><br>
                    <div class="formContent">
                        <input type="submit" id="submit" value="Post Event">
                    </div>
                    <br><br><br>


                </form> 
            </div>       

        </div>

        <div class="sidenav">
            <div class="dropdown">
                <button onclick="myFunction()" class="dropbtn">Step 1: Draft your event<img src="../../Resources/Img/down.png"></button>
            </div>        
            <div id="myDropdown" class="dropdown-content">

                <a><b>Summarize the event</b></a>
                <ul>
                    <li>Include details about your goal</li><br>
                    <li>Describe expected and actual outcome</li><br>
                    <li>Include any special requirements</li><br>
                </ul>

            </div>

            <div class="dropdown">
                <button onclick="myFunction1()" class="dropbtn">Step 2: Post your event <img src="../../Resources/Img/down.png"></button>
            </div>        
            <div id="myDropdown1" class="dropdown-content">

                <a><b>Write to us</b></a>
                <ul>
                    <li>Enter your event details</li><br>
                    <li>Get expert in the field.</li><br>
                </ul>

            </div>

            <div class="dropdown">
                <button onclick="myFunction2()" class="dropbtn">Step 3:Share your views<img src="../../Resources/Img/down.png"></button>
            </div>        
            <div id="myDropdown2" class="dropdown-content">

                <a><b>Like your photographer</b></a>
                <ul>
                    <li>Share your experience.</li>
                </ul>

            </div>
            <img src="../../Resources/Img/add-event.svg" style="width: 100%; height: 30%; margin-top: 6%">
        </div>


        <script src="../../JS/Events/PostEvents.js" type="text/javascript" ></script>

    </body>
</html>

