<%-- 
    Document   : eventspost
    Created on : Oct 15, 2020, 10:48:35 AM
    Author     : Sashini Shihara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../../CSS/Events/EventsPost.css">
        <title>Post an event</title>
    </head>
    <body><div style="float: left; "> 
            <form>
                <fieldset>
                    
                    <legend style="color: gainsboro;text-shadow: 0 0 5px black;font-size: 20px;"><h1>Post an Event</h1></legend><br><br>
                    
                     <div class="formContent">
                        <input type="text" name="name" required/>
                        <label for="name" class="label_name">
                            <span class="content_name"> Event Name </span>
                        </label>
                    </div>
                    
                     <div class="formContent">
                        <input type="date" name="dob" required class="doe"/>
                        <label for="doe" class="label_name">
                            <span class="content_name"> Date of Event </span>
                        </label>
                    </div>
                    
                     <div class="formContent">
                        <input type="text" name="venue" required/>
                        <label for="venue" class="label_name">
                            <span class="content_name"> Event Venue </span>
                        </label>
                    </div>
                    
                     <div class="formContent">
                        <input type="text" name="time" required/>
                        <label for="time" class="label_name">
                            <span class="content_name"> Event Starting Time </span>
                        </label>
                    </div>
                    
                     <div class="formContent">
                        <input type="textarea" name="desc" required rows="10" cols="50"/>
                        <label for="desc" class="label_name">
                            <span class="content_name"> Event Description </span>
                        </label>
                    </div>
                    
                     <div class="formContent">
                        <div class="dropdown-container" name="type" required>
                        <select>
                            <option value="beginers">Event Category<p><i class="arrow down"></i></p></option>
                            <option value="beginers">Wedding</option>
                            <option value="equipments">Wedding</option>
                            <option value="techniques">Wedding</option>
                            <option value="mobile">Wedding</option>
                        </select>
                    </div>
                    </div>
                    
                    <button class="submit">Post</button>
                    
                     

                </fieldset>

            </form>
    </body>
</html>
