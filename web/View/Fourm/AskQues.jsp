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
                    <form action="../../AskQues" method="POST" onsubmit="FormSubmit(this);">
                        <h3><label for="Title"><b>Title</b></label><br></h3>
                        <input type="text" id="title" name="title"><br><br><br>

                        <h3><label for="Body"><b>Body</b></label><br></h3>
                        <!--                        <div class="btn-group">
                        
                                                    <button type="button" style="margin-left:4%"id="b" name="b" onclick="bold()"> <b>B</b> </button>
                                                    <button type="button" id="italic"><i>I</i></button><br>      
                                                                            <button type="button" id="image"><img src="../../Resources/Img/gallery.png" style="width:7%;height:6%;"></button>
                                                                            <button type="button" id="link"><img src="../../Resources/Img/link.png" style="width:7%;height:6%;left: 0%"></button>
                        
                        
                                                </div>-->
                        <br><br><br>

                        <fieldset>
                            <button type="button" class="fontStyle" onclick="javascript:lbc('editor1', '*', '*');" title="Italicize Highlighted Text"><i>I</i>
                            </button>
                            <button type="button" class="fontStyle" onclick="document.execCommand('bold', false, null);" title="Bold Highlighted Text"><b>B</b>
                            </button>
                            <button type="button" class="fontStyle" onclick="document.execCommand('underline', false, null);" title="Underline Highlighted Text"><u>U</u>
                            </button>
                        </fieldset>

                        <div id="editor1" contenteditable="true"></div><br><br><br>


                        <!--<textarea id="body" name="body" rows="10" cols="50"contenteditable="true"></textarea><br><br><br>-->

                        <h3><label for="Category"><b>Category</b></label></h3>
                        <div class="box">
                            <input type="hidden" name="category" />
                            <select name="categ" onchange="DropDownChanged(this);">
                                <option value="beginers">Beginners questions</option>
                                <option value="equipments">Photo Equipments</option>
                                <option value="techniques">Photography and Techniques</option>
                                <option value="mobile">Mobile Photography</option>
                                <option value="">Other..</option>
                            </select> <input type="text" name="c_txt" style="display: none;" />
                        </div>

<!--
                        <div class="filter-radio">
                            <label class="container-radio"><h8>Beginners questions</h8>
                                <input type="checkbox" checked="checked" name="Category" value="Beginners questions">
                                <span class="checkmark-radio"></span>
                            </label>
                            <label class="container-radio"><h8>Photo Equipments</h8>
                                <input type="checkbox" name="Category" value="Photo Equipments">
                                <span class="checkmark-radio"></span>
                            </label>
                            <label class="container-radio"><h8>Photography and Techniques</h8>
                                <input type="checkbox" name="Category" value="Photography and Techniques">
                                <span class="checkmark-radio"></span>
                            </label>
                            <label class="container-radio"><h8>Mobile Photography</h8>
                                <input type="checkbox" name="Category" value="Mobile Photography">
                                <span class="checkmark-radio"></span>
                            </label>

                        </div>-->



                        <br><br><br>
                        <input type="submit" id="submit" value="Ask my question"><br><br><br>


                    </form>
                </div>       
            </div>

        </div>
    </div>


</div>

</div>


<script src="../../JS/Forum/AskQues.js" type="text/javascript" ></script>

</body>
</html>

