<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <title>TODO supply a title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../CSS/User/AdvancedSearch.css"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;display: flex;align-items: center">
    <span style="font-size: 1.2em"><i class="material-icons">filter_alt</i><b>Filter</b></span>
    <span style="margin-left: auto;margin-right: 0;font-size: 0.8em;margin-top: 4%"><b>Clear</b></span>
</div>
<div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;">
    <div style="display: flex;align-items: center">
        <i class="material-icons">search</i>
        <span>Asset Type</span>
        <i class="material-icons" style="margin-right: 0;margin-left: auto">expand_more</i>
    </div>
    <div style="margin: 4% 10% 0">
        <input type="radio" name="assetType" checked="">&nbsp;&nbsp;<span>All</span><br/>
        <input type="radio" name="assetType">&nbsp;&nbsp;<span>Images</span><br/>
        <input type="radio" name="assetType">&nbsp;&nbsp;<span>Videos</span><br/>
        <input type="radio" name="assetType">&nbsp;&nbsp;<span>Templates</span><br/>
        <input type="radio" name="assetType">&nbsp;&nbsp;<span>3D</span><br/>
    </div>
</div>
<div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;">
    <div style="display: flex;align-items: center">
        <i class="material-icons">search</i>
        <span>Subcategory</span>
        <i class="material-icons" style="margin-right: 0;margin-left: auto">expand_more</i>
    </div>
    <div style="margin: 4% 10% 0">
        <input type="radio" name="subCategory" id="subCategory" checked="">&nbsp;&nbsp;<label for="subCategory">All</label><br/>
        <input type="checkbox" id="subCategory1" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="subCategory1">Images</label><br/>
        <input type="checkbox" id="subCategory2" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="subCategory2">Videos</label><br/>
        <input type="checkbox" id="subCategory3" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="subCategory3">Templates</label><br/>
    </div>
</div>
<div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;">
    <div style="display: flex;align-items: center">
        <i class="material-icons">search</i>
        <span>Subcategory</span>
        <i class="material-icons" style="margin-right: 0;margin-left: auto">expand_more</i>
    </div>
    <div style="margin: 4% 10% 0">
        <input type="radio" name="subCategory" id="subCategory" checked="">&nbsp;&nbsp;<label for="subCategory">All</label><br/>
        <input type="checkbox" id="subCategory1" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="subCategory1">Images</label><br/>
        <input type="checkbox" id="subCategory2" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="subCategory2">Videos</label><br/>
        <input type="checkbox" id="subCategory3" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="subCategory3">Templates</label><br/>
    </div>
</div>
<div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;">
    <div style="display: flex;align-items: center">
        <i class="material-icons">search</i>
        <span>Subcategory</span>
        <i class="material-icons" style="margin-right: 0;margin-left: auto">expand_more</i>
    </div>
    <div style="margin: 4% 10% 0">
        <input type="radio" name="subCategory" id="subCategory" checked="">&nbsp;&nbsp;<label for="subCategory">All</label><br/>
        <input type="checkbox" id="subCategory1" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="subCategory1">Images</label><br/>
        <input type="checkbox" id="subCategory2" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="subCategory2">Videos</label><br/>
        <input type="checkbox" id="subCategory3" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="subCategory3">Templates</label><br/>
    </div>
</div>
<div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;">
    <div style="display: flex;align-items: center">
        <i class="material-icons">search</i>
        <span>Subcategory</span>
        <i class="material-icons" style="margin-right: 0;margin-left: auto">expand_more</i>
    </div>
    <div style="margin: 4% 10% 0">
        <input type="radio" name="subCategory" id="subCategory" checked="">&nbsp;&nbsp;<label for="subCategory">All</label><br/>
        <input type="checkbox" id="subCategory1" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="subCategory1">Images</label><br/>
        <input type="checkbox" id="subCategory2" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="subCategory2">Videos</label><br/>
        <input type="checkbox" id="subCategory3" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="subCategory3">Templates</label><br/>
    </div>
</div>
<div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;">
    <div style="display: flex;align-items: center">
        <i class="material-icons">search</i>
        <span>Subcategory</span>
        <i class="material-icons" style="margin-right: 0;margin-left: auto">expand_more</i>
    </div>
    <div style="margin: 4% 10% 0">
        <input type="radio" name="subCategory" id="subCategory" checked="">&nbsp;&nbsp;<label for="subCategory">All</label><br/>
        <input type="checkbox" id="subCategory1" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="subCategory1">Images</label><br/>
        <input type="checkbox" id="subCategory2" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="subCategory2">Videos</label><br/>
        <input type="checkbox" id="subCategory3" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="subCategory3">Templates</label><br/>
    </div>
</div>
<div style="padding: 4% 6%;border-bottom: solid 2px #EAEAEA;">
    <div style="display: flex;align-items: center">
        <i class="material-icons">search</i>
        <span>Subcategory</span>
        <i class="material-icons" style="margin-right: 0;margin-left: auto">expand_more</i>
    </div>
    <div style="margin: 4% 10% 0">
        <input type="radio" name="subCategory" id="subCategory" checked="">&nbsp;&nbsp;<label for="subCategory">All</label><br/>
        <input type="checkbox" id="subCategory1" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="subCategory1">Images</label><br/>
        <input type="checkbox" id="subCategory2" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="subCategory2">Videos</label><br/>
        <input type="checkbox" id="subCategory3" onclick="checkSubCategory()">&nbsp;&nbsp;<label for="subCategory3">Templates</label><br/>
    </div>
</div>