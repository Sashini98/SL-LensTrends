<%-- 
    Document   : AdminNotification
    Created on : Nov 9, 2020, 9:18:55 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div onload="viewMessages();">
    <script src="../../JS/Admin/AdminMessage.js" type="text/javascript" ></script>
    <div class="b3">                
        <h2 style="text-align: center;">New Messages</h2>
        <br>
        <table width="100%">
            <thead class="table" id="messageTable">
            <th class="th"> EMAIL </th>
            <th class="th"> NAME </th>
            <th class="th"> MOBILE </th>
            <th class="th"> MESSAGE </th>
            <th class="th"> DATE </th>
            <th class="th"> OPTION </th>
            </thead>

            <tbody id="messageTableBody" style="font-family: 'Poppins', sans-serif; text-align: justify">
            </tbody>
        </table>
    </div>

<div class="box">
    <div class="box1">               
        <h2>Client Notifications</h2>
            <div class="formContent">                             
                <span class="content_name">Title </span><br>
                <input type="text" id="title" name="title" required/>
                <label for="title" class="label_name">
                </label>
            </div><br>

            <div class="formContent">
                <span class="content_name"> Message </span><br>
                <textarea class="textarea" id="msgbody"></textarea>
                <label for="msg" class="label_name">
                </label>
            </div><br>
        <button id="csend" type="submit" onclick="SendNotification()">Send</button>
    </div>

    <div class="box2">
        <h2>Photographer Notifications</h2>

        <form>
            <div class="formContent">                             
                <span class="content_name">Title </span><br>
                <input type="text" name="title" id="ptitle" required/>
                <label for="title" class="label_name">
                </label>
            </div><br>

            <div class="formContent">
                <span class="content_name"> Message </span><br>
                <textarea class="textarea" id="pmsgbody"></textarea>
                <label for="msg" class="label_name">
                </label>
            </div><br>

        </form>
        <button id="psend" type="submit" onclick="SendPhotographerNotification()">Send</button>
    </div>
</div>

<div class="box">
    <div class="box1">               
        <h2>System Notifications</h2>

        <form>
            <div class="formContent">                             
                <span class="content_name">Title </span><br>
                <input type="text" name="title" id="stitle" required/>
                <label for="title" class="label_name">
                </label>
            </div><br>

            <div class="formContent">
                <span class="content_name"> Message </span><br>
                <textarea class="textarea" id="smsgbody"></textarea>
                <label for="msg" class="label_name">
                </label>
            </div><br>

        </form>
        <button id="ssend" type="submit" onclick="SendSystemNotification()">Send</button>
    </div>

    <div class="box2">
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
    
</div>