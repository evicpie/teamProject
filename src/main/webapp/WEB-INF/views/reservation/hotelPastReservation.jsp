<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호텔 지난 예약</title>
<link rel="stylesheet" href="${conPath }/css/reservation/reservationList.css">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(document).ready(function() {
		
		// 체크인 날짜 Datepicker
		$( '[name="searchCheckin"]' ).datepicker({
	    	dateFormat: 'yy-mm-dd',
	    	monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    	showMonthAfterYear: true, // 연도-월 순서 출력 
	    	yearSuffix: '년',
	    	showOtherMonths: true, // 해당 월 전후의 다른 달 날짜들도 화면에 출력
	    	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    	maxDate: -1, // 오늘까지 선택가능
	    	
	    	// 달력모양 버튼 추가
	    	showOn: "button",
	        buttonImage: "${conPath }/img/calendar.gif",
	        buttonImageOnly: true,
	        buttonText: "Select date",
	        
	        onSelect: function() {
	        	// 일단 체크아웃 날짜는 체크인 날짜 다음날부터 선택되도록 minDate 지정
	        	// 오 이렇게 해두니까 체크아웃날짜 먼저 선택하고 체크인날짜를 체크아웃날짜보다 다음으로 선택해도 알아서 조정이 되네
	        	var checkinDate = (new Date($(this).val())).getTime();
	        	var checkinNextDay = checkinDate+(1000*60*60*24);
				$('[name="searchCheckout"]').datepicker('option','minDate', new Date(checkinNextDay));
				
	        }
	    });
		
		// 체크아웃 날짜 Datepicker
		$( '[name="searchCheckout"]' ).datepicker({
	    	dateFormat: 'yy-mm-dd',
	    	monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    	showMonthAfterYear: true, // 연도-월 순서 출력 
	    	yearSuffix: '년',
	    	showOtherMonths: true, // 해당 월 전후의 다른 달 날짜들도 화면에 출력
	    	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    	maxDate: 0, // 오늘까지 선택가능
	    	
	    	// 달력모양 버튼 추가
	    	showOn: "button",
	        buttonImage: "${conPath }/img/calendar.gif",
	        buttonImageOnly: true,
	        buttonText: "Select date",
	    });
		
		// 아 맨 처음부터 파라미터값을 불러와서 value 속성을 지정해주니까 아무리 초기화해도 초기화가 안되지....!
		// 리셋버튼 동작하도록 다시 정의
		$('[type="reset"]').click(function(event) {
			//$('#myPastReservationForm input[type="text"]').val(''); // 넌 왜 안되냐
			$('#hotelPastReservationForm input[type="text"]').attr('value',''); // 텍스트필드 리셋
			$('#hotelPastReservationForm select option').removeAttr('selected'); // 드롭다운박스 리셋
		});
		
		// 기간별 검색에 쓸 함수
		function periodSearch(searchCheckin, searchCheckout) {
			$('[name="searchCheckin"]').datepicker('setDate', searchCheckin);
			$('[name="searchCheckout"]').datepicker('setDate', searchCheckout);
		}
		
		// 검색기간 버튼 선택시
		$('.period').click(function() {
			
			var today = new Date(); // 오늘날짜
			var period = $(this).val(); // 검색기간 구분
			
			if(period == '전체') {
				periodSearch('','');
				
			} else {
				if(period == '1개월') {
					searchCheckin = today.getTime()-(1000*60*60*24*30);
					
				} else if(period == '3개월') {
					searchCheckin = today.getTime()-(1000*60*60*24*90);
					
				} else if(period == '1년') {
					searchCheckin = today.getTime()-(1000*60*60*24*30*12);
					
				} 
				
				periodSearch(new Date(searchCheckin), today);
			}
		});
	});
</script>
</head>
<body>
	<form action="${conPath }/reservation.do" id="hotelPastReservationForm">
		<input type="hidden" name="method" value="hotelPastReservation">
		<input type="hidden" name="hotelCode" value="${param.hotelCode }"><!-- hotelCode는 Admin 로그인이 완성되면 수정해줄 것. -->
		<table id="searchForm">
			<tr>
				<th>고객명</th>
				<td><input type="text" name="guestName" value="${param.guestName }"></td>
				<th>객실등급</th>
				<td>
					<select name="roomGrade">
						<option value="">전체</option>
						<option <c:if test="${param.roomGrade eq 'standard' }">selected="selected"</c:if>>standard</option>
						<option <c:if test="${param.roomGrade eq 'deluxe' }">selected="selected"</c:if>>deluxe</option>
						<option <c:if test="${param.roomGrade eq 'suite' }">selected="selected"</c:if>>suiteroom</option>
					</select>
				</td>
			</tr>
			<tr>
				<th rowspan="2">검색기간</th>
				<td colspan="3">
					<input type="button" class="period" value="전체">
					<input type="button" class="period" value="1개월">
					<input type="button" class="period" value="3개월">
					<input type="button" class="period" value="1년">
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<input type="text" class="datepicker" name="searchCheckin" value="${param.searchCheckin }"> ~ 
					<input type="text" class="datepicker" name="searchCheckout" value="${param.searchCheckout }">
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<input type="submit" value="검색">
					<input type="reset" value="초기화">
				</td>
				
			</tr>
		</table>
	</form>
	<table id="reservationTable">
		<tr>
			<th>예약번호</th><th>고객명</th><th>객실명</th><th>체크인</th><th>체크아웃</th><th>결제금액</th><th>후기</th>
		</tr>
		<c:if test="${empty hotelPastReservation }">
			<tr><td>지난 예약 내역이 없습니다.</td></tr>
		</c:if>
		<c:if test="${not empty hotelPastReservation }">
			<c:forEach items="${hotelPastReservation }" var="reserve">
				<tr>
					<td>${reserve.reserveCode }</td>
					<td>${reserve.guestName }</td>
					<td>${reserve.roomName }</td>
					<td>${reserve.reserveCheckin }</td>
					<td>${reserve.reserveCheckout }</td>
					<td>${reserve.paidPrice }</td>
					<td>
						<c:if test="${reserve.reviewStatus eq 0 }">
							<button disabled="disabled">후기 미작성</button>
						</c:if>
						<c:if test="${reserve.reviewStatus eq 1 }">
							<button onclick="location.href='${conPath }/hotel.do?method=getHotel&hotelCode=${adminHotelCode }'">후기 보기</button>
						</c:if>
					</td>
				</tr>
				
			</c:forEach>
		</c:if>
	</table>
	
	<div id="pagingDiv">
		<!-- 1페이지로 이동 -->
		<a href="${conPath }/reservation.do?method=hotelPastReservation&hotelCode=${param.hotelCode }&guestId=${guest.guestId }&pageNum=1&guestName=${param.guestName }&roomGrade=${param.roomGrade }&searchCheckin=${param.searchCheckin }&searchCheckout=${param.searchCheckout }">&lt;&lt;</a>
		
		<!-- 앞 블럭으로 이동 -->
		<c:if test="${paging.currentPage gt paging.pageSize }">
			<a href="${conPath }/reservation.do?method=hotelPastReservation&hotelCode=${param.hotelCode }&guestId=${guest.guestId }&pageNum=${paging.startPage-1 }&guestName=${param.guestName }&roomGrade=${param.roomGrade }&searchCheckin=${param.searchCheckin }&searchCheckout=${param.searchCheckout }">&lt;</a>
		</c:if>
		<c:if test="${paging.currentPage lt paging.pageSize }"><!-- 첫 블럭일 경우 링크 해제 -->
			<a>&lt;</a>
		</c:if>
		
		<!-- 페이지 목록 -->
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="i">
			<c:if test="${paging.currentPage eq i }">
				<b>${i }</b>
			</c:if>
			<c:if test="${paging.currentPage != i }">
				<a href="${conPath }/reservation.do?method=hotelPastReservation&hotelCode=${param.hotelCode }&pageNum=${i }&guestName=${param.guestName }&roomGrade=${param.roomGrade }&searchCheckin=${param.searchCheckin }&searchCheckout=${param.searchCheckout }">${i }</a>
			</c:if>
		</c:forEach>
		
		<!-- 뒷 블럭으로 이동 -->
		
		<c:if test="${paging.currentPage lt paging.pageCnt }">
			<a href="${conPath }/reservation.do?method=hotelPastReservation&hotelCode=${param.hotelCode }&pageNum=${paging.endPage+1 }&guestName=${param.guestName }&roomGrade=${param.roomGrade }&searchCheckin=${param.searchCheckin }&searchCheckout=${param.searchCheckout }">&gt;</a>
		</c:if>
		<c:if test="${paging.currentPage >= paging.pageCnt }"><!-- 마지막 블럭일 경우 링크 해제 -->
			<a>&gt;</a>
		</c:if>
		
		<!-- 마지막 페이지로 이동 -->
		<a href="${conPath }/reservation.do?method=hotelPastReservation&hotelCode=${param.hotelCode }&pageNum=${paging.pageCnt }&guestName=${param.guestName }&roomGrade=${param.roomGrade }&searchCheckin=${param.searchCheckin }&searchCheckout=${param.searchCheckout }">&gt;&gt;</a>
	</div>
</body>
</html>