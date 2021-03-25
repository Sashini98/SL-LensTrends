<%-- 
    Document   : BrowseQn
    Created on : Nov 5, 2020, 8:10:00 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String loggedAs = (String) request.getAttribute("loggedAs");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../../CSS/forum/BrowseQn.css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <title>Questions</title>
    </head>
    <body style="background-color: #f7f6f9;" onload="view();">
   

        <div class="fixedheader">  

            <div class="pageheader">
                <%
                    if (loggedAs.equals("client") || loggedAs.equals("nl")) {
                %>
                <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                    <%
                    } else if (loggedAs.equals("photographer")) {
                    %>

                <a href="../PhotographerHome.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                    <%
                        }
                    %>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                        <%
                            if (loggedAs.equals("client")) {
                        %>
                        <li><a href="<%= request.getContextPath()%>/View/User/AdvancedSearch.jsp" type="button"> Photographs </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/PhotographerSearch.jsp" type="button"> Photographers </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Events/MainEventHome.jsp" type="button"> Events </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Fourm/MainForum.jsp" type="button"> Forum </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/Cart.jsp" type="button"> Cart </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/purchasehistory.jsp" type="button"> Purchase History </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/ClientProfileUpdate.jsp" type="button"> Profile </a></li>
                            <%
                            } else if (loggedAs.equals("photographer")) {
                            %>

                        <li><a href="<%= request.getContextPath()%>/View/Fourm/MainForum.jsp" type="button"> Forum </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/PhotographerSearch.jsp" type="button"> Photographers </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Photographer/uploadPhotos.jsp" type="button"> Upload </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Photographer/PhotographerProfile.jsp" type="button"> Profile </a></li>

                        <%
                        } else if (loggedAs.equals("nl")) {
                        %>
                        <li><a href="<%= request.getContextPath()%>/View/User/AdvancedSearch.jsp" type="button"> Photographs </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/PhotographerSearch.jsp" type="button"> Photographers </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Fourm/MainForum.jsp" type="button"> Forum </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Events/EventHome.jsp" type="button"> Events </a></li>

                        <%
                            }
                        %>

                    </ul>
                </div>
                <div class="notifyicn">
                    <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>
                </div>

                <div class="logout">
                    <%
                        if (!loggedAs.equals("nl")) {
                    %>
                    <a href="../../LogOut?loc=fhbq" type="button"> Logout </a>
                    <%
                    } else {
                    %>
                    <a href="../login.jsp?loc=fhbq" >Login</a> 
                    <%
                        }
                    %>
                </div>

            </div>

        </div>
 
        <div class="main-content">
            

            <div class="side-box"> 
                <div class="filter">
                    <p>Filter by:</p>
                    <label class="container">No answer
                        <input type="checkbox" name="NoAnsw" id="NoAnsw" onclick="filter();">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">100+ answers
                        <input type="checkbox" name="100plus" id="100plus" onclick="filter();">
                        <span class="checkmark"></span>
                    </label>
<!--                    <label class="container">Most Likes
                        <input type="checkbox">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">Most answers
                        <input type="checkbox">
                        <span class="checkmark"></span>
                    </label>-->
                </div>

                <div class="filter-radio">
                    <p>Sort by:</p>
                    <label class="container-radio">Newest
                        <input type="radio" checked="checked" name="newest" id="newest" onclick="filter();">
                        <span class="checkmark-radio"></span>
                    </label>
                    <label class="container-radio">Oldest
                        <input type="radio" name="oldest" id="oldest" onclick="filter();">
                        <span class="checkmark-radio"></span>
                    </label>
                    <label class="container-radio">Answer Count
                        <input type="radio" name="count" id="count" onclick="filter();">
                        <span class="checkmark-radio"></span>
                    </label>
                    

                </div>

                <div class="ask-qn">
                    <a href="AskQues.jsp" type="button">Ask Questions </a>
                </div>

            </div> 
            
            <div class="searchInput">
    <input type="text" placeholder="Search for Questions" id="keyword" onkeyup=" keywordSearch(event)" >      
    <button style="border: none; outline: none; border-radius: 40%; cursor: pointer;" onclick=" keywordSearch(event)"><i class="material-icons">search</i></button>
</div>
           
            <div name="s" id="s">
                
      
            </div>

        </div>


        <script src="../../JS/Forum/BrowseQn.js" type="text/javascript" ></script>        
       
    </body>
</html>
