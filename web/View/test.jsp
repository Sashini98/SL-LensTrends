<%-- 
    Document   : test
    Created on : Oct 19, 2020, 7:40:49 PM
    Author     : Sashini Shihara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../CSS/test.css">
        <title>JSP Page</title>
    </head>
    <body>
      <div class="container" id="backdrop">
         <div class="slide show" style="background-image: url('../Resources/Img/loginbg.jpg');"></div>
         <div class="slide" style="background-image: url('../Resources/Img/loginbg2.jpg');"></div>
         <div class="slide" style="background-image: url('../Resources/Img/loginbg3.jpg');"></div>
     
        <div id="curtain">
        <div class="img"><img src="../Resources/Img/user.png" style="width:15%;height:15%;"></div>
        <div class="form"> 
        <form>
             <br><br><br><input type="text" id="email" name="email" placeholder="Email"><br><br>
             <input type="password" id="pw" name="pw" placeholder="Password"><br>
             <a href="ResetPwd.jsp">Forgot Password?</a><br><br>
              <input type="submit" id="login" value="Login"><br><br>
             
         </form>
         </div>
         </div>
       
        <script>
function cycleBackgrounds(interval) {
  let index = 0

  const $imageEls = document.querySelectorAll('.container .slide') // Get the images to be cycled.

  setInterval(() => {
    // Get the next index.  If at end, restart to the beginning.
    index = index + 1 < $imageEls.length ? index + 1 : 0

    // Show the next
    $imageEls[index].classList.add('show')
	 
    // Find the previous.
    const previous = index - 1 < 0 ? $imageEls.length - 1 : index - 1;

    // Hide the previous
    $imageEls[previous].classList.remove('show')
  }, interval)
}

document.addEventListener("DOMContentLoaded", function() {
  cycleBackgrounds(2000);
});
        </script>
    </body>

</html>
