<%-- 
    Document   : quest
    Created on : Nov 7, 2020, 1:39:52 PM
    Author     : Sashini Shihara
--%>


<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
    
    ArrayList<String> s = (ArrayList<String>) request.getAttribute("questions");
    for (int i = 0; i < s.size() / 6; i++) {      
        


%>

<div class="questions">                
                <h2><%= s.get(i*6)%></h2>
                <p><%= s.get((i*6)+1) %></p>
                <label><a href="#" type="button"><%= s.get((i*6)+2) %></a></label> 
                <span>Posted by: <%= s.get((i*6)+3) %></span> <span id="time"><%= s.get((i*6)+4) %></span>   
                <div class="updown">
<!--                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                    <span id="up">300</span>
                    <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                    <span id="down">126</span>-->
                </div>
                <div class="answer">
                    <a href="#" type="button" id="myBtn1" onclick="popupanswer('myBtn1')"><%= s.get((i*6)+5) %> answers</a>
                    <a href="#" type="button" id="myAns1">Answer Now</a>
                </div>

                <div id="myModal1" class="modal">

                    <!-- Modal content -->
                    <div class="modal-content">
                        <span class="close1">&times;</span>

                        <div class="answerqn">
                            <p>You unfortunately have very little control over the iPhone camera. You can only lock or unlock the exposure, white balance, and focus modes.
                                Camera+ actually does not have control over anything you described. It used to be able to as it hacked the hardware, which is naturally a great way to get your app rejected by the reviewers.
                                I hope that iOS6 will give developers greater control as it is a PITA.</p> 
                            <span>Posted by: Jhon</span> <span id="time">1Hour 30min</span>
                            <div class="updown">
                                <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                <span id="up">43</span> 
                                <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                <span id="down">456</span>
                            </div>
                        </div>

                        <div class="answerqn">
                            <p>You unfortunately have very little control over the iPhone camera. You can only lock or unlock the exposure, white balance, and focus modes.
                                Camera+ actually does not have control over anything you described. It used to be able to as it hacked the hardware, which is naturally a great way to get your app rejected by the reviewers.
                                I hope that iOS6 will give developers greater control as it is a PITA.</p> 
                            <span>Posted by: Aaketk</span> <span id="time">12 Jan 2020</span>
                            <div class="updown">
                                <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                <span id="up">13</span> 
                                <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                <span id="down">46</span>
                            </div>
                        </div>

                        <div class="answerqn">
                            <p>a space through which light passes in an optical or photographic instrument, especially the variable opening by which light enters a camera. In iOS you can not control the aperture of camera of device before iPhone 7. In latest device I am not sure. </p> 
                            <span>Posted by: Hiruna Keshara</span> <span id="time">14 Feb 2020</span>
                            <div class="updown">
                                <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                <span id="up">103</span> 
                                <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                <span id="down">416</span>
                            </div>
                        </div>

                        <div class="answerqn">
                            <p>a space through which light passes in an optical or photographic instrument, especially the variable opening by which light enters a camera. In iOS you can not control the aperture of camera of device before iPhone 7. In latest device I am not sure. </p> 
                            <div class="answerimg">
                                <img src="../../Resources/Img/answer1.jpg">
                                <img src="../../Resources/Img/answer2.jpg">
                            </div>
                            <span>Posted by: Hiruna Keshara</span> <span id="time">14 Feb 2020</span>
                            <div class="updown">
                                <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                <span id="up">103</span> 
                                <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                <span id="down">416</span>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
<%}%>