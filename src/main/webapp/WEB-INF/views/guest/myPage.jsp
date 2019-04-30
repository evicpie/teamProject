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
	<c:if test="${param.modifyResult eq 1 }">
		<script>alert('수정이 완료되었습니다.');</script>
	</c:if>
	<c:if test="${modifyResult eq 0 }">
		<script>alert('수정을 실패하였습니다.');</script>
	</c:if>
	
   <!-- ★ HEADER & REMOTE CONTROLLER ★ -->
   <jsp:include page="../main/header.jsp"/>
   <jsp:include page="../main/remote.jsp"/>
   
   
   <div id="section">
      <div id="contentArea">
         <div id="topic">MY PAGE</div>
         
         <!-- ★  내용물 영역 ★ -->
         <!-- ★  게시판 페이지가 아니라면 #content div안을 자유롭게 수정해주세요.  ★ -->
         <div id="content">
         	
         	<div id="tabs">
			  <ul>
			    <li><a id="modifyFormTab" href="${conPath }/guest.do?method=modifyForm">내정보수정</a></li>
			    <li><a href="#tabs-2">지난 예약 조회</a></li>
			    <li><a href="#tabs-3">예약 현황 조회</a></li>
			    <li><a href="#tabs-4">내 문의사항</a></li>
			  </ul>
			  <div id="tabs-1">
			    <%-- <iframe src="${conPath }/guest.do?method=modifyForm" name="modifyFormTab"></iframe> --%>
			  </div>
			  <div id="tabs-2">
			    <iframe src="${conPath }/reservation.do?method=myPastReservation&guestId=${guest.guestId }" name="myPastReservationTab"></iframe>
			  </div>
			  <div id="tabs-3">
			    <iframe src="${conPath }/reservation.do?method=myReservation&guestId=${guest.guestId }" name="myReservationTab"></iframe>
			  </div>
			  <div id="tabs-4">
			    <iframe src="${conPath }/support.do?method=mySupportList&guestId=${guest.guestId }" name="mySupportTab"></iframe>
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