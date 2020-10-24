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
        <link rel="stylesheet" href="../../CSS/Photographer/UPhoto.css">
        <title>Upload Photos</title>
    </head>
    <body>
        <div>
        <fieldset>
        <legend style="color: gainsboro;text-shadow: 0 0 5px black;font-size: 20px;"><h1>Upload Your Content</h1></legend><br><br>                   
            
          <div class="photo">
                <p><img id="output" width="38%" height="38%"/></p>           
            </div>
            
            <br><br><br>
            <div style="height:0px;overflow:hidden">                                                               
                <input type="file" id="fileInput" name="fileInput"  onchange="loadFile(event)" />
                </div>
            <input type="button" value="Select Photo" onclick="chooseFile();">
        
             
        
                <form>
                    <br><br><br><label>Usage</label>
                     <input type="checkbox" id="download" name="download" value="download" style="margin-left: 8%">For Downloading
                     &emsp;<input type="checkbox" id="gallery" name="gallery" value="gallery">As an Exhibit
                 
                      <br><br><br><label>Description</label>
                      <input type="text" id="desc" style="margin-left: 3%">
                  
                       <br><br><br><label>Keywords</label>
                       <input type="text" id="key" style="margin-left: 4%">
                       
                       <br><br><br><br><input type="submit" id="submit" value="Next">
                </form>
            
        </fieldset>
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
