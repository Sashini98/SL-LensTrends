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
        <link rel="stylesheet" href="../../CSS/Photographer/PhotographerProfile.css">
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
               
    </head>
    
    <body>
        
         <div class="fixedheader">  
            <div class="pageheader">
                <a href="Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                       <li><a href="#" type="button"> Events </a></li>
                        <li><a href="../User/AdvancedSearch.jsp" type="button"> Album </a></li>
                        <li><a href="../Photographer/PhotographerProfile.jsp" type="button"> Profile </a></li>
                        <li><a href="../Fourm/forum home.jsp" type="button"> Forum </a></li>
                        <li><a href="#" type="button"> Notifications </a></li>

                    </ul>
                </div>

                <div class="notifyicn">
                    <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>

                </div>

                <div class="logout">
                    <a href="../login.jsp" type="button"> Login </a>
                </div>
        
        </div>
        <div class="profile-main">
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
			<div class="tab-panel-main">
				<div class="tabs">
                                  
                                         <button class="button">Events</button>
					 <button class="button">Album</button>
                                         <button class="button">Profile</button> 
                                         
				</div>
				<div id="Basic-detail" class="tab-content current">
					<div class="skill-box">
					  <ul>
						<li><strong>Categories:</strong></li>
						<li>Wild Life</li>
						<li>Portraits</li>
						<li>Landscape</li>
                                                <li>Architecture</li>
					  </ul>		
					</div>
					<div class="account">
						<div class="heading">
							<p>Account
							<label>Public Profile</label></p>
                                                </div> <br>
						<div class="edit">
                                                    <form>
                                                        <label for="fname">FIRSTNAME</label> <a href="#" type="button"><img src="../../Resources/Img/edit.png"></a>
                                                        <input type="text" id="fname" name="fname" placeholder="Theivendram">
                                                        <label for="lname">LASTNAME</label>  <a href="#" type="button"> <img src="../../Resources/Img/edit.png"> </a>
                                                        <input type="text" id="lname" name="lname" placeholder="Athavan">
                                                        <label for="uname">USERNAME</label>  <a href="#" type="button"> <img src="../../Resources/Img/edit.png"> </a>
                                                        <input type="text" id="uname" name="uname" placeholder="Aaketk17">
                                                        <label for="email">EMAIL</label>  <a href="#" type="button"> <img src="../../Resources/Img/edit.png"> </a>
                                                        <input type="text" id="email" name="email" placeholder="thavanthya@gmail.com">
                                                    </form>
						</div>
					</div>
                                  
                                        <div class="address">
						<div class="heading">
							<p>Address</p>
                                                </div> <br>
						<div class="edit">
                                                    <form>
                                                        <label for="fname">ADDRESS</label> <a href="#" type="button"><img src="../../Resources/Img/edit.png"></a>
                                                        <input type="text" id="address" name="address" placeholder="Vanniyasingam veethy, Thavady North, Kokuvil.">
                                                        <label for="fname">CITY</label>  <a href="#" type="button"> <img src="../../Resources/Img/edit.png"> </a>
                                                        <input type="text" id="city" name="city" placeholder="Jaffna">
                                                        <label for="fname">PROVINCE</label>  <a href="#" type="button"> <img src="../../Resources/Img/edit.png"> </a>
                                                        <input type="text" id="province" name="province" placeholder="North">
                                                        <label for="fname">COUNTRY</label>  <a href="#" type="button"> <img src="../../Resources/Img/edit.png"> </a>
                                                        <input type="text" id="conutry" name="country" placeholder="srilanka">
                                                        <label for="fname">ZIP/POSTAL</label>  <a href="#" type="button"> <img src="../../Resources/Img/edit.png"> </a>
                                                        <input type="text" id="zip" name="zip" placeholder="40000">
                                                        
                                                    </form>
						</div>
					</div> 
                                    
                                       <div class="tax-info">
						<div class="heading">
							<p>Tax Information</p>
                                                </div> 
						<div class="edit">
                                                    <p> Fill up your tax form! You could avoid up to 30% withholding's on your revenue </p>
                                                    <a href="#" type="button">Add Tax Information</a>
						</div>
					</div>
                                    
                                        
                                     
				
                                <div id="Edu-detail" class="tab-content">
					<div class="Edu-box-main">
						 <h2><i class="fa fa-graduation-cap" ></i> Education</h2>
						 <div class="Edu-box">
						 	<h5><span>Graphic designer</span> <br>
						 		2005 - 2007 | Infoway Corporation</h5>
						 	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
						 </div>
						 <div class="Edu-box">
						 	<h5><span>Web designer</span> <br>
						 		2007 - 2009 | Light Corporation</h5>
						 	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
						 </div>
					</div>
				</div>
				<div id="Portfolio" class="tab-content">
					<div class="portfolio-box">
						<div class="portfolio-img-box">
							<h3>Web Design</h3>
							<img src="http://nicesnippets.com/demo/up-web-design.jpg">
						</div>
						<div class="portfolio-img-box">
							<h3>Web development</h3>
							<img src="http://nicesnippets.com/demo/up-web-development.png">
						</div>
						<div class="portfolio-img-box">
							<h3>SEO</h3>
							<img src="http://nicesnippets.com/demo/up-seo.jpg">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div style="clear: both;"></div>
		
	</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('ul.tabs li').click(function(){
			var tab_id = $(this).attr('data-tab');

			$('ul.tabs li').removeClass('current');
			$('.tab-content').removeClass('current');

			$(this).addClass('current');
			$("#"+tab_id).addClass('current');
		});
	});
</script>
    </body>
    
</html>