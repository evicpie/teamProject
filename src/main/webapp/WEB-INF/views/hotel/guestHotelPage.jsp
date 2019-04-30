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
	   
	   // 객실 썸네일 출력 관련 자바스크립트 코드
       $('.thumbnailH').click(function(){            //클릭 시
           var imgPath = $(this).attr("src");     //클릭한 a태그의 하이퍼링크를 변수저장
           $('.mainImgH').attr({src:imgPath})   //메인 이미지의 주소 속성에 할당
           .hide()                                 //fadein()효과를 보여주기 위해 숨김처리
           .fadeIn();                              //fadeIn()
       });
	   
	   /* [은실] 객실 소개 썸네일 부분 중복되는 함수 통합:클래스 이름 좀 조정했어요! */
       $('.thumbnailRoom').click(function(){            //클릭 시
           var imgPath = $(this).attr("src");     //클릭한 a태그의 하이퍼링크를 변수저장
           $('.mainImgRoom').attr({src:imgPath})   //메인 이미지의 주소 속성에 할당
           .hide()                                 //fadein()효과를 보여주기 위해 숨김처리
           .fadeIn();                              //fadeIn()
       });

       $( "#tabs" ).tabs();
       
       // 현재 출력하는 호텔 메뉴 버튼은 left메뉴에서 진하게 표시
       for(var i=1; i<17; i++) {
    	   if($('#leftMenu li:nth-child('+i+') a').attr('href').indexOf('${param.hotelCode }')>-1) {
    		   $('#leftMenu li:nth-child('+i+')').css('background-color', '#db9478');
    		   $('#leftMenu li:nth-child('+i+') a').css('font-weight', 'bold');
    		   $('#leftMenu li:nth-child('+i+') a').css('color', '#f1f0d1');
    		   break;
    	   }
       }
       
       
   	});
   
   // 리뷰 iframe 높이 자동 조절하는 함수
   function calcHeight(){
	   //find the height of the internal page
	   var the_height=document.getElementById('reviewFrame').contentWindow.document.body.scrollHeight;

	   //change the height of the iframe
	   document.getElementById('reviewFrame').height=the_height;

	   //document.getElementById('the_iframe').scrolling = "no";
	   document.getElementById('reviewFrame').style.overflow = "hidden";
	}
   
   	
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
				    <li><a href="#tabs-1">스탠다드 룸</a></li>
				    <li><a href="#tabs-2">디럭스 룸</a></li>
				    <li><a href="#tabs-3">스위트 룸</a></li>
				  </ul>
				  <div id="tabs-1">
				  	  <table>
				  	  	<caption>스탠다드 룸 소개</caption>
				  	  	<tr>
				  	  		<td>방 정원</td>
				  	  		<td>${standardInfo.roomLimit}</td>
				  	  	</tr>
				  	  	<tr>
				  	  		<td>방 가격</td>
				  	  		<td>${standardInfo.roomCost}</td>
				  	  	</tr>
				  	  	<tr>
				  	  		<td colspan="2">
						  	  	<table>
						  	  		<tr>
						  	  			<td colspan="5">방 전경 사진</td>
						  	  		</tr>
							  	  	<tr>
						               <td colspan="5"><img class="mainImgRoom" src="${conPath }/imgFileUpload/${standardInfo.roomImg_1}" alt="roomImg_1"></td>
						            </tr>
						            <tr>
						               <td><img class="thumbnailRoom" src="${conPath }/imgFileUpload/${standardInfo.roomImg_1}" alt="roomImg_1"></td>
						               <td><img class="thumbnailRoom" src="${conPath }/imgFileUpload/${standardInfo.roomImg_2}" alt="roomImg_2"></td>
						               <td><img class="thumbnailRoom" src="${conPath }/imgFileUpload/${standardInfo.roomImg_3}" alt="roomImg_3"></td>
						               <td><img class="thumbnailRoom" src="${conPath }/imgFileUpload/${standardInfo.roomImg_4}" alt="roomImg_4"></td>
						               <td><img class="thumbnailRoom" src="${conPath }/imgFileUpload/${standardInfo.roomImg_5}" alt="roomImg_5"></td>
						            </tr>
					            </table>
				            </td>
			            </tr>
				  	  </table>
				  </div>
				  <div id="tabs-2">
				  	<table>
				  	  	<caption>디럭스 룸 소개</caption>
				  	  	<tr>
				  	  		<td>방 정원</td>
				  	  		<td>${deluxeInfo.roomLimit}</td>
				  	  	</tr>
				  	  	<tr>
				  	  		<td>방 가격</td>
				  	  		<td>${deluxeInfo.roomCost}</td>
				  	  	</tr>
				  	  	<tr>
				  	  		<td colspan="2">
						  	  	<table>
						  	  		<tr>
						  	  			<td colspan="5">방 전경 사진</td>
						  	  		</tr>
							  	  	<tr>
						               <td colspan="5"><img class="mainImgRoom" src="${conPath }/imgFileUpload/${deluxeInfo.roomImg_1}" alt="roomImg_1"></td>
						            </tr>
						            <tr>
						               <td><img class="thumbnailRoom" src="${conPath }/imgFileUpload/${deluxeInfo.roomImg_1}" alt="roomImg_1"></td>
						               <td><img class="thumbnailRoom" src="${conPath }/imgFileUpload/${deluxeInfo.roomImg_2}" alt="roomImg_2"></td>
						               <td><img class="thumbnailRoom" src="${conPath }/imgFileUpload/${deluxeInfo.roomImg_3}" alt="roomImg_3"></td>
						               <td><img class="thumbnailRoom" src="${conPath }/imgFileUpload/${deluxeInfo.roomImg_4}" alt="roomImg_4"></td>
						               <td><img class="thumbnailRoom" src="${conPath }/imgFileUpload/${deluxeInfo.roomImg_5}" alt="roomImg_5"></td>
						            </tr>
					            </table>
				            </td>
			            </tr>
				  	  </table>
				  </div>
				  <div id="tabs-3">
				  	<table>
				  	  	<caption>스탠다드 룸 소개</caption>
				  	  	<tr>
				  	  		<td>방 정원</td>
				  	  		<td>${suiteInfo.roomLimit} 명</td>
				  	  	</tr>
				  	  	<tr>
				  	  		<td>방 가격</td>
				  	  		<td>${suiteInfo.roomCost} 원</td>
				  	  	</tr>
				  	  	<tr>
				  	  		<td colspan="2">
						  	  	<table>
						  	  		<tr>
						  	  			<td colspan="5">방 전경 사진</td>
						  	  		</tr>
							  	  	<tr>
						               <td colspan="5"><img class="mainImgRoom" src="${conPath }/imgFileUpload/${suiteInfo.roomImg_1}" alt="roomImg_1"></td>
						            </tr>
						            <tr>
						               <td><img class="thumbnailRoom" src="${conPath }/imgFileUpload/${suiteInfo.roomImg_1}" alt="roomImg_1"></td>
						               <td><img class="thumbnailRoom" src="${conPath }/imgFileUpload/${suiteInfo.roomImg_2}" alt="roomImg_2"></td>
						               <td><img class="thumbnailRoom" src="${conPath }/imgFileUpload/${suiteInfo.roomImg_3}" alt="roomImg_3"></td>
						               <td><img class="thumbnailRoom" src="${conPath }/imgFileUpload/${suiteInfo.roomImg_4}" alt="roomImg_4"></td>
						               <td><img class="thumbnailRoom" src="${conPath }/imgFileUpload/${suiteInfo.roomImg_5}" alt="roomImg_5"></td>
						            </tr>
					            </table>
				            </td>
			            </tr>
			            
				  	  </table>
				  </div>
				</div>
				<button id="btnReservation" onclick="location='${conPath}/reservation.do?method=availableRoomForm&hotelCode=${hotelInfo.hotelCode }'">예약하기</button>
				
				<!-- [은실] 리뷰 추가-->
				<h2>리뷰</h2>
				<hr>
				<iframe id="reviewFrame" src="${conPath }/review.do?method=reviewFrame&hotelCode=${hotelInfo.hotelCode }" onload="calcHeight();"></iframe>
		    </div>
		</div><!-- #content 끝 -->
	 
   <!-- ★ FOOTER ★ -->
   <jsp:include page="../main/footer.jsp"/>
   
</body>
</html>