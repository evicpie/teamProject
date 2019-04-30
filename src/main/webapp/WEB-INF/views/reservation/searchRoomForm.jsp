<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>HOTEL HOLIDAY - 예약하기</title>
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet"><!-- ★ 게시판 이름에 사용되는 폰트★ -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${conPath }/js/frame.js"></script>

<!-- 이하에 현재 페이지 CSS와 script 삽입 -->
<link rel="stylesheet" href="${conPath }/css/guestHotelPage.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7cd1cf9739b22971b1d3cf9f79a3edf0"></script>
<script>
   $(function(){
	// 체크인 날짜 Datepicker
		$( '[name="reserveCheckin"]' ).datepicker({
	    	dateFormat: 'yy-mm-dd',
	    	monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    	showMonthAfterYear: true, // 연도-월 순서 출력 
	    	yearSuffix: '년',
	    	showOtherMonths: true, // 해당 월 전후의 다른 달 날짜들도 화면에 출력
	    	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    	minDate: 0, // 오늘 이후부터 선택가능
	    	maxDate: 31, // 오늘부터 한 달 이후까지 선택가능
	    	
	    	// 달력모양 버튼 추가
	    	showOn: "button",
	        buttonImage: "${conPath }/img/calendar.gif",
	        buttonImageOnly: true,
	        buttonText: "Select date",
	        
	        onSelect: function() {
	        	// 일단 체크아웃 날짜는 체크인 날짜 다음날부터 선택되도록 minDate 지정
	        	// 오 이렇게 해두니까 체크아웃날짜 먼저 선택하고 체크인날짜를 체크아웃날짜보다 다음으로 선택해도 알아서 조정이 되네
	        	var checkinDate = (new Date($(this).val())).getTime();
	        	var checkinNextDay = checkinDate+(1000*60*60*24); // 하루 더 추가
				$('[name="reserveCheckout"]').datepicker('option','minDate', new Date(checkinNextDay));
	        },
	        
	     // 달력 뜨는 위치 조정 ㅠㅠ 왜 갑자기 저 밑에서 뜨고 난리니 ㅠㅠ...
	        beforeShow: function(input) {
	               var i_offset = jQuery(input).offset();      // 클릭된 input의 위치값 체크
	               setTimeout(function(){
		            	// datepicker의 div의 포지션을 강제로 클릭한 input 위취로 이동시킨다.
		            	$("#ui-datepicker-div").css("top", (i_offset.top-206)+'px');
	               })
	            }
	    });
		
		// 체크아웃 날짜 Datepicker
		$( '[name="reserveCheckout"]' ).datepicker({
	    	dateFormat: 'yy-mm-dd',
	    	monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    	showMonthAfterYear: true, // 연도-월 순서 출력 
	    	yearSuffix: '년',
	    	showOtherMonths: true, // 해당 월 전후의 다른 달 날짜들도 화면에 출력
	    	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    	minDate: 1, // 오늘 이후는 선택불가
	    	
	    	// 달력모양 버튼 추가
	    	showOn: "button",
	        buttonImage: "${conPath }/img/calendar.gif",
	        buttonImageOnly: true,
	        buttonText: "Select date",
	        
	     // 달력 뜨는 위치 조정 ㅠㅠ 왜 갑자기 저 밑에서 뜨고 난리니 ㅠㅠ...
	        beforeShow: function(input) { 
               var i_offset = jQuery(input).offset();      // 클릭된 input의 위치값 체크
               setTimeout(function(){
            	  // datepicker의 div의 포지션을 강제로 클릭한 input 위취로 이동시킨다.
                  $("#ui-datepicker-div").css("top", (i_offset.top-206)+'px');
               })
            }
	    });
		
		// 방 검색 부분으로 스크롤 이동(검색폼 아이디로 링크걸면 너무 꼭대기로 가니까 적당히 중간에 오도록 지도 쪽에 링크)
		location.href="#map";
		
   	});
	// 예약 폼 유효성 검사
  	function searchRoomFormCheck() {
	   alert('in check');
  		/* if($('[name="reserveCheckin"]').val() == '') {
  			alert('체크인 날짜를 입력하세요.');
  			$('[name="reserveCheckin"]').focus();
  			return false;
  		}
  		if($('[name="reserveCheckout"]').val() == '') {
  			alert('체크아웃 날짜를 입력하세요.');
  			$('[name="reserveCheckout"]').focus();
  			return false;
  		}
  		return true; */
	}
   
   
  </script>
</head>
<body>
	<!-- 로그인하지 않은 손님은 먼저 로그인페이지로 보냄  -->
	<c:if test="${empty guest }">
		<script>
			alert('로그인 후 예약 가능합니다.');
			location.href='${conPath }/guest.do?method=loginForm';
		</script>
	</c:if>
	
   <!-- ★ HEADER & REMOTE CONTROLLER ★ -->
   <jsp:include page="../main/header.jsp"/>
   <jsp:include page="../main/remote.jsp"/>
   
         <div id="content">
		  	<div id="leftMenu">
		  		<ul>
		  			<li><a href="hotel.do?method=getHotel&hotelCode=holiday_seoul">서울지점</a></li>
		  			<li><a href="hotel.do?method=getHotel&hotelCode=holiday_incheon">인천지점</a></li>
		  			<li><a href="hotel.do?method=getHotel&hotelCode=holiday_gyeonggi">경기지점</a></li>
		  			<li><a href="hotel.do?method=getHotel&hotelCode=holiday_gangwon">강원지점</a></li>
		  			<li><a href="hotel.do?method=getHotel&hotelCode=holiday_chungcheongn">충북지점</a></li>
		  			<li><a href="hotel.do?method=getHotel&hotelCode=holiday_chungcheongs">충남지점</a></li>
		  			<li><a href="hotel.do?method=getHotel&hotelCode=holiday_daejeon">대전지점</a></li>
		  			<li><a href="hotel.do?method=getHotel&hotelCode=holiday_jeollan">전북지점</a></li>
		  			<li><a href="hotel.do?method=getHotel&hotelCode=holiday_jeollas">전남지점</a></li>
		  			<li><a href="hotel.do?method=getHotel&hotelCode=holiday_gwangju">광주지점</a></li>
		  			<li><a href="hotel.do?method=getHotel&hotelCode=holiday_gyeongsangn">경북지점</a></li>
		  			<li><a href="hotel.do?method=getHotel&hotelCode=holiday_gyeongsangs">경남지점</a></li>
		  			<li><a href="hotel.do?method=getHotel&hotelCode=holiday_daegu">대구지점</a></li>
		  			<li><a href="hotel.do?method=getHotel&hotelCode=holiday_ulsan">울산지점</a></li>
		  			<li><a href="hotel.do?method=getHotel&hotelCode=holiday_busan">부산지점</a></li>
		  			<li><a href="hotel.do?method=getHotel&hotelCode=holiday_jeju">제주지점</a></li>
		  		</ul>
		  	</div>
		  	<div id="hotelInfo">
		  		<h1>${hotelInfo.hotelName }</h1>
		  		<h4>
		  			<span id="scoreImg" style="width: ${(hotelInfo.hotelScore/5.0)*300 }px;"></span> <!-- 별점 이미지 추가 -->
		  			평점 ${hotelInfo.hotelScore }
		  		</h4>
		  		<h2>호텔 전경</h2>
		  		<hr>
		  		<table>
		           <tr>
		              <td colspan="3"><img class="mainImgH" src="${conPath }/imgFileUpload/${hotelInfo.hotelImg_1}" alt="hotelImg1"></td>
		           </tr>
		           <tr>
		              <td><img class="thumbnailH" src="${conPath }/imgFileUpload/${hotelInfo.hotelImg_1}" alt="hotelImg1"></td>
		              <td><img class="thumbnailH" src="${conPath }/imgFileUpload/${hotelInfo.hotelImg_2}" alt="hotelImg2"></td>
		              <td><img class="thumbnailH" src="${conPath }/imgFileUpload/${hotelInfo.hotelImg_3}" alt="hotelImg3"></td>
		           </tr>
		        </table>
		        <h2>공지 사항</h2>
		        <hr>
		        <h3>${hotelInfo.hotelNotice }</h3>
		        <h2>상세 정보</h2>
		        <hr>
		        <h3>${hotelInfo.hotelDetail }</h3>
		        <h2>오시는 길</h2>
		        <hr>
		        <div id="map" style="width:900px;height:600px;"></div>
		        
		        	<script>
		
		                var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		                   var options = { //지도를 생성할 때 필요한 기본 옵션
		                    center: new daum.maps.LatLng(37.513064, 127.102498), //지도의 중심좌표.
		                    level: 3 //지도의 레벨(확대, 축소 정도)
		                  };
		
		                   var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
		                
		                   // 마커가 표시될 위치입니다 
		                   var markerPosition  = new daum.maps.LatLng(37.513064, 127.102498); 
		      
		                   // 마커를 생성합니다
		                   var marker = new daum.maps.Marker({
		                        position: markerPosition
		                   });
		
		                   // 마커가 지도 위에 표시되도록 설정합니다
		                   marker.setMap(map);
		               </script>
		               
				<div id="searchRoomForm">
					<form action="reservation.do" id="searchRoomForm">
						<input type="hidden" name="method" value="availableRoom">
						<input type="hidden" name="hotelCode" value="${param.hotelCode }">
						<table id="searchRoomTable">
							<tr>
								<th>체크인</th>
								<th>체크아웃</th>
							</tr>
							<tr>
								<td><input type="text" name="reserveCheckin" autocomplete="off" readonly="readonly" required="required"></td>
								<td><input type="text" name="reserveCheckout" autocomplete="off" readonly="readonly" required="required"></td>
							</tr>
							<tr>
								<th>인원수</th>
								<td rowspan="2">
									<input type="submit" value="찾기" onsubmit="return searchRoomFormCheck();">
								</td>
							</tr>
							<tr>
								<td>
									<input type="number" name="roomLimit" required="required">
								</td>
							</tr>
						</table>
						
					</form>
				</div>
				
				<!-- [은실] 리뷰 추가-->
				<h2>리뷰</h2>
				<hr>
				<iframe src="${conPath }/review.do?method=reviewFrame&hotelCode=${hotelInfo.hotelCode }"></iframe>
		    </div>
		  </div><!-- ★ #content 끝 ★  -->
         
   <!-- ★ FOOTER ★ -->
   <jsp:include page="../main/footer.jsp"/>
   
</body>
</html>