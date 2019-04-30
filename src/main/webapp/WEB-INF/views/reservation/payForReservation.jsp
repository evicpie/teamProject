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

<!-- 이하에 현재 페이지 CSS와 script 삽입 -->
<script>
	//숫자 타입에서 쓸 수 있도록 format() 함수 추가
	Number.prototype.format = function(){
	    if(this==0) return 0;
	 
	    var reg = /(^[+-]?\d+)(\d{3})/;
	    var n = (this + '');
	 
	    while (reg.test(n)) n = n.replace(reg, '$1' + ',' + '$2');
	 
	    return n;
	};
	 
	// 문자열 타입에서 쓸 수 있도록 format() 함수 추가
	String.prototype.format = function(){
	    var num = parseFloat(this);
	    if( isNaN(num) ) return "0";
	 
	    return num.format();
	};
		 

	$(document).ready(function() {
		var spinner = $( "#spinner" ).spinner({
			min: 0,
			max: ${guest.guestPoint},
			step: 10000,
			spin: function(event, ui) {
					//alert(spinner.val()); // 왜 두번 실행될까 왜 두번 실행될까 콩의 저주인가 콩의 저주인가
					var usedPoint = Number(ui.value);
					var roomCost = Number('${payForReservation.roomCost }');
					var myPoint = Number('${guestPoint }');
					var paidPrice = roomCost - usedPoint;
					$('#paidPrice').html(paidPrice.format());
					$('#myPoint').val(myPoint-usedPoint);
					$('input[name="usedPoint"]').val(usedPoint);
					$('input[name="paidPrice"]').val(paidPrice);
			}
		});

		$('.ui-button ui-widget ui-spinner-button ui-spinner-up ui-corner-tr ui-button-icon-only').click(function() {
			alert(spinner.val());
		});
		$('.ui-button ui-widget ui-spinner-button ui-spinner-down ui-corner-br ui-button-icon-only').click(function() {
			alert(spinner.val());
		});
		

	});
</script>
</head>
<body>
	
   <!-- ★ HEADER & REMOTE CONTROLLER ★ -->
   <jsp:include page="../main/header.jsp"/>
   <jsp:include page="../main/remote.jsp"/>
   
   
   <div id="section">
   
      <div id="contentArea">
         <div id="topic"><!-- ★  게시판 이름 적어주세요 ★ -->RESERVATION</div>
         
         <!-- ★  내용물 영역 ★ -->
         <!-- ★  게시판 페이지가 아니라면 #content div안을 자유롭게 수정해주세요.  ★ -->
         <div id="content">
         	
         	<table id="payForReserveInfo">
				<tr>
					<th>호텔명</th>
					<td>${reserveHotel.hotelName }</td>
				</tr>
				<tr>
					<th>객실명</th>
					<td>${reserveRoom.roomName }</td>
				</tr>
				<tr>
					<th>체크인일자</th>
					<td><fmt:formatDate value="${payForReservation.reserveCheckin }" pattern="yyyy-MM-dd (E)"/></td>
				</tr>
				<tr>
					<th>체크아웃일자</th>
					<td><fmt:formatDate value="${payForReservation.reserveCheckout }" pattern="yyyy-MM-dd (E)"/></td>
				</tr>
				<tr>
					<th>금액</th>
					<td><fmt:formatNumber value="${payForReservation.roomCost }" pattern="#,###"/></td>
					
				</tr>
			</table>
			
			<fieldset>
				<legend>　포인트　</legend>
				<table>
					<tr>
						<th>현재 포인트</th>
						<th>사용 포인트</th>
					</tr>
					<tr>
						<td><input type="text" value="${guestPoint }" disabled="disabled" id="myPoint"></td>
						<td><input id="spinner" name="value" value="0"></td>
					</tr>
				</table>
			</fieldset>
			
			<div id="paidDiv">
				
				<p>총결제금액 : <span id="paidPrice"><fmt:formatNumber value="${payForReservation.roomCost }" pattern="#,###"/></span>원</p>
			
			
				<form action="${conPath }/reservation.do">
					<input type="hidden" name="method" value="reserve">
					<input type="hidden" name="hotelCode" value="${reserveHotel.hotelCode }">
					<input type="hidden" name="roomCode" value="${reserveRoom.roomCode }">
					<input type="hidden" name="guestId" value="${guest.guestId }">
					<input type="hidden" name="reserveCheckin" value="${payForReservation.reserveCheckin }">
					<input type="hidden" name="reserveCheckout" value="${payForReservation.reserveCheckout }">
					<input type="hidden" name="paidPrice" value="${reserveRoom.roomCost }">
					
					<input type="hidden" name="usedPoint" value="0">
					
					<input type="submit" value="예약하기">
				</form>
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