<%-- 
    Document   : ManageUser
    Created on : Nov 9, 2020, 11:21:11 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div onload="viewReportedUser(); viewCount();">
    <div style="background-color: #f7f6f9;">
        <div class="content" id="c">
            <!--            <div class="box" style="background-color: #EAEAEA">
                            <h2>Active Users</h2>
                            <div class="icon1">
                                <img src="../../Resources/Img/online.png">
                            </div><br> <br> <br> 
                        </div>
            
                        <div class="box" id="box-color1">
                            <h2>Inactive Users</h2>
                            <div class="icon">
                                <img src="../../Resources/Img/inactive.png">
                            </div> <br> <br> <br> 
                        </div>
            
                        <div class="box" id="box-color2">
                            <h2>Reported Users</h2>
                            <div class="icon">                    
                                <img src="../../Resources/Img/reported.png">
                            </div> <br> <br> <br>
                        </div>            -->
        </div>
        <br> <br> 
        <div class="b3">                
            <h2 style="text-align: center;">Reported Users</h2>
            <br>
            <table width="100%">
                <thead class="table">
                <th class="th"> EMAIL </th>
                <th class="th"> NAME </th>
                <th class="th"> REPORTED BY </th>
                <th class="th"> REASON </th>
                <th class="th"> DESCRIPTION </th>
                <th class="th"> OPTION </th>
                </thead>

                <tbody id="reportedPhotographerTableBody" style="font-family: 'Poppins', sans-serif; text-align: justify">

                </tbody>
            </table>
        </div>

        <div class="contain">
            <div class="b1">               
                <h2 style="text-align: center;">Deactivate Users</h2>

                <div class="search" style="margin:auto;max-width:300px;font-family: 'Poppins', sans-serif; ">
                    <input id="deactivateUser" type="text" placeholder="Search">
                    <button onclick="viewResults()">Search</button><br><br>
                    <label id="deacError" style="color: red; display: none; font-size: 16px; text-align: center">Invalid Email!</label><br>
                </div>

                <br><br><br>


                <table id="reportedUserTable" width="100%">
                    <thead class="table">
                    <th class="th"> ID </th>
                    <th class="th"> NAME </th>
                    <th class="th"> TYPE </th>
                    <th class="th"> OPTION </th>
                    </thead>

                    <tbody id="reportedUserTableBody" style="font-family: 'Poppins', sans-serif; text-align: center">

                    </tbody>
                </table><br><br>

                <table class="table" border="0" width="100%" height="40px" >
                    <tr>
                        <th align="left">User Id</th>
                        <td><input type="text" name="uid" id="userid" disabled=""></td>
                    </tr>
                    <tr>
                        <th align="left">Email</th>
                        <td><input type="text" name="mail" id="email" disabled=""></td>
                    </tr>
                    <tr>
                        <th align="left">First Name</th>
                        <td><input type="text" name="finame" id="fname" disabled=""></td>
                    </tr>
                    <tr>
                        <th align="left">Last Name</th>
                        <td><input type="text" name="laname" id="lname" disabled=""></td>
                    </tr>
                    <tr>
                        <th align="left">Address No</th>
                        <td><input type="text" name="address" id="addno" disabled=""></td>
                    </tr>
                    <tr>
                    <tr>
                        <th align="left">City</th>
                        <td><input type="text" name="cit" id="city" disabled=""></td>
                    </tr>
                    <th align="left">Province</th>
                    <td><input type="text" name="pro" id="province" disabled=""></td>
                    </tr>
                    <tr>
                        <th align="left">Gender</th>
                        <td><input type="text" name="gen" id="gender" disabled=""></td>
                    </tr>
                </table>
                <br>
                <div class="clearfix">
                    <button class="btn" onclick="viewDeactivate()"  id="deactivate">Deactivate</button>
                    <button onclick="clearFieldsofDeactivateUsers()" class='btn' id="deactivate">Clear Fields</button>
                </div>
            </div>

            <div class="b2">
                <h2 style="text-align: center;">Activate Users</h2>

                <div class="search" style="margin:auto;max-width:300px">
                    <input id="activateUser" type="text" placeholder="Search">
                    <button onclick="viewUser()">Search</button><br>
                    <label id="acError" style="color: red; display: none; font-size: 16px; text-align: center">Invalid Email!</label><br>
                </div>

                <br><br><br>
                <table id="activateUserTable"  width="100%">
                    <thead class="table">
                    <th class="th"> ID </th>
                    <th class="th"> NAME </th>
                    <th class="th"> TYPE </th>
                    <th class="th"> OPTION </th>
                    </thead>

                    <tbody id="activateUserTableBody" style="font-family: 'Poppins', sans-serif; text-align: center">

                    </tbody>

                </table><br><br>

                <table class="table" border="0" width="100%" height="40px" >
                    <tr>
                        <th align="left">User Id</th>
                        <td><input type="text" name="uid" id="uid" disabled=""></td>
                    </tr>
                    <tr>
                        <th align="left">Email</th>
                        <td><input type="text" name="mail" id="uemail" disabled=""></td>
                    </tr>
                    <tr>
                        <th align="left">First Name</th>
                        <td><input type="text" name="fname" id="finame" disabled=""></td>
                    </tr>
                    <tr>
                        <th align="left">Last Name</th>
                        <td><input type="text" name="laname" id="laname" disabled=""></td>
                    </tr>
                    <tr>
                        <th align="left">Address No</th>
                        <td><input type="text" name="address" id="add" disabled=""></td>
                    </tr>
                    <tr>
                    <tr>
                        <th align="left">City</th>
                        <td><input type="text" name="cit" id="cit" disabled=""></td>
                    </tr>
                    <th align="left">Province</th>
                    <td><input type="text" name="pro" id="pro" disabled=""></td>
                    </tr>
                    <tr>
                        <th align="left">Gender</th>
                        <td><input type="text" name="gen" id="gen" disabled=""></td>
                    </tr>
                </table>
                <br>
                <div class="clearfix">
                    <button class="btn" onclick="viewActivate()"  id="activate">Activate</button>
                    <button onclick="clearFieldsofActivateUsers()" class='btn' id="activate">Clear Fields</button>

                </div>


            </div>
        </div>



        <script src="../../JS/Admin/UserManagement.js" type="text/javascript"></script>
        <script src="../../JS/Admin/ActivateUser.js" type="text/javascript"></script>
    </div>
</div>
