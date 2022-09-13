<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="<c:url value='/js/jquery-3.6.0.min.js' />"></script>
<script src="<c:url value='/js/prdNoCheck.js' />"></script>
</head>
<body>
	<h3>상품등록</h3>
	<form id="insertProduct" method="post" action="insertProduct">
		<table border="1">
			<tr>
				<th>상품번호</th>
				<td><input name="prdNo" id="prdNo" type="text" />
					<button id="prdNoCheck" type="button">중복확인</button></td>
			</tr>
			<tr>
				<th>상품명</th>
				<td><input name="prdName" type="text" /></td>
			</tr>
			<tr>
				<th>가격</th>
				<td><input name="prdPrice" type="number" /></td>
			</tr>
			<tr>
				<th>제조사</th>
				<td><input name="prdCompany" type="text" /></td>
			</tr>
			<tr>
				<th>재고</th>
				<td><input name="prdStock" type="number" /></td>
			</tr>
		</table>
		<input type="submit" value="등록"><input type="reset" value="취소">
	</form>
	<a href="<c:url value='/' />" >메인 화면으로 이동</a>
</body>
</html>