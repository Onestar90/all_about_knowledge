<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

  .container {
    margin-left: 250px; /* 사이드바 너비 만큼 컨텐츠를 오른쪽으로 밀어줌 */
    padding: 2em;
  }

  .board {
    border: 1px #a39485 solid;
    font-size: .9em;
    box-shadow: 0 2px 5px rgba(0,0,0,.25);
    width: 100%;
    border-collapse: collapse;
    border-radius: 5px;
    overflow: hidden;
  }

  .board th {
    text-align: left;
    font-weight: bold;
    color: #fff;
    background: #73685d;
    padding: 1em .5em;
    vertical-align: middle;
  }

  .board td, .board th {
    padding: 1em .5em;
    vertical-align: middle;
  }

  .board td {
    border-bottom: 1px solid rgba(0,0,0,.1);
    background: #fff;
  }

  .board a {
    color: #73685d;
  }

  @media all and (max-width: 768px) {
    .sidebar {
      width: 100%; /* 작은 화면에서는 사이드바가 전체 너비를 차지 */
      position: relative;
    }

    .container {
      margin-left: 0; /* 작은 화면에서는 사이드바 영향 없앰 */
      padding: 1em;
    }

    .board, .board thead, .board tbody, .board th, .board td, .board tr {
      display: block;
    }

    .board thead {
      float: left;
      white-space: nowrap;
    }

    .board tbody {
      overflow-x: auto;
      overflow-y: hidden;
      position: relative;
      white-space: nowrap;
    }

    .board tr {
      display: inline-block;
      vertical-align: top;
    }

    .board td {
      border-bottom: 1px solid #e5e5e5;
    }
  }
</style>
<script type="text/javascript">
	$(function(){
	
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
            <a class="nav-link"> <!-- href="index.html" -->
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
    <h3>공지사항</h3>
    <table class="board">
        <thead class="thead">
            <tr>
                <th class="num">번호</th>
                <th class="title">제목</th>
                <th class="sub">과목</th>
                <th class="create_date">작성일</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>공지사항 제목 예시</td>
                <td>과목 예시</td>
                <td>2024-06-10</td>
            </tr>
        </tbody>
    </table>
</div>

</body>
</html>