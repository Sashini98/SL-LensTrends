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

    <div class="image-box">
        <% for (int i = 0; i < m.size(); i++) {
                if (m.get(i).getStateId() == 1) {
        %>
        <input type="radio" id="r<%= i + 1%>" name="radio"/>
        <label for="r<%= i + 1%>">
            <img src="../../Resources/Img/profile/<%=m.get(i).getPath()%>" class="selection-img" id="ls<%= i + 1%>">
        </label>
        <% }
            }%>

    </div>

    <div class="details">
        <img src="../../Resources/Img/delete.svg" id="delete" style="cursor: pointer">
        <div class="images">
            <img src="../../Resources/Img/profile/<%=m.get(0).getPath()%>" class="detailsimg" id="image">                   
        </div>
        <div class="category">
            <label for="category">Category:</label>
            <select name="category" id="category" onfocus="this.size = 10;" onblur='this.size = 1;' 
                    onchange='this.size = 1;this.blur();'>

                <option value="Animals">Animals</option>
                <option value="Buildings and Architecture">Buildings and Architecture</option>
                <option value="Business">Business</option>
                <option value="Drinks">Drinks</option>
                <option value="The Environment">The Environment</option>
                <option value="States of Mind">States of Mind</option>
                <option value="Food">Food</option>
                <option value="Hobbies and Leisure">Hobbies and Leisure</option>
                <option value="Industry">Industry</option>
                <option value="Landscapes">Landscapes</option>
                <option value="Lifestyle">Lifestyle</option>
                <option value="People">People</option>
                <option value="Plants and Flowers">Plants and Flowers</option>
                <option value="Culture and Religion">Culture and Religion</option>
                <option value="Science">Science</option>
                <option value="Social Issues">Social Issues</option>
                <option value="Sports">Sports</option>
                <option value="Technology">Technology</option>
                <option value="Transport">Transport</option>
                <option value="Travel">Travel</option>
                <option value="volvo">Portraits</option>

            </select>
        </div>
        <div class="title-area">
            <textarea id="title-area" name="title" rows="5" cols="37" placeholder="Type title here (Max: 200 Characters)"></textarea>
        </div>
        <div class="releases">
            <p>Releases<br><span style="color: rgba(12, 18, 28, 0.6); margin-bottom: 5%;" >For recognizable people or property.</span><br>
                <span style="color:#415daa;" id="download">Download Releases</span> &nbsp; &nbsp; &nbsp;<span style="color:#f6862a; cursor: pointer;" id="uploadrelease">Add release</span></p>

            <div id="myModal" class="myModal">
                <!-- Modal content -->
                <div class="modal-content">
                    <span class="close">&times;</span>
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
                    <span class="downclose">&times;</span>
                    <div class="Downmodal-heading">
                        <h1>Drop Here!</h1>

                        <p>Property Release</p>
                        <input type="file" id="up-modal" style="display: none;" onchange="pressedrelease();">
                        <label for="up-modal">
                            Browse
                        </label>
                        <label id="uploadfile">
                            File Name:
                        </label>

                        <p>Modal Release</p>
                        <input type="file" id="up-modal" style="display: none;" onchange="pressedrelease();">
                        <label for="up-modal">
                            Browse
                        </label>
                        <label id="uploadfile">
                            File Name:
                        </label>
                    </div>




                </div>
            </div>

        </div>


        <div class="keyword-area">
            <textarea id="keyword-area" name="title" rows="5" cols="45" placeholder="Add Keywords (Max: 50 keywords) &#10separate with commas"></textarea>
        </div>

        <div class="sale-album">
            <p>Price <span style="color:#9D9D9D; "> ($) </span><input type="text" id='price'> </p>                     
        </div>

        <div class="file-name">
            <p>File ID(s): 365447169 </p>
            <p>Original name(s): IGP_4237_1.jpg </p>
        </div>

        <div class="submit">
            <a href="#" type="button" id="submit">Submit</a>
        </div>

    </div>

</div>

<div class="inreview-content" style="display:none;" id="inreview-content">

    <div class="image-box">

        <img src="../../Resources/Img/profile/n1.jpg" id="re1" onclick="clickimage('re1')">
        <img src="../../Resources/Img/profile/n2.jpg" id="re2" onclick="clickimage('re2')" >
        <img src="../../Resources/Img/profile/n3.jpg" id="re3" onclick="clickimage('re3')">
        <img src="../../Resources/Img/profile/n4.jpg" id="re4" onclick="clickimage('re4')">

    </div>

    <div class="inreview-details">
        <div id="image1">
            <div class="details-inreview-title">
                <h3>Happy Faces</h3> 
                <p>Submitted 2 days ago </p>
            </div>
            <div class="details-inreview">                    
                <p>Title : <span style='color: #9D9D9D;'>Happy Faces</span> </p>
                <p>Category : <span style='color: #9D9D9D;'>People</span> </p>
                <p>File ID(s): <span style='color: #9D9D9D;'>365447169</span> </p>
                <p>Original name(s) : <span style='color: #9D9D9D;'>IGP_4237_1.jpg</span> </p>
            </div>
        </div>

        <div id="image2" style='display:none;'>
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
        </div>
    </div>



</div>

<div class="notaccepted-content" style="display:none;" id="notaccepted-content">

    <div class="image-box-rejected">

        <img src="../../Resources/Img/profile/n5.jpg" id="re5" onclick="clickimage('re5')">
        <img src="../../Resources/Img/profile/n6.jpg" id="re6" onclick="clickimage('re6')" >
        <img src="../../Resources/Img/profile/n7.jpg" id="re7" onclick="clickimage('re7')">
        <img src="../../Resources/Img/profile/n8.jpg" id="re8" onclick="clickimage('re8')">

    </div>

    <div class="notaccepted-details">
        <div id="image5">
            <div class="details-notaccepted-title">
                <h3>White Tiger</h3> 
                <p>Submitted 2 days ago </p>
            </div>
            <div class="details-notaccepted">                    
                <p>Thanks for giving us the chance to consider your image. Unfortunately, we found that it doesn't meet our needs so we can't accept it into our collection.</p>
                <span>Image with Water Mark</span>
                <p>File ID(s): <span style='color: #9D9D9D; background-color: transparent; padding: 0; margin: 0;'>716797169</span> </p>
                <p>Original name(s) : <span style='color: #9D9D9D; background-color: transparent;  padding:0; margin: 0;'>IGP_8756.jpg</span> </p>

            </div>
        </div>

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
        </div>
    </div>

</div>

<div class="accepted-content" style="display:none;" id="accepted-content">

    <div class="image-box-accepted">

        <img src="../../Resources/Img/profile/a1.jpg" id="re9" onclick="clickimage('re9')">
        <img src="../../Resources/Img/profile/a2.jpg" id="re10" onclick="clickimage('re10')" >
        <img src="../../Resources/Img/profile/a3.jpg" id="re11" onclick="clickimage('re11')">
        <img src="../../Resources/Img/profile/a4.jpg" id="re12" onclick="clickimage('re12')">

    </div>

    <div class="accepted-details">
        <div id="image9">
            <div class="details-accepted-title">
                <h3>Sripada</h3> 
                <p>Submitted on 12th Nov 2018 </p>
            </div>
            <div class="details-accepted">                    


                <p>Downloads: <span style='color: #9D9D9D; background-color: transparent; padding: 0; margin: 0;'>&emsp;5 Times</span> </p>
                <p>Pricing per Download:<span style='color: #9D9D9D; background-color: transparent;  padding:0; margin: 0;'>&emsp;$10</span> </p>
                <span style="font-weight: bold;">Total Earing:&emsp; $50</span>
                <p>File ID(s): <span style='color: #9D9D9D; background-color: transparent; padding: 0; margin: 0;'>716797169</span> </p>
                <p>Original name(s) : <span style='color: #9D9D9D; background-color: transparent;  padding:0; margin: 0;'>IGP_8756.jpg</span> </p>

            </div>
        </div>

        <div id="image10" style='display:none;'>
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
        </div>

        <div id="image11" style='display:none;'>
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
        </div>

        <div id="image12" style='display:none;'>
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
        </div>
    </div>
</div>



