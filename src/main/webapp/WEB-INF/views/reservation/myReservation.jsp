<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<link rel="stylesheet" href="${conPath }/css/reservation/reservationList.css">
<link rel="stylesheet" href="${conPath }/css/reservation/reservationCancelDialog.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(document).ready(function() {
	
		// ajax로 구현하는 submit
		/* $('#myReservationForm').submit(function(event) {
			event.preventDefault(); // 본래 이벤트 수행을 죽이는 함수

			var post_url = $('#myReservationForm').attr('action');
			var form_data = $('#myReservationForm').serialize(); // 폼에 입력된 데이터들을 파라미터 형태로 변환시켜주는 메소드!! WOW!!!!
			  
			  $.ajax({
				  url: post_url,
				  type: 'GET',
				  data: form_data,
				  dataType: 'html',
				  success: function(data) {
					  $('#ui-id-3').html(data);
					  $('#tabs').tabs('option','active', 2);
					  
				  },
				  error: function(code) {
					  alert(code.status);
				  }
			  });
			  
		  }); */
		
		// 아 맨 처음부터 파라미터값을 불러와서 value 속성을 지정해주니까 아무리 초기화해도 초기화가 안되지....!
		// 리셋버튼 동작하도록 다시 정의
		$('[type="reset"]').click(function(event) {
			//$('#myPastReservationForm input[type="text"]').val(''); // 넌 왜 안되냐
			$('#myReservationForm input[type="text"]').attr('value',''); // 텍스트필드 리셋
		});
	});
	
	// 페이징 처리 링크 클릭 시
	/* $('#pagingDiv a').click(function(event) {
		event.preventDefault(); // 본래 이벤트 수행을 죽이는 함수
		
		var href = $(this).attr('href'); // a 태그의 링크 주소를 가져와서
		var post_url = href.slice(0, href.indexOf('?')); // 수행경로는 ? 직전까지 자르고
		var form_data = href.slice(href.indexOf('?')+1); // 파라미터는 ? 이후로 끝까지 자르고
		
		$.ajax({
			  url: post_url,
			  type: 'GET',
			  data: form_data,
			  dataType: 'html',
			  success: function(data) {
				  $('#ui-id-3').html(data);
				  $('#tabs').tabs('option','active', 2);
			  },
			  error: function(code) {
				  alert(code.status);
			  }
		  });

	}); */
	
	// 예약 취소 다이얼로그 띄우는 함수
	function cancelConfirm(reserveCode) {
		$.ajax({
			url: '${conPath }/reservation.do',
			type: 'GET',
			data: 'method=cancelConfirm&reserveCode='+reserveCode,
			dataType: 'html',
			success: function(data) {
				$("#dialog-confirm div").html(data);
				$("#dialog-confirm").dialog({
					resizable : false,
					height : "auto",
					width : 400,
					modal : true, // 다이얼로그가 띄워져있는 동안 뒷페이지는 조작할 수 없도록 막는 옵션
					buttons : {
						"예약 취소" : function() {
							// 취소 로직으로 이동
							location.href='${conPath }/reservation.do?method=cancelReservation&reserveCode='+reserveCode;
						},
						"닫기" : function() {
							$(this).dialog("close");
							
						}
					}
				});
			},
			error: function(code) {
				alert(code.status);
			}
				
		});
	}
</script>
         	
<!-- 예약 취소 결과 출력 스크립트 띄우는 부분 -->
<c:if test="${not empty cancelResult and cancelResult eq 1 }"><!-- 쿼리 리턴값이 존재하고 그 값이 1인 경우 -->
	<script>alert('예약이 취소되었습니다.');</script>
</c:if>
<c:if test="${not empty cancelResult and cancelResult != 1 }"><!-- 쿼리 리턴값이 존재하는데 1이 아닌 경우 -->
	<script>alert('예약 취소에 실패하였습니다.');</script>
</c:if>

<form action="${conPath }/reservation.do" id="myReservationForm">
	<input type="hidden" name="method" value="myReservation">
	<input type="hidden" name="guestId" value="${guest.guestId }">
	<table id="searchForm">
		<tr>
			<th>호텔명</th>
			<td><input type="text" name="hotelName" value="${param.hotelName }" id="myRsvHotelNameInput"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="검색">
				<input type="reset" value="초기화">
			</td>
			
		</tr>
	</table>
</form>
<table id="reservationTable">
	<tr>
		<th>예약번호</th><th>호텔명</th><th>객실명</th><th>체크인</th><th>체크아웃</th><th>결제금액</th><th>취소</th>
	</tr>
	<c:if test="${empty myReservation }">
		<tr><td>예약 내역이 없습니다.</td></tr>
	</c:if>
	<c:if test="${not empty myReservation }">
		<c:forEach items="${myReservation }" var="reserve">
			<tr>
				<td>${reserve.reserveCode }</td>
				<td>${reserve.hotelName }</td>
				<td>${reserve.roomName }</td>
				<td>${reserve.reserveCheckin }</td>
				<td>${reserve.reserveCheckout }</td>
				<td><fmt:formatNumber value="${reserve.paidPrice }" pattern="#,###"/></td>
				<td>
					<button class="btnCancel" onclick="cancelConfirm('${reserve.reserveCode }')">취소</button>
				</td>
			</tr>
		</c:forEach>
	</c:if>
</table>
<!-- <div id="cancelDialog"></div> --><!-- 넌 뭐니 -->

<div id="pagingDiv">
	<!-- 1페이지로 이동 -->
	<a href="${conPath }/reservation.do?method=myReservation&guestId=${guest.guestId }&pageNum=1&hotelName=${param.hotelName }">&lt;&lt;</a>
	
	<!-- 앞 블럭으로 이동 -->
	<c:if test="${paging.currentPage gt paging.pageSize }">
		<a href="${conPath }/reservation.do?method=myReservation&guestId=${guest.guestId }&pageNum=${paging.startPage-1 }&hotelName=${param.hotelName }">&lt;</a>
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
			<a href="${conPath }/reservation.do?method=myReservation&guestId=${guest.guestId }&pageNum=${i }&hotelName=${param.hotelName }">${i }</a>
		</c:if>
	</c:forEach>
	
	<!-- 뒷 블럭으로 이동 -->
	<c:if test="${paging.currentPage lt paging.pageCnt }">
		<a href="${conPath }/reservation.do?method=myReservation&guestId=${guest.guestId }&pageNum=${paging.endPage+1 }&hotelName=${param.hotelName }">&gt;</a>
	</c:if>
	<c:if test="${paging.currentPage eq paging.pageCnt }"><!-- 마지막 블럭일 경우 링크 해제 -->
		<a>&gt;</a>
	</c:if>
	
	<!-- 마지막 페이지로 이동 -->
	<a href="${conPath }/reservation.do?method=myReservation&guestId=${guest.guestId }&pageNum=${paging.pageCnt }&hotelName=${param.hotelName }">&gt;&gt;</a>
</div>

<!-- 예약 취소 다이얼로그 (css단에서 display: none으로 일단 숨겨두었음) -->
<div id="dialog-confirm" title="예약을 취소하시겠습니까?">
 		<div></div>
</div>