<%-- 
    Document   : UploadPhotos2
    Created on : Oct 23, 2020, 8:23:17 PM
    Author     : Sashini Shihara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../../CSS/Photographer/UPhoto2.css">
        <title>Upload Photo</title>
    </head>
    <body>
        <div class="contain">
            <form>
                <label>Orientation</label>
                <input type="checkbox" id="Horizontal" name="Horizontal" value="Horizontal" style="margin-left: 3%">Horizontal<br>
                     <input type="checkbox" id="vertical" name="vertical" value="vertical" style="margin-left: 23.5%">Vertical<br>
                     <input type="checkbox" id="square" name="square" value="square" style="margin-left: 23.5%">Square<br>
                     <input type="checkbox" id="Panoramic" name="Panoramic" value="Panoramic" style="margin-left: 23.5%">Panoramic<br>
                     
                      <br><br><br><label>People</label>
                      <input type="radio" name="people" value="With" style="margin-left: 8%">With People
                      &nbsp;<input type="radio" name="people" value="Without">Without People<br>
           
                       <br><br><br><label>Gender</label>
                        <input type="radio" name="gender" value="male" style="margin-left: 7.5%"> Male
                        <input type="radio" name="gender" value="female"> Female
                        <input type="radio" name="gender" value="other"> Other
                        
                        <br><br><br><br><br><br><div class="release">
                        <div style="height:0px;overflow:hidden">                                                               
                            <input type="file" id="fileInput" name="fileInput"  onchange="loadFile(event)" />
                        </div>
                        <input type="button" id="upload" value="Upload Release" onclick="chooseFile();"><br>
                        <br><br><a href="../../Resources/Forms/model release.pdf" download>Get Model Release Form</a>&emsp;
                        <a href="../../Resources/Forms/property release.pdf" download>Get Property Release Form</a><br><br>
                        
                        </div>
                        <br><br><br><br><input type="submit" id="submit" value="Next">
            </form>
        </div>
    </body>
</html>
