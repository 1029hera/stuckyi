<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<h1 style="text-align:center;">로그아웃 하시겠습니까?</h1>
<form action="${pageContext.request.contextPath}/main/logout" method='post'>
<input type="hidden"name="${_csrf.parameterName}"value="${_csrf.token}"/>
<input type='submit' value='로그아웃'>
</form>

</body>
</html>