<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<style>
th,td,tr{font-size: 12px; text-align: center;}
#myChart{
width: 15vw;height: auto;
}
.myChart{
width: 15vw;height: auto;
}
</style>
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
	<link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/datatables.min.css">
    
</head>

<body id="reportsPage">
    <div class="" id="home">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-xl navbar-light bg-light">
                        <a class="navbar-brand" href="adminindex.do">
                            <h3 class="tm-site-title mb-0">All About Knowledge</h3>
                        </a>
                        <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mx-auto">
	<c:if test="${sessionScope.adminPermission.category_management == 'Y'}">
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle  active" href="#void" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">교육과목관리
                                        
                                    </a>
                                     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_edu_cat.do">교육카테고리리스트</a>
                                        <a class="dropdown-item" href="manage_lecture.do">강의신청리스트</a>
                                    </div>
                                </li>
	</c:if>
	<c:if test="${sessionScope.adminPermission.member_management == 'Y'}">
                                <li class="nav-item ">
                                    <a class="nav-link" href="manage_memberlist.do">
                                        회원 관리
                                    </a>
                                </li>
                                    </c:if>
                                <c:if test="${sessionScope.adminPermission.instructor_management == 'Y'}">
                                <li class="nav-item" >
                                    <a class="nav-link " href="manage_instructor.do">강사 관리
                                        </a>
                                </li>
                                        </c:if>

                                  <c:if test="${sessionScope.adminPermission.qna_management == 'Y'}">
                                <li class="nav-item ">
                                    
                                    <a class="nav-link " href="manage_qna.do">문의 관리</a>
                                </li>
                                    </c:if>
                                  <c:if test="${sessionScope.adminPermission.notice_management == 'Y'}">
                                <li class="nav-item ">
                                    <a class="nav-link " href="manage_notification.do">
                                        공지사항 관리
                                    </a>
                                </li>
                                    </c:if>
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
            </div>
             <!-- row -->
                 <div class="container" style="padding: 1rem">
            
            
            
              <div class="bg-white tm-block col-12" style="width: 20vw;border: 2px solid skyblue;position: fixed;height: 85%;padding-bottom: 20px;padding-top: 20px;" >
                <!-- 아이디 정보 -->
                <div>
                
                </div>
                <!-- 아이디 권한 정보  -->
                <table class ="table table-hover">
                <tr><td>${ adminid }님, 환영합니다 !</td></tr>
                </table>
                <div></div>
                <!-- 퇴사|재직중인 강사 -->
                <div>
                <table class ="table table-hover">
                <tbody id ="preMember">
                
                </tbody>
                </table>
                
                </div>
                <hr  class="border border-primary border-1 opacity-50">
                <!--강사들의 주력과목 -->
                <div>
                <table class ="table table-hover">
                <tbody id ="instSubject">
                
                </tbody>
                </table>
                </div>
        		<p id="newUsersCount">Loading...</p>
               <%--  <div class="myChart">
                <canvas id ="myChart"></canvas>
                </div> --%>
             </div>
             
              <div class="bg-white tm-block col-12" style="overflow:scroll;margin-left: 21vw;width: 62vw;position: fixed;height: 85%">
                    <div class="col-12">
                        <div class="col-12">
                          <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex" style=" margin-left :65% ;height:  40px; text-align: right; width: 100%;" > 
             <ol class="breadcrumb"style="width: 95%;background-color: transparent ; padding-top: 0px; " >
             <li class="breadcrumb-item">
             회원 관리
             </li>
             <li class="breadcrumb-item active">
             회원 리스트</li></ol>
             </div>
                            	
                    
                    <div>
                   
                    
                    <table id="lecture" class="table table-hover"  style="width: 100%;margin: auto;text-align: center; padding-left: 10px;padding-right: 10px;">
                    <thead>
                    <tr>
                    <th style="text-align: center;">코드명</th>
                    <th style="text-align: center;">강좌명</th>
                    <th style="text-align: center;">강사명</th>
                    <th style="text-align: center;">카테고리</th>
                    <th style="text-align: center;">총 차시 수</th>
                       
                    
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="lmd" items="${requestScope.list }" varStatus="i">
                    <tr onclick="changeUrl('${lmd.sub_code}')">
                    <td><c:out value="${lmd.sub_code}"/> </td>
                    <td><c:out value="${lmd.sub_title}"/></td>
                    <td><c:out value="${lmd.Instructor_name}"/></td> 
                    <td><c:out value="${lmd.cat_name}"/></td> 
                    <td><c:out value="${lmd.total_no}"/></td> 
                    </tr>
                    </c:forEach>
                    </tbody>
                    </table>
                    </div>
</div>
                        </div>
                    </div>
                </div>
            </div>
    
 <script type="text/javascript" src="<c:url value ="/resources/js/jquery-3.3.1.min.js"/>"></script>
 <script type="text/javascript" src="<c:url value ="/resources/js/bootstrap.min.js"/>"></script>
   <script type="text/javascript" src="<c:url value ="/resources/js/datatables.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value ="/resources/js/Chart.min.js"/>"></script>
 <script type="text/javascript">
 $(function(){
	    /*  $.ajax({
	        url: "manage_inst_subPercentage.do", 
	        type: "GET",
	        dataType: "JSON",
	        error: function(xhr) {
	            console.error('AJAX request failed:', xhr);
	        },
	        success: function(jsonObj) {
	        	$("#instSubject").empty();
	            	var output ="<tr><td  colspan='2'>강사들의 주력과목</td></tr>";
	            $.each(jsonObj.list,function(i,jsonTemp) {
	            	output+="<tr><td>과목명: "+jsonTemp.major_subject+"</td><td> 비율:"+jsonTemp.percentage+"% </td></tr>";
	            })
	            $("#instSubject").html(output);
	            }

	    }); */
	   /*  $.ajax({
	        url: "manage_memeber_pre.do", 
	        type: "GET",
	        dataType: "JSON",
	        error: function(xhr) {
	            console.error('AJAX request failed:', xhr);
	        },
	        success: function(jsonObj) {
	        	$("#preMember").empty();
	          
	            	var output="<tr><td>현재 회원 수: "+jsonObj.p+"</td></tr>";
	            	output+="<tr><td>탈퇴 한 회원 수:"+jsonObj.n+"</td></tr>";
	            
	            $("#preMember").html(output);
	            }

	    }); */

	    /* var selectedValue = localStorage.getItem('selectedStatus');
	    if (selectedValue) {
	        $("input[name='status'][value='" + selectedValue + "']").prop('checked', true);
	    }

	    $("input[name='status']").change(function() {
	        var selectedValue = $(this).val();
	        localStorage.setItem('selectedStatus', selectedValue);  
	        $("#YorN").submit(); 
	    }); */

	     $("#lecture").DataTable({
	    	language: {
                search: "회원명 조회: ",
                zeroRecords: "일치하는 회원이 없습니다.",
                info: "현재 _START_ - _END_ / 총 _TOTAL_건",
                lengthMenu: "한 페이지당 _MENU_ 개씩 보기",
                paginate: {
                    next: "다음",
                    previous: "이전",
                }
	    }
	    
	});  
 });
 function changeUrl(url){
		var url=url;
		window.location.href='manage_lecture_details.do?sub_code='+url;
	}
 </script>





<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
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
    <!-- https://fullcalendar.io/ -->
      <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/family.css">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/tooplate.css">

<style>
	.right {
  		 text-align: right;
		}

</style>
</head>

<body id="reportsPage">
    <div class="" id="home">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-xl navbar-light bg-light">
                        <a class="navbar-brand" href="adminindex.do">
                            <i class="fas fa-3x fa-tachometer-alt tm-site-icon"></i>
                            <h1 class="tm-site-title mb-0">All About Knowledge</h1>
                        </a>
                        <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mx-auto">
                                <li class="nav-item dropdown active">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">교육과목관리
                                        
                                    </a>
                                     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_edu_cat.do">교육카테고리리스트</a>
                                        <a class="dropdown-item" href="manage_lecture.do">강의신청리스트</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link " href="manage_memberlist.do" >회원 관리
                                    </a>
                                    
                                </li>
                                <li class="nav-item " >
                                    <a class="nav-link " href="manage_instructor.do">강사 관리
                                        </a>
                                </li>

								 <li class="nav-item">
                                    <a class="nav-link " href="manage_qna.do" >문의 관리
                                    </a>
                                    
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
           <div class="row tm-content-row tm-mt-big">
        		<div class="col-12" >
                 <div class="bg-white tm-block col-12" style="height: 700px;">
              
                        <div class="col-12" style="height: 600px">
                            <h2 class="tm-block-title d-inline-block">강의 신청 리스트</h2>
                            
                    <div class="right">
                    <select class="form-select" aria-label="Default select example">
                    <option selected>정렬조건</option>
                    <option>최근 문의 순</option>
                    <option>미확인 순</option>
                    </select>
                    </div>	
                           
                             
                    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <table class="table table-hover"  style="width: 100%;margin: auto; text-align: center;">
                   
                    <thead>
                    <tr>
                    <th>NO</th>
                    <th>신청 강좌명</th>
                    <th>강사명</th>
                    <th>카테고리</th>
                    <th>총 차시 수</th>
                    </tr>
                    </thead>
                    <tbody>
                    
                    <tr>
                    <td>A002</td>
                    <td><a href="manage_lecture_details.do">이 맛은 자바군!</a></td>
                    <td>진모씨</td>
                    <td>프로그래밍 언어 - 자바</td>
                    <td>13</td>
                    </tr>
                    
                    <tr>
                    <td>A001</td>
                    <td><a href="manage_lecture_details.do">나에게 다가오지 말란말이다!!!</a></td>
                    <td>디모씨</td>
                    <td>프로그래밍 언어 - C</td>
                    <td>8</td>
                    </tr>
                    
                    </tbody>
                    </table>
                    </div>
                        </div>
                    </div>
                    
                    
                </div>
            </div>
           </div> 
           
        <footer class="row tm-mt-small">
         
        </footer>
    </div>

  <script type="text/javascript" src="<c:url value ="/resources/js/jquery-3.3.1.min.js"/>"></script>
  <script type="text/javascript" src="<c:url value ="/resources/jquery-ui-datepicker/jquery-ui.min.js"/>"></script>
  <script type="text/javascript" src="<c:url value ="/resources/js/bootstrap.min.js"/>"></script>
--%>
</body>

</html> 