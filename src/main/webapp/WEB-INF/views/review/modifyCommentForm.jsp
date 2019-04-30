<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<!-- modifyReviewComment -->
<form action="${conPath }/review.do?" method="post" class="modifyCommentForm">
	<input type="hidden" name="method" value="modifyReviewComment">
	<input type="hidden" name="reviewCode" value="${modifyReviewComment.reviewCode }">
	<input type="hidden" name="reviewCmtCode" value="${modifyReviewComment.reviewCmtCode }">
	<textarea name="reviewCmtContent">${modifyReviewComment.reviewCmtContent }</textarea>
	<input type="submit" value="수정">
</form>