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
		// 예약가능한 방 보여주는 탭
		$( "#tabs" ).tabs();

		// 예약할 방 탭 부분으로 스크롤을 이동해줌(탭부분 아이디로 링크걸면 너무 꼭대기로 가니까 적당히 중간에 오도록 지도 쪽에 링크)
		location.href="#map";
   	});
  </script>
</head>
<body>
	
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
		               
				<div id="tabs">
				<ul>
					<li><a href="#tabs-1">STANDARD</a></li>
					<li><a href="#tabs-2">DELUXE</a></li>
					<li><a href="#tabs-3">SUITE</a></li>
				</ul>
				<div id="tabs-1">
					<!-- 스탠다드룸 목록 -->
					<table class="availableRoomList">
						<c:if test="${empty availableStandardRoom }">
							<tr>
								<td>해당하는 객실이 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${not empty availableStandardRoom }">
							<c:forEach var="room" items="${availableStandardRoom }">
								<tr>
									<td class="roomThumbnailCell"><img class="roomThumbnail" src="${conPath }/imgFileUpload/${room.roomImg_1 }" alt="${room.roomCode }"></td>
									<td class="roomInfoCell">
										<p class="roomNamePhrase">${room.roomName }</p>
										<p class="roomPricePhrase"><fmt:formatNumber value="${room.roomCost }" pattern="#,###"/>원</p>
									</td>
									<td>
										<c:set var="reserveCheckin" value="${reservation.reserveCheckin }"/>
										<c:set var="reserveCheckout" value="${reservation.reserveCheckout }"/>
										<button onclick="location.href='${conPath }/reservation.do?method=payForReservation&hotelCode=${param.hotelCode }&roomCode=${room.roomCode }&reserveCheckin=${param.reserveCheckin }&reserveCheckout=${param.reserveCheckout }&guestId=${guest.guestId }'">예약하기</button>
									</td>
								</tr>
							</c:forEach>
						</c:if>
					</table>
					
				</div>
				<div id="tabs-2">
					<!-- 디럭스룸 목록 -->
					<table class="availableRoomList">
						<c:if test="${empty availableDeluxeRoom }">
							<tr>
								<td>해당하는 객실이 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${not empty availableDeluxeRoom }">
							<c:forEach var="room" items="${availableDeluxeRoom }">
								<tr>
									<td class="roomThumbnailCell"><img class="roomThumbnail" src="${conPath }/imgFileUpload/${room.roomImg_1 }" alt="${room.roomCode }"></td>
									<td class="roomInfoCell">
										<p class="roomNamePhrase">${room.roomName }</p>
										<p class="roomPricePhrase"><fmt:formatNumber value="${room.roomCost }" pattern="#,###"/>원</p>
									</td>
									<td>
										<c:set var="reserveCheckin" value="${reservation.reserveCheckin }"/>
										<c:set var="reserveCheckout" value="${reservation.reserveCheckout }"/>
										<button onclick="location.href='${conPath }/reservation.do?method=payForReservation&hotelCode=${param.hotelCode }&roomCode=${room.roomCode }&reserveCheckin=${param.reserveCheckin }&reserveCheckout=${param.reserveCheckout }&guestId=${guest.guestId }'">예약</button>
									</td>
								</tr>
							</c:forEach>
						</c:if>
					</table>
				</div>
				<div id="tabs-3">
					<!-- 스위트룸 목록 -->
					<table class="availableRoomList">
						<c:if test="${empty availableSuiteRoom }">
							<tr>
								<td class="emptyRoom">해당하는 객실이 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${not empty availableSuiteRoom }">
							<c:forEach var="room" items="${availableSuiteRoom }">
								<tr>
									<td class="roomThumbnailCell"><img class="roomThumbnail" src="${conPath }/imgFileUpload/${room.roomImg_1 }" alt="${room.roomCode }"></td>
									<td class="roomInfoCell">
										<p class="roomNamePhrase">${room.roomName }</p>
										<p class="roomPricePhrase"><fmt:formatNumber value="${room.roomCost }" pattern="#,###"/>원</p>
									</td>
									<td>
										<button class="btnReserve" onclick="location.href='${conPath }/reservation.do?method=payForReservation&hotelCode=${param.hotelCode }&roomCode=${room.roomCode }&reserveCheckin=${param.reserveCheckin }&reserveCheckout=${param.reserveCheckout }&guestId=${guest.guestId }'">예약</button>
									</td>
								</tr>
							</c:forEach>
						</c:if>
					</table>
				</div>
			</div>
				
				<!-- [은실] 리뷰 추가-->
				<h2>리뷰</h2>
				<hr>
				<iframe src="${conPath }/review.do?method=reviewFrame&hotelCode=${hotelInfo.hotelCode }"></iframe>
		    </div>
		  </div>

   <!-- ★ FOOTER ★ -->
   <jsp:include page="../main/footer.jsp"/>
   
</body>
</html>