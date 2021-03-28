<%-- 
    Document   : changepassword
    Created on : Oct 21, 2020, 3:45:18 PM
    Author     : ASUS
--%>

<%@page import="Model.Photographer"%>
<%@page import="Model.Client"%>
<%@page import="Model.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String actor = (String) request.getAttribute("actor");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <link rel="stylesheet" href="../../CSS/Photographer/changepassword.css">
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
                        <%
                            if (actor.equals("client")) {
                        %>
                        <li><a href="<%= request.getContextPath()%>/View/User/AdvancedSearch.jsp" type="button"> Photographs </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/PhotographerSearch.jsp" type="button"> Photographers </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Fourm/MainForum.jsp" type="button"> Forum </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Events/MainEventHome.jsp" type="button"> Events </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/Cart.jsp" type="button"> Cart </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/purchasehistory.jsp" type="button"> Purchase History </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/ClientProfileUpdate.jsp" type="button"> Profile </a></li>
                            <%
                            } else if (actor.equals("photographer")) {
                            %>
                        <li><a href="<%= request.getContextPath()%>/View/Fourm/MainForum.jsp" type="button"> Forum </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/PhotographerSearch.jsp" type="button"> Photographers </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Photographer/uploadPhotos.jsp" type="button"> Upload </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Photographer/PhotographerProfile.jsp" type="button"> Profile </a></li>
                            <%
                            } else if (actor.equals("admin")) {
                            %>
                        <li><a href="<%= request.getContextPath()%>/View/Admin/AdminDashboard.jsp" type="button"> Dashboard </a></li>
                            <%
                                }
                            %>
                    </ul>
                </div>

                <div class="notifyicn">
                    <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>

                </div>

                <div class="logout">
                    <a href="../login.jsp" type="button"> Login </a>
                </div>
            </div>
        </div>
        <br><br><br><br>

        <div class="container"> 

            <div class="logo">
                <img src="../../Resources/Img/6.png">
            </div>
            <h1>Change Password</h1>


            <div class="caption">
                <p>
                    You will change the password for: &nbsp 
                    <%
                        if (actor.equals("client")) {
                            Client a = (Client) session.getAttribute("loggedClient");
                            String email = a.getEmail();
                            String[] sep = email.split("@");
                            String str = "";
                            if (sep[0].length() > 5) {
                                System.out.println(sep[0].substring(2, sep[0].length() - 2).replaceAll(".", "*"));
                                str = sep[0].substring(0, 2) + sep[0].substring(2, sep[0].length() - 2).replaceAll(".", "*") + sep[0].substring(sep[0].length() - 2, sep[0].length()) + "@" + sep[1];
                            } else if (sep[0].length() >= 3) {
                                str = sep[0].substring(0, 2) + sep[0].substring(1, sep[0].length()).replaceAll(".", "*") + "@" + sep[1];
                            } else {
                                str = sep[0].substring(0, 1) + sep[0].substring(1, sep[0].length()).replaceAll(".", "*") + "@" + sep[1];

                            }
                    %>
                    <strong id="email"><%= str%></strong>
                    <%
                    } else if (actor.equals("photographer")) {
                        Photographer a = (Photographer) session.getAttribute("loggedPhotographer");
                        String email = a.getEmail();
                        String[] sep = email.split("@");
                        String str = "";
                        if (sep[0].length() > 5) {
                            System.out.println(sep[0].substring(2, sep[0].length() - 2).replaceAll(".", "*"));
                            str = sep[0].substring(0, 2) + sep[0].substring(2, sep[0].length() - 2).replaceAll(".", "*") + sep[0].substring(sep[0].length() - 2, sep[0].length()) + "@" + sep[1];
                        } else if (sep[0].length() >= 3) {
                            str = sep[0].substring(0, 2) + sep[0].substring(1, sep[0].length()).replaceAll(".", "*") + "@" + sep[1];
                        } else {
                            str = sep[0].substring(0, 1) + sep[0].substring(1, sep[0].length()).replaceAll(".", "*") + "@" + sep[1];

                        }
                    %>
                    <strong id="email"><%= str%></strong>
                    <%
                    } else if (actor.equals("admin")) {
                        Admin a = (Admin) session.getAttribute("loggedAdmin");
                        String email = a.getEmail();
                        String[] sep = email.split("@");
                        String str = "";
                        if (sep[0].length() > 5) {
                            System.out.println(sep[0].substring(2, sep[0].length() - 2).replaceAll(".", "*"));
                            str = sep[0].substring(0, 2) + sep[0].substring(2, sep[0].length() - 2).replaceAll(".", "*") + sep[0].substring(sep[0].length() - 2, sep[0].length()) + "@" + sep[1];
                        } else if (sep[0].length() >= 3) {
                            str = sep[0].substring(0, 2) + sep[0].substring(1, sep[0].length()).replaceAll(".", "*") + "@" + sep[1];
                        } else {
                            str = sep[0].substring(0, 1) + sep[0].substring(1, sep[0].length()).replaceAll(".", "*") + "@" + sep[1];

                        }
                    %>
                    <strong id="email"><%= str%></strong>
                    <%
                        }
                    %>
                <div class="errorMessage">
                    <span id="msg"></span>
                </div>
                </p>
            </div>

            <div class="passinfo">

                <fieldset class="cpass">
                    <legend> Confirm your current password </legend>
                    <input type="password" id="cpass" name="cpass" placeholder="Current Password" onkeyup="nospaces(this)"/>
                </fieldset>

                <fieldset class="rpass">
                    <legend> Enter your New Password </legend>
                    <input type="password" id="npass" name="npass" placeholder="New Password" onkeyup="nospaces(this)"/>
                    <input type="password" id="rpass" name="rpass" placeholder="Retype Password" onkeyup="nospaces(this)"/>
                </fieldset>


                <div class="change" onclick="changePassword('<%= actor %>');">
                    <a  type="button">Change</a>
                </div>

                <div class="cancel" onclick="Previous()">
                    <a type="button">Cancel</a>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="../../JS/Photohrapher/ChangePassword.js"></script>
    </body>
</html>
