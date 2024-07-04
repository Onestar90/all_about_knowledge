<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>All_About_Knowledge</title>
    <script type="text/javascript" src="<c:url value='/resources/js/jquery-3.3.1.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
    <style>
        th, td, tr { font-size: 13px; }
        a { text-decoration: none; }
    </style>
    <script type="text/javascript">
        // 팝업 창을 클릭하면 닫히도록 설정
        function closePopupOnClick() {
            window.close();
        }
    </script>
</head>
<body onclick="closePopupOnClick()">
    <h2>탈퇴 사유</h2>
    <label for="reason">Reason:</label><br>
    <textarea id="reason" name="reason" readonly="readonly" rows="4" cols="50"><c:out value="${mmDomain.reason}"/></textarea><br><br>
 
 
    <c:out value="${mmDomain.reason}"/>
</body>
</html>