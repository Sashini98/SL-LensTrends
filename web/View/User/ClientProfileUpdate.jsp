<%-- 
    Document   : ClientProfileUpdate
    Created on : Oct 24, 2020, 12:13:56 PM
    Author     : kesh
--%>

<%@page import="Model.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Client c = (Client) request.getSession().getAttribute("loggedClient");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        <link rel="stylesheet" href="../../CSS/User/ClientProfileUpdate.css">
        <link type="text/css" rel="stylesheet" href="../../CSS/Photographer/UserViewPhotographerProfile.css" />
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet">  
        <title>JSP Page</title>
    </head>
    <body>
        <div class="content">

            <div class="fixedheader">

                <div class="pageheader">
                    <a href="../Home.jsp" type="button" style="text-decoration: none;"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
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
                        <a href="<%= request.getContextPath()%>/View/Notifications/notificationsHome.jsp" type="button"> <img src="../../Resources/Img/notification.png"> </a>

                    </div>

                    <div class="logout">
                        <a href="../../LogOut?loc=ch" type="button"> Logout </a>
                    </div>
                </div>
            </div>

            <div class="skill-box">

                <ul>
                    <li><a href="#accsec">Account</a></li> <br> <br>
                    <li><a href="#addsec">Address</a></li> <br> <br>
                    <!--                    <li><a href="#taxsec">Tax Information</a></li> <br> <br>-->
                    <li><a href="#passsec">Password</a></li> <br> <br>
                    <li><a href="#delsec">Delete Account</a></li> <br> <br>
                    <!--<li><a href="#connsec">Connected Account</a></li> <br> <br>-->
                </ul>	

            </div>
            <div class="account" id="accsec">
                <div class="heading" >
                    <p>
                        Account                                                            
                    </p>

                </div> 
                <br>
                <div class="edit">
                    <form>                                                        
                        <label for="fname">First Name </label> 
                        <br> 
                        <div class="icon">
                            <input type="text" id="fname" name="fname" placeholder="<%= c.getFname()%>" disabled> 
                            <img id ="pencil1" onclick="pencileditenable('fname')" src="../../Resources/Img/edit.png">
                            <img class="icon1" id="ic1" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic1')" style="visibility:hidden;" >
                            <img class="icon2" id="ic2" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic2')" style="visibility:hidden;">
                        </div>
                        <br> 
                        <label for="lname">Last Name </label>  
                        <br> 
                        <div class="icon">
                            <input type="text" id="lname" name="lname" placeholder="<%= c.getLname()%>" disabled> 
                            <img id="pencil2" onclick="pencileditenable('lname')" src="../../Resources/Img/edit.png">
                            <img class="icon1" id="ic3" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic3')" style="visibility:hidden;" >
                            <img class="icon2" id="ic4" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic4')" style="visibility:hidden;">
                        </div>                   
                        <br> 
                        <label for="email">Email </label>  
                        <br> 
                        <div class="icon"> 
                            <input type="text" id="email" name="email" placeholder="<%= c.getEmail()%>" disabled> 
                            <img id="pencil3" onclick="pencileditenable('email')" src="../../Resources/Img/edit.png">
                            <img class="icon1" id="ic5" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic5')" style="visibility:hidden;" >
                            <img class="icon2" id="ic6" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic6')" style="visibility:hidden;">
                        </div>
                        <br> 

                    </form>
                </div>
            </div>

            <div class="address" id="addsec">
                <div class="heading">
                    <p>Address</p>
                </div> <br>
                <div class="edit">
                    <form>
                        <label for="address" >Address No</label> 
                        <br>
                        <div class="icon"> 
                            <input type="text" id="address" name="address" placeholder="<%= c.getAddress_no()%>" disabled> 
                            <img id="pencil8" onclick="pencileditenable('address')" src="../../Resources/Img/edit.png">
                            <img class="icon1" id="ic15" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic15')" style="visibility:hidden;" >
                            <img class="icon2" id="ic16" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic16')" style="visibility:hidden;">
                        </div>
                        <br>
                        <label for="city">City </label>                     
                        <br>
                        <div>
                            <input type="text" id="city" name="city" placeholder="<%= c.getCity()%>" disabled>
                            <img id="pencil9" onclick="pencileditenable('city')" src="../../Resources/Img/edit.png">
                            <img class="icon1" id="ic17" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic17')" style="visibility:hidden;" >
                            <img class="icon2" id="ic18" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic18')" style="visibility:hidden;">
                        </div>
                        <br>
                        <label for="province">Province </label>  
                        <br>
                        <div>
                            <input type="text" id="province" name="province" placeholder="<%= c.getProvince()%>" disabled> 
                            <img id="pencil10" onclick="pencileditenable('province')" src="../../Resources/Img/edit.png">
                            <img class="icon1" id="ic19" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic19')" style="visibility:hidden;" >
                            <img class="icon2" id="ic20" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic20')" style="visibility:hidden;">
                        </div>                   
                        <br>

                    </form>
                </div>
            </div> 

            <div class="password" id="passsec">
                <div class="heading">
                    <p>Password</p>
                </div> 
                <div class="edit">
                    <p>To change your password, you’ll need to verify the current one first. Then create a password you’re not using elsewhere, and be sure to change it regularly as well as anytime you suspect it’s been compromised.</p>
                    <a href="../Photographer/changepassword.jsp" type="button">Change Password</a>
                </div>

            </div> 

            <div class="deleteacc" id="delsec">
                <div class="heading">
                    <p>Delete Account</p>
                </div> 
                <div class="edit">
                    <p> You may request permanent deletion of your account at any time, provided you do not have active subscriptions.<br> Account you are requesting to be deleted: <span> <strong>ikongraphy18@gmail.com </strong></span> </p>
                    <a href="#" type="button">Delete Account</a>
                </div>

            </div> 

        </div>

        <script type="text/javascript" src="../../JS/User/ClientProfileUpdate.js" ></script>    
    </body>
</html>
