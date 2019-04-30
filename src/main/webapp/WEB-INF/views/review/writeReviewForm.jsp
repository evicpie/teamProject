<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<%---------------------------------------- 폐기된 페이지입니다 -----------------------------------------------%>
<%------------------ 후기 작성 폼은 나의 지난 예약(myPastReservation.jsp)에 다이얼로그로 삽입됩니다.-----------------------%>
<!DOCTYPE html>
<script>
//별점 슬라이더 세팅
$( ".slider" ).slider({
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
</script>
<style>

</style>

	<form action="${conPath }/review.do" method="post" enctype="multipart/form-data" id="reviewWriteForm">
		<input type="hidden" name="method" value="writeReview">
		<input type="hidden" name="guestId" value="${guest.guestId }">
		<input type="hidden" name="reserveCode" value="${param.reserveCode }">
		<table>
			<tr>
				<th>제목</th>
				<td><input type="text" name="reviewTitle" required="required"></td>
			</tr>
			<tr>
				<td>드래그하여 별점을 입력해 주세요.
					<input type="hidden" name="reviewScore" required="required">
					<div class="slider"><div id="cover"></div></div>
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
   					<input type="file" name="tempReviewFile" class="rvFileName" onchange="showFileName(this.value)">
   				</td>
			</tr>
		</table>
	</form>