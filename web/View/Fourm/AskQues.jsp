<%-- 
    Document   : AskQues
    Created on : Nov 8, 2020, 8:02:42 AM
    Author     : Sashini Shihara
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
        <script src="https://cdn.tiny.cloud/1/joph2h7i0jwntuxss9tpgl6mufjbdzjakurvsjs4l7ubz2rf/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
        <link type="text/css" rel="stylesheet" href="../../CSS/forum/AskQues.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <title>Questions</title>
    </head>
    <body style="background-color: #f7f6f9;">

        <div class="fixedheader">  

            <div class="pageheader">

                <%
                    if (loggedAs.equals("client")) {
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
                        <li><a href="<%= request.getContextPath()%>/View/Events/EventHome.jsp" type="button"> Events </a></li>
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
                            }
                        %>

                    </ul>
                </div>

                <div class="notifyicn">
                    <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>
                </div>

                <div class="logout">
                    <a href="../../LogOut?loc=fh" type="button"> Logout </a>
                </div>

            </div>

        </div>

        <div class="main-content">

            <div class="side-box"> 
                <div class="home">
                    <ul>
                        <li><a href="../../View/Home.jsp"> Home </a></li>
                        <li><a href="../../View/Fourm/MainForum.jsp"> Forum Home </a></li>
                    </ul>
                </div>


                <div class="ask-qn">
                    <a href="AskQues.jsp" type="button">Ask Questions <a/>
                </div>

            </div>  
            <div name="s" id="s">
                <div class="questions">                
                    <form id="askQ" action="../../AskQues" method="POST" onsubmit="return validateForm()">
                        <h3><label for="Title"><b>Title</b></label><br></h3>
                        <input type="text" id="title" name="title"><br><br><br>



                        <textarea id="Questionbody" name="Questionbody"></textarea>  <br><br><br>

                        <h3><label for="Category"><b>Category</b></label></h3>
                        <div class="box" id="category" name="category">
                            <input type="hidden" name="category" />
                            <select name="categ" onchange="DropDownChanged(this);">
                                <option value="Beginners questions">Beginners questions</option>
                                <option value="Photo Equipments">Photo Equipments</option>
                                <option value="Photography and Techniques">Photography and Techniques</option>
                                <option value="Mobile Photography">Mobile Photography</option>
                                <option value="">Other..</option>
                            </select> <input type="text" name="c_txt" style="display: none;" />
                        </div>





                        <br><br><br>
                        <input type="submit" id="submit" value="Ask my question" onclick="validate()"><br><br><br>


                    </form>
                </div>       
            </div>

        </div>
    </div>


</div>

</div>

<script>
    tinymce.init({
        selector: 'textarea',
        plugins: 'a11ychecker advcode casechange formatpainter linkchecker autolink lists checklist media mediaembed pageembed permanentpen powerpaste table advtable tinycomments tinymcespellchecker',
        toolbar: 'a11ycheck addcomment showcomments casechange checklist code formatpainter pageembed permanentpen table',
        toolbar_mode: 'floating',
        tinycomments_mode: 'embedded',
        tinycomments_author: 'Author name',
    });
</script>
<script src="../../JS/Forum/AskQues.js" type="text/javascript" ></script>

</body>
</html>

