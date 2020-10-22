<%-- 
    Document   : Photographer
    Created on : Oct 8, 2020, 11:13:19 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Photographer</title>
        <link rel="stylesheet" href="../../CSS/Photographer/PhotographerUpdate.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        
    </head>
    
    <body>
   
		<div class="profile-header">
			<div class="user-detail">
				<div class="user-image">
					<img src="../../Resources/Img/athavan.jpg">
				</div>
				<div class="user-data">
					<h2>Theivendram Athavan</h2>
					<span class="post-label">Wildlife</span>
					<span class="post-label">Portraits</span>
					<span class="post-label">Fashion</span>
                                        <span class="post-label">Landscape</span>
					<p>Founder <strong>IkonGraphy</strong><br>
					<i>Jaffna, Srilanka</i> 
					</p>
				</div>
				<div class="social-icons">
                                    <img src="../../Resources/Img/facebook.png">
			            <img src="../../Resources/Img/instagram.png">
				    <img src="../../Resources/Img/twitter.png">
                                    <img src="../../Resources/Img/google.png">                       
                                    <br> <br>
                                </div>
                                
                            <br> <br>
                                <a href="#" type="button">Send Message</a>
			</div>
			
				<div class="tabs">
                                  
                                         <a class="nav">Events</a>
					 <a class="nav">Album</a>
                                         <a class="nav">Profile</a> 
                                         
				</div>
				
                       </div>
					<div class="skill-box">
                                            
                                            <ul>
                                                <li><a href="#accsec">Account</a></li> <br> <br>
                                                <li><a href="#addsec">Address</a></li> <br> <br>
                                                <li><a href="#taxsec">Tax Information</a></li> <br> <br>
                                                <li><a href="#section2">Password</a></li> <br> <br>
                                                <li><a href="#delsec">Delete Account</a></li> <br> <br>
					    </ul>	
                                            
					</div>
					<div class="account" id="accsec">
						<div class="heading" >
							<p>Account                                                            
                                                            <label> <a href="#" type="button">Client View </a></label>
                                                        </p>
                                                        
                                                </div> <br>
						<div class="edit">
                                                    <form>                                                        
                                                        <label for="fname">First Name </label> 
                                                        <br> <input type="text" id="fname" name="fname" placeholder="Theivendram"> <a href="#" type="button"> <img src="../../Resources/Img/edit.png"></a>
                                                        <br> <label for="lname">Last Name </label>  
                                                        <br> <input type="text" id="lname" name="lname" placeholder="Athavan"> <a href="#" type="button"> <img src="../../Resources/Img/edit.png"></a>
                                                        <br> <label for="uname">User Name </label>  
                                                        <br> <input type="text" id="uname" name="uname" placeholder="Aaketk17"> <a href="#" type="button"> <img src="../../Resources/Img/edit.png"></a>
                                                        <br> <label for="email">Email </label>  
                                                        <br> <input type="text" id="email" name="email" placeholder="thavanthya@gmail.com"> <a href="#" type="button"> <img src="../../Resources/Img/edit.png"></a>
                                                        <br> <label for="email">Mobile Number </label>  
                                                        <br> <input type="text" id="mnum" name="mnum" placeholder="+94 77 946 2554"> <a href="#" type="button"> <img src="../../Resources/Img/edit.png"></a>
                                                    </form>
						</div>
					</div>
                                  
                                        <div class="address" id="addsec">
						<div class="heading">
							<p>Address</p>
                                                </div> <br>
						<div class="edit">
                                                    <form>
                                                        <label for="fname" >Address </label> 
                                                        <br><input type="text" id="address" name="address" placeholder="Vanniyasingam veethy, Thavady North, Kokuvil."> <a href="#" type="button"> <img src="../../Resources/Img/edit.png"></a>
                                                        <br><label for="fname">City </label> 
                                                        <br><input type="text" id="city" name="city" placeholder="Jaffna"> <a href="#" type="button"> <img src="../../Resources/Img/edit.png"></a>
                                                        <br><label for="fname">Province </label>  
                                                        <br><input type="text" id="province" name="province" placeholder="North"> <a href="#" type="button"> <img src="../../Resources/Img/edit.png"></a>
                                                        <br><label for="fname">Country  </label>  
                                                        <br><input type="text" id="conutry" name="country" placeholder="Srilanka"> <a href="#" type="button"> <img src="../../Resources/Img/edit.png"></a>
                                                        <br><label for="fname">Zip/Postal </label>  
                                                        <br><input type="text" id="zip" name="zip" placeholder="40000"> <a href="#" type="button"> <img src="../../Resources/Img/edit.png"></a>
                                                        
                                                    </form>
						</div>
					</div> 
                                    
                                       <div class="tax-info" id="taxsec">
						<div class="heading">
							<p>Tax Information</p>
                                                </div> 
						<div class="edit">
                                                    <p> To change your password, you’ll need to verify the current one first. Then create a password you’re not using elsewhere, and be sure to change it regularly as well as anytime you suspect it’s been compromised. </p>
                                                    <a href="#" type="button">Add Tax Information</a>
						</div>
					</div>
		
                                        <div class="password" id="section2">
						<div class="heading">
							<p>Password and Security</p>
                                                </div> 
						<div class="edit">
                                                    <p> Fill up your tax form! You could avoid up to 30% withholding's on your revenue </p>
                                                    <a href="changepassword.jsp" type="button">Change Password</a>
						</div>
                                            
					</div>
	

    </body>
    
</html>
