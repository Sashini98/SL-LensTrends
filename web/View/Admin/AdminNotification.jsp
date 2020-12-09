<%-- 
    Document   : AdminNotification
    Created on : Nov 9, 2020, 9:18:55 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <div class="b3">                
        <h2 style="text-align: center;">New Messages</h2>
        <br>
        <table width="100%">
            <thead class="table">
            <th class="th"> EMAIL </th>
            <th class="th"> NAME </th>
            <th class="th"> MOBILE </th>
            <th class="th"> MESSAGE </th>
            <th class="th"> DATE </th>
            <th class="th"> OPTION </th>
            </thead>

            <tbody>
                <tr class="tr">
                    <td>sunil@gmail.com</td>
                    <td>Sunil Perera</td>
                    <td>071-2569874</td>
                    <td>There is another account in the same details in the system.</td>
                    <td>2020/12/02</td>
                    <td><a href=""><button class="btn1" id="view">Reply</button></a></td>
                </tr>
                
            </tbody>
        </table>
    </div>

<div class="box">
    <div class="box1">               
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

    <div class="box2">
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
    <div class="box1">               
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
