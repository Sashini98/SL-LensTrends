<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">

        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/AdminDashboard.css"/>
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/AdminNotification.css"/>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script>            
        <title>Admin</title>
    </head>-->
    <div style="background-color: #f8f9fb;">

        <div id="DashboardBody" class="DashboardBody" style="margin-left: 20%;" >
            <div class="summeryBody" style=" display: flex; flex-direction: column;">
                <div class="Photos">
                    <div class="heading">
                        <h1>Photos</h1>
                    </div>

                    <div class="chart-photo" style=" ">

                        <div class="upload-for-review">
                            <canvas id="myChart1" width="550" height="300"></canvas>
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
        <!--<script type="text/javascript" src="../../JS/Admin/AdminDashboard.js"></script>-->
    </div>
<!--</html>-->
