package com.tj.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tj.hotel.dao.ReviewCommentDao;
import com.tj.hotel.model.ReviewComment;

@Service
public class ReviewCommentServiceImpl implements ReviewCommentService {
	
	@Autowired
	private ReviewCommentDao reviewCommentDao;

	// 리뷰에 달린 총 댓글 개수 조회 서비스
	@Override
	public int reviewCommentCnt(int reviewCode) {
		// TODO Auto-generated method stub
		return reviewCommentDao.reviewCommentCnt(reviewCode);
	}

	// 리뷰에 달린 댓글 목록 불러오는 서비스
	@Override
	public List<ReviewComment> reviewCommentList(ReviewComment reviewComment) {
		// TODO Auto-generated method stub
		return reviewCommentDao.reviewCommentList(reviewComment);
	}

	// 댓글 작성하는 서비스(원댓글/대댓글 포함)
	@Override
	public void writeReviewComment(ReviewComment reviewComment) {
		System.out.println("[ReviewCommentService] writeReviewComment() - reviewCmtCode : " + reviewComment.getReviewCmtCode());
		if(reviewComment.getReviewCmtCode() == 0) { // 불러온 reviewCmtCode가 없는 경우(int니까 null대신 0)
			reviewCommentDao.writeReviewComment(reviewComment);
			
		} else { // 불러온 reviewCmtCode가 있는 경우(대댓글인 경우)
			reviewCommentDao.replyStepA(reviewComment);
			reviewCommentDao.replyReviewComment(reviewComment); // step과 indent를 하나씩 늘려주는 건 SQL문에서 처리한다.
		}
	}

	// 댓글 하나 불러오는 서비스
	@Override
	public ReviewComment getOneReviewComment(int reviewCmtCode) {
		// TODO Auto-generated method stub
		return reviewCommentDao.getOneReviewComment(reviewCmtCode);
	}

	// 댓글 수정하는 서비스
	@Override
	public int modifyReviewComment(ReviewComment reviewComment) {
		// TODO Auto-generated method stub
		return reviewCommentDao.modifyReviewComment(reviewComment);
	}

	// 댓글 삭제하는 서비스
	@Override
	public int deleteReviewComment(int reviewCmtCode) {
		
		int deletedCmtIndent = reviewCommentDao.getOneReviewComment(reviewCmtCode).getReviewCmtIndent(); // 삭제할 글의 들여쓰기 수준
		int repliedCmtIndent = reviewCommentDao.checkReplyComment(reviewCmtCode); // 없으면 어떻게되지???? // 삭제할 글 밑에 달린 댓글의 들여쓰기 수준
		
		// 삭제할 댓글 밑에 달린 댓글(Step이 하나 높은 댓글)이 들여쓰기가  더 크다면 : 대댓글이다.
		if(deletedCmtIndent < repliedCmtIndent) { // 대댓글이면
			return reviewCommentDao.deleteRepliedComment(reviewCmtCode); // 내용을 '삭제된 댓글입니다'로 수정 
			
		} else { // 대댓글이 없는 경우
			return reviewCommentDao.deleteReviewComment(reviewCmtCode); // 완전 삭제 
			
		}
	}

}
