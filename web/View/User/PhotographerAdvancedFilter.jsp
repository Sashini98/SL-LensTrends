<%-- 
    Document   : PhotographerAdvancedFilter
    Created on : Oct 17, 2020, 8:12:32 AM
    Author     : kesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../CSS/User/PhotographerSearch.css"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="../../JS/User/AdvancedSearch.js" type="text/javascript"></script>
    <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
    <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
</head>
<div >
    <div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;display: flex;align-items: center">
        <span style="font-size: 1.2em">
<!--            <i class="material-icons">filter_alt</i>-->
            <b>Filter</b>
        </span>
        <span style="margin-left: auto;margin-right: 0;font-size: 0.8em;margin-top: 4%">
            <b>Clear</b>
        </span>
    </div>
    <div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;">
        <div style="display: flex;align-items: center">
            <i class="material-icons">search</i>
            <span>Sort by</span>
            <i class="material-icons" style="margin-right: 0;margin-left: auto">expand_more</i>
        </div>
        <div style="margin: 4% 10% 0">
            <input type="radio" name="SortBy" id="relevant" checked="">
            &nbsp;&nbsp;
            <label for="relevant" >Most relevant</label>
            <br/>
            <input type="radio" name="SortBy" id="fresh">
            &nbsp;&nbsp;
            <label for="fresh">Fresh content</label><br/>
        </div>
    </div>
    <div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;">
        <div style="display: flex;align-items: center">
            <i class="material-icons">search</i>
            <span>Image type</span>
            <i class="material-icons" style="margin-right: 0;margin-left: auto">expand_more</i>
        </div>
        <div style="margin: 4% 10% 0">
            <input type="radio" name="images" id="images" checked="" onclick="checkSubCategory('1', 'images')">&nbsp;&nbsp;<label for="images">All images</label><br/>
            <input type="checkbox"  id="Photos" onclick="checkSubCategory('1', 'Photos')">&nbsp;&nbsp;<label for="Photos">Photos</label><br/>
            <input type="checkbox"  id="Vectors" onclick="checkSubCategory('1', 'Vectors')">&nbsp;&nbsp;<label for="Vectors">Vectors</label><br/>
            <input type="checkbox" id="Illustrations" onclick="checkSubCategory('1', 'Illustrations')">&nbsp;&nbsp;<label for="Illustrations">Illustrations</label><br/>
        </div>
    </div>
    <div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;">
        <div style="display: flex;align-items: center">
            <i class="material-icons">search</i>
            <span>Orientation</span>
            <i class="material-icons" style="margin-right: 0;margin-left: auto">expand_more</i>
        </div>
        <div style="margin: 4% 10% 0">
            <input type="radio" name="AllOrientations" id="AllOrientations" checked="" onclick="checkSubCategory('2', 'AllOrientations')">&nbsp;&nbsp;<label for="AllOrientations">All Orientations</label><br/>
            <input type="checkbox"  id="Horizontal" onclick="checkSubCategory('2', 'Horizontal')">&nbsp;&nbsp;<label for="Horizontal">Horizontal</label><br/>
            <input type="checkbox"  id="Vertical" onclick="checkSubCategory('2', 'Vertical')">&nbsp;&nbsp;<label for="Vertical">Vertical</label><br/>
            <input type="checkbox"  id="Square"  onclick="checkSubCategory('2', 'Square')">&nbsp;&nbsp;<label for="Square">Square</label><br/>
            <input type="checkbox"   id="Panoramic"  onclick="checkSubCategory('2', 'Panoramic')">&nbsp;&nbsp;<label for="Panoramic">Panoramic</label><br/>
        </div>
    </div>
    <div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;">
        <div style="display: flex;align-items: center">
            <i class="material-icons">search</i>
            <span>Size</span>
            <i class="material-icons" style="margin-right: 0;margin-left: auto">expand_more</i>
        </div>
        <div style="margin: 4% 10% 0;">
            <input type="radio" name="Size" id="Pixels" checked="">&nbsp;&nbsp;<label for="Pixels">Pixels</label><br/>
            <input type="radio" name="Size"  id="Megapixels">&nbsp;&nbsp;<label for="Megapixels">Megapixels</label><br/>
            <br />
            <div style="margin: 4% 3% 0;"> 
                <div style="display: flex; justify-content: space-between;">
                    <label style="font-size: 15px; ">Minimum Width</label>
                    <input  style="width: 20%;" type="text" />
                </div>

                <div style="display: flex; justify-content: space-between;">
                    <label style="font-size: 15px;">Minimum Height</label>
                    <input style="width: 20%;"  type="text" />
                </div>

                <br/>

                <div style="display: flex; justify-content: space-between;">
                    <label style="font-size: 15px;">Maximum Width</label>
                    <input style="width: 20%;"  type="text" />
                </div>
                <div style="display: flex; justify-content: space-between;">
                    <label style="font-size: 15px;">Maximum Height</label>
                    <input style="width: 20%;"  type="text" />
                </div>
            </div>
        </div>
    </div>
    <div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;">
        <div style="display: flex;align-items: center">
            <i class="material-icons">search</i>
            <span>People</span>
            <i class="material-icons" style="margin-right: 0;margin-left: auto">expand_more</i>
        </div>
        <div style="margin: 4% 10% 0">
            <input type="radio" name="People" id="WithPeople">&nbsp;&nbsp;<label for="WithPeople">With people</label><br/>
            <input type="radio" name="People"  id="WithoutPeople" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="WithoutPeople">Without people</label><br/>
        </div>
    </div>
    <div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;">
        <div style="display: flex;align-items: center">
            <i class="material-icons">search</i>
            <span>Gender</span>
            <i class="material-icons" style="margin-right: 0;margin-left: auto">expand_more</i>
        </div>
        <div style="margin: 4% 10% 0">
            <input type="radio" name="Both" id="Both" >&nbsp;&nbsp;<label for="Both">Both</label><br/>
            <input type="checkbox" id="Male" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="Male">Male</label><br/>
            <input type="checkbox" id="Female" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="Female">Female</label><br/>
        </div>
    </div>
    <div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;">
        <div style="display: flex;align-items: center">
            <i class="material-icons">search</i>
            <span>Undiscovered</span>
            <i class="material-icons" style="margin-right: 0;margin-left: auto">expand_more</i>
        </div>
        <div style="margin: 4% 10% 0">
            <input type="checkbox" name="Undiscovered" id="Undiscovered">&nbsp;&nbsp;<label for="Undiscovered">Undiscovered content</label><br/>
        </div>
    </div>

</div>