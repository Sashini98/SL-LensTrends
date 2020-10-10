<%-- 
    Document   : users
    Created on : Jul 19, 2020, 11:48:54 AM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>
        <link href ="../CSS/Admin.css" type="text/css" rel="stylesheet">
    </head>
    <body style="background-image: url(../Resources/Img/useback.jpg);">
       
    <div class="row">
      <div class="column2">
        <div class='card'>
            <select name ="pages">                  
            <option> Settings</option>                  
            <option> Reports</option>                  
            <option> Message</option> 
            <option> Products</option>   
            </select> 
            <button>Add</button>
            <hr>
            <table align="left" border="0" width="40%" height="40px" >
                        
                        <tr>
                            <th><input type="text" size="40"></th>
                            <th><input class="confirmBTN" type='submit' value="Remove" name='delete' style="background-color:#B22222"></th>
			</tr>
                        <tr>
                            <th><input type="text" size="40"></th>
                            <th><input class="confirmBTN" type='submit' value="Remove" name='delete' style="background-color:#B22222"></th>
			</tr>
                        <tr>
                            <th><input type="text" size="40"></th>
                            <th><input class="confirmBTN" type='submit' value="Remove" name='delete' style="background-color:#B22222"></th>
			</tr>
                        <tr>
                            <th><input type="text" size="40"></th>
                            <th><input class="confirmBTN" type='submit' value="Remove" name='delete' style="background-color:#B22222"></th>
			</tr>
                        <tr>
                            <th><input type="text" size="40"></th>
                            <th><input class="confirmBTN" type='submit' value="Remove" name='delete' style="background-color:#B22222"></th>
                        </tr>
            </table>
                </div>
                    <div class='card'>
                        <img class='cardimg' src= "../Resources/Img/tick.png"><br>
                        
                    </div>
                    <div class='card'>
                    <label>Deactivated users</label>
                    <input type="text" placeholder="Type here">
                    <button>Search</button>
                    <hr>
                    <table border="1" width="100%" height="40px" >
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email address</th>
                            <th>Option</th>
                        </tr>
                        <tr>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th><input class="confirmBTN" type='submit' value="View" name='view' style="background-color:#FF7F50"></th>
                        </tr>
                    </table>
                    <button class='btn2'>Add User</button>
                    </div>
        
    </div>
        
</div>
    
        <div class="row">
            <div class="column">
                <div class='card'>
                    <label>Search user</label>
                    <input type="text" placeholder="Type here">
                    <button>Search</button>
                    <hr>
                    <table border="1" width="100%" height="40px" >
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email address</th>
                            <th>Option</th>
                        </tr>
                        <tr>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th><input class="confirmBTN" type='submit' value="View" name='view' style="background-color:blueviolet"></th>
                        </tr>
                        <tr>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th><input class="confirmBTN" type='submit' value="View" name='view' style="background-color:blueviolet"></th>
                        </tr>
                        <tr>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th><input class="confirmBTN" type='submit' value="View" name='view' style="background-color:blueviolet"></th>
                        </tr>
                        <tr>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th><input class="confirmBTN" type='submit' value="View" name='view' style="background-color:blueviolet"></th>
                        </tr>
                        
                    </table>
                </div>
                <div class='card'>
                    <table border="0" width="100%" height="40px" >
                        <tr>
				<td align="left">User ID:</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
                        </tr>
                        <tr>
				<td align="left">First Name:</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Last Name:</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Date of Birth:</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Gender:</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Email:</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Registered Date:</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Country:</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<th colspan =2><button class='btn2'>Deactivate</button></th>
			</tr>
                        
                    </table>
                    </div>
            </div>
            </div>
    
    <div class="row">
                <div class='column'>
                    <div class='card'>
                        <img class='cardimg' src= "../Resources/Img/online.png"><br>
                        <font>Online Users</font>
                    </div>
                    <div class='card'>
                        <img class='cardimg' src= "../Resources/Img/inactive.png"><br>
                        <font>Inactive Users</font>
                    </div>
                    <div class='card'>
                        <img class='cardimg' src= "../Resources/Img/reported.png"><br>
                        <font>Reported Users</font>
                    </div>
                </div>
    </div>
    
    
</body>
</html>
