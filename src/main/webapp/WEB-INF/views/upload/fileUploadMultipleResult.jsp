<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="fileName" items="${originalFileName}" varStatus="status">
	<c:out value="${status.count}"/>번 파일 : <c:out value="${fileName}"/> <br>
</c:forEach>
C:\springWorkspace\upload 폴더에서 확인하세요.
</body>
</html>