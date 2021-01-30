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
<div style="font-family: 'Didact Gothic', sans-serif;">
    <div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;display: flex;align-items: center">
        <span style="font-size: 1.2em">
            <!--            <i class="material-icons">filter_alt</i>-->
            <b>Filter</b>
        </span>
        <span style="margin-left: auto;margin-right: 0;font-size: 0.9em;margin-top: 4%; cursor: pointer;">
            <b>Clear</b>
        </span>
    </div>
    <div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;">
        <div style="display: flex;align-items: center">
            <i class="material-icons">search</i>
            <span>Category</span>
            <i class="material-icons" style="margin-right: 0;margin-left: auto">expand_more</i>
        </div>
        <div style="margin: 4% 10% 0">
            <input type="text" id="PhotographerCategory" onkeyup="PhotographerKeywordSearch(event,2);" style="width: 100%; outline: none;">&nbsp;&nbsp;<br/>
        </div>
    </div>
    <div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;">
        <div style="display: flex;align-items: center">
            <i class="material-icons">search</i>
            <span>City</span>
            <i class="material-icons" style="margin-right: 0;margin-left: auto">expand_more</i>
        </div>
        <div style="margin: 4% 10% 0">
            <input id="photographerCity" type="text" onkeyup="PhotographerKeywordSearch(event,2);" style="width: 100%; outline: none;">&nbsp;&nbsp;<br/>
        </div>
    </div>
    <div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;">
        <div style="display: flex;align-items: center">
            <i class="material-icons">search</i>
            <span>Province</span>
            <i class="material-icons" style="margin-right: 0;margin-left: auto">expand_more</i>
        </div>
        <div style="margin: 4% 10% 0">
            <select id="photographerProvince" onchange="Search2();" name="area" style="width: 100%; outline: none; height: 20px;">
                <option value=""></option>
                <option value="Central Province">Central Province</option>
                <option value="Western Province">Western Province</option>
                <option value="Southern Province">Southern Province</option>
                <option value="Uva Province">Uva Province</option>
                <option value="Sabaragamuwa Province">Sabaragamuwa Province</option>
                <option value="North Western Province">North Western Province</option>
                <option value="North Central Province">North Central Province</option>
                <option value="Northern Province">Northern Province</option>
                <option value="Eastern Province">Eastern Province</option>
            </select>
        </div>
    </div>
    <div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;">
        <div style="display: flex;align-items: center">
            <i class="material-icons">search</i>
            <span>Gender</span>
            <i class="material-icons" style="margin-right: 0;margin-left: auto">expand_more</i>
        </div>
        <div style="margin: 4% 10% 0">
            <input type="checkbox" name="gender" id="Both" onclick="checkSubCategory('Both'); PhotographerKeywordSearch(event,2);" checked>&nbsp;&nbsp;<label for="Both">Both</label><br/>
            <input type="checkbox" name="gender" id="Male" onclick="checkSubCategory('Male'); PhotographerKeywordSearch(event,2);">&nbsp;&nbsp;<label for="Male">Male</label><br/>
            <input type="checkbox"name="gender" id="Female" onclick="checkSubCategory('Female'); PhotographerKeywordSearch(event,2);">&nbsp;&nbsp;<label for="Female">Female</label><br/>
        </div>
    </div>
</div>

<script src="../../JS/User/PhotographerSearch.js" type="text/javascript"></script>