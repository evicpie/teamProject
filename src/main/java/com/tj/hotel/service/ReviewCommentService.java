package com.tj.hotel.service;

import java.util.List;

import com.tj.hotel.model.Review;
import com.tj.hotel.model.ReviewComment;

public interface ReviewCommentService {
	
	// 리뷰에 달린 총 댓글 개수 조회 서비스
	public int reviewCommentCnt(int reviewCode);
	
	// 리뷰에 달린 댓글 목록 불러오는 서비스
	public List<ReviewComment> reviewCommentList(ReviewComment reviewComment);
	
	// 댓글 작성하는 서비스(원댓글/대댓글 포함)
	public void writeReviewComment(ReviewComment reviewComment);
	
	// 댓글 하나 불러오는 서비스
	public ReviewComment getOneReviewComment(int reviewCmtCode);
	
	// 댓글 수정하는 서비스
	public int modifyReviewComment(ReviewComment reviewComment);
	
	// 댓글 삭제하는 서비스
	public int deleteReviewComment(int reviewCmtCode);

}
