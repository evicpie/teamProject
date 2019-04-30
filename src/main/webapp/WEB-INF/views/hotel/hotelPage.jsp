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
	<link rel="stylesheet" href="${conPath }/css/hotelPage.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
	<!-- ★ HEADER & REMOTE CONTROLLER ★ -->
    <jsp:include page="../main/header.jsp"/>
    <jsp:include page="../main/remote.jsp"/>
    <div id="titleM">호텔 관리</div>
    <div id="btns">
	    <div id="hotelM">
			<button type="button" class="bigBtn" onclick="location.href='${conPath}/hotel.do?method=hotelModifyView&hotelCode=${hotelInfo.hotelCode }'">호텔정보 수정</button>
		</div>
		<div id="roomM">
			<button type="button" class="smallBtn" onclick="location.href='${conPath}/room.do?method=getStandardRoom&hotelCode=${hotelInfo.hotelCode }'">스탠다드룸 정보 수정</button>
			<button type="button" class="smallBtn" onclick="location.href='${conPath}/room.do?method=getDeluxeRoom&hotelCode=${hotelInfo.hotelCode }'">디럭스룸 정보 수정</button>
			<button type="button" class="smallBtn" onclick="location.href='${conPath}/room.do?method=getSuiteRoom&hotelCode=${hotelInfo.hotelCode }'">스위트룸 정보 수정</button>
		</div>
	</div>
	<jsp:include page="../main/footer.jsp"/>
</body>
</html>