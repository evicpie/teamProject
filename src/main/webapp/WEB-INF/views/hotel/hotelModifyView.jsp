<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${conPath }/css/hotelModifyForm.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
	<jsp:include page="../main/header.jsp"/>
	<div id="content">
		<form action="${conPath }/hotel.do" method="post" enctype="multipart/form-data">
			<input type="hidden" name="method" value="hotelModify">
			<input type="hidden" name="adminId" value="${hotelInfo.adminId }">
			<table>
				<caption>${hotelInfo.hotelName }정보 수정하기</caption>
				<tr><th>호텔 이름</th><td><input type="text" name="hotelName" value="${hotelInfo.hotelName}" size="90"></td></tr>
				<tr><th>호텔 주소</th><td><input type="text" name="hotelAddress" value="${hotelInfo.hotelAddress}" size="90"></td></tr>
				<tr><th>전화 번호</th><td><input type="text" name="hotelPhone" value="${hotelInfo.hotelPhone}" size="90"></td></tr>
				<tr><th>호텔 이미지1</th><td><input type="file" name="hotelImg1">${hotelInfo.hotelImg_1}</td></tr>
				<tr><th>호텔 이미지2</th><td><input type="file" name="hotelImg2">${hotelInfo.hotelImg_2}</td></tr>
				<tr><th>호텔 이미지3</th><td><input type="file" name="hotelImg3">${hotelInfo.hotelImg_3}</td></tr>
				<tr><th>공지 사항</th><td><textarea rows="20" cols="91" name="hotelNotice">${hotelInfo.hotelNotice}</textarea></td></tr>
				<tr><th>상세 사항</th><td><textarea rows="20" cols="91" name="hotelDetail">${hotelInfo.hotelDetail}</textarea></td></tr>
				<tr><td colspan="2">
					<input type="submit" value="저장">
					<input type="reset" value="원래대로">
					<input type="button" value="뒤로" onclick="history.back()">
				</td></tr>
			</table>
		</form>
	</div>
	<jsp:include page="../main/footer.jsp"/>
</body>
</html>