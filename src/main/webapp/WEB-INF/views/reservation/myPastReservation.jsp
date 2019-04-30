<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<link rel="stylesheet" href="${conPath }/css/reservation/reservationList.css">
<link href="${conPath }/css/review/reviewDialog.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$(document).ready(function() {
	
	// 와 완전 삽질했다 진짜 ㅠㅠㅠㅠ 진작 iframe 쓸걸 ㅠㅠㅠㅠ 내주말 ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ
	// ajax로 구현하는 submit
	/*  $('#myPastReservationForm').submit(function(event) {
		 event.preventDefault(); // 본래 이벤트 수행을 죽이는 함수
		 
		 var post_url = $(this).attr('action');
		 var form_data = $(this).serialize(); // 폼에 입력된 데이터들을 파라미터 형태로 변환시켜주는 메소드!! WOW!!!!
		  
		  $.ajax({
			  url: post_url,
			  type: 'GET',
			  data: form_data,
			  dataType: 'html',
			  success: function(data) {
				  $('#ui-id-2').html(data);
				  $('#tabs').tabs('option','active', 1); // 2번째 탭을 클릭한 효과
			  },
			  error: function(code) {
				  alert(code.status);
			  }
		  });
		  
	  }); */
	
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
				  $('#ui-id-2').html(data);
				  $('#tabs').tabs('option','active', 1);
			  },
			  error: function(code) {
				  alert(code.status);
			  }
		  });
	}); */
	
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
        buttonImage: "/hotel/img/calendar.gif",
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
        buttonImage: "/hotel/img/calendar.gif",
        buttonImageOnly: true,
        buttonText: "Select date",
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
	
	// 아 맨 처음부터 파라미터값을 불러와서 value 속성을 지정해주니까 아무리 초기화해도 초기화가 안되지....!
	// 리셋버튼 동작하도록 다시 정의
	$('[type="reset"]').click(function(event) {
		//$('#myPastReservationForm input[type="text"]').val(''); // 넌 왜 안되냐
		$('#myPastReservationForm input[type="text"]').attr('value',''); // 텍스트필드 리셋
		$('#myPastReservationForm select option').removeAttr('selected'); // 드롭다운박스 리셋
	});
	
	//별점 슬라이더 세팅
	$( "#slider" ).slider({
	      value:0,
	      min: 0,
	      max: 5,
	      step: 0.5,
	      slide: function( event, ui ) {
	    	
	    	$('[name="reviewScore"]').val(ui.value); // 파라미터에 별점 세팅
	    	
	        var width = (ui.value / 5) * 100; // 별점이 표시될 너비 계산
	        $('#cover').css('width', width+'%'); // 별점만큼 너비 출력
	      }
	    });
	
	// 후기 작성 다이얼로그 세팅 로직 
	var dialog = $( "#dialog-form" ).dialog({
      autoOpen: false,
      height: 500,
      width: 600,
      modal: true,
      buttons: {
        "후기 작성": function() {
        	$('#reviewWriteForm').submit();
        	
        },
        "닫기": function() {
        	$('#reviewWriteForm')[0].reset();
        	dialog.dialog( "close" );
        }
      },
      close: function() {
    	  $('#reviewWriteForm')[0].reset();
        // allFields.removeClass( "ui-state-error" ); // 이건 도대체 뭐지
      }
    });
	
	
	
	// 후기 작성 다이얼로그 띄우는 함수
	$('.btnWriteReview').click(function() {
		var reserveCode = $(this).val();
		$('#writeReviewReserveCodeField').val(reserveCode);
		dialog.dialog('open');
	});
		
});



// 후기작성시 파일첨부 이름 보여주는 로직
function showFileName(file) {
	var fileName = file.split('\\').pop();
	var fileShow = document.getElementById('rvFileShow');
	fileShow.value = fileName;
}
</script>
         	
<form action="${conPath }/reservation.do" id="myPastReservationForm">
	<input type="hidden" name="method" value="myPastReservation">
	<input type="hidden" name="guestId" value="${guest.guestId }">
	<table id="searchForm">
		<tr>
			<th>호텔명</th>
			<td><input type="text" name="hotelName" value="${param.hotelName }"></td>
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
			<td colspan="3" id="btnPeriodCell">
				<input type="button" class="period" value="전체">
				<input type="button" class="period" value="1개월">
				<input type="button" class="period" value="3개월">
				<input type="button" class="period" value="1년">
			</td>
		</tr>
		<tr>
			
			<td colspan="3">
				<input type="text" class="datepicker" name="searchCheckin" value="${param.searchCheckin }"> &nbsp; ~ &nbsp;
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
			<th>예약번호</th><th>호텔명</th><th>객실명</th><th>체크인</th><th>체크아웃</th><th>결제금액</th><th>후기</th>
		</tr>
		<c:if test="${empty myPastReservation }">
		<tr><td>지난 예약 내역이 없습니다.</td></tr>
	</c:if>
	<c:if test="${not empty myPastReservation }">
		<c:forEach items="${myPastReservation }" var="reserve">
			<tr>
				<td>${reserve.reserveCode }</td>
				<td>${reserve.hotelName }</td>
				<td>${reserve.roomName }</td>
				<td>${reserve.reserveCheckin }</td>
				<td>${reserve.reserveCheckout }</td>
				<td><fmt:formatNumber value="${reserve.paidPrice }" pattern="#,###"/></td>
				<td>
					<c:if test="${reserve.reviewStatus eq 0 }">
						<button class="btnWriteReview" value="${reserve.reserveCode }">후기 작성</button>
					</c:if>
					<c:if test="${reserve.reviewStatus eq 1 }">
						<!-- 후기 보기로 처리해서 다이얼로그를 띄우든 뭐든 하고 싶은데 시간이 촉박하넹......... -->
						<button disabled="disabled">작성 완료</button>
					</c:if>
				</td>
			</tr>
		</c:forEach>
	</c:if>
	</table>
	
	<div id="pagingDiv">
		<!-- 1페이지로 이동 -->
		<a href="${conPath }/reservation.do?method=myPastReservation&guestId=${guest.guestId }&pageNum=1&hotelName=${param.hotelName }&roomGrade=${param.roomGrade }&searchCheckin=${param.searchCheckin }&searchCheckout=${param.searchCheckout }">&lt;&lt;</a>
		
		<!-- 앞 블럭으로 이동 -->
		<c:if test="${paging.currentPage gt paging.pageSize }">
			<a href="${conPath }/reservation.do?method=myPastReservation&guestId=${guest.guestId }&pageNum=${paging.startPage-1 }&hotelName=${param.hotelName }&roomGrade=${param.roomGrade }&searchCheckin=${param.searchCheckin }&searchCheckout=${param.searchCheckout }">&lt;</a>
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
				<a href="${conPath }/reservation.do?method=myPastReservation&guestId=${guest.guestId }&pageNum=${i }&hotelName=${param.hotelName }&roomGrade=${param.roomGrade }&searchCheckin=${param.searchCheckin }&searchCheckout=${param.searchCheckout }">${i }</a>
			</c:if>
		</c:forEach>
		
		<!-- 뒷 블럭으로 이동 -->
		<c:if test="${paging.currentPage lt paging.pageCnt }">
			<a href="${conPath }/reservation.do?method=myPastReservation&guestId=${guest.guestId }&pageNum=${paging.endPage+1 }&hotelName=${param.hotelName }&roomGrade=${param.roomGrade }&searchCheckin=${param.searchCheckin }&searchCheckout=${param.searchCheckout }">&gt;</a>
		</c:if>
		<c:if test="${paging.currentPage eq paging.pageCnt }"><!-- 마지막 블럭일 경우 링크 해제 -->
			<a>&gt;</a>
		</c:if>
		
		<!-- 마지막 페이지로 이동 -->
		<a href="${conPath }/reservation.do?method=myPastReservation&guestId=${guest.guestId }&pageNum=${paging.pageCnt }&hotelName=${param.hotelName }&roomGrade=${param.roomGrade }&searchCheckin=${param.searchCheckin }&searchCheckout=${param.searchCheckout }">&gt;&gt;</a>
	</div>
	
	<!-- 후기 작성 다이얼로그 -->
	<div id="dialog-form" title="후기 작성">
		<form action="${conPath }/review.do" method="post" enctype="multipart/form-data" id="reviewWriteForm">
			<input type="hidden" name="method" value="writeReview">
			<input type="hidden" name="guestId" value="${guest.guestId }">
			<input type="hidden" name="reserveCode" id="writeReviewReserveCodeField">
			<table>
				<tr>
					<th>제목</th>
					<td><input type="text" name="reviewTitle" required="required"></td>
				</tr>
				<tr>
					<td colspan="2" id="scoreCell">드래그하여 별점을 입력해 주세요.
						<input type="hidden" name="reviewScore" required="required">
						<div id="slider"><div id="cover"></div></div>
					</td>
				</tr>
				<tr>
					<td colspan="2"><textarea name="reviewContent" required="required"></textarea></td>
				</tr>
				<tr>
					<th>파일첨부<br>(5MB까지 첨부가능)</th>
	   				<td>
	   					<input type="text" disabled="disabled" placeholder="파일 선택" id="rvFileShow">
	   					<label for="rvFileName">찾아보기</label>
	   					<input type="file" name="tempReviewFile" id="rvFileName" onchange="showFileName(this.value)">
	   				</td>
				</tr>
			</table>
		</form>
	</div>
            
    