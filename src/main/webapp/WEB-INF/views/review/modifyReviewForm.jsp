<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<%---------------------------------------- 폐기된 페이지입니다 -----------------------------------------------%>
<%----------------------- 후기 수정 폼은 리뷰 게시판(reviewFrame.jsp)에 다이얼로그로 삽입됩니다.--------------------------%>
<!DOCTYPE html>
<form action="${conPath }/review.do" method="post" enctype="multipart/form-data" id="reviewModifyForm">
	<input type="hidden" name="method" value="modifyReview">
	<input type="hidden" name="guestId" value="${modifyReview.guestId }">
	<input type="hidden" name="reserveCode" value="${modifyReview.reserveCode }">
	<input type="hidden" name="reviewCode" value="${modifyReview.reviewCode }">
	<input type="hidden" name="hotelCode" value="${modifyReview.hotelCode }">
	<table>
		<tr>
			<th>제목</th>
			<td><input type="text" name="reviewTitle" value="${modifyReview.reviewTitle }" required="required"></td>
		</tr>
		<tr>
			<td>드래그하여 별점을 입력해 주세요.
				<input type="hidden" name="reviewScore" required="required" value="${modifyReview.reviewScore }">
				<div id="slider"><div id="cover"></div></div>
			</td>
		</tr>
		<tr>
			<td colspan="2"><textarea name="reviewContent" required="required">${modifyReview.reviewContent }</textarea></td>
		</tr>
		<tr>
			<th>파일첨부<br>(5MB까지 첨부가능)</th>
			<td>
				<c:set var="reviewFileName" value="${(modifyReview.reviewFile != 'review_noImg.jpg') ? modifyReview.reviewFile :'파일 선택' }"/>
				<input type="text" disabled="disabled" id="rvFileShow" value="${reviewFileName }">
				<label for="rvFileName">찾아보기</label>
				<input type="file" name="rvFileName" id="rvFileName" onchange="showFileName(this.value)">
			</td>
		</tr>
	</table>
</form>