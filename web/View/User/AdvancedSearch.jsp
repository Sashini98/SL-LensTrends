<%-- 
    Document   : AdvancedSearch
    Created on : Oct 12, 2020, 8:14:20 PM
    Author     : kesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../CSS/User/AdvancedSearch.css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body>
        <div>
            <header style="height: 90px;background-color: black;color: white">this place for navigation bar and all</header>
            <div style="display: flex;min-height: 88vh">
                <div style="position: fixed;width: 2%;height: 88vh;background-color: #FAFAFA;padding-top: 1.8%;padding-left: .5%;padding-right: 1.2%;border-right:solid 2px #EAEAEA">
                    <i class="material-icons sidemenu-icons">filter_alt</i>
                    <br><br>
                    <!--<i class="material-icons sidemenu-icons">camera_alt</i>-->
                </div>
                <iframe style="width: 25%;margin-left: 3.8%;border: none" src="AdvancedFilter.jsp">

                </iframe>
                <div style="background-color: bisque;width: 100%;">
                    <div class="row"> 
                        <div class="column">
                            <img src="../../Resources/Img/Gallery Sample Images/a-stark-n40XRU-eSSI-unsplash.jpg" style="width:100%">
                            <img src="../../Resources/Img/Gallery Sample Images/artem-sapegin-8c6eS43iq1o-unsplash.jpg" style="width:100%">
                            <img src="../../Resources/Img/Gallery Sample Images/chris-barbalis-vazZtmYFgFY-unsplash.jpg" style="width:100%">
                        </div>
                        <div class="column">
                            <img src="../../Resources/Img/Gallery Sample Images/jonathan-zerger-yzzJbqQ1O-Y-unsplash.jpg" style="width:100%">
                            <img src="../../Resources/Img/Gallery Sample Images/cristina-gottardi-iEGXkSXRXN4-unsplash.jpg" style="width:100%">
                        </div>
                        <div class="column">
                            <img src="../../Resources/Img/Gallery Sample Images/lefty-kasdaglis-DLwF8G6GuyY-unsplash.jpg" style="width:100%">
                            <img src="../../Resources/Img/Gallery Sample Images/james-peacock-AxYOB1v9TsU-unsplash.jpg" style="width:100%">

                        </div>  
                        <div class="column">
                            <img src="../../Resources/Img/Gallery Sample Images/marco-secchi-JcisCWrKUOA-unsplash.jpg" style="width:100%">
                            <img src="../../Resources/Img/Gallery Sample Images/othmar-ortner-qy8l3MUSl4Y-unsplash.jpg" style="width:100%">
                            <img src="../../Resources/Img/Gallery Sample Images/raphael-stager-MPAFS1K7oYE-unsplash.jpg" style="width:100%">
                        </div>  
                    </div>
                </div>
            </div>
        </div>

        <script src="../../JS/User/AdvancedSearch.js" type="text/javascript"></script>
    </body>
</html>

