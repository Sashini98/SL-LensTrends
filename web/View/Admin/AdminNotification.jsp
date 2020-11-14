<%-- 
    Document   : AdminNotification
    Created on : Nov 9, 2020, 9:18:55 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="box">
    <div class="box1" style="background-color: #EAEAEA; display: flex; flex-direction: column; justify-content: center; align-items: center;">               
        <img src="../../Resources/Img/newmsg.png">  
        <h2><center>New Messages</center></h2> 
    </div>

    <div class="box2" style="background-color: #EAEAEA; display: flex; flex-direction: column; justify-content: center; align-items: center;">
        <img src="../../Resources/Img/replied.png"> 
        <h2><center>Replied</center></h2> 
    </div>
</div>

<div class="box">
    <div class="box1" style="background-color: #DFF0F7;">               
        <h2>Client Notifications</h2>

        <form>
            <div class="formContent">                             
                <span class="content_name">Title </span><br>
                <input type="text" name="title" required/>
                <label for="title" class="label_name">
                </label>
            </div><br>

            <div class="formContent">
                <span class="content_name"> Date </span><br>
                <input type="date" name="dob" required class="doe"/>
                <label for="doe" class="label_name">
                </label>
            </div><br>

            <div class="formContent">
                <span class="content_name"> Message </span><br>
                <textarea class="textarea"></textarea>
                <label for="msg" class="label_name">
                </label>
            </div><br>

        </form>
        <button id="csend" type="submit">Send</button>
    </div>

    <div class="box2" style="background-color: #DFF0F7;">
        <h2>Photographer Notifications</h2>

        <form>
            <div class="formContent">                             
                <span class="content_name">Title </span><br>
                <input type="text" name="title" required/>
                <label for="title" class="label_name">
                </label>
            </div><br>

            <div class="formContent">
                <span class="content_name"> Date </span><br>
                <input type="date" name="dob" required class="doe"/>
                <label for="doe" class="label_name">
                </label>
            </div><br>

            <div class="formContent">
                <span class="content_name"> Message </span><br>
                <textarea class="textarea"></textarea>
                <label for="msg" class="label_name">
                </label>
            </div><br>

        </form>
        <button id="psend" type="submit">Send</button>
    </div>
</div>

<div class="box">
    <div class="box1" style="background-color: #C4E8F2;">               
        <h2>System Notifications</h2>

        <form>
            <div class="formContent">                             
                <span class="content_name">Title </span><br>
                <input type="text" name="title" required/>
                <label for="title" class="label_name">
                </label>
            </div><br>

            <div class="formContent">
                <span class="content_name"> Date </span><br>
                <input type="date" name="dob" required class="doe"/>
                <label for="doe" class="label_name">
                </label>
            </div><br>

            <div class="formContent">
                <span class="content_name"> Message </span><br>
                <textarea class="textarea"></textarea>
                <label for="msg" class="label_name">
                </label>
            </div><br>

        </form>
        <button id="ssend" type="submit">Send</button>
    </div>

    <div class="box2" style="background-color: #C4E8F2;">
        <h2>Suspend The System</h2>

        <form>
            <div class="formContent">                             
                <span class="content_name">Title </span><br>
                <input type="text" name="title" required/>
                <label for="title" class="label_name">
                </label>
            </div><br>

            <div class="formContent">                             
                <span class="content_name">Time </span><br>
                <input type="text" name="time" required/>
                <label for="time" class="label_name">
                </label>
            </div><br>

            <div class="formContent">
                <span class="content_name"> Message </span><br>
                <textarea class="textarea"></textarea>
                <label for="msg" class="label_name">
                </label>
            </div><br>

        </form>
        <button id="send" type="submit">Send</button>
    </div>
</div>
