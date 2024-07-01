<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>All_About_Knowledge</title>
    <!--

    Template 2108 Dashboard

	http://www.tooplate.com/view/2108-dashboard

    -->
  <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/fullcalendar.min.css">
   <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/index-DO6cl02t.css"> 
    <!-- https://fullcalendar.io/ -->
     <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/family.css">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/tooplate.css">
</head>

<body id="reportsPage">
    <div class="" id="home">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-xl navbar-light bg-light">
                        <a class="navbar-brand" href="adminindex.do">
                           <!--  <i class="fas fa-3x fa-tachometer-alt tm-site-icon"></i> -->
                              <h3 class="tm-site-title mb-0">All About Knowledge</h3>
                        </a>
                        <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mx-auto">
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#void" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">교육과목관리
                                        
                                    </a>
                                     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_edu_cat.do">교육카테고리리스트</a>
                                        <a class="dropdown-item" href="manage_lecture.do">강의신청리스트</a>
                                    </div>
                                </li>
                             <li class="nav-item" >
                                    <a class="nav-link "href="manage_memberlist.do">회원 리스트</a>
                                 
                                </li>
                                <li class="nav-item " >
                                    <a class="nav-link " href="manage_instructor.do">강사 관리
                                        </a>
                                </li>

                                    <li class="nav-item " >
                                    
                                        <a class="nav-link" href="manage_qna.do">문의 리스트</a>
                                   
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link " href="manage_notification.do">
                                        공지사항 관리
                                    </a>
                                </li>

                            </ul>
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link d-flex" href="admin_index.do">
                                        <i class="far fa-user mr-2 tm-logout-icon"></i>
                                        <span>Logout</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- row -->
            
            <div class="row tm-content-row tm-mt-big" style="padding: 1rem">
            
             <div class="tm-col tm-col-small" style="margin: auto;">
          	  <div class="bg-white tm-block h-100">
         	   <div class="container">
      		 	 총 강의
      		  <div class="display-4" id="AllInstructorCount">0</div>
  			  </div>
            </div>
              </div>
              
             <div class="tm-col tm-col-small" style="margin: auto;">
            <div class="bg-white tm-block h-100">
             <div class="container">
      		 	 가입자
      		  <div class="display-4" id="AllMemeberCount">0</div>
  			  </div>
            </div>
              </div>
              
             <div class="tm-col tm-col-small"  style="margin: auto;">
            <div class="bg-white tm-block h-100">
             <div class="container">
      		 	 새 문의
      		  <div class="display-4" id="NeedChkQuestionCount">0</div>
  			  </div>
            </div>
              </div>
              
               <div class="tm-col tm-col-small"  style="margin: auto;">
            <div class="bg-white tm-block h-100">
             <div class="container">
      		 	 새 강의 개설
      		  <div class="display-4" id="NeedChkSubjectCount">0</div>
  			  </div>
            </div>
              </div>
              
              
              
                <div class="tm-col tm-col-big"  style="margin: auto;">
                    <div class="bg-white tm-block h-100">
                        <h2 class="tm-block-title">월별 회원 추이</h2>
                       <canvas id="lineChart" class="chartjs-render-monitor"></canvas>
                    </div>
                </div>
                

                
                <div class="tm-col tm-col-big" style="margin: auto;">
                    <div class="bg-white tm-block h-100">
                        <h2 class="tm-block-title">데이터 변경방법을 알았어!</h2>
                        <canvas id="barChart"></canvas>
                    </div>
                </div>
               
               

             
            </div>
            <footer class="row tm-mt-small">
               
            </footer>
        </div>
    </div>
    <script type="text/javascript" src="<c:url value ="/resources/js/jquery-3.3.1.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value ="/resources/js/moment.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value ="/resources/js/Chart.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value ="/resources/js/fullcalendar.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value ="/resources/js/bootstrap.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value ="/resources/js/tooplate-scripts.js"/>"></script>
    <script type="text/javascript" src="<c:url value ="/resources/js/utils.js"/>"></script>

    <script>
    $(document).ready(function() {
        function animateCounter(element, start, end, duration) {
            let range = end - start;
            let current = start;
            let increment = end > start ? 1 : -1;
            let stepTime = Math.abs(Math.floor(duration / range));
            let timer = setInterval(function() {
                current += increment;
                $(element).text(current);
                if (current == end) {
                    clearInterval(timer);
                }
            }, stepTime);
        }

        // 총 인원 수 예제: 0에서 150까지 3초 동안 증가
        
       // var InstructorCount = ${list[0]};
       // var memberCount = ${list[1]};
       // var ChkQuestionCount = ${list[3]};
       // var ChkSubjectCount = ${list[4]};
        
        animateCounter("#AllInstructorCount", 0, 30, 1500);
        animateCounter("#AllMemeberCount", 0, 30, 1500);
        animateCounter("#NeedChkQuestionCount", 0, 30, 1500);
        animateCounter("#NeedChkSubjectCount", 0, 30, 1500);
        
    });
    
    
    let ctxLine,
        ctxBar,
        ctxPie,
        optionsLine,
        optionsBar,
        optionsPie,
        configLine,
        configBar,
        configPie,
        lineChart,
        barChart,
        pieChart;

    // DOM이 준비되었을 때 실행할 함수
    $(function () {
        updateChartOptions();
        drawLineChart(); // Line Chart
        drawBarChart(); // Bar Chart


        $(window).resize(function () {
            updateChartOptions();
            updateLineChart();
            updateBarChart();
            reloadPage();
        });
    });

    // 차트 옵션 업데이트 함수
    function updateChartOptions() {
        optionsLine = { scales: { y: { beginAtZero: true } } };
        optionsBar = { scales: { y: { beginAtZero: true } } };

    }

    // Line 차트 그리기 함수
    function drawLineChart() {
        ctxLine = document.getElementById('lineChart').getContext('2d');
        configLine = {
            type: 'line',
            data: {
                labels: ['1월', '2월', '3월', '4월', '5월', '6월'],
                datasets: [{
                    label: '월별 데이터',
                    data: [12, 19, 3, 5, 2, 3],
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    borderColor: 'rgba(75, 192, 192, 1)',
                    borderWidth: 1
                }]
            },
            options: optionsLine
        };
        lineChart = new Chart(ctxLine, configLine);
    }

    // Bar 차트 그리기 함수
    function drawBarChart() {
        ctxBar = document.getElementById('barChart').getContext('2d');
        configBar = {
            type: 'bar',
            data: {
                labels: ['1월', '2월', '3월', '4월', '5월', '6월'],
                datasets: [{
                    label: '월별 데이터',
                    data: [12, 19, 3, 5, 2, 3],
                    backgroundColor: 'rgba(153, 102, 255, 0.2)',
                    borderColor: 'rgba(153, 102, 255, 1)',
                    borderWidth: 1
                }]
            },
            options: optionsBar
        };
        barChart = new Chart(ctxBar, configBar);
    }

   

    // Line 차트 업데이트 함수
    function updateLineChart() {
        lineChart.options = optionsLine;
        lineChart.update();
    }

    // Bar 차트 업데이트 함수
    function updateBarChart() {
        barChart.options = optionsBar;
        barChart.update();
    }

    // 페이지 새로고침 함수
    function reloadPage() {
        location.reload();
    }


</script>
</body>
</html>