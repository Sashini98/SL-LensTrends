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
        <link rel="stylesheet" href ="../../CSS/Admin/Admin.css">
        <link rel="stylesheet" href ="../../CSS/Admin/intermediate.css">
        <link rel="stylesheet" href="../../CSS/footer.css">
        <link rel="stylesheet" href="../../CSS/header.css">
        
    <header>
        <div class="hd">
                    <a class="logo" href="/"><img src="../../Resources/Img/logo.png" alt="logo"></a>
                    <lab>SL LensTrends</lab>
                        
                <nav class="nv">
                        <ul class="nav__links">
                            <li><a class="active" href="UserManagement.jsp">Users</a></li>
                            <li><a href="PhotoManagement.jsp">Photographs</a></li>
                            <li><a href="SubPlan.jsp">Subscription Plans</a></li>
                            <li><a href="Reports.jsp">Reports</a></li>
                            <li><a href="AdminMessage.jsp">Messages</a></li>
                            <li><a href="AdminSettings.jsp">Settings</a></li>
                        </ul>
                    </nav>
                    </div>
    </header>
    </head>
    <body style="background-image: url(../../Resources/Img/userback.jpg)">
       
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
                            <th><input type="text" size="39"></th>
                            <th><input class="confirmBTN" type='submit' value="Remove" name='delete' style="background-color:#B22222"></th>
			</tr>
                        <tr>
                            <th><input type="text" size="39"></th>
                            <th><input class="confirmBTN" type='submit' value="Remove" name='delete' style="background-color:#B22222"></th>
			</tr>
                        <tr>
                            <th><input type="text" size="39"></th>
                            <th><input class="confirmBTN" type='submit' value="Remove" name='delete' style="background-color:#B22222"></th>
			</tr>
                        <tr>
                            <th><input type="text" size="39"></th>
                            <th><input class="confirmBTN" type='submit' value="Remove" name='delete' style="background-color:#B22222"></th>
			</tr>
                        <tr>
                            <th><input type="text" size="39"></th>
                            <th><input class="confirmBTN" type='submit' value="Remove" name='delete' style="background-color:#B22222"></th>
                        </tr>
            </table>
                </div>
                    <div class='card'>
                        <img class='cardimg' src= "../../Resources/Img/tick.png"><br>
                        
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
                            <th><input id="vie" class="confirmBTN" type='submit' value="View" name='view' style="background-color:#FF7F50"></th>
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
				<td align="left">User ID</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
                        </tr>
                        <tr>
				<td align="left">First Name</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Last Name</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Date of Birth</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Gender</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Email</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Registered Date</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Country</td>
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
                        <img class='cardimg' src= "../../Resources/Img/online.png"><br>
                        <font>Online Users</font>
                    </div>
                    <div class='card'>
                        <img class='cardimg' src= "../../Resources/Img/inactive.png"><br>
                        <font>Inactive Users</font>
                    </div>
                    <div class='card'>
                        <img class='cardimg' src= "../../Resources/Img/reported.png"><br>
                        <font>Reported Users</font>
                    </div>
                </div>
    </div>
    
        <div id="myModal" class="modal">

 
  <div class="modal-content">
    <span class="close">&times;</span>
    
    <form>
	<fieldset>
            <legend><font color="black"><h1>Profile</h1></font></legend>
        <table border="0" width="100%" height="40px" >
                        <tr>
				<td align="left">First Name:</td>
				<td><input class="textbox" type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Last Name:</td>
				<td><input class="textbox" type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Date of Birth:</td>
				<td><input class="textbox" type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Gender:</td>
				<td><input class="textbox" type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Email:</td>
				<td><input class="textbox" type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Address:</td>
                                <td><input class="textbox" type=text name=name size="30" maxlength="25"></textarea></td>
			</tr>
                        <tr>
				<td align="left">Country:</td>
				<td><input class="textbox" type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Password:</td>
				<td><input class="textbox" type=password name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td>Registered Date</td>
				<td><input class="textbox" type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td>Deactivated Date</td>
				<td><input class="textbox" type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td>Reason</td>
                                <td><input class="textbox" type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
                            <td></td>
				<td><input class="reset" type="reset" value="Close" ></td>
			</tr>
                        
                    </table>
	</fieldset>
	</form>
  </div>
        </div>
    <script>
var modal = document.getElementById("myModal");
var btn = document.getElementById("vie");
var span = document.getElementsByClassName("close")[0];
btn.onclick = function() {
  modal.style.display = "block";
}
span.onclick = function() {
  modal.style.display = "none";
}
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
    
        <footer>    
    <div class="container">      
    <div class="footer-distributed">
            <div class="footer-left">
                <h3><span><img src="../../Resources/Img/logo.png"></span>Sl LensTrends</h3><br><br><br><br><br><br>

                <p class="footer-links">
                    <a href="#">Home</a>
                    ·
                    <a href="#">Gallery</a>
                    ·
                    <a href="#">Photographer</a>
                    ·
                    <a href="#">Forum</a>
                </p>
                
                
                <div class="footer-icons">

                    <a href="#"><i class="fa fa-facebook"><img src="../../Resources/Img/fb.png" style="width:5%;height:5%;"></i></a>
                    <a href="#"><i class="fa fa-twitter"><img src="../../Resources/Img/insta.png" style="width:5%;height:5%;"></i></a>
                    <a href="#"><i class="fa fa-linkedin"><img src="../../Resources/Img/download.png" style="width:5%;height:5%;"></i></a>
                    <a href="#"><i class="fa fa-github"><img src="../../Resources/Img/wtsap.png" style="width:5%;height:5%;"></i></a>
                    <br><br><br><br>
                    <hr>
                    <h6>@2020 All Rights Reserved</h6>
                </div>
            </div>
            
             <div class="footer-right">
                <h4>Support</h4>
                <a href="#">Contact Us</a><br>
                
                <h4>Create an account</h4>
                <a href="#">Sign Up</a><br>

            </div>
    </div>
        </div>          
        </footer>
    
</body>
</html>
