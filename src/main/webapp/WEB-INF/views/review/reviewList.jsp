<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<c:if test="${empty reviewList}">
	<p>작성된 리뷰가 없습니다.</p>
</c:if>

<c:if test="${not empty reviewList}">
	<c:forEach items="${reviewList }" var="review">
		<table id="review${review.reviewCode }">
			<!-- 리뷰 내용 행 -->
			<tr>
				<td class="reviewImgCell">
					<img src="${conPath }/hotel_review_fileupload/${review.reviewFile }" width="200" height="200" alt="rvImg_${review.reviewFile }">
				</td>
				<td class="reviewContentCell">
					<p class="reviewTitle">${review.reviewTitle }</p>
					<p class="reviewWriter">${review.guestName }(${review.guestId })</p>
					
					<!-- score 별모양으로 나타내는 법 생각해보기 -->
					<div class="reviewScore" style="width: ${(review.reviewScore/5.0)*100 }px"></div>
					<p class="reviewContent">
						${review.reviewContent.replaceAll("\\r\\n","<br>") }
					</p>
					<p class="reviewDate"><fmt:formatDate value="${review.reviewDate }" pattern="yyyy. MM. dd aa hh:mm"/></p>
					<p class="buttons">
						<c:if test="${(review.commentCnt eq 0) and (not empty guest) }">
							<button class="btnShowComment" onclick="showWriteCommentForm('${review.reviewCode}')">댓글달기</button>
						</c:if>
						<c:if test="${review.commentCnt gt 0 }">
							<button class="btnShowComment" onclick="showReviewComment('${review.reviewCode}')">댓글보기(${review.commentCnt }개)</button>
						</c:if>
						<c:if test="${guest.guestId eq review.guestId }">
							<button onclick="modifyReview('${review.reviewCode}')">수정</button>
							<button onclick="deleteReview('${review.reviewCode }', '${review.hotelCode }')">삭제</button>
						</c:if>
					</p>
				</td>
			</tr>
			
			<!-- 리뷰에 원댓글 다는 행 -->
			<tr style="display:none" class="writeCommentFormRow">
				<td colspan="2">
					<c:if test="${not empty guest }">
						<form action="${conPath }/review.do">
						<input type="hidden" name="method" value="writeReviewComment">
						<input type="hidden" name="guestId" value="${guest.guestId }">
						<input type="hidden" name="reviewCode" value="${review.reviewCode }">
						<textarea name="reviewCmtContent"></textarea>
						<input type="submit" value="작성">
						</form>
					</c:if>
				</td>
			</tr>
			
			<!-- 리뷰 댓글 목록 행 -->
			<tr style="display:none" class="commentListRow">
				<td colspan="2"><!-- 이안에 ajax로 넣기 -->
				</td>
			</tr>
			
			<!-- 리뷰 댓글 더보기 버튼 행 -->
			<tr style="display:none" class="showMoreCommentBtnRow">
				<td colspan="2">
					<input type="hidden" class="cmtPageNum" value="">
					<button onclick="showReviewComment('${review.reviewCode }')">댓글 더보기 ∨</button>
				</td>
			</tr>
			
		</table>
	</c:forEach>
	<input type="hidden" class="pageNum" value="${paging.currentPage }">
</c:if>