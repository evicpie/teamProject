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
		<form action="${conPath }/room.do" method="post" enctype="multipart/form-data">
			<input type="hidden" name="method" value="modifyRoomInfo">
			<input type="hidden" name="hotelCode" value="${roomInfo.hotelCode }">
			<input type="hidden" name="roomGrade" value="${roomInfo.roomGrade }">
			<table>
			<caption>${roomInfo.roomGrade }방 정보 수정하기</caption>
			<tr><th>방 가격</th><td><input type="text" name="roomCost" value="${roomInfo.roomCost}"></td></tr>
			<tr><th>방 정원</th><td><input type="text" name="roomLimit" value="${roomInfo.roomLimit}"></td></tr>
			<tr><th>방 이미지1</th><td><input type="file" name="roomImg1">${roomInfo.roomImg_1}</td></tr>
			<tr><th>방 이미지2</th><td><input type="file" name="roomImg2">${roomInfo.roomImg_2}</td></tr>
			<tr><th>방 이미지3</th><td><input type="file" name="roomImg3">${roomInfo.roomImg_3}</td></tr>
			<tr><th>방 이미지4</th><td><input type="file" name="roomImg4">${roomInfo.roomImg_4}</td></tr>
			<tr><th>방 이미지5</th><td><input type="file" name="roomImg5">${roomInfo.roomImg_5}</td></tr>
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