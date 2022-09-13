<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index 페이지</title>
</head>
<body>
	<h3>mybatis 사용</h3>

	<a href="<c:url value='/product/productAllList' />" >전체 상품 조회</a>
	<br>
	<a href="<c:url value='/product/productNewForm' />" >상품 등록</a>
	<br>
	<a href="<c:url value='/product/productSearchForm1' />">상품 검색</a>
	<br>
	<a href="<c:url value='/product/productSearchForm2' />">상품 검색2</a>
	<br>
	<hr>
	<br>
	<a href="<c:url value='/fileUploadForm' />">파일업로드</a>
	<br>
	<a href="<c:url value='/fileDownloadList' />">파일 다운로드</a>
	<br>
	<img src="<c:url value='/images/apple.png' />"> 
	<img src="<c:url value='/img/apple.png' />">
	
</body>
</html>