<%-- 
    Document   : PhotographerUploadPhotoTem
    Created on : Mar 16, 2021, 5:40:01 PM
    Author     : ASUS
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Photograph"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<Photograph> m = (ArrayList<Photograph>) request.getAttribute("loadphotographs");
//    System.out.println(m.get(0).getTitle());

%>


<div class="content" style="display: block;" id="tosubmit-content">
    <%        int countsubmit = 0;
        int countinreview = 0;
        int countnotaccepted = 0;
        int countaccepted = 0;

        for (int i = 0; i < m.size(); i++) {
            if (m.get(i).getStateId() == 1) {
                countsubmit += 1;
            } else if (m.get(i).getStateId() == 2) {
                countinreview += 1;
            } else if (m.get(i).getStateId() == 3) {
                countnotaccepted += 1;
            } else if (m.get(i).getStateId() == 4) {
                countaccepted += 1;
            }
        }
        if (countsubmit > 0) {
    %>
    <div class="image-box">
        <%
            int x = 0;
            String path = "";
            int PhotoId = 0;
            for (int i = 0; i < m.size(); i++) {
                if (m.get(i).getStateId() == 1) {
                    if (x == 0) {
                        path = m.get(i).getPath();
                        PhotoId = m.get(i).getId();
                        x += 1;
                    }
        %>

        <input type="radio" id="r<%= i + 1%>" name="radio"/>  
        <label for="r<%= i + 1%>">
            <img photo_id="<%=m.get(i).getId()%>" src="../../Resources/Img/Gallery Sample Images/<%=m.get(i).getPath()%>" class="selection-img" id="ls<%= i + 1%>">
        </label>
        <% }

            }
        %>

    </div>

    <div class="details">
        <!--<img src="../../Resources/Img/delete.svg" id="delete-tosubmit" onclick="deletephoto('delete-tosubmit')">-->
        <a id="delete-tosubmit" onclick="deletephoto('delete-tosubmit')">Delete</a>
        <div class="images">
            <img photo_id="<%=PhotoId%>" src="../../Resources/Img/Gallery Sample Images/<%=path%>" class="detailsimg" id="image">                   
        </div>   
        <div class="category">
            <label for="category">Category:</label>
            <select name="category" id="category" onfocus="this.size = 10;" onblur='this.size = 1;' 
                    onchange='this.size = 1;this.blur();'>

                <option value="">Select category</option>
                <option value="1">Animals</option>
                <option value="2">Buildings and Architecture</option>
                <option value="3">Business</option>
                <option value="4">Drinks</option>
                <option value="5">The Environment</option>
                <option value="6">States of Mind</option>
                <option value="7">Food</option>
                <option value="8">Hobbies and Leisure</option>
                <option value="9">Industry</option>
                <option value="10">Landscapes</option>
                <option value="11">Lifestyle</option>
                <option value="12">People</option>
                <option value="13">Plants and Flowers</option>
                <option value="14">Culture and Religion</option>
                <option value="15">Science</option>
                <option value="16">Social Issues</option>
                <option value="17">Sports</option>
                <option value="18">Technology</option>
                <option value="19">Transport</option>
                <option value="20">Travel</option>
                <option value="21">Portraits</option>

            </select>
        </div>
        <div class="title-area">
            <textarea id="title-area" name="title" rows="5" cols="37" placeholder="Type title here (Max: 200 Characters)"></textarea>
        </div>
        <div class="releases">
            <p>Releases<br><span style="color: rgba(12, 18, 28, 0.6); margin-bottom: 5%;" >For recognizable people or property.</span><br>
                <span style="color:#415daa;" id="download" onclick="document.getElementById('myModal').style.display = 'block'">Download Releases</span> &nbsp; &nbsp; &nbsp;<span style="color:#f6862a; cursor: pointer;" id="uploadrelease" onclick="document.getElementById('DownModal').style.display = 'block'">Add release</span></p>

            <div id="myModal" class="myModal">
                <!-- Modal content -->
                <div class="modal-content">
                    <span class="close" onclick="document.getElementById('myModal').style.display = 'none'">&times;</span>
                    <div class="modal-heading">
                        <h1>Digital release type </h1>
                        <p> Which type of release do you need? </p>
                    </div>
                    <div class="form-download">
                        <p>Model Release</p><a href="../../Resources/Forms/model release.pdf" download>Download</a> <br> <br>
                        <p>Property Release</p><a href="../../Resources/Forms/property release.pdf" download>Download</a>
                    </div>
                </div>
            </div>

            <div id="DownModal" class="DownModal">
                <!-- Modal content -->
                <div class="Downmodal-content">
                    <span class="downclose" onclick="closebtn()">&times;</span>
                    <div class="Downmodal-heading">
                        <h1>Drop Here!</h1>

                        <p>Property Release</p>
                        <input type="file" id="upmodalproperty" style="display: none;" accept="application/pdf" onchange="pressedpropertyrelease();validation('upmodalproperty');">
                        <label for="upmodalproperty" id="uplabelproperty">
                            Browse
                        </label>
                        <label id="fileNameproperty">
                            FileName
                        </label>

                        <p>Modal Release</p>
                        <input type="file" id="upmodalmodal" style="display: none;" accept="application/pdf" onchange="pressedmodalrelease();validation('upmodalmodal');">
                        <label for="upmodalmodal" id="uplabelmodal">
                            Browse
                        </label>
                        <label id="fileNamemodal">
                            FileName
                        </label>                      

                    </div>
                    <span id="submit" onclick="submitrelease();">Submit</span> <br> <br>
                    <span id="reset" onclick="resetrelease();">Reset</span>
                </div>
            </div>

        </div>

        <div class="keyword-area">
            <textarea id="keyword-area" name="title" rows="5" cols="45" placeholder="Add Keywords (Max: 50 keywords) &#10separate with commas"></textarea>
        </div>

        <div class="sale-album">
            <p>Price <span style="color:#9D9D9D; "> ($) </span><input type="number" accept="" id='price'> </p>                     
        </div>
        <br>
        <div class="finalsubmit">
            <span type="button" id="submitfinal" onclick="submitforreview()">Submit</span>
        </div>

    </div>
    <!--    <script>
        
        </script>-->
    <%

    } else {
    %>
    <div>
        <div style="text-align: center;"> 
            <p>No Photos to Show</p>
        </div>
    </div>
    <%
        }
    %>
</div>

<div class="inreview-content" style="display:none;" id="inreview-content">
    <%
        if (countinreview > 0) {
    %>
    <div class="image-box-inreview">
        <%
            int inreview = 0;
////            int notaccepted = 0;
//            int accepted = 0;

            for (int i = 0; i < m.size(); i++) {

                if (m.get(i).getStateId() == 2) {
                    inreview += 1;
        %>
        <img src="../../Resources/Img/Gallery Sample Images/<%=m.get(i).getPath()%>" id="review<%= inreview%>" onclick="clickimage('review<%= inreview%>', 'image-box-inreview',<%= m.get(i).getId()%>,<%= countinreview%>)">
        <% }
            }%>
    </div>

    <div class="inreview-details">
        <div id="image1">
            <div class="details-inreview-title">
                <h3 id="heading"></h3> 
                <p>Submitted on: &nbsp;  <span id="uploaddate" style='color: #9D9D9D;'></span> </p> 
            </div>
            <div class="details-inreview">                    
                <p>Title : <span style='color: #9D9D9D;' id="heading2"></span> </p>
                <!--<p>Category : <span style='color: #9D9D9D;' id="category"></span> </p>-->
                <p>File ID(s): <span style='color: #9D9D9D;' id="filedid"></span> </p>
                <!--<p>Original name(s) : <span style='color: #9D9D9D;'>IGP_4237_1.jpg</span> </p>-->
            </div>
        </div>

        <!--commented-->
        <!--        <div id="image2" style='display:none;'>
                    <div class="details-inreview-title">
                        <h3>Boat</h3> 
                        <p>Submitted 16hrs ago </p>
                    </div>
                    <div class="details-inreview">                    
                        <p>Title : <span style='color: #9D9D9D;'>Boat</span> </p>
                        <p>Category : <span style='color: #9D9D9D;'>Transport</span> </p>
                        <p>File ID(s): <span style='color: #9D9D9D;'>312447169</span> </p>
                        <p>Original name(s) : <span style='color: #9D9D9D;'>IGP_4256.jpg</span> </p>
                    </div>
                </div>
        
                <div id="image3" style='display:none;'>
                    <div class="details-inreview-title">
                        <h3>Children</h3> 
                        <p>Submitted 5 days ago</p>
                    </div>
                    <div class="details-inreview">                    
                        <p>Title : <span style='color: #9D9D9D;'>Children</span> </p>
                        <p>Category : <span style='color: #9D9D9D;'>People</span> </p>
                        <p>File ID(s): <span style='color: #9D9D9D;'>905892469</span> </p>
                        <p>Original name(s) : <span style='color: #9D9D9D;'>IGP_7847.jpg</span> </p>
                    </div>
                </div>
        
                <div id="image4" style='display:none;'>
                    <div class="details-inreview-title">
                        <h3>Cultural Dance</h3> 
                        <p>Submitted 7 days ago </p>
                    </div>
                    <div class="details-inreview">                    
                        <p>Title : <span style='color: #9D9D9D;'>Cultural Dance</span> </p>
                        <p>Category : <span style='color: #9D9D9D;'>Culture and Religion</span> </p>
                        <p>File ID(s): <span style='color: #9D9D9D;'>890257169</span> </p>
                        <p>Original name(s) : <span style='color: #9D9D9D;'>IGP_1725.jpg</span> </p>
                    </div>
                </div>--> 
    </div>

    <%

    } else {
    %>
    <div>
        <div style="text-align: center;"> 
            <p>No Photos to Show</p>
        </div>
    </div>
    <%
        }
    %>
</div>

<div class="notaccepted-content" style="display:none;" id="notaccepted-content">
    <%
        if (countnotaccepted > 0) {
    %>
    <div class="image-box-rejected">
        <%
            String notaccpetedpath = "";
            int x = 0;
            int PhotoIdrejected = 0;
            int notaccepted = 0;
            for (int i = 0; i < m.size(); i++) {
                if (m.get(i).getStateId() == 3) {
                    notaccepted += 1;
                    if (x == 0) {
                        notaccpetedpath = m.get(i).getPath();
                        PhotoIdrejected = m.get(i).getId();
                        x += 1;
                    }

        %>
        <img photo-id-notaccepted="<%= m.get(i).getId()%>" class="selection-rejected" src="../../Resources/Img/Gallery Sample Images/<%=m.get(i).getPath()%>" id="rejected<%= notaccepted%>" onclick="clickimage('rejected<%= notaccepted%>', 'image-box-rejected',<%= m.get(i).getId()%>,<%= countnotaccepted%>)">
        <!--        <img src="../../Resources/Img/profile/n6.jpg" id="re6" onclick="clickimage('re6')" >
                <img src="../../Resources/Img/profile/n7.jpg" id="re7" onclick="clickimage('re7')">
                <img src="../../Resources/Img/profile/n8.jpg" id="re8" onclick="clickimage('re8')">-->
        <% }
            }%>
    </div>

    <div class="notaccepted-details">
        <div id="image5">
            <div class="details-notaccepted-title">
                <h3 id="heading-notaccepted"></h3> 
                <p>Submitted on: <span id="date-notaccepted"></span> </p>
            </div>
            <div class="details-notaccepted">                    
                <p>Thanks for giving us the chance to consider your image. Unfortunately, we found that it doesn't meet our needs so we can't accept it into our collection.</p>
                <span>Add your Best Collection again to make it into sale</span>
                <p>File ID(s): <span style='color: #9D9D9D; background-color: transparent; padding: 0; margin: 0;' id="fileid-notaccepted"></span> </p>

                <span id="deleterejected" class="deleterejected" photo-id-notaccepted="<%=PhotoIdrejected%>" srcpathrejected="<%=notaccpetedpath%>" onclick="deletephoto('deleterejected')">Delete</span>

            </div>
        </div>
        <!--
                <div id="image6" style='display:none;'>
                    <div class="details-notaccepted-title">
                        <h3>Lord Murugan</h3> 
                        <p>Submitted on Oct 20 2020</p>
                    </div>
                    <div class="details-notaccepted">                    
                        <p>Thanks for giving us the chance to consider your image. Unfortunately, we found that it doesn't meet our needs so we can't accept it into our collection.</p>
                        <span>Image with Noise</span>
                        <p>File ID(s): <span style='color: #9D9D9D; background-color: transparent; padding: 0; margin: 0;'>312447169</span> </p>
                        <p>Original name(s) : <span style='color: #9D9D9D; background-color: transparent;  padding:0; margin: 0;'>IGP_4256.jpg</span> </p>
                    </div>
                </div>
        
                <div id="image7" style='display:none;'>
                    <div class="details-notaccepted-title">
                        <h3>Delft, Jaffna</h3> 
                        <p>Submitted 15 days ago</p>
                    </div>
                    <div class="details-notaccepted">                    
                        <p>Thanks for giving us the chance to consider your image. Unfortunately, we found that it doesn't meet our needs so we can't accept it into our collection.</p>
                        <span>Low Resolution Image</span>
                        <p>File ID(s): <span style='color: #9D9D9D;  background-color: transparent; padding: 0; margin: 0;'>905892469</span> </p>
                        <p>Original name(s) : <span style='color: #9D9D9D;  background-color: transparent; padding: 0; margin: 0;'>IGP_7847.jpg</span> </p>
                    </div>
                </div>
        
                <div id="image8" style='display:none;'>
                    <div class="details-notaccepted-title">
                        <h3>Green Land</h3> 
                        <p>Submitted on April 30 2020 </p>
                    </div>
                    <div class="details-notaccepted">                    
                        <p>Thanks for giving us the chance to consider your image. Unfortunately, we found that it doesn't meet our needs so we can't accept it into our collection.</p>
                        <span>No Release Submitted</span>
                        <p>File ID(s): <span style='color: #9D9D9D; background-color: transparent; padding: 0; margin: 0;'>800234169</span> </p>
                        <p>Original name(s) : <span style='color: #9D9D9D; background-color: transparent; padding: 0; margin: 0;'>IGP_8925.jpg</span> </p>
                    </div>
                </div>-->
    </div>
    <%

    } else {
    %>
    <div>
        <div style="text-align: center;"> 
            <p>No Photos to Show</p>
        </div>
    </div>
    <%
        }
    %>
</div>

<div class="accepted-content" style="display:none;" id="accepted-content">
    <%
        if (countaccepted > 0) {
    %>
    <div class="image-box-accepted">
        <%
            String accpetedpath = "";
            int x = 0;
            int accepted = 0;
            int PhotoIdaccepted = 0;
            for (int i = 0; i < m.size(); i++) {
                if (m.get(i).getStateId() == 4) {
                    accepted += 1;
                    if (x == 0) {
                        accpetedpath = m.get(i).getPath();
                        PhotoIdaccepted = m.get(i).getId();
                        x += 1;
                    }
        %>
        <img photo-id-accepted="<%=m.get(i).getId()%>" class="selection-accepted" src="../../Resources/Img/Gallery Sample Images/<%=m.get(i).getPath()%>" id="accept<%= accepted%>" onclick="clickimage('accept<%= accepted%>', 'image-box-accepted',<%= m.get(i).getId()%>,<%= countaccepted%>);totalearningdetail('<%= m.get(i).getId()%>')">
        <!--        <img src="../../Resources/Img/profile/a2.jpg" id="re10" onclick="clickimage('re10')" >
                <img src="../../Resources/Img/profile/a3.jpg" id="re11" onclick="clickimage('re11')">
                <img src="../../Resources/Img/profile/a4.jpg" id="re12" onclick="clickimage('re12')">-->
        <% }
            }%>
    </div>

    <div class="accepted-details">
        <div id="image9">
            <div class="details-accepted-title">
                <h3 id='headingaccepted'></h3> 
                <p>Submitted on: <span id='dateaccepted'></span></p>
            </div>
            <div class="details-accepted">                    


                <p>Downloads: <span style='color: #9D9D9D; background-color: transparent; padding: 0; margin: 0;' id="count">&emsp;</span> </p>
                <p>Pricing per Download:<span style='color: #9D9D9D; background-color: transparent;  padding:0; margin: 0;' id="pricetotal">&emsp; </span> </p>
                <span style="font-weight: bold;">Total Earing:&emsp;<span id="totalearning"></span></span>
                <p>File ID(s): <span style='color: #9D9D9D; background-color: transparent; padding: 0; margin: 0;' id='fileidaccepted'></span> </p>


            </div>

            <span id="deleteaccepted" class="deleteaccepted" photo-id-accepted="<%=PhotoIdaccepted%>" srcpath="<%=accpetedpath%>" onclick="deletephoto('deleteaccepted')">Delete</span>
        </div>

        <!--        <div id="image10" style='display:none;'>
                    <div class="details-accepted-title">
                        <h3>Beach Side</h3> 
                        <p>Submitted on Oct 20 2019</p>
                    </div>
                    <div class="details-accepted">                    
        
        
                        <p>Downloads: <span style='color: #9D9D9D; background-color: transparent; padding: 0; margin: 0;'>&emsp;2 Times</span> </p>
                        <p>Pricing per Download:<span style='color: #9D9D9D; background-color: transparent;  padding:0; margin: 0;'>&emsp;$20</span> </p>
                        <span style="font-weight: bold;">Total Earing:&emsp; $20</span>
                        <p>File ID(s): <span style='color: #9D9D9D; background-color: transparent; padding: 0; margin: 0;'>713456169</span> </p>
                        <p>Original name(s) : <span style='color: #9D9D9D; background-color: transparent;  padding:0; margin: 0;'>IGP_2356.jpg</span> </p>
        
                    </div>
                </div>-->

        <!--        <div id="image11" style='display:none;'>
                    <div class="details-accepted-title">
                        <h3>Pelican</h3> 
                        <p>Submitted 25 days ago</p>
                    </div>
                    <div class="details-accepted">                    
        
        
                        <p>Downloads: <span style='color: #9D9D9D; background-color: transparent; padding: 0; margin: 0;'>&emsp;25 Times</span> </p>
                        <p>Pricing per Download:<span style='color: #9D9D9D; background-color: transparent;  padding:0; margin: 0;'>&emsp;$10</span> </p>
                        <span style="font-weight: bold;">Total Earing:&emsp; $250</span>
                        <p>File ID(s): <span style='color: #9D9D9D; background-color: transparent; padding: 0; margin: 0;'>457897169</span> </p>
                        <p>Original name(s) : <span style='color: #9D9D9D; background-color: transparent;  padding:0; margin: 0;'>IGP_9056.jpg</span> </p>
        
                    </div>
                </div>-->

        <!--        <div id="image12" style='display:none;'>
                    <div class="details-accepted-title">
                        <h3>Kovil</h3> 
                        <p>Submitted on April 23 2019 </p>
                    </div>
                    <div class="details-accepted">                    
        
        
                        <p>Downloads: <span style='color: #9D9D9D; background-color: transparent; padding: 0; margin: 0;'>&emsp;20 Times</span> </p>
                        <p>Pricing per Download:<span style='color: #9D9D9D; background-color: transparent;  padding:0; margin: 0;'>&emsp;$20</span> </p>
                        <span style="font-weight: bold;">Total Earing:&emsp; $400</span>
                        <p>File ID(s): <span style='color: #9D9D9D; background-color: transparent; padding: 0; margin: 0;'>716426769</span> </p>
                        <p>Original name(s) : <span style='color: #9D9D9D; background-color: transparent;  padding:0; margin: 0;'>IGP_3456.jpg</span> </p>
        
                    </div>
                </div>-->
    </div>
    <%

    } else {
    %>
    <div>
        <div style="text-align: center;"> 
            <p>No Photos to Show</p>
        </div>
    </div>
    <%
        }
    %>
</div>



