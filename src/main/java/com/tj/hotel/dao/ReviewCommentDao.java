package com.tj.hotel.dao;

import java.util.List;

import com.tj.hotel.model.ReviewComment;

public interface ReviewCommentDao {
	
	// 리뷰 하나에 달린 댓글 총 개수
	public int reviewCommentCnt(int reviewCode);
	
	// 리뷰 하나에 달린 댓글 목록 한 페이지
	public List<ReviewComment> reviewCommentList(ReviewComment reviewComment);
	
	// 원댓글 작성
	public void writeReviewComment(ReviewComment reviewComment);
	
	// 대댓글 작성
	public void replyReviewComment(ReviewComment reviewComment);
	
	// 대댓글 작성 전 Step A
	public void replyStepA(ReviewComment reviewComment);
	
	// 댓글 하나 불러오기
	public ReviewComment getOneReviewComment(int reviewCmtCode);
	
	// 댓글 수정
	public int modifyReviewComment(ReviewComment reviewComment);
	
	// 댓글 삭제(대댓글이 없는 댓글)
	public int deleteReviewComment(int reviewCmtCode);

	// 댓글 삭제(대댓글이 있는 댓글 - 댓글내용을 '삭제된 댓글입니다'라고 변경)
	public int deleteRepliedComment(int reviewCmtCode);
	
	// 대댓글이 있나 확인
	public int checkReplyComment(int reviewCmtCode);
	
}
