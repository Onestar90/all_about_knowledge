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
    <!-- https://fullcalendar.io/ -->
     <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/family.css">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/tooplate.css">
<style type="text/css">
.side{
font-size: 11px;
text-align: center;
font-weight: normal;
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
                            <h3 class="tm-site-title mb-0">All About Knowledge</h3>
                        </a>
                        <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mx-auto">
                                <li class="nav-item dropdown   active">
                                    <a class="nav-link dropdown-toggle" href="#void" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">교육과목관리
                                        
                                    </a>
                                     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_edu_cat.do">교육카테고리리스트</a>
                                        <a class="dropdown-item" href="manage_lecture.do">강의신청리스트</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        회원 관리
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_memberlist.do">회원 리스트</a>
                                    </div>
                                </li>
                                <li class="nav-item " >
                                    <a class="nav-link" href="manage_instructor.do">강사 관리
                                        </a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">문의 관리</a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_qna.do">문의 리스트</a>
                                    </div>
                                </li>
                                <li class="nav-item">
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
            </div>
            
             <!-- row -->
        <div class="container" style="padding: 1rem">
                <div class="bg-white tm-block col-12" style="width: 20vw;border: 2px solid skyblue;position: fixed;height: 85%;padding-bottom: 20px;padding-top: 20px;" >
                <table class="table table-hover side">
                <thead>
                <tr><th colspan="2">최근에 추가 된 카테고리</th></tr>
                </thead>
                <tbody>
                <tr><td>카테고리 코드</td><td>${primcat}</td></tr>
                <tr><td>카테고리명</td><td>${catname}</td></tr>
                </tbody>
                </table>
                </div>
                <div class="bg-white tm-block col-12" style="overflow:scroll;margin-left: 21vw;width: 62vw;position: fixed;height: 85%">
                    <div class="col-12">
                        <div class="col-12">
                        <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex" style=" margin-left :65% ;height:  40px; text-align: right; width: 100%;" > 
             <ol class="breadcrumb"style="width: 95%;background-color: transparent ; padding-top: 0px; " >
             <li class="breadcrumb-item">
             교육과목 관리
             </li>
             <li class="breadcrumb-item active">
             교육 카테고리 추가</li></ol>
             </div>
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
</div>	
                    <div style="text-align: center;margin: auto;" >
                    <form action="add_cat_process.do" method="get" id ="frm">
                    <table  class="table table-hover">
                    <tr><td>상위 카테고리명</td><td><input type="text" class="form-control" name ="prime_cat_code" value="${pCatCode}" readonly="readonly"></td></tr>
                    <tr><td>추가하는 카테고리 코드</td><td><input type="text" class="form-control" name ="cat_code" value="${maxValue}" readonly="readonly"></td></tr>
                    <tr><td>추가하는 카테고리명</td><td><input type="text" class="form-control" name ="cat_name" value="${prime_cat_code}"></td></tr>
                    </table>
                    <div style=" width:400px; padding-left:200px;text-align: center; float: left;">
                     <input type="button" class="btn btn-link" value="&lt; 뒤로" id="btnback"/>
                     </div>
                     <div style="float: right; padding-right: 200px;">
                    <input type="button" id ="btnSubmit" value="카테고리 추가" class="btn btn-info btn-sm ">
	</div>
                    </form>
                    </div>
                        </div>
                    </div>
                </div>
            </div>
          
 </div>

 <script type="text/javascript" src="<c:url value ="/resources/js/jquery-3.3.1.min.js"/>"></script>
 <script type="text/javascript" src="<c:url value ="/resources/js/bootstrap.min.js"/>"></script>
  <script type="text/javascript">
        $(function() {
        $("#btnSubmit").click(function(){
        	$("#frm").submit();
        })
        $("#btnback").click(function(){
        	history.back();
        })
        });
    </script>
</body>

</html>