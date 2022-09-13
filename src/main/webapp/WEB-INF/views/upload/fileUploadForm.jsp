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
	<form id="fileUploadForm" method="post"
		action="<c:url value="/fileUpload" />" enctype="multipart/form-data">
		파일 : <input type="file" id="uploadFile" name="uploadFile"> <input
			type="submit" value="업로드">
	</form>
	
	<h3>여러개 파일 업로드</h3>
	
	<form id="fileUploadFormMulti" method="post"
		action="<c:url value="/fileUploadMultiple" />" enctype="multipart/form-data">
		파일 : <input type="file" id="uploadFileMulti" name="uploadFileMulti" multiple="multiple"> <input
			type="submit" value="업로드">
	</form>
	
	<h3>여러개 파일 업로드</h3>
	
	<form id="fileOriginNameUploadForm" method="post"
		action="<c:url value="/fileOriginNameUpload" />" enctype="multipart/form-data">
		파일 : <input type="file" id="uploadFile" name="uploadFile"> <input
			type="submit" value="업로드">
	</form>
</body>
</html>