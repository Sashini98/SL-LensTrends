function notifyButtonChange() {

    document.getElementById("notificationIcon").src = "../../Resources/Img/notify-white.svg";
    document.getElementById("notify").style.color = "white";
//    document.getElementById("notifyDiv").style.backgroundColor = "red";


}

function notifyButtonBack() {

    document.getElementById("notificationIcon").src = "../../Resources/Img/notify.svg";
    document.getElementById("notify").style.color = "black";
//    document.getElementById("notifyDiv").style.backgroundColor = "white";
}

function subscriptionButtonChange() {

    document.getElementById("subscriptionIcon").src = "../../Resources/Img/notify-white.svg";
    document.getElementById("subscriptiontext").style.color = "white";
//    document.getElementById("notifyDiv").style.backgroundColor = "red";


}

function subscriptionButtonBack() {

    document.getElementById("subscriptionIcon").src = "../../Resources/Img/notify.svg";
    document.getElementById("subscriptiontext").style.color = "black";
//    document.getElementById("notifyDiv").style.backgroundColor = "white";
}

function photomanageButtonChange() {

    document.getElementById("photomanageIcon").src = "../../Resources/Img/photomanagement-white.svg";
    document.getElementById("photomanagement").style.color = "white";
//    document.getElementById("notifyDiv").style.backgroundColor = "red";


}

function photomanageButtonBack() {

    document.getElementById("photomanageIcon").src = "../../Resources/Img/photomanagement.svg";
    document.getElementById("photomanagement").style.color = "black";
//    document.getElementById("notifyDiv").style.backgroundColor = "white";
}


function photoapprovalButtonChange() {

    document.getElementById("photoapprovalIcon").src = "../../Resources/Img/photoreview-white.svg";
    document.getElementById("photo-approval").style.color = "white";
//    document.getElementById("notifyDiv").style.backgroundColor = "red";


}

function photoapprovalButtonBack() {

    document.getElementById("photoapprovalIcon").src = "../../Resources/Img/photoreview.svg";
    document.getElementById("photo-approval").style.color = "black";
//    document.getElementById("notifyDiv").style.backgroundColor = "white";
}

function forumButtonChange() {

    document.getElementById("forumIcon").src = "../../Resources/Img/forum-white.svg";
    document.getElementById("forummanage").style.color = "white";
//    document.getElementById("notifyDiv").style.backgroundColor = "red";


}

function forumButtonBack() {

    document.getElementById("forumIcon").src = "../../Resources/Img/forummangement.svg";
    document.getElementById("forummanage").style.color = "black";
//    document.getElementById("notifyDiv").style.backgroundColor = "white";
}

function userButtonChange() {

    document.getElementById("userIcon").src = "../../Resources/Img/user-white.svg";
    document.getElementById("usermanage").style.color = "white";
//    document.getElementById("notifyDiv").style.backgroundColor = "red";


}

function userButtonBack() {

    document.getElementById("userIcon").src = "../../Resources/Img/user.svg";
    document.getElementById("usermanage").style.color = "black";
//    document.getElementById("notifyDiv").style.backgroundColor = "white";
}

function summaryButtonChange() {

    document.getElementById("summaryIcon").src = "../../Resources/Img/summary-white.svg";
    document.getElementById("summarytext").style.color = "white";
//    document.getElementById("notifyDiv").style.backgroundColor = "red";


}

function summaryButtonBack() {

    document.getElementById("summaryIcon").src = "../../Resources/Img/summary.svg";
    document.getElementById("summarytext").style.color = "black";
//    document.getElementById("notifyDiv").style.backgroundColor = "white";
}

function settingButtonChange() {

    document.getElementById("settingIcon").src = "../../Resources/Img/settings-white.svg";
    document.getElementById("settingtext").style.color = "white";
//    document.getElementById("notifyDiv").style.backgroundColor = "red";


}

function settingButtonBack() {

    document.getElementById("settingIcon").src = "../../Resources/Img/settings.svg";
    document.getElementById("settingtext").style.color = "black";
//    document.getElementById("notifyDiv").style.backgroundColor = "white";
}


function logoutButtonChange() {

    document.getElementById("logoutIcon").src = "../../Resources/Img/logout-white.svg";
    document.getElementById("logouttext").style.color = "white";
//    document.getElementById("notifyDiv").style.backgroundColor = "red";


}

function logoutButtonBack() {

    document.getElementById("logoutIcon").src = "../../Resources/Img/logout.svg";
    document.getElementById("logouttext").style.color = "black";
//    document.getElementById("notifyDiv").style.backgroundColor = "white";
}

function show(selectedTab) {

    if (selectedTab === 'notification') {
        document.getElementById("managePhotoCss").disabled = true;
        document.getElementById("photoapprovalCss").disabled = true;
        document.getElementById("forumCss").disabled = true;
        document.getElementById("userCss").disabled = true;
        document.getElementById("settingCss").disabled = true;
        document.getElementById("subCss").disabled = true;
        document.getElementById("reportedphotoCss").disabled = true;
        document.getElementById("uplodedPhotosCss").disabled = true;
        document.getElementById("reportedQuetionsCss").disabled = true;
        document.getElementById("notificationCss").disabled = false;
        notifyButtonChange();
        subscriptionButtonBack();
        photomanageButtonBack();
        photoapprovalButtonBack();
        forumButtonBack();
        userButtonBack();
        summaryButtonBack();
        settingButtonBack();
    } else if (selectedTab === 'photomanage') {
        document.getElementById("notificationCss").disabled = true;
        document.getElementById("photoapprovalCss").disabled = true;
        document.getElementById("forumCss").disabled = true;
        document.getElementById("userCss").disabled = true;
        document.getElementById("settingCss").disabled = true;
        document.getElementById("subCss").disabled = true;
        document.getElementById("reportedphotoCss").disabled = true;
        document.getElementById("uplodedPhotosCss").disabled = true;
        document.getElementById("reportedQuetionsCss").disabled = true;
        document.getElementById("managePhotoCss").disabled = false;
        notifyButtonBack();
        subscriptionButtonBack();
        photomanageButtonChange();
        photoapprovalButtonBack();
        forumButtonBack();
        userButtonBack();
        summaryButtonBack();
        settingButtonBack();
    } else if (selectedTab === 'photoapproval') {
        document.getElementById("notificationCss").disabled = true;
        document.getElementById("managePhotoCss").disabled = true;
        document.getElementById("forumCss").disabled = true;
        document.getElementById("userCss").disabled = true;
        document.getElementById("settingCss").disabled = true;
        document.getElementById("subCss").disabled = true;
        document.getElementById("reportedphotoCss").disabled = true;
        document.getElementById("uplodedPhotosCss").disabled = true;
        document.getElementById("reportedQuetionsCss").disabled = true;
        document.getElementById("photoapprovalCss").disabled = false;

    } else if (selectedTab === 'forum') {
        document.getElementById("notificationCss").disabled = true;
        document.getElementById("managePhotoCss").disabled = true;
        document.getElementById("photoapprovalCss").disabled = true;
        document.getElementById("userCss").disabled = true;
        document.getElementById("settingCss").disabled = true;
        document.getElementById("subCss").disabled = true;
        document.getElementById("reportedphotoCss").disabled = true;
        document.getElementById("uplodedPhotosCss").disabled = true;
        document.getElementById("reportedQuetionsCss").disabled = true;
        document.getElementById("forumCss").disabled = false;

    } else if (selectedTab === 'user') {
        document.getElementById("notificationCss").disabled = true;
        document.getElementById("managePhotoCss").disabled = true;
        document.getElementById("photoapprovalCss").disabled = true;
        document.getElementById("forumCss").disabled = true;
        document.getElementById("settingCss").disabled = true;
        document.getElementById("subCss").disabled = true;
        document.getElementById("reportedphotoCss").disabled = true;
        document.getElementById("uplodedPhotosCss").disabled = true;
        document.getElementById("reportedQuetionsCss").disabled = true;
        document.getElementById("userCss").disabled = false;

    } else if (selectedTab === 'summary') {
//        document.getElementById("notificationCss").disabled = true;
//        document.getElementById("managePhotoCss").disabled = true;
//        document.getElementById("photoapprovalCss").disabled = true;
//        document.getElementById("forumCss").disabled = true;
//        document.getElementById("userCss").disabled = false;
//        document.getElementById("settingCss").disabled = true;

    } else if (selectedTab === 'setting') {
        document.getElementById("notificationCss").disabled = true;
        document.getElementById("managePhotoCss").disabled = true;
        document.getElementById("photoapprovalCss").disabled = true;
        document.getElementById("forumCss").disabled = true;
        document.getElementById("userCss").disabled = true;
        document.getElementById("subCss").disabled = true;
        document.getElementById("reportedphotoCss").disabled = true;
        document.getElementById("uplodedPhotosCss").disabled = true;
        document.getElementById("reportedQuetionsCss").disabled = true;
        document.getElementById("settingCss").disabled = false;

    } else if (selectedTab === 'subscription') {
        document.getElementById("notificationCss").disabled = true;
        document.getElementById("managePhotoCss").disabled = true;
        document.getElementById("photoapprovalCss").disabled = true;
        document.getElementById("forumCss").disabled = true;
        document.getElementById("userCss").disabled = true;
        document.getElementById("settingCss").disabled = true;
        document.getElementById("reportedphotoCss").disabled = true;
        document.getElementById("uplodedPhotosCss").disabled = true;
        document.getElementById("reportedQuetionsCss").disabled = true;
        document.getElementById("subCss").disabled = false;

    } else if (selectedTab === 'reportedPhoto') {
        document.getElementById("notificationCss").disabled = true;
        document.getElementById("managePhotoCss").disabled = true;
        document.getElementById("photoapprovalCss").disabled = true;
        document.getElementById("forumCss").disabled = true;
        document.getElementById("userCss").disabled = true;
        document.getElementById("settingCss").disabled = true;
        document.getElementById("subCss").disabled = true;
        document.getElementById("uplodedPhotosCss").disabled = true;
        document.getElementById("reportedQuetionsCss").disabled = true;
        document.getElementById("reportedphotoCss").disabled = false;

    } else if (selectedTab === 'approvePhoto') {
        document.getElementById("notificationCss").disabled = true;
        document.getElementById("managePhotoCss").disabled = true;
        document.getElementById("photoapprovalCss").disabled = true;
        document.getElementById("forumCss").disabled = true;
        document.getElementById("userCss").disabled = true;
        document.getElementById("settingCss").disabled = true;
        document.getElementById("subCss").disabled = true;
        document.getElementById("reportedphotoCss").disabled = true;
        document.getElementById("reportedQuetionsCss").disabled = true;
        document.getElementById("uplodedPhotosCss").disabled = false;

    } else if (selectedTab === 'reportedQuestion') {
        document.getElementById("notificationCss").disabled = true;
        document.getElementById("managePhotoCss").disabled = true;
        document.getElementById("photoapprovalCss").disabled = true;
        document.getElementById("forumCss").disabled = true;
        document.getElementById("userCss").disabled = true;
        document.getElementById("settingCss").disabled = true;
        document.getElementById("subCss").disabled = true;
        document.getElementById("reportedphotoCss").disabled = true;
        document.getElementById("uplodedPhotosCss").disabled = true;
        document.getElementById("reportedQuetionsCss").disabled = false;
    }

    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
        if (request.status === 200) {
            if (request.readyState === 4) {
                var responce = request.responseText;
//                alert(responce);
                document.getElementById("DashboardBody").innerHTML = responce;

            }
        }

    };
    request.open("POST", "../../AdminDasboardHandler", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("selectedTab=" + selectedTab);

}

function logout() {

    window.location.assign("../../LogOut?loc=ch");

}
