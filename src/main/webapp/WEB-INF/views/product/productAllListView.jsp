<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="<c:url value='/js/jquery-3.6.0.min.js' />"></script>
<title>전체 상품 조회</title>
</head>
<body>
	<h3>전체 상품 조회</h3>
	<table border="1">
		<tr>
			<th>상품번호</th>
			<th>상품명</th>
			<th>가격</th>
			<th>제조사</th>
			<th>재고</th>
		</tr>
		<c:forEach var="prd" items="${prdList }" varStatus="status">
			<tr>
				<td><a
					href="<c:url value="/product/productDetailView/${prd.prdNo}" />"><c:out
							value="${prd.prdNo}" /></a></td>
				<td><c:out value="${prd.prdName}" /></td>
				<td><c:out value="${prd.prdPrice}" /></td>
				<td><c:out value="${prd.prdCompany}" /></td>
				<td><c:out value="${prd.prdStock}" /></td>
				<td><img src="<c:url value='/images/${prd.prdNo}.PNG' />"
					style="width: 30px; height: 30px;"></td>
			</tr>
		</c:forEach>
	</table>

	<a href="<c:url value='/'/>">메인 화면으로 이동</a>
</body>
</html>