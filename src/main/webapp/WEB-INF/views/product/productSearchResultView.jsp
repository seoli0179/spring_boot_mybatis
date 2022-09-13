<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="<c:url value='/js/jquery-3.6.0.min.js' />"></script>
<title>상품 검색 조회</title>
</head>
<body>
	<h3>상품 검색 조회</h3>
	<table border="1">
		<tr>
			<th>상품번호</th>
			<th>상품명</th>
			<th>가격</th>
			<th>제조사</th>
			<th>재고</th>
			<th>이미지</th>
		</tr>

		<c:choose>
			<c:when test='${empty prdList }'>
				<tr align="center">
					<td colspan="6">찾는 상품이 없습니다.</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="prd" items="${prdList }" varStatus="status">
					<tr>
						<td><a
							href="<c:url value="/product/productDetailView/${prd.prdNo}" />"><c:out
									value="${prd.prdNo}" /></a></td>
						<td><c:out value="${prd.prdName}" /></td>
						<td><c:out value="${prd.prdPrice}" /></td>
						<td><c:out value="${prd.prdCompany}" /></td>
						<td><c:out value="${prd.prdStock}" /></td>
						<td><img src="<c:url value='/images/${prd.prdNo}.png' />"
							style="width: 30px; height: 30px;"></td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</body>
</html>