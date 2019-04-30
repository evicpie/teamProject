<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${conPath }/css/header.css" rel="stylesheet" type="text/css">
<script>
  	$(document).ready(function(){
  		
  		// 화면 너비에 따라 헤더의 왼쪽 위치를 지정하는 함수
  		var defineHeaderLeft = function() {
  			var left; // left값
  			
  			if(document.body.clientWidth>1890){ // 화면 너비가 1820보다 크면 
  				left = (document.body.clientWidth-1890)/2; // 헤더가 중앙에 오도록 left값 계산
  			} else { // 화면 너비가 1820보다 작거나 같으면
  				left = (1890-1890)/2; // left값을 35px로 유지
  			}
  			$('#hotel').css('left', left+'px'); // 계산한 left값 세팅
  		};
  		
  		defineHeaderLeft(); // 첫 실행시 left값 지정하기 위해 함수 한 번 수행
  		$(window).resize(defineHeaderLeft); // 리사이징 할 때마다 left값 조정
		
  		// 화면을 우측으로 스크롤했을 때 GNB가 잘리지 않도록 왼쪽 마진을 조정해주는 부분
  		// (우측으로 갈수록 왼쪽 마진이 마이너스 되면서 오른쪽에 위치한 GNB가 보이게 되는 원리... 인 듯 하다)
 		var marginLeft = parseInt($('#hotel').css('margin-left'));
 	 	$(window).scroll(function() {
 			$('#hotel').css('margin-left', (marginLeft - $(this).scrollLeft())+'px' );
 		});
		
	});
</script>
</head>
<body>
<header>
	<div id="hotel">
		<div id="ribbon">
			<img src="${conPath }/img/ribbon.jpg" alt="ribbon" id="ribbonImg">
		<div id="gnb">
		
		<!-- 회원관리페이지에서 받는 Guest 커맨드객체가 model에 자동으로 addAttribute되어서 충돌하는것을 막기 위해 guest 범위(sessionScope) 명시  -->
		<%-- 회원/관리자 로그인 전 --%>
		<c:if test="${empty sessionScope.guest and empty sessionScope.admin}">
			<ul>
				<li><a href="${conPath }/guest.do?method=loginForm">로그인</a></li>
				<li><a href="${conPath }/guest.do?method=joinForm">회원가입</a></li>		
			</ul>
		</c:if>
		
		<%-- 회원 로그인 --%>
		<c:if test="${not empty sessionScope.guest }">
			<ul>
				<li><a>${sessionScope.guest.guestName }님</a></li>
				<li><a href="${conPath }/guest.do?method=myPage">MyPage</a></li>
				<li><a href="${conPath }/guest.do?method=logout">LogOut</a></li>
				<li><span>POINT : ${guest.guestPoint }</span></li><!-- [희영] 고객 포인트 출력 -->			
			</ul>
		</c:if>
		
		<%-- [희영] 관리자 로그인 --%>
		<c:if test="${not empty sessionScope.admin }">
			<ul>
				<li><a>${admin.adminSection }님</a></li>
				<li><a href="${conPath }/guest.do?method=guestSearch">회원관리</a></li>
				<li><a href="${conPath }/reservation.do?method=adminReservation&adminId=${admin.adminId }">예약관리</a></li>
				<li><a href="${conPath }/hotel.do?method=hotelManage&adminId=${admin.adminId }">호텔관리</a></li>
				<li><a href="${conPath }/admin.do?method=logout">LogOut</a></li>
			</ul>
		</c:if>
		
		</div>
		
		
		<div id="logo" onclick="location.href='${conPath}/main.do'">
			<img src="${conPath }/img/logo.png" alt="logo"/>
		</div>
		</div>
		
	</div>
</header>
</body>
</html>