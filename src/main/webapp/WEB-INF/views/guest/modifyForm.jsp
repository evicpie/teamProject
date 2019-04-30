<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<link href="${conPath }/css/guest/guestForm.css" rel="stylesheet">
<script>
	$(document).ready(function() {
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
	});
	//유효성 검사 자바스크립트  : 현재비밀번호 확인부분에 EL이 들어가서 js파일로 뺄수가 없었다 ㅠㅠ...
	function chk(){
		var guestPw = frm.guestPw.value;
		var guestNewPw = frm.guestNewPw.value;
		var guestNewPwChk = frm.guestNewPwChk.value;
		var guestEmailChk = frm.guestEmail.value;
		if(guestPw != '${guest.guestPw}'){
			alert('비밀번호를 다시 입력해 주세요');
			frm.guestPw.value='';
			frm.guestPw.focus();
			return false;
		}
		if(guestNewPw != ''){
			if(guestNewPw != guestNewPwChk){
				alert('새 비밀번호가 일치하지 않습니다');
				frm.guestNewPw.value='';
				frm.guestNewPwChk.value='';
				frm.guestNewPw.focus();
				return false;
			}
			if(guestNewPw.length<8){
				alert("비밀번호는 최소 8글자 이상 입력하셔야 합니다.");
				frm.guestNewPw.value='';
				frm.guestNewPwChk.value='';
				frm.guestNewPw.focus();
				return false;
			}
		}
		if(guestEmailChk.indexOf('@')==-1){
			alert("이메일 형식이 잘못되었습니다.");
			frm.guestEmail.value='';
			frm.guestEmail.focus();
			return false;
		}
		if(guestEmailChk.indexOf('@')==0){
			alert("이메일 형식이 잘못되었습니다.");
			frm.guestEmail.value='';
			frm.guestEmail.focus();
			return false;
		}
		if(guestEmailChk.indexOf('@')!=guestEmailChk.lastIndexOf('@')){
			alert("이메일 형식이 잘못되었습니다.");
			frm.guestEmail.value='';
			frm.guestEmail.focus();
			return false;
		}
		if(guestEmailChk.lastIndexOf('@')==guestEmailChk.length-1){
			alert("이메일 형식이 잘못되었습니다.");
			frm.guestEmail.value='';
				frm.guestEmail.focus();
				return false;
		}
		
		return true;
	}
	
	function withdraw() {
		$.ajax({
			url: '${conPath }/guest.do?method=withdrawForm',
			type: 'GET',
			dataType: 'html',
			success: function(data) {
				// 리뷰 세팅
				$('#ui-id-1').html(data);
				
			},
			error: function(code) {
				alert(code.status);
			}
		});
	}
</script>

<form action="${conPath }/guest.do" method="post" name="frm" onsubmit="return chk()">
	<input type="hidden" name="method" value="modify"> 
	<input type="hidden" name="guestId" value="${modifyGuest.guestId }">
	<table>
		<tr>
			<td>아 이 디</td>
			<td>${modifyGuest.guestId }</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="guestPw" required="required"></td>
		</tr>
		<tr>
			<td>새비밀번호</td>
			<td><input type="password" name="guestNewPw"></td>
		</tr>
		<tr>
			<td>새비밀번호 확인</td>
			<td><input type="password" name="guestNewPwChk"></td>
		</tr>
		<tr>
			<td>이 름</td>
			<td><input type="text" name="guestName" value="${modifyGuest.guestName }" required="required"></td>
		</tr>
		<tr>
			<td>메 일</td>
			<td><input type="text" name="guestEmail" value="${modifyGuest.guestEmail }" required="required"></td>
		</tr>
		<tr>
			<td>연 락 처</td>
			<td>
				<input type="number" name="tempPhone1" value="${phone1}" required="required"> -
				<input type="number" name="tempPhone2" value="${phone2}" required="required"> -
				<input type="number" name="tempPhone3" value="${phone3}" required="required">
			</td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input type="text" name="guestBirth" value="${modifyGuest.guestBirth }" required="required"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수정">
				<input type="button" value="회원탈퇴" onclick="withdraw()"><!-- 탈퇴버튼 input 요소로 바꾸고 폼 안으로 데려옴 -->
			</td>
		</tr>
		<%-- <tr><td colspan="2">
				<input type="button" value="회원탈퇴" onclick="location='${conPath }/guest.do?method=withdrawForm'">
			</td></tr> --%>
	</table>
</form>


