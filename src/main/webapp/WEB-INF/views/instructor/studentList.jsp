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

  .selectbox {
    position: relative;
    width: 200px;
    border: 1px solid #999;
    z-index: 1;
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  }

  .selectbox.focus {
    border-color: #66afe9;
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
  }

  .selectbox:before {
    content: "";
    position: absolute;
    top: 50%;
    right: 15px;
    width: 0;
    height: 0;
    margin-top: -1px;
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    border-top: 5px solid #313131;
  }

  .selectbox label {
    position: absolute;
    top: 1px;
    left: 5px;
    padding: .5em .5em;
    color: #333;
    z-index: -1;
  }

  .selectbox select {
    width: 100%;
    height: auto;
    line-height: normal;
    background-color: transparent;
    font-family: inherit;
    padding: .8em .5em;
    border: 0;
    opacity: 0;
    appearance: none;
  }

  .search-box {
    display: flex;
    align-items: center;
    height: 40px;
    width: 300px;
    background: white;
    border-radius: 20px;
    padding: 0 10px;
    border: 1px solid #f9deec;
    margin-bottom: 1em;
  }

  .search-txt {
    flex: 1;
    border: none;
    background: none;
    outline: none;
    padding: 0 10px;
    color: #797979;
    font-size: 16px;
  }

  .search-btn {
    color: #797979;
    background: none;
    border: none;
    font-size: 16px;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .search-box-container {
    display: flex;
    justify-content: flex-end;
    margin-bottom: 1em;
  }

  .small-selectbox {
    position: relative;
    top: -10px;
    width: 100px;
    border: 1px solid #999;
    margin-right: 20px;
    margin-top: 10px;
    z-index: 1;
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  }

  .small-selectbox.focus {
    border-color: #66afe9;
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
  }

  .small-selectbox:before {
    content: "";
    position: absolute;
    top: 50%;
    right: 10px;
    width: 0;
    height: 0;
    margin-top: -1px;
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    border-top: 5px solid #313131;
  }

  .small-selectbox label {
    position: absolute;
    top: 1px;
    left: 5px;
    padding: .5em .5em;
    color: #333;
    z-index: -1;
  }

  .small-selectbox select {
    width: 100%;
    height: auto;
    line-height: normal;
    font-family: inherit;
    padding: .8em .5em;
    border: 0;
    opacity: 0;
    appearance: none;
  }

  .table-container {
    width: 100%;
    margin: 0 auto;
  }

  table {
    border: 1px #a39485 solid;
    font-size: .9em;
    box-shadow: 0 2px 5px rgba(0,0,0,.25);
    width: 100%;
    border-collapse: collapse;
    border-radius: 5px;
    overflow: hidden;
  }

  th {
    text-align: left;
  }

  thead {
    font-weight: bold;
    color: #fff;
    background: #73685d;
  }

  td, th {
    padding: 1em .5em;
    vertical-align: middle;
  }

  td {
    border-bottom: 1px solid rgba(0,0,0,.1);
    background: #fff;
  }

  a {
    color: #73685d;
  }

  @media all and (max-width: 768px) {
    table, thead, tbody, th, td, tr {
      display: block;
    }

    th {
      text-align: right;
      border-bottom: 1px solid #a39485;
    }

    table {
      position: relative;
      padding-bottom: 0;
      border: none;
      box-shadow: 0 0 10px rgba(0,0,0,.2);
    }

    thead {
      float: left;
      white-space: nowrap;
    }

    tbody {
      overflow-x: auto;
      overflow-y: hidden;
      position: relative;
      white-space: nowrap;
    }

    tr {
      display: inline-block;
      vertical-align: top;
    }

    td {
      border-bottom: 1px solid #e5e5e5;
    }

    .container {
      margin-left: 0;
      padding: 1em;
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


<div class="container">
    <div class="selectbox">
        <select id="select">
            <option>1</option>
            <option>2</option>
        </select>
    </div><br>

    <div class="selectbox">
        <select id="select">
            <option>1</option>
            <option>2</option>
        </select>
    </div><br>

    <div>전체수강인원:</div>
    <div>전체 시험 미응시학생</div>

    <div class="search-box-container">
        <div class="small-selectbox">
            <select id="small-select">
              <option disabled selected>검색조건</option>
                <option>A</option>
                <option>B</option>
            </select>
        </div>
        <form class="search-box" action="" method="get">
            <input class="search-txt" type="text" name="" placeholder="검색어를 입력하세요.">
            <button class="search-btn" type="submit">검색</button>
        </form>
    </div>
	<a href="notice.do">공지</a>
  
<c:catch var="e">
  
    <table class="table">
        <thead>
            <tr>
                <th class="id">아이디</th>
                <th class="name">이름</th>
                <th class="sub_code">과목</th>
                <th class="status">학습현황</th>
                <th class="score">합격여부</th>
                <th class="Try">시험응시</th>
            </tr>
        </thead>
        <c:if test="${ empty requestScope.listStudent }">
        <tr><td colspan="5" style="text-align: center">
        존재하지않음
        </c:if>
           <c:forEach var="sld" items="${ requestScope.listStudent }" varStatus="i">
        <tbody>
            <tr>
                <td><c:out value="${ sld.std_id }"/></td>
                <td><c:out value="${ sld.name }"/></td>
                <td><c:out value="${ sld.sub_code }"/></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </tbody>
        </c:forEach>
        
    </table>
    </c:catch>
    <c:if test="${ not empty e }">
		조회없음
</c:if>

 <!-- Page level custom scripts -->
    <script src="http://localhost/all_about_knowledge/resources/js/demo/chart-area-demo.js"></script>
    <script src="http://localhost/all_about_knowledge/resources/js/demo/chart-pie-demo.js"></script>
</div>

</body>
</html>