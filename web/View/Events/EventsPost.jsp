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
        <title>Post Events</title>
    </head>
    <body style="background-color: #f7f6f9;">

        <div class="fixedheader">  

            <div class="pageheader">

                <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                        <li><a href="#" type="button"> Forum </a></li>
                        <li><a href="#" type="button"> Events </a></li>
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

        </div>

        <div class="main-content">

            <div class="events">                
                <form>
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
                        <textarea name="desc" required rows="10" cols="50"></textarea>
                        <!--<input type="text" name="desc" required rows="10" cols="50"/>-->
                        <label for="desc" class="label_name">
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
                            <input type="text" name="pname" required/>
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
  <button class="dropdown-btn">Dropdown
  </button>
  <div class="dropdown-container">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
  </div>
        </div>


        <script src="../../JS/Events/PostEvents.js" type="text/javascript" ></script>

    </body>
</html>

