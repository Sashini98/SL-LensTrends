<%-- 
    Document   : SearchQuest
    Created on : Mar 21, 2021, 6:29:55 PM
    Author     : Sashini Shihara
--%>

<%@page import="Model.Photographer"%>
<%@page import="Model.Client"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    Photographer loggedPhotographer = (Photographer) session.getAttribute("loggedPhotographer");
    String loggedAs = "nl";
    if (loggedPhotographer != null) {
        loggedAs = "p";

    }

    ArrayList<String> s = (ArrayList<String>) request.getAttribute("questions");
    for (int i = 0; i < s.size() / 7; i++) {


%>
<br>

<div class="questions">                
    <h2><%= s.get(i * 7)%></h2>
    <p><%= s.get((i * 7) + 1)%></p>
    <%
    String categories= s.get((i * 7) + 6);
    StringBuilder sb = new StringBuilder(categories); 
    sb.deleteCharAt(categories.length() - 1); 
    sb.deleteCharAt(0); 
    
    String cat=sb.toString(); 
    String[] tokens = cat.split(",");
    
    
for(int j=0;j<tokens.length;j++)
{
%>
    <label><a href="#" type="button"><%=tokens[j]%></a></label>
    <%}%>
    
    <input id="qid" name="qid" type="text" value="<%= s.get((i * 7) + 5)%>" style="display: none;">
<!--    <label><a href="#" type="button"><%= s.get((i * 7) + 2)%></a></label> -->
    <span>Posted by: <%= s.get((i * 6) + 2)%></span> <span id="time"><%= s.get((i * 7) + 3)%></span>   
    <div class="updown">

    </div>
    <div class="answer">
        <%
            if (loggedAs.equalsIgnoreCase("p")) {
        %>
        <a href="../../display_question_inAnswer?qid=<%= s.get((i * 7) + 5)%>" type="button" id="myAns1">Answer Now</a>
        <%
            }
        %>
<!--        <a href="#" type="button" id="answer_view" onclick="popupanswer();"><%= s.get((i * 7) + 4)%> answers</a>-->
        <a href="../../display_question?qid=<%= s.get((i * 7) + 5)%>" type="button" id="answer_view"><%= s.get((i * 7) + 4)%> answers</a>
        <!--<input type="button" id="answer_view" value="<%= s.get((i * 7) + 4)%> answers" onclick="popupanswer('comm')">-->


        <!--<a href="#" type="button" id="report" onclick="popupanswer('myBtn4')">Report</a>-->
    </div>

    <div id="answer1" class="modal">

        <!-- Modal content -->

        <div class="modal-content">
            <span class="close_anwe">&times;</span>
            
            <div name="ans" id="ans">
                
               
                
<!--                      <div class="answerqn">
                                <p>You unfortunately have very little control over the iPhone camera. You can only lock or unlock the exposure, white balance, and focus modes.
                                    Camera+ actually does not have control over anything you described. It used to be able to as it hacked the hardware, which is naturally a great way to get your app rejected by the reviewers.
                                    I hope that iOS6 will give developers greater control as it is a PITA.</p> 
                                <span>Posted by: Jhon</span> <span id="time">1Hour 30min</span>
                                <div class="updown">
                                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                    <span id="up">43</span> 
                                    <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                    <span id="down"></span>
                                </div>
                                <div class="answer">
                                    <a href="#" type="button" id="myBtn2" onclick="popupanswer('myBtn2')">5 comments</a>
                                    <a href="#" type="button" id="comm" onclick="popupanswer('comm')">Comment</a>
                                </div>
                            </div>-->
            </div>
        </div>

    </div>


    <div id="myModal4" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
            <span class="close4">&times;</span>
            <div class="answerqn">
                <form>
                    <h3><label for="Body"><b>Reasons for Reporting</b></label><br></h3><br>
                    <textarea id="body" name="body" rows="10" cols="100"></textarea><br><br><br>         

                    <input type="submit" id="submit" value="Report"><br><br><br>
                </form>
            </div>
        </div>

    </div>

    <div id="myModal2" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
            <span class="close2">&times;</span>
            <div class="answerqn">
                <p>a space through which light passes in an optical or photographic instrument, especially the variable opening by which light enters a camera. In iOS you can not control the aperture of camera of device before iPhone 7. In latest device I am not sure. </p> 
                <span>Posted by: Hiruna</span> <span id="time">14 Feb 2020</span>
                <div class="updown">
                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                    <span id="up">103</span> 
                    <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                    <span id="down">416</span>
                </div>
            </div>


        </div>

    </div>

    <div id="myModal3" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
            <span class="close3">&times;</span>
            <div class="answerqn">
                <form>
                    <h3><label for="Body"><b>Comment</b></label><br></h3><br>
                    <textarea id="body" name="body" rows="10" cols="100"></textarea><br><br><br>         

                    <input type="submit" id="submit" value="Post Comment"><br><br><br>
                </form>
            </div>


        </div>

    </div>

</div
<script src="../../JS/Forum/BrowseQn.js" type="text/javascript"></script>

    
<%}%>
