<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="http://localhost/all_about_knowledge/common/favicon.ico"/>
<!--bootstrap 시작-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!--bootstrap 끝-->
<lick rel="stylesheet" href="http://localhost/all_about_knowledge/common/css/main.css" type="text/css" media="all"/>
<lick rel="stylesheet" href="http://localhost/all_about_knowledge/common/css/board.css" type="text/css" media="all"/>
<!--jQuert CDN 시작-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!--jQuert CDN 끝-->


<style type="text/css">
	form {
        max-width: 800px;
        margin: 20px auto;
        text-align: center;
    }
    
     .sidebar {
    position: fixed;
    top: 0;
    left: 0;
    height: 100%;
    width: 250px; /* 사이드바 너비 조정 */
    background-color: #212529;
    color: #fff;
    padding-top: 1rem;
    overflow-y: auto;
  }
    .sub {
        width: 300px;
        margin: 20px 0;
    }
    .test-box {
        border: 1px solid #ccc;
        padding: 10px;
        margin-bottom: 10px;
        border-radius: 5px;
    }
    textarea {
        width: 400px;
        height: 100px;
        margin-bottom: 10px;
    }
    .test-box input[type="text"] {
        width: 400px;
        margin-bottom: 5px;
    }
    #btn-write, #btn-update {
        margin-top: 20px;
    }
</style>
<script type="text/javascript">
	$(function(){
		$("#btn-write").click(function(){
		
		});
		$("#btn-update").click(function(){
			
		});
	
	});
	
</script>
</head>
<body>
<div class="sidebar">
    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="instructor_index.html">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">AAk 강사메인</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <ul class="nav flex-column">
        <li class="nav-item active">
            <a class="nav-link">
            <i class="fas fa-fw fa-tachometer-alt"></i>
<span>강의관리</span></a>
        </li>

        <li class="nav-item active">
            <a class="nav-link">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>강의신청</span></a>
        </li>

        <li class="nav-item active">
            <a class="nav-link">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>문의사항</span></a>
        </li>

        <li class="nav-item active">
            <a class="nav-link" href="studentList.do">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>수강생 관리</span>
            </a>
        </li>
    </ul>
</div>
<div>

    <form>
        <div id="test">
            <td>과목:</td><input type="text" class="sub" id="sub" readonly/>
            
            
            
            <div class="test-box" readonly>
                문제 : <textarea></textarea> <br>
               	1번 보기 <input type="text"/> <input type="radio" name="SOLUTION1" /><br>
                2번 보기 <input type="text"/> <input type="radio" name="SOLUTION1" /><br>
                3번 보기 <input type="text"/> <input type="radio" name="SOLUTION1" /><br>
                4번 보기 <input type="text"/> <input type="radio" name="SOLUTION1" /><br>
            </div>
        </div>
        
    	
    </form>
    <form action="exam_write.do" method="GET">
    <button type="submit">문제작성</button>
</form>
    <form action="exam_update.do" method="GET">
    <button type="submit">문제수정</button>
</form>
</div>
</body>
</html>