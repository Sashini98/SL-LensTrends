<%-- 
    Document   : AdminDashboard
    Created on : Nov 7, 2020, 2:41:58 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String type = (String) request.getAttribute("type");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://use.typekit.net/mzc0rkn.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500;900&display=swap" rel="stylesheet">

        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/AdminNotification.css"  id="notificationCss" />
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/ManagePhoto.css" id="managePhotoCss"/>
        <link rel="stylesheet" href="../../CSS/Admin/ApprovePhotos.css" id="photoapprovalCss">
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/ManageForum.css" id="forumCss"/>
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/ManageUser.css" id="userCss"/>
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/AdminProfile.css" id="settingCss"/>
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/SubPlan.css" id="subCss"/>
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/ViewReportedPhotos.css" id="reportedphotoCss"/>
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/ViewUploadPhotos.css" id="uplodedPhotosCss"/>
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/ViewReportedQue.css" id="reportedQuetionsCss"/>

        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/AdminDashboard.css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script>            
        <title>Administrator</title>
    </head>
    <body style="background-color: #f8f9fb;">


        <div class="side-nav">

            <a href=""><img src="../../Resources/Img/7.png"></a>
                <%
                    if (type.equalsIgnoreCase("Main")) {
                %>
            <div id="summaryDiv"  onmouseover="summaryButtonChange('summaryDiv')" onmouseout="summaryButtonBack('summaryDiv')" onclick="show('summary')" class="summary">
                <img id="summaryIcon" src="../../Resources/Img/summary.svg" />
                <p><a href="#" type="button"  id="summarytext">Dashboard</a></p>
            </div>
            <%
                }
            %>
            <div id="photomanageDiv" onmouseover="photomanageButtonChange('photomanageDiv')" onmouseout="photomanageButtonBack('photomanageDiv')" onclick="show('photomanage')" class="photomanage">
                <img id="photomanageIcon" src="../../Resources/Img/photomanagement.svg" />
                <p><a href="#" type="button"  id="photomanagement">Reported Photos</a></p>
                <label>4</label>
            </div>

            <div id="photoapprovalDiv" onmouseover="photoapprovalButtonChange('photoapprovalDiv')" onmouseout="photoapprovalButtonBack('photoapprovalDiv')" onclick="show('photoapproval')" class="photoapproval">
                <img id="photoapprovalIcon" src="../../Resources/Img/photoreview.svg" />
                <p><a href="#" type="button"  id="photo-approval">Photo Approval</a></p>
                <label>4</label>
            </div>

            <div id="forumDiv" onmouseover="forumButtonChange('forumDiv')" onmouseout="forumButtonBack('forumDiv')" onclick="show('forum')" class="forum">
                <img id="forumIcon" src="../../Resources/Img/forummangement.svg" />
                <p><a href="#" type="button"  id="forummanage">Reported Forum</a></p>
                <label>3</label>
            </div>

            <%
                if (type.equalsIgnoreCase("Main")) {
            %>
            <div id="userDiv" onmouseover="userButtonChange('userDiv')" onmouseout="userButtonBack('userDiv')" onclick="show('user')"  class="user">
                <img id="userIcon" src="../../Resources/Img/user.svg" />
                <p><a href="#" type="button"  id="usermanage">Manage User</a></p>
                <label>2</label>
            </div>
            <%
                }
            %>

            <div id="notifyDiv"  onmouseover="notifyButtonChange('notifyDiv')" onmouseout="notifyButtonBack('notifyDiv')" onclick="show('notification')" class="notification">
                <img id="notificationIcon" src="../../Resources/Img/notify.svg" />
                <p><a href="#" type="button"  id="notify">Notification</a></p>
                <label>2</label>
            </div>

            <div id="subscriptionDiv" onmouseover="subscriptionButtonChange('subscription')" onmouseout="subscriptionButtonBack('subscription')" onclick="show('subscription')"  class="subscription">
                <img id="subscriptionIcon" src="../../Resources/Img/subscription.svg" />
                <p><a href="#" type="button"  id="subscriptiontext">Subscription Plans</a></p>
            </div>

            <div id="settingDiv"  onmouseover="settingButtonChange('settingDiv')" onmouseout="settingButtonBack('settingDiv')" onclick="show('setting')"  class="setting">
                <img id="settingIcon" src="../../Resources/Img/settings.svg" />
                <p><a href="#" type="button"  id="settingtext">User Account</a></p>
            </div>


            <div id="logoutDiv" onclick="logout()" onmouseover="logoutButtonChange('logoutDiv')" onmouseout="logoutButtonBack('logoutDiv')" class="logout">
                <img id="logoutIcon" src="../../Resources/Img/logout.svg" />
                <p><a href="../../LogOut?loc=ch" type="button"  id="logouttext">logout</a></p>
            </div>

        </div>

        <div id="DashboardBody" class="DashboardBody" style="margin-left: 20%; width: 100%;" >
            <div class="summeryBody" style=" display: flex; flex-direction: column;">
                <div class="Photos">
                    <div class="heading" style="margin-left: 5px;">
                        <h1 style="margin-left: 0px;">Photos</h1>
                    </div>

                    <div class="chart-photo">

                        <div class="upload-for-review" >
                            <canvas id="myChart1" height="300px"  width="550px" ></canvas>
                            <script>
                                Chart.defaults.global.animation.duration = 5000;
                                var ctx = document.getElementById('myChart1').getContext('2d');
                                var myChart = new Chart(ctx, {
                                    type: 'line',
                                    data: {
                                        labels: ['11/1', '11/2', '11/3', '11/4', '11/5', '11/6', '11/7'],
                                        datasets: [{
                                                label: 'Uploads for Review',
                                                fill: false,
                                                data: [12, 9, 20, 5, 16, 7, 34],
                                                borderColor: "#415daa",
                                                pointBackgroundColor: "#ee8322",
                                                pointBorderColor: "#ee8322",
                                                borderWidth: 3
                                            }]
                                    },
                                    options: {
                                        scales: {
                                            xAxes: [{
                                                    barPercentage: 20,
                                                    categoryPercentage: 2,
                                                    gridLines: {
                                                        display: false,
                                                    },
                                                    ticks: {
                                                        fontFamily: "arial",
                                                        fontSize: "13"
                                                    }

                                                }],
                                            yAxes: [{
                                                    gridLines: {
                                                        //                                display:false                                        
                                                    },
                                                    ticks: {
                                                        beginAtZero: true,
                                                        fontFamily: "arial",
                                                        fontSize: "12",
                                                        stepSize: 10,
                                                        fixedStepSize: 5
                                                    }
                                                }]

                                        },
                                        legend: {
                                            display: true,
                                            labels: {
                                                fontColor: '#415daa',
                                                fontFamily: "calibri",
                                                boxWidth: 0
                                            }
                                        }
                                    }
                                });
                            </script>
                        </div> 

                        <div class="approved-photos">
                            <canvas id="myChart2" width="550" height="300"></canvas>
                            <script>
                                Chart.defaults.global.animation.duration = 5000;
                                var ctx = document.getElementById('myChart2').getContext('2d');
                                var myChart = new Chart(ctx, {
                                    type: 'line',
                                    data: {
                                        labels: ['11/10', '11/11', '11/12', '11/13', '11/14', '11/15', '11/16'],
                                        datasets: [{
                                                label: 'Approved Photos',
                                                fill: false,
                                                data: [16, 8, 12, 12, 9, 7, 14],
                                                borderColor: "#415daa",
                                                pointBackgroundColor: "#ee8322",
                                                pointBorderColor: "#ee8322",
                                                borderWidth: 3
                                            }]
                                    },
                                    options: {
                                        scales: {
                                            xAxes: [{
                                                    barPercentage: 20,
                                                    categoryPercentage: 2,
                                                    gridLines: {
                                                        display: false,
                                                    },
                                                    ticks: {
                                                        fontFamily: "arial",
                                                        fontSize: "13"
                                                    }

                                                }],
                                            yAxes: [{
                                                    gridLines: {
                                                        //                                display:false                                        
                                                    },
                                                    ticks: {
                                                        beginAtZero: true,
                                                        fontFamily: "arial",
                                                        fontSize: "12",
                                                        stepSize: 10,
                                                        fixedStepSize: 5
                                                    }
                                                }]

                                        },
                                        legend: {
                                            display: true,
                                            labels: {
                                                fontColor: '#415daa',
                                                fontFamily: "calibri",
                                                boxWidth: 0
                                            }
                                        }
                                    }
                                });
                            </script>
                        </div>

                        <div class="rejected-photos">
                            <canvas id="myChart3" width="550" height="300"></canvas>
                            <script>
                                Chart.defaults.global.animation.duration = 5000;
                                var ctx = document.getElementById('myChart3').getContext('2d');
                                var myChart = new Chart(ctx, {
                                    type: 'line',
                                    data: {
                                        labels: ['11/10', '11/11', '11/12', '11/13', '11/14', '11/15', '11/16'],
                                        datasets: [{
                                                label: 'Rejected Photos',
                                                fill: false,
                                                data: [8, 8, 6, 12, 1, 10, 1],
                                                borderColor: "#415daa",
                                                pointBackgroundColor: "#ee8322",
                                                pointBorderColor: "#ee8322",
                                                borderWidth: 3
                                            }]
                                    },
                                    options: {
                                        scales: {
                                            xAxes: [{
                                                    barPercentage: 20,
                                                    categoryPercentage: 2,
                                                    gridLines: {
                                                        display: false,
                                                    },
                                                    ticks: {
                                                        fontFamily: "arial",
                                                        fontSize: "13"
                                                    }

                                                }],
                                            yAxes: [{
                                                    gridLines: {
                                                        //                                display:false                                        
                                                    },
                                                    ticks: {
                                                        beginAtZero: true,
                                                        fontFamily: "arial",
                                                        fontSize: "12",
                                                        stepSize: 10,
                                                        fixedStepSize: 5
                                                    }
                                                }]

                                        },
                                        legend: {
                                            display: true,
                                            labels: {
                                                fontColor: '#415daa',
                                                fontFamily: "calibri",
                                                boxWidth: 0
                                            }
                                        }
                                    }
                                });
                            </script>
                        </div>

                        <div class="photos-summary">
                            <canvas id="myChart4" width="550" height="300"></canvas>
                            <script>
                                Chart.defaults.global.animation.duration = 5000;
                                var ctx = document.getElementById('myChart4').getContext('2d');
                                var myChart = new Chart(ctx, {
                                    type: 'doughnut',
                                    data: {
                                        labels: ['Rejected', 'Approved'],
                                        datasets: [{
                                                data: [8, 20],
                                                fill: true,
                                                border: 0,
                                                backgroundColor: ['#366eea', '#ee8322']

                                            }]
                                    },
                                    options: {
                                        responsive: true,
                                        legend: {
                                            position: 'top',
                                        },
                                        title: {
                                            display: true,
                                            text: 'Photos Summary'
                                        },
                                        animation: {
                                            animateScale: true,
                                            animateRotate: true
                                        }
                                    }
                                });
                            </script>
                        </div>     

                    </div>
                </div>
                <!--                <div class="Forum">
                                    <div class="heading2">
                                        <h1>Forum</h1>
                                    </div>
                
                                    <div class="chart-forum">
                
                                    </div>
                                </div>-->
            </div>
        </div>
        <script type="text/javascript" src="../../JS/Admin/AdminDashboard.js"></script>
        <script src="../../JS/Admin/UserManagement.js" type="text/javascript"></script>
        <script src="../../JS/Admin/PlanUpdate.js" type="text/javascript"></script>
    </body>
</html>
