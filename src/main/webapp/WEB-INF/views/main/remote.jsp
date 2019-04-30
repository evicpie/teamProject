<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%-- [은실] 벤더프리픽스 경로 수정, 근데 이거 추가하니까 크롬에서 CSS파일을 고칠수가 없어서 일단 주석처리해둠... --%>
<%-- <script src="${conPath }/js/prefixfree.min.js"></script> --%>
<link href="${conPath }/css/remote.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
<script>
	var menuToggle = 0;
	$(document).ready(function(){
		if(document.body.clientWidth>800){
			//alert('시작시 너비 800이상이면 오른쪽으로 붙음');
			var left = (document.body.clientWidth-830);
		}
		
		$('#remoteMenu').click(function() {
			if(menuToggle == 0) {
				// 리모콘 펼치기
				$('#button0').css('animation-name', 'button0_ani');
				$('#button1').css('animation-name', 'button1_ani');
				$('#button1').css('right', '10px');
				$('#button2').css('animation-name', 'button2_ani');
				$('#button2').css('right', '20px');
				$('#button3').css('animation-name', 'button3_ani');
				$('#button3').css('right', '30px');
				$('#button4').css('animation-name', 'button4_ani');
				$('#button4').css('right', '40px');
				
				// 리모콘 영역을 넓히고 애니메이션 제거
				$('#remote').css('animation-name','');
				$('#remote').css('width', '800px');
				
				menuToggle = 1;
				
			} else {
				// 리모콘 접기
				$('#button0').css('animation-name', 'button0_ani_back');
	            $('#button1').css('animation-name', 'button1_ani_back');
	            $('#button1').css('right','-150px');
	            $('#button2').css('animation-name', 'button2_ani_back');
	            $('#button2').css('right','-300px');
	            $('#button3').css('animation-name', 'button3_ani_back');
	            $('#button3').css('right','-450px');
	            $('#button4').css('animation-name', 'button4_ani_back');
	            $('#button4').css('right','-600px');
	            
	            // 애니메이션을 적용하고 리모콘 영역 축소
	            $('#remote').css('animation-name', 'remoteAreaContract');
	           // $('#remote').css('width', '122px');
	            
				menuToggle = 0;
			}
			
		});
	});
	
	$(window).resize(function(){
		if(document.body.clientWidth>800){
			//alert('리사이즈해서 800이상이면 오른쪽으로 붙음');
			/* var left = (document.body.clientWidth-830);
			$('#remote').css('left', left+'px'); */
		}
	});
	
	var eventBtn = [ '${conPath }/img/remoteEvent.png','${conPath }/img/remoteEventFont.png' ];
	var customerBtn = [ '${conPath }/img/remoteCustomer.png','${conPath }/img/remoteCustomerFont.png' ];
	var noticeBtn = [ '${conPath }/img/remoteNotice.png','${conPath }/img/remoteNoticeFont.png' ];
	var reserveBtn = [ '${conPath }/img/remoteReserve.png','${conPath }/img/remoteReserveFont.png' ];
	
	function remoteBtn1(n) {//이벤트
		var img = document.getElementById('remoteEvent');
		img.src = eventBtn[n];
	}
	function remoteBtn2(n) {//고객센터
		var img = document.getElementById('remoteCustomer');
		img.src = customerBtn[n];
	}
	function remoteBtn3(n) {//공지사항
		var img = document.getElementById('remoteNotice');
		img.src = noticeBtn[n];
	}
	function remoteBtn4(n) {//예약
		var img = document.getElementById('remoteReseve');
		img.src = reserveBtn[n];
	}
</script>
</head>
<body>
	<div id="remote">
	<!-- 호텔예약(지도)/공지사항/고객센터(문의글작성)/이벤트/메뉴버튼 --><!-- 호텔사이트전체소개(로고에) -->
		<div id="button0"><!-- 메뉴버튼 -->
			<img src="${conPath }/img/remoteMenu.png" id="remoteMenu"/>	
		</div>
		<div id="button1"><!-- 이벤트버튼 -->
			<a href="${conPath }/event.do?method=eventList"><img src="${conPath }/img/remoteEvent.png" id="remoteEvent" onmouseover="remoteBtn1(1);" onmouseout="remoteBtn1(0);"/></a>
			
		</div>
		<div id="button2"><!-- 고객센터작성버튼 -->
			<a href="${conPath }/support.do?method=supportList&pageNum=1"><img src="${conPath }/img/remoteCustomer.png" id="remoteCustomer" onmouseover="remoteBtn2(1);" onmouseout="remoteBtn2(0);"/></a>
				
		</div>
		<div id="button3"><!-- 공지사항버튼 -->
			<a href="${conPath }/hotel_notice.do?method=hotel_notice_List"><img src="${conPath }/img/remoteNotice.png" id="remoteNotice" onmouseover="remoteBtn3(1);" onmouseout="remoteBtn3(0);"/></a>	
		</div>
		<div id="button4"><!-- 예약버튼(지도) -->
			<a href="${conPath }/main.do?focusMap=1"><img src="${conPath }/img/remoteReserve.png" id="remoteReseve" onmouseover="remoteBtn4(1);" onmouseout="remoteBtn4(0);"/></a>		
		</div>
	</div>
</body>
</html>