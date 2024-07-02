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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	
<script type ="text/javascript">
	 $(document).ready(function(){
         $("#updateSubmit").click(function(){
             $("#frmGet").attr("action", "manage_member_details.do");
             $("#frmGet").submit();
         });


         
         $("#saveSubmit").click(function(){

        	 if(!confirm("변경내용을 저장 하시겠습니까?")){
         	    
         	}else{
             $("#frmGet").attr("action", "manage_member_modyify.do");
             $("#frmGet").submit();
         	    
         	}
        	 
         });

         var cnt = "${cnt}";
         if (cnt == 1) {
             alert("수정 완료");
             location.href="manage_member_details.do?std_id=${std_id}&flag=0";
         }
         
         
         
         
         
     });

</script>

<style>
	
	
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
            
               <div class="bg-white tm-block col-12" style="width: 20%;border: 2px solid skyblue;position: fixed;height: 85%;padding-bottom: 20px;padding-top: 20px;" ></div>
                <div class="bg-white tm-block col-12" style= "margin-left: 25%; width:auto" >
              
          	<form action="manage_member_details.do" method="get" id ="frmGet" style="width: 1100px;margin-inline: auto;">
                       <div class="col-12">
          <div class="col-12">
                     <table class="table table-hover"   style="width: 100%;margin: auto; text-align: center;">
    
                    <tbody >

                    <tr style="height: 73px;" >
                    <th class="custom-font-size" style="width: 500px;">아이디</th>
                     <td class="custom-font-size" >
            		<c:out value="${mmDomain.std_id }"/>
            		<input type="hidden" name="std_id" value="${mmDomain.std_id }"readonly>
            		
                    </td>
                    </tr>
                    <tr style="height: 73px;" >
                    <th class="custom-font-size" style="width: 500px;">이름</th>
                     <td class="custom-font-size">
            		<c:choose>
            		 <c:when test="${requestScope.flag eq '0'}">
            		 <c:out value="${mmDomain.name }"/>
            		<input  type="hidden" name="name" value="<c:out value="${mmDomain.name }"/>"readonly>
            		</c:when>
                    <c:otherwise>
                    <input  type="text" name="name" value="<c:out value="${mmDomain.name }"/>" style="text-align: center;">
                     </c:otherwise>
                    </c:choose>
                    </td>
                    </tr>
                 
                    <tr class="custom-font-size" style="height: 73px;" >
                    <th class="custom-font-size" style="width: 500px;">연락처</th>
                   <td class="custom-font-size">
            		<c:choose>
            		 <c:when test="${requestScope.flag eq '0'}">
            		  <c:out  value="${mmDomain.tel }"/>
            		<input type="hidden" name="tel" value="${mmDomain.tel }"readonly>
            		</c:when>
                    <c:otherwise>
                    <input type="text" name="tel" value="${mmDomain.tel }" style="text-align: center;">
                     </c:otherwise>
                    </c:choose>
                    </td>
                    </tr>
                    

                    <tr style="height: 73px;" >
                    <th class="custom-font-size" style="width: 500px;">이메일</th>
                    <td class="custom-font-size">
            		<c:choose>
            		 <c:when test="${requestScope.flag eq '0'}">
            		  <c:out value="${mmDomain.email }"/>
            		<input type="hidden" name="email" value="${mmDomain.email }"readonly>
            		</c:when>
                    <c:otherwise>
                    <input type="text" name="email" value="${mmDomain.email }" style="text-align: center;">
                     </c:otherwise>
                    </c:choose>
                    </td>
                    </tr>

                    
                    <tr style="height: 73px;" >
                    <th class="custom-font-size" style="width: 500px;">생년월일</th>
      				  <td class="custom-font-size" >
       				     <c:choose>
       				         <c:when test="${requestScope.flag eq '0'}">
       				           <c:out value="${mmDomain.birth}"/>
        				            <input type="hidden" name="birth" value="${mmDomain.birth}"readonly>
       				         </c:when>
       				         <c:otherwise>
       				             <input type="text" name="birth" value="${mmDomain.birth}" style="text-align: center;">
       				         </c:otherwise>
     				       </c:choose>
    				    </td>
 				   </tr>
                    <tr>
                    <th>
                    </th>
                    <td>
                    </td>
                    </tr>
  					
  
                    </tbody>
                    </table>
                    
                    
                </div>
         <c:if test="${requestScope.flag eq '0' }">
                    <input type="hidden" name="flag" value="1">
                    <input type="button" class="btn btn-light btn-sm me-md-2" value="수정" id="updateSubmit"  style=" margin-top: 50px; float: right;"/>
					</c:if>
					
                  	<c:if test="${requestScope.flag eq '1' }" >
					<input type="button" class="btn btn btn-sm me-md-2 " value="완료" id ="saveSubmit" style="margin-top: 50px; float: right; "/>
					</c:if>
           
    	</div>
    	</form>
    	
        <footer class="row tm-mt-small">
         
        </footer>
    </div>
     <script type="text/javascript" src="<c:url value ="/resources/js/jquery-3.3.1.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value ="/resources/js/bootstrap.min.js"/>"></script>
	</div>
</body>
              
              
              
              
              
              
              
              
              
              
              
                        <%-- <div class="col-12" style="height: 600px;border-right-width: 50px;padding-right: 120px;padding-left: 120px;" >
                        
                        
                    <form action="manage_member_details.do" method="get" id ="frmGet" style="width: 1100px;margin-inline: auto;">
                    
                            <h2 class="tm-block-title d-inline-block">사용자 상세</h2>
                    <div class="mb-3">
                    
  					<div>
                    <table class="table table-hover"  style="width: 100%;margin: auto; text-align: center;">
    
                    <tbody >

                    <tr style="height: 73px;" >
                    <th style="width: 500px;">아이디</th>
                     <td >
            		<c:out value="${mmDomain.std_id }"/>
            		<input type="hidden" name="std_id" value="${mmDomain.std_id }"readonly>
            		
                    </td>
                    </tr>
                    <tr style="height: 73px;" >
                    <th style="width: 500px;">이름</th>
                     <td>
            		<c:choose>
            		 <c:when test="${requestScope.flag eq '0'}">
            		 <c:out value="${mmDomain.name }"/>
            		<input type="hidden" name="name" value="<c:out value="${mmDomain.name }"/>"readonly>
            		</c:when>
                    <c:otherwise>
                    <input type="text" name="name" value="<c:out value="${mmDomain.name }"/>" style="text-align: center;">
                     </c:otherwise>
                    </c:choose>
                    </td>
                    </tr>
                 
                    <tr style="height: 73px;" >
                    <th style="width: 500px;">연락처</th>
                   <td>
            		<c:choose>
            		 <c:when test="${requestScope.flag eq '0'}">
            		  <c:out value="${mmDomain.tel }"/>
            		<input type="hidden" name="tel" value="${mmDomain.tel }"readonly>
            		</c:when>
                    <c:otherwise>
                    <input type="text" name="tel" value="${mmDomain.tel }" style="text-align: center;">
                     </c:otherwise>
                    </c:choose>
                    </td>
                    </tr>
                    

                    <tr style="height: 73px;" >
                    <th style="width: 500px;">이메일</th>
                    <td>
            		<c:choose>
            		 <c:when test="${requestScope.flag eq '0'}">
            		  <c:out value="${mmDomain.email }"/>
            		<input type="hidden" name="email" value="${mmDomain.email }"readonly>
            		</c:when>
                    <c:otherwise>
                    <input type="text" name="email" value="${mmDomain.email }" style="text-align: center;">
                     </c:otherwise>
                    </c:choose>
                    </td>
                    </tr>

                    
                    <tr style="height: 73px;" >
                    <th style="width: 500px;">생년월일</th>
      				  <td >
       				     <c:choose>
       				         <c:when test="${requestScope.flag eq '0'}">
       				           <c:out value="${mmDomain.birth}"/>
        				            <input type="hidden" name="birth" value="${mmDomain.birth}"readonly>
       				         </c:when>
       				         <c:otherwise>
       				             <input type="text" name="birth" value="${mmDomain.birth}" style="text-align: center;">
       				         </c:otherwise>
     				       </c:choose>
    				    </td>
 				   </tr>
                    <tr>
                    <th>
                    </th>
                    <td>
                    </td>
                    </tr>
  					
  
                    </tbody>
                    </table>
                    </div>
                    
                    <c:if test="${requestScope.flag eq '0' }">
                    <input type="hidden" name="flag" value="1">
                    <input type="button" class="btn btn-light btn-sm me-md-2" value="수정" id="updateSubmit"  style=" margin-top: 50px; float: right;"/>
					</c:if>
					
                  	<c:if test="${requestScope.flag eq '1' }" >
					<input type="button" class="btn btn btn-sm me-md-2 " value="완료" id ="saveSubmit" style="margin-top: 50px; float: right; "/>
					</c:if>
                   	
                   
                   
                    
					</div>
					</form> 
					
                        </div> --%>

        

</html>