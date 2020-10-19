<%-- 
    Document   : uploadPhotos
    Created on : Oct 17, 2020, 6:40:06 PM
    Author     : Sashini Shihara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../../CSS/Photographer/uploadPhoto.css">
        <title>Upload Photos</title>
    </head>
    <body>
        <div class="container">
            <label>Upload Your Content</label>
            <div class="photo">
<!--                <div class="ph">
                </div>-->
                <p><img id="output" width="10%" height="10%"/></p>
                



            </div>
            <br><br><br> <input type="button" value="Next"> <div style="height:0px;overflow:hidden">
                <input type="file" id="fileInput" name="fileInput"  onchange="loadFile(event)" />
                </div><input type="button" value="Select Photo" onclick="chooseFile();">
        </div>
        
        
        
        
        
        
        <script>
            
            function chooseFile() 
            {
                document.getElementById("fileInput").click();
            }
            var loadFile = function(event) 
            {
                var image = document.getElementById('output');
                image.src = URL.createObjectURL(event.target.files[0]);
            };
        </script>
    </body>
</html>
