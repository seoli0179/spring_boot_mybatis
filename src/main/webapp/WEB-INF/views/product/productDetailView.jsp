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
	<h3>상품 상세 조회</h3>
	<table border="1">
		<tr>
			<th>상품번호</th>
			<td>${prd.prdNo }</td>
		</tr>
		<tr>
			<th>상품명</th>
			<td>${prd.prdName }</td>
		</tr>
		<tr>
			<th>가격</th>
			<td>${prd.prdPrice }</td>
		</tr>
		<tr>
			<th>제조사</th>
			<td>${prd.prdCompany }</td>
		</tr>
		<tr>
			<th>재고</th>
			<td>${prd.prdStock }</td>
		</tr>
	</table>

	<br>
	<br>
	<a href="<c:url value='/' />">메인 화면으로 이동</a><br>
	<a href="<c:url value='/product/productUpdateForm/${prd.prdNo }'/>">상품 정보 수정</a><br>
	<a href="javascript:deleteCheck();">상품 정보 삭제</a>
	<script type="text/javascript">
		function deleteCheck(){
			if(confirm("삭제하시겠습니까?")){
				location.href="/mybatis/product/deleteProduct/${prd.prdNo}";
			}
		}

	</script>
</body>
</html>