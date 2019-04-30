<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>HOTEL HOLIDAY</title>
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet"><!-- ★ 게시판 이름에 사용되는 폰트★ -->
<link href="${conPath }/css/frame.css" rel="stylesheet">
<link href="${conPath }/css/myPage.css" rel="stylesheet">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${conPath }/js/frame.js"></script>

<script>
	$( function() {
	   $( "#tabs" ).tabs();
	});
	
</script>
</head>
<body>
	
   <!-- ★ HEADER & REMOTE CONTROLLER ★ -->
   <jsp:include page="../main/header.jsp"/>
   <jsp:include page="../main/remote.jsp"/>
   
   
   <div id="section">
      <div id="contentArea">
         <div id="topic">ADMIN PAGE</div>
         
         <!-- ★  내용물 영역 ★ -->
         <!-- ★  게시판 페이지가 아니라면 #content div안을 자유롭게 수정해주세요.  ★ -->
         <div id="content">
         	
         	<div id="tabs">
			  <ul>
			    <li><a href="#tabs-1">지난 예약 조회</a></li>
			    <li><a href="#tabs-2">예약 현황 조회</a></li>
			  </ul>
			  <div id="tabs-1">
			    <iframe src="${conPath }/reservation.do?method=hotelPastReservation&hotelCode=${adminHotelCode }" name="hotelPastReservationTab"></iframe>
			  </div>
			  <div id="tabs-2">
			    <iframe src="${conPath }/reservation.do?method=hotelReservation&hotelCode=${adminHotelCode }" name="hotelReservationTab"></iframe>
			  </div>
			</div>
			
         </div><!-- ★ #content 끝 ★  -->
         
      </div><!-- ★ #contentArea 끝 ★ -->
      
      <!-- ★ 일러스트 영역: 도은이 빼고 건드리지 마세요!★ -->
      <div id="illustArea">
	      <div id="phrase">
   		      <img src="${conPath }/img/phrase.png" alt="illust"/>
   	 	  </div>
   	  </div>
   </div>
   
   <!-- ★ FOOTER ★ -->
   <jsp:include page="../main/footer.jsp"/>
   
</body>
</html>