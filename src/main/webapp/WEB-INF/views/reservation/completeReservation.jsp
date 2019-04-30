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
<link href="${conPath }/css/reservation/reservationConfirm.css" rel="stylesheet">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${conPath }/js/frame.js"></script>

</head>
<body>
	
   <!-- ★ HEADER & REMOTE CONTROLLER ★ -->
   <jsp:include page="../main/header.jsp"/>
   <jsp:include page="../main/remote.jsp"/>
   
   
   <div id="section">
      <div id="contentArea">
         <div id="topic">RESERVATION</div>
         
         <!-- ★  내용물 영역 ★ -->
         <!-- ★  게시판 페이지가 아니라면 #content div안을 자유롭게 수정해주세요.  ★ -->
         <div id="content">
         	
         	<table id="reservationTable">
         		<caption>예약 완료</caption>
         		<tr>
         			<th>예약번호</th>
         			<td>${justPaidReservation.reserveCode }</td>
         		</tr>
         		<tr>
         			<th>호텔명</th>
         			<td>${justPaidReservation.hotelName }</td>
         		</tr>
         		<tr>
         			<th>객실명</th>
         			<td>${justPaidReservation.roomName }</td>
         		</tr>
         		<tr>
         			<th>체크인</th>
         			<td><fmt:formatDate value="${justPaidReservation.reserveCheckin }" pattern="yyyy-MM-dd (E)"/></td>
         		</tr>
         		<tr>
         			<th>체크아웃</th>
         			<td><fmt:formatDate value="${justPaidReservation.reserveCheckout }" pattern="yyyy-MM-dd (E)"/></td>
         		</tr>
         		<tr>
         			<th>결제금액</th>
         			<td><fmt:formatNumber value="${justPaidReservation.paidPrice }" pattern="#,###"/></td>
         		</tr>
         	</table>
			
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