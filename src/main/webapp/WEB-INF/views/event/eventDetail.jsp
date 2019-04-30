<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${conPath }/css/event/eventDetail.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
<style>
	
	[id="eventBanner"] {
		background-image: url('https://ssl.pstatic.net/tveta/libs/1226/1226162/df8f14a86db88452405f_20190402173846893_4.jpg');
	}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script>
$(function() {
	
	// 포인트 받기 버튼(이벤트 참여) 클릭 시 수행 메소드
	$('#btnGetEvent').click(function() {
		var guestId = '${guest.guestId }';
		if(guestId != '') {
			var eventNum = ${param.eventNum };
			var pageNum = ${param.pageNum }; // pageNum좀 그만 달고다녔으면.......
			location.href='${conPath }/event.do?method=getEvent&eventNum=' + eventNum + '&pageNum=' + pageNum;	
		
		} else {
			alert('포인트 수령을 위해서 로그인이 필요합니다.');
			location.href='${conPath }/guest.do?method=loginForm';
		}
		 
	});
});
	

</script>
</head>
<body>
	<!-- ??? 왜 모델에 메세지 세팅했는데 파라미터로 오지???? : 아 내가 redirect 해서  모델에 있는건 파라미터로 준거야???? -->
	<c:if test="${eventResultMsg eq 1 }">
		<script>alert('포인트를 받았습니다.');</script>
	</c:if>
	<c:if test="${not empty eventResultMsg && eventResultMsg eq 0 }">
		<script>alert('이미 참여한 이벤트입니다.');</script>
	</c:if>
	<jsp:include page="../main/header.jsp"/>
	<jsp:include page="../main/remote.jsp"/>
	<div id="headerTopic">E V E N T</div>
	
	<div id="content">
		<table id=eventDetail>
				<tr><th>${eventDetail.eventTitle }</th></tr>
				<tr><td><img id="eventBanner" src="${conPath }/eventImgFileUpload/${eventDetail.eventBanner }"></td></tr>
				<tr><td><img src="${conPath }/eventImgFileUpload/${eventDetail.eventImg1 }"></td></tr>
			<c:if test="${not empty eventDetail.eventImg2}">
				<tr><td><img src="${conPath }/eventImgFileUpload/${eventDetail.eventImg2 }"></td></tr>
			</c:if>
			<c:if test="${not empty eventDetail.eventImg3}">
			<tr><td><img src="${conPath }/eventImgFileUpload/${eventDetail.eventImg3 }"></td></tr>
			</c:if>
			<tr><td id="info">${eventDetail.eventInfo.replaceAll("\\r\\n","<br>") }</td></tr>
			
			<!-- [은실] 버튼 클릭해서 포인트 받아가는 기능 구현 -->
			<c:if test="${eventDetail.sendPoint > 0 }">
				<tr><td id="pointbtn"><button id="btnGetEvent" <c:if test="${eventDetail.eventStatus eq 0 }">disabled="disabled"</c:if>>포인트 받기</button></td></tr>
			</c:if>
			<tr><td id="buttons">
				<button onclick="location='event.do?method=eventList&pageNum=${param.pageNum}'">목록</button>
				<c:if test="${not empty admin }">
					<button onclick="location='event.do?method=eventModifyForm&eventNum=${eventDetail.eventNum}&pageNum=${param.pageNum}'">수정</button>
					<button onclick="location='event.do?method=eventDeleteForm&eventNum=${eventDetail.eventNum}&pageNum=${param.pageNum}'">삭제</button>
				</c:if>
				</td>
		</table>
	</div>
<jsp:include page="../main/footer.jsp"/>
</body>
</html>