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
    body {
        padding: 1.5em;
        background: #f5f5f5;
    }

    .container {
        margin: 20px auto;
        max-width: 800px;
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,.1);
    }

    .sub {
        margin: 20px 0;
    }

    .test-box {
        background-color: #ccc;
        border: 1px solid #ccc;
        padding: 10px;
        margin-bottom: 10px;
        border-radius: 5px;
    }

    textarea {
        width: 600px;
        height: 100px;
    }

    .test-box input[type="text"] {
        width: 600px;
        margin-bottom: 5px;
    }

    .test-box input[type="text"],
    .test-box input[type="radio"] {
        margin-left: 20px;
    }

    .text-end {
        text-align: end;
        margin-top: 10px;
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
</style>
<script type="text/javascript">
$(function(){
    $("#btn-add").click(function(){
        const newIndex = $('.test-box').length + 1; 
        $("#test").append(`
            <div class="test-box">
                문제 : <textarea></textarea> <br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION${newIndex}" /><br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION${newIndex}" /><br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION${newIndex}" /><br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION${newIndex}" /><br>
            </div>
        `);
    });
    
    $("#btn-end").click(function(){
        alert("완료")
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
            <a class="nav-link" href="studentList">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>수강생 관리</span>
            </a>
        </li>
    </ul>
</div>
<div class="container">
    <form>
        <div id="test">
            <h3>시험출제</h3>
            <div>과목:</div>
            <input type="text" class="sub" id="sub" readonly/>
            <div class="test-box">
                문제 : <textarea></textarea> <br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION1" /><br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION1" /><br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION1" /><br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION1" /><br>
            </div>
        </div>
        <div class="text-end">
            <input type="button" id="btn-add" value="문제추가" class="btn btn-sm btn-info"/>
            <input type="button" id="btn-end" value="작성완료" class="btn btn-info btn-sm"/>
        </div>
    </form>
</div>

</body>
</html>