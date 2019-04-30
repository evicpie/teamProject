<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="${conPath }/css/emp.css" rel="stylesheet" type="text/css">
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script>
		$(document).ready(function(){
			
		});
	</script>
</head>
<body>
<jsp:include page="header.jsp"/>
<p>임시메인입니다 : 로그인 한 뒤 이용해보세요.</p>

<p>은실</p>
<a href="${conPath }/reservation.do?method=availableRoomForm">예약하러가기</a><br>
<a href="${conPath }/reservation.do?method=myPastReservation&guestId=${guest.guestId }">나의지난예약</a>
<a href="${conPath }/reservation.do?method=myReservation&guestId=${guest.guestId }">나의예약현황</a>
<a href="${conPath }/reservation.do?method=hotelPastReservation&hotelCode=AAA">호텔지난예약</a>
<a href="${conPath }/reservation.do?method=hotelReservation&hotelCode=AAA">호텔예약현황</a><br>
<a href="${conPath }/review.do?method=reviewFrame&hotelCode=AAA">리뷰보러가기</a>

<p>찬양</p>
<a href="${conPath }/support.do?method=supportList&pageNum=1">고객센터</a>

<p>희영</p>
<a href="${conPath }/hotel_notice.do?method=hotel_notice_List">공지사항</a>
<a href="${conPath }/guest.do?method=guestSearch">회원관리</a>

	

<jsp:include page="footer.jsp"/>

</body>
</html>