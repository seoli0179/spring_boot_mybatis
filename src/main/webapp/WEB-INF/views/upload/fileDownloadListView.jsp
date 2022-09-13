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
	<h3>폴더 내의 모든 파일 목록 출력</h3>
	<c:forEach var="file" items="${fileList}" varStatus="status">
		<c:out value="${status.count}" />번 파일 : <c:out value="${file}" />
		<a href="<c:url value="/fileDownload/${file}" />">다운로드</a>
		<br>
	</c:forEach>
</body>
</html>