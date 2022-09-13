<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 상품 조회</title>
</head>
<body>
	<h3>상품 수정</h3>
	<form method="post" action="/mybatis/product/updateProduct">
		<table>
			<tr>
				<th>상품번호</th>
				<td><input name="prdNo" type="text" value="${prd.prdNo }" readonly></td>
			</tr>
			<tr>
				<th>상품명</th>
				<td><input name="prdName" type="text" value="${prd.prdName }"></td>
			</tr>
			<tr>
				<th>가격</th>
				<td><input name="prdPrice" type="number"
					value="${prd.prdPrice }"></td>
			</tr>
			<tr>
				<th>제조사</th>
				<td><input name="prdCompany" type="text"
					value="${prd.prdCompany }"></td>
			</tr>
			<tr>
				<th>재고</th>
				<td><input name="prdStock" type="number"
					value="${prd.prdStock }"></td>
			</tr>
		</table>
		<input type="submit" value="수정">
	</form>
	<a href="<c:url value='/product/productAllList' />">전체 상품 조회</a>
	<br>
	<br>
	<a href="<c:url value='/' /> ">메인 화면으로 이동</a>
</body>
</html>