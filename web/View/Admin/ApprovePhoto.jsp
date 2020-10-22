<%-- 
    Document   : ApprovePhoto
    Created on : Oct 22, 2020, 11:33:32 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../../CSS/Admin/ApprovePhotos.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container1"></div>

        <form>
            <div class="container2">
                <hr>

                <label for="name"><b>Photograph Name</b></label><br>
                <input type="text" name="name"><br>

                <label for="pname"><b>Photographer</b></label><br>
                <input type="text" name="date"><br>

                <label for="category"><b>Category</b></label><br>
                <input type="text" name="category"><br>

                <label for="keywords"><b>Keywords</b></label><br>
                <input type="text" name="keywords"><br>

                <label for="file type"><b>File Type</b></label><br>
                <input type="text" name="file type"><br>

                <hr>
            </div>
        </form>

        <form>
            <div class="container2">

                <label for="resolution"><b>Resolution</b></label><br>
                <input type="text" name="resolution"><br>

                <label for="size"><b>Size</b></label><br>
                <input type="text" name="size"><br>

                <label for="category"><b>Category</b></label><br>
                <input type="text" name="category"><br>

                <label for="keywords"><b>Keywords</b></label><br>
                <input type="text" name="keywords"><br>

                <div class="clearfix">
                    <button type="submit" class="Approvebtn">Accept</button>
                    <button type="button" class="Closebtn">Reject</button>

                </div>

                <hr>
            </div>
        </form>


    </body>
</html>
