<%-- 
    Document   : ViewEvt
    Created on : Oct 17, 2020, 11:02:00 AM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Event</title>
        <link rel="stylesheet" href ="../../CSS/Events/ViewEvt.css">
    </head>
    <body  style="background-image: url(../../Resources/Img/ViewEv.jpg);background-size: 100% ; " >
        <form>
  <div class="container">
    <h1>New Event</h1>
    <hr>

    <label for="name"><b>Event Name</b></label><br>
    <input type="text" name="name"><br>

    <label for="date"><b>Date Of Event</b></label><br>
    <input type="text" name="date"><br>

    <label for="Event Venue"><b>Event Venue</b></label><br>
    <input type="text" name="Event Venue"><br>
    
    <label for="Event Starting Time"><b>Event Starting Time</b></label><br>
    <input type="text" name="Event Starting Time"><br>
    
    <label for="Event Description"><b>Event Description</b></label><br>
    <input type="text" name="Event Description"><br>
    
    <label for="Estimated Budget Range"><b>Estimated Budget Range</b></label><br>
    <input type="text" name="Estimated Budget Range"><br>
    
    

    
    <div class="clearfix">
      <button type="submit" class="acceptbtn">Accept</button>
      <button type="button" class="cancelbtn">Reject</button>
      
    </div>
  </div>
</form>

    </body>
</html>
