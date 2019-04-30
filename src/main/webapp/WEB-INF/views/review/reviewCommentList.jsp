<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<script>
$(document).ready(function() {
	//리뷰 댓글 수정 버튼 클릭 이벤트
	$('.modifyReviewComment').click(function() {
		var reviewCmtCode = $(this).attr('value');
		
		$.ajax({
			url: '${conPath }/review.do',
			type: 'GET',
			data: 'method=modifyReviewCommentForm&reviewCmtCode=' + reviewCmtCode, 
			dataType: 'html',
			success: function(data) {
				// 리뷰 세팅
				$('#comment'+reviewCmtCode+' .cmtContentArea').html(data);
			},
			error: function(code) {
				alert(code.status);
			}
		});
	});	
	
	//리뷰 댓글 삭제 버튼 클릭 이벤트
	$('.deleteReviewComment').click(function() {
		var reviewCmtCode = $(this).attr('value');
		
		if(confirm('댓글을 삭제하시겠습니까?')) {
			location.href='${conPath }/review.do?method=deleteReviewComment&reviewCmtCode=' + reviewCmtCode;
		}
		
	});	
});
</script>

<c:if test="${not empty reviewCommentList}">
	<c:forEach items="${reviewCommentList }" var="comment">
		<!-- div의 왼쪽패딩으로 들여쓰기 나타내기 -->
		<div id="comment${comment.reviewCmtCode }" style="padding-left:${comment.reviewCmtIndent*15}px">
			<p>
				<c:if test="${comment.reviewCmtIndent gt 0 }">└</c:if>			
				<span class="commentWriter">${comment.guestName }(${comment.guestId })</span>
				<span class="commentDate"><fmt:formatDate value="${comment.reviewCmtDate }" pattern="yy. MM. dd HH:mm"/></span>
				<span class="cmtButtons">
					<c:if test="${not empty guest }">
						<button onclick="showReplyCommentForm('${comment.reviewCmtCode }')">답글</button>
					</c:if>
					<c:if test="${guest.guestId eq comment.guestId }">
						<button class="modifyReviewComment" value="${comment.reviewCmtCode }">수정</button>
						<button class="deleteReviewComment" value="${comment.reviewCmtCode }">삭제</button>
					</c:if>
				</span>
			</p>
			<div class="cmtContentArea" style="padding-left:${comment.reviewCmtIndent*23 }px">
				${comment.reviewCmtContent.replaceAll("\\r\\n","<br>") }
			</div>
			<!-- 대댓글 달기 폼 (답글달기 버튼 누르면 display:none 해제하기) -->
			<form action="${conPath }/review.do?" style="display:none" class="replyCommentForm">
				<input type="hidden" name="method" value="writeReviewComment">
				<input type="hidden" name="guestId" value="${guest.guestId }">
				<input type="hidden" name="reviewCmtCode" value="${comment.reviewCmtCode }">
				<input type="hidden" name="reviewCode" value="${comment.reviewCode }">
				<input type="hidden" name="reviewCmtGroup" value="${comment.reviewCmtGroup }">
				<input type="hidden" name="reviewCmtStep" value="${comment.reviewCmtStep }">
				<input type="hidden" name="reviewCmtIndent" value="${comment.reviewCmtIndent }">
				<textarea name="reviewCmtContent"></textarea>
				<input type="submit" value="작성">
			</form>
		</div>
	</c:forEach>
	<input type="hidden" class="cmtPageNum" value="${paging.currentPage }">
	<input type="hidden" class="cmtPageCnt" value="${paging.pageCnt }">
	
</c:if>

