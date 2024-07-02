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

<style>
	.right {
  		 text-align: right;
		}

	
	.custom-font-size {
   		font-size: 12px;
	}



</style>




</head>

<body id="reportsPage">
    <div class="" id="home">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-xl navbar-light bg-light">
                        <a class="brand-logo" href="adminindex.do">
                            <!-- <i class="fas fa-3x fa-tachometer-alt tm-site-icon"></i> -->
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
                                 <li class="nav-item active " >
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
             </div>
            </div>
             <!-- row -->
                 <div class="container" style="padding: 1rem">
            
               <div class="bg-white tm-block col-12" style="width: 20%;border: 2px solid skyblue;position: fixed;height: 85%;padding-bottom: 20px;padding-top: 20px;" >
                <h2>신규 가입 수</h2>
        		<p id="newUsersCount">Loading...</p>
               
               
               </div>
                <div class="bg-white tm-block col-12" style="  margin-left: 25%; width:auto" >
              
                       <div class="col-12">
          <div class="col-12">
          
                    <table  id="memberTable" class="table table-hover"   style="width: 100%;margin: auto; text-align: center;">
                    <thead>
                    <tr>
                   
                    <th class="custom-font-size">사용자ID</th>
                    <th class="custom-font-size">이름</th>
                    <th class="custom-font-size" id="signupStatusHeader" style="cursor:pointer;" >상태</th>
                    <th class="custom-font-size" id="signupDateHeader" style="cursor:pointer;">가입일</th>
                    
                    </tr>
                    </thead>
                    
                    <tbody>
                    <c:forEach var="mmd" items="${requestScope.memberList }" varStatus="i">
                    <tr>
                    
                    <td class="custom-font-size"><c:out value="${mmd.std_id }"/></td>                 
                    <td class="custom-font-size"><a href="manage_member_details.do?std_id=${mmd.std_id }&flag=0"><c:out value="${mmd.name }"/></a></td> 
                    <c:choose>
                    <c:when test="${mmd.del_yn eq 'N'}">         
                    <td class="custom-font-size">탈퇴</td>
                  	</c:when>
                     <c:otherwise>
                     <td class="custom-font-size">가입중</td>
                     </c:otherwise>
                    </c:choose>
                    <td class="custom-font-size"><c:out value="${mmd.signup_date}"/></td>
  
                    </tr>
                    </c:forEach>
                    </tbody>
                    
                    </table>
                    
                    
                </div>
         
           
    </div>
        <footer class="row tm-mt-small">
         
        </footer>
    </div>
     <script type="text/javascript" src="<c:url value ="/resources/js/jquery-3.3.1.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value ="/resources/js/bootstrap.min.js"/>"></script>
    
    <script>
    function fetchNewUsersCount() {
        $.ajax({
            url: "manage_admin_side.do",
            type: "GET",
            dataType: "JSON",
            error: function(xhr) {
                console.log(xhr.status + " : " + xhr.statusText);
                alert("서버 오류 발생");
            },
            success: function(response) {
                $("#newUsersCount").text("가입 수: " + response.count);
            }
        });
    }

        // 페이지 로드 시 및 1분마다 데이터를 가져옴
        window.onload = function() {
            fetchNewUsersCount();
            setInterval(fetchNewUsersCount, 60000);
        };
    </script>
    
    
    
    
    
     <script>
     
     
     
        // 테이블 정렬 함수 가입일
        var filterActive = false;
var sortOrder = 'asc'; // 기본 정렬 순서: 오름차순

function sortTableByDate() {
    var rows = $('#memberTable tbody tr').get();

    rows.sort(function(a, b) {
        var A = new Date($(a).children('td').eq(3).text());
        var B = new Date($(b).children('td').eq(3).text());

        if (sortOrder === 'asc') {
            if (A < B) return -1;
            if (A > B) return 1;
        } else {
            if (A < B) return 1;
            if (A > B) return -1;
        }
        return 0;
    });

    $.each(rows, function(index, row) {
        $('#memberTable').children('tbody').append(row);
    });

    // 정렬 순서를 토글
    sortOrder = (sortOrder === 'asc') ? 'desc' : 'asc';
}
        
        
        
		// 테이블 정렬 함수 상태
        var filterActive2 = false;
        function filterTableByStatus() {
            var rows = $('#memberTable tbody tr').get();

            if (filterActive2) {
                rows.forEach(function(row) {
                    $(row).show();
                });
                filterActive2 = false;
            } else {
                rows.forEach(function(row) {
                    var status = $(row).children('td').eq(3).text();
                    if (status !== "탈퇴") {
                        $(row).hide();
                    } else {
                        $(row).show();
                    }
                });
                filterActive2 = true;
            }
        }
        
        $(document).ready(function() {
            // 가입일 클릭 이벤트 바인딩
            $('#signupDateHeader').click(function() {
            	
                sortTableByDate();
            });
            
 			$('#signupStatusHeader').click(function() {
            	
 				filterTableByStatus();
            });
            
            
        });
    </script>
    
    
    
    
    
    
	</div>
</body>

</html>