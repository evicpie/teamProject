<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Hotel Holiday</title>
	<link href="${conPath }/css/main.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Noto+Serif" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">


	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js"></script> -->
	<!-- [은실] 3.3.1버전으로 쓰니까 이벤트 슬라이드 배너가 안먹어서 1.12.4버전으로 변경 -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script>
	
	
	
	
	//지도 선택영역 색들어오게 하기
	$(document).ready(function() {
		if("${param.focusMap}"=="1"){ // param 추가
			location.href="#area1";
		}
		//MAP
		if($("div.areaMap").val()!=null) {
			$("div.areaMap map area").each(function(){	
				
			});
		}
		if($("div.areaMap").val()!=null) {
			$("div.areaMap map area").each(function(){
				$(this).mouseenter(function(){
					var thisIdx = $("div.areaMap map area").index($(this));
					$("div.areaMap > p").hide();
					$("div.areaMap ul li").hide();
					$("div.areaMap ul li").eq(thisIdx).show();
				});
				$(this).mouseleave(function(){
					var thisIdx = $("div.areaMap map area").index($(this));
					$("div.areaMap > p").show();
					$("div.areaMap ul li").hide();
				});
			});
		}
	
	});
	//OPTION
	var option1 = ['${conPath }/img/opt_wifi.png', '${conPath }/img/opt_wifiFont.png'];
	var option2 = ['${conPath }/img/opt_noSmoke.png', '${conPath }/img/opt_noSmokeFont.png'];
	var option3 = ['${conPath }/img/opt_luggage.png','${conPath }/img/opt_luggageFont.png']
	var option4 = ['${conPath }/img/opt_24desk.png', '${conPath }/img/opt_24deskFont.png'];
	var option5 = ['${conPath }/img/opt_limousine.png', '${conPath }/img/opt_limousineFont.png'];
	var option6 = ['${conPath }/img/opt_laptop.png', '${conPath }/img/opt_laptopFont.png'];
	var option7 = ['${conPath }/img/opt_breakfast.png', '${conPath }/img/opt_breakfastFont.png'];
	var option8 = ['${conPath }/img/opt_laundry.png', '${conPath }/img/opt_laundryFont.png'];
	var option9 = ['${conPath }/img/opt_fitness.png', '${conPath }/img/opt_fitnessFont.png'];
	var option10 = ['${conPath }/img/opt_sauna.png', '${conPath }/img/opt_saunaFont.png'];
	var option11 = ['${conPath }/img/opt_pool.png', '${conPath }/img/opt_poolFont.png'];
	var option12 = ['${conPath }/img/opt_spa.png', '${conPath }/img/opt_spaFont.png'];
	
	function opt1(n) {//로그인
	    var img = document.getElementById('option1');
	    img.src = option1[n];
	}
	function opt2(n) {//로그인
	    var img = document.getElementById('option2');
	    img.src = option2[n];
	}
	function opt3(n) {//로그인
	    var img = document.getElementById('option3');
	    img.src = option3[n];
	}
	function opt4(n) {//로그인
	    var img = document.getElementById('option4');
	    img.src = option4[n];
	}
	function opt5(n) {//로그인
	    var img = document.getElementById('option5');
	    img.src = option5[n];
	}
	function opt6(n) {//로그인
	    var img = document.getElementById('option6');
	    img.src = option6[n];
	}
	function opt7(n) {//로그인
	    var img = document.getElementById('option7');
	    img.src = option7[n];
	}
	function opt8(n) {//로그인
	    var img = document.getElementById('option8');
	    img.src = option8[n];
	}
	function opt9(n) {//로그인
	    var img = document.getElementById('option9');
	    img.src = option9[n];
	}
	function opt10(n) {//로그인
	    var img = document.getElementById('option10');
	    img.src = option10[n];
	}
	function opt11(n) {//로그인
	    var img = document.getElementById('option11');
	    img.src = option11[n];
	}
	function opt12(n) {//로그인
	    var img = document.getElementById('option12');
	    img.src = option12[n];
	}
</script>
</head>
<body>
<jsp:include page="mainHeader.jsp"/>
<jsp:include page="remoteMain.jsp"/>
<div id="main">
	
	<div id="mainLogo">
	
		<span id="sideLogo">Some Where</span>
		<span id="whiteSpace"></span>
		<span id="sideLogo">Some Place</span>
	</div>
	<table id="area1">
		<tr>
			<td>
			       <div class="areaMap">
                    <p><img src="${conPath }/img/map_all.jpg" alt="기본지도" usemap="#storeMap" /></p>
                    <ul>
                        <li><img src="${conPath }/img/map_img01.jpg" alt="서울특별시" usemap="#storeMap"/></li>
                        <li><img src="${conPath }/img/map_img02.jpg" alt="인천광역시" usemap="#storeMap" /></li>
                        <li><img src="${conPath }/img/map_img03.jpg" alt="경기도" usemap="#storeMap" /></li>
                        <li><img src="${conPath }/img/map_img04.jpg" alt="강원도" usemap="#storeMap" /></li>
                        <li><img src="${conPath }/img/map_img05.jpg" alt="대전광역시" usemap="#storeMap" /></li>
                        <li><img src="${conPath }/img/map_img06.jpg" alt="충청북도" usemap="#storeMap" /></li>
                        <li><img src="${conPath }/img/map_img07.jpg" alt="충청남도" usemap="#storeMap" /></li>
                        <li><img src="${conPath }/img/map_img08.jpg" alt="대구광역시" usemap="#storeMap" /></li>
                        <li><img src="${conPath }/img/map_img09.jpg" alt="울산광역시" usemap="#storeMap" /></li>
                        <li><img src="${conPath }/img/map_img10.jpg" alt="부산광역시" usemap="#storeMap" /></li>
                        <li><img src="${conPath }/img/map_img11.jpg" alt="경상북도" usemap="#storeMap" /></li>
                        <li><img src="${conPath }/img/map_img12.jpg" alt="경상남도" usemap="#storeMap" /></li>
                        <li><img src="${conPath }/img/map_img13.jpg" alt="광주광역시" usemap="#storeMap" /></li>
                        <li><img src="${conPath }/img/map_img14.jpg" alt="전라북도" usemap="#storeMap" /></li>
                        <li><img src="${conPath }/img/map_img15.jpg" alt="전라남도" usemap="#storeMap" /></li>
                        <li><img src="${conPath }/img/map_img16.jpg" alt="제주도" usemap="#storeMap" /></li>
                    </ul>
                    <map id="storeMap" name="storeMap">
                        <area id="test" shape="poly" coords="175,100,178,99,181,99,185,99,190,100,193,102,194,104,194,105,192,106,191,108,190,109,189,110,189,112,188,114,187,114,185,113,183,112,181,110,178,108,176,106,175,104,174,102,174,101"
                        	 href="${conPath }/hotel.do?method=getHotel&hotelCode=holiday_seoul" title="서울"/>
                        <area shape="poly" coords="139,96,141,97,142,98,143,99,144,101,145,103,147,105,148,107,148,109,149,112,150,113,151,114,153,114,155,114,157,113,159,112,160,110,161,109,163,107,163,106,165,106,167,107,171,110,174,112,175,114,177,115,177,117,176,117,175,118,174,119,173,120,172,122,171,123,169,124,168,124,165,121,161,119,158,118,155,118,153,117,151,119,150,121,148,122,148,123,147,124,146,124,146,123,146,120,145,117,145,114,143,112,142,111,141,108,139,106,137,105,134,105,132,104,129,103,128,102,128,100,130,99,134,98,137,96,138,96"
                        	 href="${conPath }/hotel.do?method=getHotel&hotelCode=holiday_incheon" title="인천" />
                        <area shape="poly" coords="168,74,172,75,176,74,179,72,181,68,180,64,177,62,174,58,175,56,179,54,181,54,183,55,186,56,190,58,192,60,194,61,197,62,201,62,204,62,209,63,214,66,219,70,223,75,226,82,227,87,227,93,226,98,227,103,230,107,235,112,239,119,240,127,240,132,242,136,241,143,240,146,236,150,231,154,227,155,222,157,220,158,217,159,215,162,213,165,211,167,208,169,203,170,197,170,193,170,188,170,183,170,181,169,179,167,176,165,174,163,171,161,170,160,171,159,171,159,173,158,176,158,177,156,177,154,175,152,173,151,171,151,168,150,165,151,163,152,161,151,161,150,162,148,164,148,167,147,170,147,173,148,174,147,175,145,174,143,171,141,169,139,167,138,167,136,169,133,175,128,179,124,184,120,190,120,194,119,196,117,199,113,201,107,202,102,201,98,196,94,192,93,187,91,181,90,175,90,172,92,171,94,168,96,165,98,162,99,160,100,159,101,157,102,154,104,152,102,150,99,148,96,145,93,144,91,145,87,149,85,154,84,160,85,166,84,170,82,170,79,168,77,167,75"
                        	 href="${conPath }/hotel.do?method=getHotel&hotelCode=holiday_gyeonggi" title="경기도" onclick="javascript:location.href='storeSearch.html?sido=경기';"/>
                        <area shape="poly" coords="192,52,195,52,197,52,202,51,204,51,208,51,211,50,214,48,217,48,222,49,227,49,232,46,234,44,237,42,241,41,244,42,248,44,253,45,259,47,265,52,267,53,270,52,272,50,274,48,278,45,280,39,280,34,280,33,282,30,285,27,286,26,288,28,289,30,291,33,293,37,294,41,296,43,299,45,300,48,300,54,301,60,302,65,307,73,310,78,313,82,316,85,319,87,320,89,320,92,322,95,326,98,332,102,335,105,336,108,336,112,339,116,345,122,348,129,348,136,351,139,356,142,360,146,360,147,358,149,355,150,352,152,351,154,351,155,349,156,347,155,343,153,340,153,337,153,335,154,331,158,327,160,322,159,318,155,314,153,311,152,306,153,304,154,300,155,297,155,294,152,290,148,288,147,285,148,284,150,282,149,279,147,276,144,274,141,270,141,264,141,260,140,258,141,254,143,251,143,249,143,248,142,247,139,248,135,247,131,246,128,246,124,246,119,245,113,243,111,238,107,234,105,233,102,233,96,233,90,231,84,229,80,228,75,226,69,222,65,218,62,211,58,206,55,201,55,196,55,193,54,191,54"
                        	 href="${conPath }/hotel.do?method=getHotel&hotelCode=holiday_gangwon" title="강원도" onclick="javascript:location.href='storeSearch.html?sido=강원';"/>
                        <area shape="poly" coords="214,220,216,220,219,222,222,224,224,227,223,231,222,235,220,235,217,234,214,232,213,230,212,228,213,225,213,222,214,221"
                        	 href="${conPath }/hotel.do?method=getHotel&hotelCode=holiday_daejeon" title="대전" onclick="javascript:location.href='storeSearch.html?sido=대전';"/>
                        <area shape="poly" coords="246,150,251,150,256,150,261,149,265,147,268,147,271,149,276,154,280,158,284,157,288,158,290,161,293,163,298,163,298,164,295,167,292,171,290,174,287,176,283,176,275,176,270,177,266,181,263,183,259,186,256,188,256,190,256,193,255,194,253,194,250,193,247,195,244,198,244,201,246,205,248,210,248,213,249,215,250,217,250,218,248,221,247,224,247,227,250,229,254,232,256,234,260,235,261,236,261,237,258,239,256,243,256,243,254,245,251,248,251,249,245,249,241,248,238,244,232,238,232,236,233,233,234,226,232,221,225,214,219,210,215,203,216,198,219,191,219,185,217,180,215,177,214,173,215,171,220,166,230,161,237,156,242,151"
                        	 href="${conPath }/hotel.do?method=getHotel&hotelCode=holiday_chungcheongn" title="충청북도" onclick="javascript:location.href='storeSearch.html?sido=충북';"/>
                        <area shape="poly" coords="145,156,150,158,153,162,154,165,156,169,159,172,164,172,168,174,171,177,176,179,180,179,184,178,188,176,192,176,196,177,200,176,204,176,207,178,207,180,208,183,211,187,211,189,208,194,206,197,205,201,205,204,207,207,209,211,209,213,208,216,206,219,204,224,204,227,204,232,206,236,209,240,214,242,217,242,223,241,226,242,229,245,230,248,228,251,227,252,224,252,220,251,217,247,214,245,211,243,208,242,205,241,200,241,196,241,193,240,193,240,190,238,187,238,184,238,182,239,180,241,176,245,171,249,168,251,166,251,164,248,161,244,159,241,158,239,158,236,158,233,159,227,159,223,158,220,156,217,152,216,149,217,147,215,146,214,145,208,146,204,145,200,144,196,141,193,137,193,134,195,133,197,132,198,132,197,130,193,128,189,126,187,124,185,122,184,121,182,122,180,124,176,126,174,127,174,128,176,128,178,126,181,126,183,129,184,132,183,134,180,137,176,139,174,140,172,139,169,142,170,145,172,148,170,148,165,147,161,146,159,144,157"
                        	 href="${conPath }/hotel.do?method=getHotel&hotelCode=holiday_chungcheongs" title="충청남도" onclick="javascript:location.href='storeSearch.html?sido=충남';"/>
                        <area shape="poly" coords="301,274,303,271,305,265,306,263,306,256,309,255,311,255,315,253,317,255,318,258,318,260,317,262,313,266,311,269,311,275,310,276,308,275,306,277,303,279,301,277"
                        	 href="${conPath }/hotel.do?method=getHotel&hotelCode=holiday_daegu" title="대구" onclick="javascript:location.href='storeSearch.html?sido=대구';"/>
                        <area shape="poly" coords="354,278,357,279,359,282,360,285,360,287,361,289,364,289,366,289,367,291,366,293,365,294,364,297,364,300,363,300,360,300,358,301,356,303,356,305,356,308,355,309,353,309,351,308,350,308,349,306,349,302,350,295,349,290,348,288,349,286,351,282,353,279"
                        	 href="${conPath }/hotel.do?method=getHotel&hotelCode=holiday_ulsan" title="울산" onclick="javascript:location.href='storeSearch.html?sido=울산';"/>
                        <area shape="poly" coords="335,323,337,318,340,315,344,315,347,316,352,316,353,318,350,320,347,322,347,326,347,330,345,332,338,335,333,338,330,342,328,345,326,345,325,344,325,341,327,338,327,335,327,332,330,328,334,325,334,324"
                        	 href="${conPath }/hotel.do?method=getHotel&hotelCode=holiday_busan" title="부산" onclick="javascript:location.href='storeSearch.html?sido=부산';"/>
                        <area shape="poly" coords="310,160,312,161,317,166,322,168,328,167,335,162,338,160,342,161,347,164,351,164,355,161,356,158,358,158,361,161,361,170,361,177,365,183,367,191,364,199,365,204,367,210,367,214,365,219,363,222,362,232,361,240,361,250,362,254,365,256,368,254,371,251,374,247,375,248,375,253,373,259,372,266,371,271,370,277,368,279,366,278,364,272,361,271,355,270,351,270,347,272,345,276,344,280,343,282,339,280,335,279,332,280,329,282,328,285,326,286,323,284,318,281,318,280,322,277,323,273,322,269,324,267,328,263,328,258,326,254,324,250,322,245,320,243,317,243,314,246,311,247,307,247,302,249,300,252,299,257,297,264,296,269,295,273,293,274,290,272,286,271,283,265,278,262,275,261,272,261,271,260,268,257,265,258,262,259,260,259,257,256,256,255,257,254,261,250,262,247,267,242,270,237,268,231,263,228,259,225,258,222,258,219,256,216,256,216,256,213,255,209,252,205,252,203,252,200,255,200,260,200,262,199,264,195,264,192,269,187,276,183,283,184,293,183,299,176,304,170,307,167,308,161"
                        	 href="${conPath }/hotel.do?method=getHotel&hotelCode=holiday_gyeongsangn" title="경상북도"/>
                        <area shape="poly" coords="234,285,241,278,246,272,252,265,255,265,258,268,261,268,265,267,268,268,271,270,275,270,278,273,284,280,291,283,299,286,303,287,307,286,311,288,317,292,330,293,333,291,335,289,337,289,342,294,342,299,341,304,341,307,340,308,336,308,333,310,329,314,328,318,324,321,321,324,320,331,318,332,316,332,310,331,307,333,303,337,302,343,303,348,306,349,309,348,311,346,312,346,311,350,309,353,307,357,307,360,306,364,305,364,301,359,297,358,293,355,290,349,285,346,282,346,279,348,277,351,276,352,272,351,270,350,267,352,265,356,265,359,265,361,264,361,258,358,252,357,249,357,247,360,247,361,246,360,244,354,245,349,248,341,248,335,243,326,238,317,236,313,235,310,239,303,239,296,238,290,235,287,234,286"
                        	 href="${conPath }/hotel.do?method=getHotel&hotelCode=holiday_gyeongsangs" title="경상남도" onclick="javascript:location.href='storeSearch.html?sido=경남';"/>
                        <area shape="poly" coords="170,335,173,334,177,334,181,333,181,331,180,328,175,324,172,322,169,322,168,324,169,326,170,331,169,333,170,334"
                        	 href="${conPath }/hotel.do?method=getHotel&hotelCode=holiday_gwangju" title="광주"  onclick="javascript:location.href='storeSearch.html?sido=광주';"/>
                        <area shape="poly" coords="241,266,231,275,227,280,227,283,229,287,229,294,231,300,230,304,227,307,224,306,210,306,206,308,202,311,197,312,196,311,193,307,191,306,188,305,185,303,182,299,178,296,175,294,171,294,169,296,164,303,161,307,159,311,156,313,154,313,154,312,153,309,149,304,148,302,148,300,150,296,150,293,148,287,148,286,150,285,156,281,160,277,162,272,162,268,164,264,165,263,165,260,165,259,167,259,171,258,176,255,180,251,184,248,186,246,190,248,193,250,197,251,201,250,206,250,211,252,214,257,218,260,221,261,227,261,232,259,234,256,236,256,238,259,241,260,244,260,246,261,245,262"
                        	 href="${conPath }/hotel.do?method=getHotel&hotelCode=holiday_jeollan" title="전라북도" onclick="javascript:location.href='storeSearch.html?sido=전북';"/>
                        <area shape="poly" coords="170,315,174,315,179,319,187,327,188,332,186,337,183,340,175,341,168,341,163,339,161,336,162,334,164,330,165,329,162,327,161,325,162,323,166,320,168,317,169,315,168,313,162,317,157,323,155,324,153,324,150,323,148,319,146,314,143,310,141,309,140,310,140,315,139,317,137,320,133,323,130,325,126,324,125,325,125,327,127,331,127,336,125,339,122,339,119,339,118,337,116,336,115,338,116,342,118,346,119,349,118,351,114,354,113,356,114,358,116,358,117,356,119,353,121,352,123,353,125,353,125,352,126,350,130,345,135,344,138,348,138,352,136,354,135,356,136,359,135,361,129,366,127,367,127,367,129,370,133,374,135,376,133,380,130,380,127,379,124,379,121,379,119,378,115,373,114,379,115,381,117,385,117,389,113,395,110,399,110,401,113,403,119,403,124,401,125,399,125,396,125,391,129,385,133,385,138,392,139,398,137,403,137,406,139,408,143,408,145,404,147,400,151,396,151,392,154,388,157,386,160,387,162,391,163,395,168,396,174,396,180,394,184,392,187,393,191,396,194,396,196,395,199,388,202,386,207,386,212,384,215,380,216,379,218,379,225,384,227,385,227,384,226,382,222,377,221,374,223,371,229,365,231,365,235,366,237,368,239,368,241,368,241,367,240,364,238,361,237,356,237,349,239,343,240,340,240,337,238,334,233,330,230,325,228,320,227,318,225,317,218,315,215,314,213,313,212,314,208,317,204,318,200,320,196,320,193,320,191,318,190,316,188,314,184,312,179,307,176,304,174,304,173,306,172,309,168,313,169,315"
                        	 href="${conPath }/hotel.do?method=getHotel&hotelCode=holiday_jeollas" title="전라남도" onclick="javascript:location.href='storeSearch.html?sido=전남';"/>
                        <area shape="poly" coords="134,434,135,439,131,443,125,442,123,440,118,437,115,437,110,440,106,443,102,443,98,445,96,447,98,449,98,453,100,456,105,459,108,462,110,461,113,458,117,457,121,459,126,460,132,461,137,460,140,458,140,456,143,453,148,452,152,448,155,443,157,437,155,433,150,429,146,427,143,428,140,431,137,432,135,433"
                        	 href="${conPath }/hotel.do?method=getHotel&hotelCode=holiday_jeju" title="제주도" onclick="javascript:location.href='storeSearch.html?sido=제주';"/>
                    </map>
                </div>
			</td>
			
			
			<td id="phrase">Good Night, Stay Calm</td>
			
			
			<!-- [은실] 슬라이드 배너 처리 스크립트 코드 위치 이동 (슬라이드 배너 부분 직전에 넣을것!!) -->
			<!-- 아마도 스크립트와 HTML코드 사이에 jquery-3.3.1.js파일이 들어가면 다시 뭔가 덮어씌워지는듯... -->
			<script type="text/javascript" src="${conPath }/js/jquery.ulslide.js"></script>
			<script>
				$(document).ready(function() {
					 //ROOM
					$('#fade_room').ulslide({
			            statusbar: true,
			            width: 500,    //슬라이드배너 가로사이즈
			            height: 500,     //슬라이드배너 세로사이즈
			            affect: 'fade',   //'fade'로 변경시 이미지가 투명하게 사라지면서 다음이미지가 보여짐
			            duration: 300,
			            autoslide: 3000
			        });
			 
				
					//EVENTS
					$('#slide_events').ulslide({
				        statusbar: true,
				        width: 740,    //슬라이드배너 가로사이즈
				        height: 350,     //슬라이드배너 세로사이즈
				        affect: 'slide',   //'fade'로 변경시 이미지가 투명하게 사라지면서 다음이미지가 보여짐
				        axis: 'x',        //슬라이드 방향 x=가로, y=세로
				        navigator: '#slide_banner_navi a',  //페이지네이션
				        duration: 300,
				        autoslide: 3000
				    });
					
				});
			</script>
			<td id="room">
				<div id="room_wrap"><!-- overflow: hidden 속성을 주기 위해 div 추가 -->
			        <ul id="fade_room">
				        <li><img src="${conPath }/img/room_standard.jpg" width="500" height="500"></li>
				        <li><img src="${conPath }/img/room_deluxe.jpg" width="500" height="500"></li>
				        <li><img src="${conPath }/img/room_suite.jpg" width="500" height="500"></li>
			        </ul>
		        </div>
			</td>
		</tr>
		
	</table>

	<table id="area2">
		<tr><td>
			<div id="eventsTopic">
				EVENT
			</div>
			<div id="events">
				<%-- <ul id="slide_events">
		              <li><a href="#"><img src="${conPath }/img/eventOpen.jpg" width="740" height="350"></a></li>
		              <li><a href="#"><img src="${conPath }/img/eventBirthday.jpg" width="740" height="350"></a></li>
		              <li><a href="#"><img src="${conPath }/img/room_suite.jpg" width="740" height="350"></a></li>
		             </ul>
		        <ul id="slide_banner_navi">
		              <li><a href="#1"></a></li>
		              <li><a href="#2"></a></li>
		              <li><a href="#3"></a></li>
		           </ul> --%>
		           
		       <!-- 왜 forEach문을 돌리면 안되는걸까 -->
				<ul id="slide_events">
					<c:forEach items="${mainEventList }" var="mainEvent">
						<li>
							<a href="${conPath }/event.do?method=eventDetail&eventNum=${mainEvent.eventNum }&pageNum=1">
								<img src="${conPath }/eventImgFileUpload/${mainEvent.eventBanner }" width="740" height="350">
							</a>
						</li>
					</c:forEach>
		        </ul>
		        <%-- 페이지네이션 제거 --%>
		        <%-- <ul id="slide_banner_navi">
		        	<c:forEach begin="1" end="${mainEventList.size() }" var="i">
		        		<li><a href="#${i }"></a></li>
		        	</c:forEach>
		        </ul> --%>
			</div>
			
			
		</td>
		<td>
		<div id="noticeTopic">
				NOTICE
			</div>
			<div id="notice">
				<table>
					<c:forEach items="${mainNoticeList }" var="mainNotice">
						<tr>
							<td>
								<a href="${conPath }/hotel_notice.do?method=hotel_notice_View&noticeCode=${mainNotice.noticeCode }">
									<li>${mainNotice.noticeTitle }</li>
								</a>
							</td>
							<td>
								<fmt:formatDate value="${mainNotice.noticeDate }" pattern="MM-dd"/>
							</td>
						</tr>
					</c:forEach>
				</table>
				<a href="${conPath }/hotel_notice.do?method=hotel_notice_List" id="moreNotice">+ 더보기</a>
			</div>
		</td>
	</table>
	
	<div id="area3">
	<table id="option">
		<tr>
			<td><img id="option1" src="${conPath }/img/opt_wifi.png" alt="opt_wifi.png" onmouseover="opt1(1);" onmouseout="opt1(0);"></td>
			<td><img id="option2" src="${conPath }/img/opt_noSmoke.png" alt="opt_noSmoke.png" onmouseover="opt2(1);" onmouseout="opt2(0);"/></td>
			<td><img id="option3" src="${conPath }/img/opt_luggage.png" alt="opt_luggage.png" onmouseover="opt3(1);" onmouseout="opt3(0);"/></td>
			<td><img id="option4" src="${conPath }/img/opt_breakfast.png" alt="opt_24desk.png" onmouseover="opt4(1);" onmouseout="opt4(0);"/></td>
			<td><img id="option5" src="${conPath }/img/opt_limousine.png" alt="opt_limousine.png" onmouseover="opt5(1);" onmouseout="opt5(0);"/></td>
			<td><img id="option6" src="${conPath }/img/opt_laptop.png" alt="opt_laptop.png" onmouseover="opt6(1);" onmouseout="opt6(0);"/></td>			
		</tr>
		<tr>
			<td><img id="option7" src="${conPath }/img/opt_breakfast.png" alt="opt_breakfast.png" onmouseover="opt7(1);" onmouseout="opt7(0);"/></td>
			<td><img id="option8" src="${conPath }/img/opt_laundry.png" alt="opt_laundry.png" onmouseover="opt8(1);" onmouseout="opt8(0);"/></td>
			<td><img id="option9" src="${conPath }/img/opt_fitness.png" alt="opt_fitness.png" onmouseover="opt9(1);" onmouseout="opt9(0);"/></td>
			<td><img id="option10" src="${conPath }/img/opt_sauna.png" alt="opt_sauna.png" onmouseover="opt10(1);" onmouseout="opt10(0);"/></td>
			<td><img id="option11" src="${conPath }/img/opt_pool.png" alt="opt_pool.png" onmouseover="opt11(1);" onmouseout="opt11(0);"/></td>
			<td><img id="option12" src="${conPath }/img/opt_spa.png" alt="opt_spa.png" onmouseover="opt12(1);" onmouseout="opt12(0);"/></td>
		</tr>
	</table>
	</div>
	<jsp:include page="footer.jsp"/>
</div>

</body>
</html>