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
	<style>
	.right {
  		 text-align: right;
		}
	
	
	
	</style>

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
                                 <li class="nav-item" >
                                    <a class="nav-link "href="manage_memberlist.do">회원 리스트</a>
                                 
                                </li>
                                <li class="nav-item " >
                                    <a class="nav-link " href="manage_instructor.do">강사 관리
                                        </a>
                                </li>

                                    <li class="nav-item active  " >
                                    
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
            
               <div class="bg-white tm-block col-12" style="width: 20%;border: 2px solid skyblue;position: fixed;height: 85%;padding-bottom: 20px;padding-top: 20px;" ></div>
                <div class="bg-white tm-block col-12" style= "margin-left: 25%; width:auto" >
              
          	 <form action="manage_qna_details.do" method="post" id ="frmPost" style="width: 1100px;margin-inline: auto;">     
                        
                            <h2 class="tm-block-title d-inline-block"style=" margin-bottom: 10px;">문의 제목 : <c:out value="${qnaDomain.title}"/></h2>
                            <input type="hidden" name="title" value="${qnaDomain.title}">
                    <div class="mb-3">
  						 <label for="staticEmail" class="col-sm-5 col-form-label" style="width: 330px;">문의 코드 : <c:out value="${qnaDomain.qna_no}"/></label>
   						 <input type="hidden" name="qna_no" value="${qnaDomain.qna_no}">
   						 <input type="hidden" name="status" value="${qnaDomain.status}">
   						 <label for="staticEmail" class="col-sm-5 col-form-label">아이디 : <c:out value="${qnaDomain.std_id}"/></label>
 
   						 <!-- <div class="right">
   						 <button class="btn btn-light btn-sm me-md-2 " type="button">삭제</button>
   						 </div> -->
					</div>
					<div class="mb-3" style="height: 450px;">
					<div  style="width: 50%; float: right; padding-left: 40px;" >
 						 <label for="exampleFormControlTextarea1" class="form-label">문의 답변</label>
  						<textarea class="form-control h-25" id="exampleFormControlTextarea" rows="13"  
  						style="width: 500px; resize: none;" name="content_answer" maxlength="100"><c:out value="${qnaDomain.content_answer}"/></textarea>
  						 <div class="textCount" id="charCount"style="width: 100px;">0</div>/100자
  						
  						
  					</div>
					<div  style="width: 50%;">

 						 <label for="exampleFormControlTextarea1" class="form-label">문의 사항 내용</label>
  						<textarea class="form-control h-25"  readonly id="exampleFormControlTextarea1"
  						rows="13" style="width: 500px; resize: none;" name="content_question"><c:out value="${qnaDomain.content_question}"/></textarea>	
						
  					
					</div>
					
  						
					</div>
  						<div class="right">
  						
  						<c:if test="${param.status eq 'N' and param.delete eq null }">
       				 	<button class="btn btn-light btn-sm me-md-2 " type="button" id="check">확인</button>
       					</c:if>
       					
       					<c:if test="${param.status eq 'Y' and param.delete eq null }">
       					<button class="btn btn-light btn-sm me-md-2 " type="button" id="submit">수정</button>
           		 		</c:if>
           		 		
           		 		<c:if test="${param.delete eq '0' }">
       					<button class="btn btn-light btn-sm me-md-2 " type="button" id="submit">학인</button>
           		 		</c:if>
  						
  						<button class="btn btn-light btn-sm me-md-2" type="button" id="goBack">취소</button>
  						
  						<input type="hidden" name="delete" value='0' >
  						<c:if test="${param.delete eq null }">
  						<button class="btn btn-light btn-sm me-md-2" type="button" id="delete">삭제</button>
  						</c:if>	
  						
  						</div>
					</form> 
    	</div> 
        <footer class="row tm-mt-small">
         
        </footer>
    </div>
     <script type="text/javascript" src="<c:url value ="/resources/js/jquery-3.3.1.min.js"/>"></script>
  <!-- https://jquery.com/download/ -->
   <script type="text/javascript" src="<c:url value ="/resources/js/bootstrap.min.js"/>"></script>
  <script type="text/javascript">
  
  
  $('#exampleFormControlTextarea').keyup(function (e) {
		let content = $(this).val();
	    // 글자수 세기
	    if (content.length == 0 || content == '') {
	    	$('.textCount').text('0자');
	    } else {
	    	$('.textCount').text(content.length + '자');
	    }
	    
	    // 글자수 제한
	    if (content.length > 100) {
	    	// 100자 부터는 타이핑 되지 않도록
	        $(this).val($(this).val().substring(0, 100));
	        // 100자 넘으면 알림창 뜨도록
	        alert('글자수는 100자까지 입력 가능합니다.');
	    };
	});
	
  
  	 $(document).ready(function(){
  		 
  		$("#delete").click(function(){
  			req
  			
  			location.href="manage_qna_details.do?qna_no=${qna_no}&status=${status}&delete=0";
            
        });
  		 
  		/* 답변내용변경 */
         $("#submit").click(function(){

        	 if(!confirm("답변내용을 수정 하시겠습니까?")){
        		 return;
         	    
         	}else{
         		
             $("#frmPost").attr("action", "manage_qna_modyify.do");
             $("#frmPost").submit();
             
             
         	};
        	 
         });
            
         /* 답변내용입력 */
         $("#check").click(function(){

        	 if(!confirm("답변내용을 입력 하시겠습니까?")){
         	    return;
         	    
         	}else {
             $("#frmPost").attr("action", "manage_qna_add.do");
             $("#frmPost").submit();
             
         	    
         	};
        	 
         });
         
         var cnt = "${cnt}";
         if (cnt == 1) {
             alert("수행을 완료 했습니다.");
             location.href="manage_qna_details.do?qna_no=${qna_no}&status=${status}";
         }else if(cnt == '0'){
        	 alert("수행 오류");
        	 location.href="manage_qna_details.do?qna_no=${qna_no}&status=${status}";
         };
         
         /* 
         $("#delete").click(function(){

        	 if(!confirm("문의를 삭제 하시겠습니까?")){
         	    return;
         	    
         	}else{
             $("#frmPost").attr("action", "manage_qna_delete.do");
             $("#frmPost").submit();
             var cnt = "${cnt}";
             
             if (cnt == 1) {
                 alert("문의 삭제 완료");
                 location.href="manage_qna.do";
             }else{
            	 alert("삭제 오류");
            	 location.href="manage_qna_details.do?qna_no=${qna_no}&status=${status}";
             };
         	    
         	};
        	 
         }); */
         
         $("#goBack").click(function(){

        	 location.href="manage_qna.do";
         	    
         	
         	    
         	
        	 
         });
         
         

        /*  if (cnt == 1) {
             alert("답글 입력 완료");
             location.href="manage_qna_details.do?qna_no=${qna_no}&status=${status}";
         } */
         

         });
  	 
	
    
  	 
  	 
  	 
  	 
</script>	 

	<!-- ------보류--------- -->
        	<!-- <script type="text/javascript">
  	 //삭제 팝업창
  	function openDeletePopup() {
  		 window.open("manage_qna_reason.do", "DeletePopup", "width=400,height=300");
        };
	</script> -->
	
	
	
	
	
	</div>
</body>
            


</html>