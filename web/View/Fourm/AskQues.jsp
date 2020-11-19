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



                        <textarea id="body" name="body"></textarea>  <br><br><br>

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

