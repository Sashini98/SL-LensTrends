<%-- 
    Document   : products
    Created on : Jul 19, 2020, 11:10:12 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <link rel="stylesheet" href ="../../CSS/Admin/Admin.css">
    <link rel="stylesheet" href="../../CSS/footer.css">
    <link rel="stylesheet" href="../../CSS/header.css">
    
    <header>    
        <div class="hd">
                    <a class="logo" href="/"><img src="../../Resources/Img/logo.png" alt="logo"></a>
                    <lab>SL LensTrends</lab>
                        
                <nav class="nv">
                        <ul class="nav__links">
                            <li><a href="#">Home</a></li>
                            <li><a href="UserManagement.jsp">users</a></li>
                           <li><a class="active" href="PhotoManagement.jsp">Photographs</a></li>
                            <li><a href="Reports.jsp">Reports</a></li>
                            <li><a href="AdminMessage.jsp">Messages</a></li>
                            <li><a href="AdminSettings.jsp">Settings</a></li>
                            
                        </ul>
                    </nav>
                    </div>
    </header>
    </head>
    <body style="background-image: url(../../Resources/Img/proback.jpg); background-size: 100% ;">
        
    <div class="row">
                <div class='column'>
                    <div class='card'>
                        <img class='cardimg' src= "../../Resources/Img/category.jpg"><br>
                        <font>Top Category</font>
                    </div>
                </div>
    </div>
    <div class="row">
                <div class='column'>
                    <div class='card'>
                        <img class='cardimg' src= "../../Resources/Img/photograp.jpg"><br>
                        <font>Top Photographer</font>
                    </div>
                </div>
    </div>
    <div class="row">
                <div class='column'>
                    <div class='card'>
                        <img class='cardimg' src= "../../Resources/Img/profit.png"><br>
                        <font>Daily Profit</font>
                    </div>
                </div>
    </div>
        
        <div class="row">
      <div class="column">
       <div class='card'>
                    <font color="red">Category</font>
                    <hr>
                    <table border="0" width="100%" height="40px" >
                        
                        <tr>
                            <th align="left">Add Category</th>
                            <th><input type=text name=name size="20" maxlength="25"></th>
                            <th><button>Save</button></th>
                        </tr>
                        <tr><th></th></tr>
                        <tr><th></th></tr>
                        <tr>
                            <th></th>
                            <td><center><input class="confirmBTN" type='submit' value="Options" name='view' style="background-color:red"></center></td>
                        </tr>
                    </table>
                    </div>
                    
                    
        
    </div>
        
</div>
    
        <div class="row">
            <div class="column">
                <div class='card'>
                    <font color="red">Remove Photographs </font>
                    <table border="0" width="100%" height="40px" >
                        <tr>
			<div class='card'>
                 	<td align="left">Product ID</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
                        </tr>
                        <tr>
				<td align="left">Title</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Category</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Selling Price</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Photographer</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
                        </tr>
                        <tr>
				<th colspan =2><button class='btn2'>Remove</button></th>
			</tr>
                        
                    </table>
                    </div>
                
                
            </div>
            </div>
        <div class="row">
            <div class="column">
               <div class='card'>
                    <label>Search Photograph</label>
                    <input type="text" placeholder="Type here">
                    <button>Search</button>
                    <hr>
                    <table border="1" width="100%" height="40px" >
                        <tr>
                            <th>Product ID</th>
                            <th>Title</th>
                            <th>Category</th>
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
            </div>
        </div>
    
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
