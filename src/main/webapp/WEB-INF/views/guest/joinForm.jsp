<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${conPath }/css/frame.css" rel="stylesheet">
<link href="${conPath }/css/guest/guestForm.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${conPath }/js/frame.js"></script>
	
<!-- 이하 해당 페이지 고유의 스크립트 및 CSS 영역 -->
<script>
	$(document).ready(function(){
		
		// 생년월일 입력용 datepicker
		$('[name="guestBirth"]').datepicker({
			changeMonth: true, // 드롭다운 박스로 월 선택 가능
		    changeYear: true, // 드롭다운 박스로 연도 선택 가능
		    yearRange: 'c-100:c', // 연도범위 : 100년전 ~ 올해
	    	dateFormat: 'yy-mm-dd',
	    	monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    	showMonthAfterYear: true, // 연도-월 순서 출력 
	    	yearSuffix: '년',
	    	showOtherMonths: true, // 해당 월 전후의 다른 달 날짜들도 화면에 출력
	    	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    	maxDate: 0, // 오늘 이전만 선택가능
	    	
	    	// 달력모양 버튼 추가
	    	showOn: "button",
	        buttonImage: "${conPath }/img/calendar.gif",
	        buttonImageOnly: true,
	        buttonText: "Select date",
	    });
		
		// 아이디 중복확인
		$('.idconfirm').click(function(){
			$.ajax({
				url : '${conPath}/guest.do',
				datatype : 'html',
				data : "method=idConfirm&guestId="+$('#guestId').val(),
				success : function(data, status){
					$('#idConfirmMsg').html(data);
					if($('#idConfirmMsg').text().trim() == '사용가능한 ID입니다') {
						$('#checkId').val('1');	
					} else {
						$('#checkId').val('0');	
					}
					
				}
			});
		});
		
		// 이메일 중복확인 
		$('.emailConfirm').keyup(function(){
			$.ajax({
				url : '${conPath}/guest.do',
				datatype : 'html',
				data : "method=emailConfirm&guestEmail="+$('#guestEmail').val(),
				success : function(data, status){
					$('#emailConfirmMsg').html(data);
					if($('#emailConfirmMsg').text().trim() == '이미 사용중인 이메일입니다'){
						$('#checkEmail').val('0');
					}else{
						$('#checkEmail').val('1');
					}
				}
			});
		});
		
		// submit 시 회원가입 양식 유효성검사
		$('#form').submit(function(){
			var guestId = $('#guestId').val();
			var guestPw = $('#guestPw').val();
			var guestPwChk = $('#guestPwChk').val();
			var guestEmail = $('#guestEmail').val();
			var checkId = $('#checkId').val();
			var checkEmail = $('#checkEmail').val();
			if(guestId.length<5){
				alert("아이디는 최소 5글자 이상 입력하셔야 합니다");
				$('#guestId').focus();
				$('#guestId').val('');
				return false;
			}
			if(guestPw.length<8){
				alert("비밀번호는 최소 8글자 이상 입력하셔야 합니다.");
				$('#guestPw').focus();
				$('#guestPw').val('');
				$('#guestPwChk').val('');
				return false;
			}
			if(guestPw != guestPwChk){
				alert("비밀번호를 확인하세요");
				$('#guestPw').focus();
				$('#guestPw').val('');
				$('#guestPwChk').val('');
				return false;
			}
			if(guestEmail.indexOf('@')==-1){
				alert("이메일 형식이 잘못되었습니다.");
				$('#guestEmail').focus();
				$('#guestEmail').val('');
				return false;
			}
			if(guestEmail.indexOf('@')==0){
				alert("이메일 형식이 잘못되었습니다.");
				$('#guestEmail').focus();
				$('#guestEmail').val('');
				return false;
			}
			if(guestEmail.indexOf('@')!=guestEmail.lastIndexOf('@')){
				alert("이메일 형식이 잘못되었습니다.");
				$('#guestEmail').focus();
				$('#guestEmail').val('');
				return false;
			}
			if(guestEmail.lastIndexOf('@')==guestEmail.length-1){
				alert("이메일 형식이 잘못되었습니다.");
				$('#guestEmail').focus();
				$('#guestEmail').val('');
				return false;
			}
			if(checkId=='0'){
				alert("중복된 ID입니다");
				$('#guestId').focus();
				$('#guestId').val('');
				return false;
			}
			if(checkEmail=='0'){
				alert("사용중인 이메일입니다");
				$('#guestEmail').focus();
				$('#guestEmail').val('');
				return false;
			}
		});
	});
</script>

</head>
<body>
   <jsp:include page="../main/header.jsp"/>
   <jsp:include page="../main/remote.jsp"/>
   
   <!-- [은실] frame.css 공통 적용하려고 id 이름 조정 -->
   <div id="section">
   	  <div id="headerTopic">JOIN</div>
      <div id="contentArea">
      	 <div id="topic"></div>
         <div id="content">
			<form action="${conPath }/guest.do?method=join" method="post" id="form">
			<input type="hidden" id="checkId" value="0">
			<input type="hidden" id="checkEmail" value="0">
			<table>
				<tr><td>아 이 디</td><td><input type="text" name="guestId" placeholder="id는 5자 이상 입력해주세요" value="${param.guestId }" id="guestId" required="required">
				<input type="button" class="idconfirm" value="중복확인"><br>
					<span id="idConfirmMsg"></span>
				</td></tr>
				<tr><td>비밀번호</td><td><input type="password" name="guestPw" id="guestPw" placeholder="비밀번호는 8자 이상 입력해주세요" required="required"></td></tr>
				<tr><td>비밀번호확인</td><td><input type="password" name="guestPwChk" id="guestPwChk" required="required"></td></tr>
				<tr><td>이 름</td><td><input type="text" name="guestName" value="${param.guestName }" required="required"></td></tr>
				<tr><td>메 일</td><td><input type="text" name="guestEmail" value="${param.guestEmail }" id="guestEmail" class="emailConfirm" required="required">
					<span id="emailConfirmMsg"></span>
				</td></tr>
				<tr><td>연 락 처</td><td><input type="number" name="tempPhone1" value="${param.tempPhone1 }" required="required">
						- <input type="number" name="tempPhone2" value="${param.tempPhone2 }" required="required">
						- <input type="number" name="tempPhone3" value="${param.tempPhone3 }" required="required">
					</td>
				</tr>
				<tr><td>생년월일</td><td><input type="text" name="guestBirth" value="${param.guestBirth }" required="required" autocomplete="off" readonly="readonly"></td></tr>
				<tr><td colspan="2">
					<input type="submit" value="가입">
				</td></tr>
			</table>
			</form>
		</div><!-- #content 끝 -->
         
      </div><!-- #contentArea 끝 -->
      
      
      <div id="illustArea">
	      <div id="phrase">
   		      <img src="${conPath }/img/phrase.png" alt="illust"/>
   	 	  </div>
   	  </div>
        
   </div>
 <jsp:include page="../main/footer.jsp"/>
</body>
</html>