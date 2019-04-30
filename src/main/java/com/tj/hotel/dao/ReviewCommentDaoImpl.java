package com.tj.hotel.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tj.hotel.model.ReviewComment;

@Repository
public class ReviewCommentDaoImpl implements ReviewCommentDao {
	
	@Autowired
	private SqlSession sessionTemplate;

	// 리뷰 하나에 달린 댓글 총 개수
	@Override
	public int reviewCommentCnt(int reviewCode) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("reviewCommentCnt", reviewCode);
	}

	// 리뷰 하나에 달린 댓글 목록 한 페이지
	@Override
	public List<ReviewComment> reviewCommentList(ReviewComment reviewComment) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectList("reviewCommentList", reviewComment);
	}

	// 원댓글 작성
	@Override
	public void writeReviewComment(ReviewComment reviewComment) {
		sessionTemplate.insert("writeReviewComment", reviewComment);
		
	}

	// 대댓글 작성(step과 indent 하나씩 늘려주는 건 SQL문으로 처리)
	@Override
	public void replyReviewComment(ReviewComment reviewComment) {
		sessionTemplate.insert("replyReviewComment", reviewComment);
	}

	// 대댓글 작성 전 Step A
	@Override
	public void replyStepA(ReviewComment reviewComment) {
		sessionTemplate.update("replyStepA", reviewComment);
		
	}

	// 댓글 하나 불러오기
	@Override
	public ReviewComment getOneReviewComment(int reviewCmtCode) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("getOneReviewComment", reviewCmtCode);
	}

	// 댓글 수정
	@Override
	public int modifyReviewComment(ReviewComment reviewComment) {
		// TODO Auto-generated method stub
		return sessionTemplate.update("modifyReviewComment", reviewComment);
	}

	// 댓글 삭제(원댓글)
	@Override
	public int deleteReviewComment(int reviewCmtCode) {
		// TODO Auto-generated method stub
		return sessionTemplate.delete("deleteReviewComment", reviewCmtCode);
	}

	// 댓글 삭제(대댓글이 있는 댓글 - 댓글내용을 '삭제된 댓글입니다'라고 변경)
	@Override
	public int deleteRepliedComment(int reviewCmtCode) {
		// TODO Auto-generated method stub
		return sessionTemplate.update("deleteRepliedComment", reviewCmtCode);
	}

	// 대댓글이 있나 확인
	@Override
	public int checkReplyComment(int reviewCmtCode) {
		
		// 내 글보다 step이 큰 글이 없으면 리턴타입이 int임에도 불구하고 null이 리턴되어 NullPointerException이 난다...ㅠㅠ
		Object indent = sessionTemplate.selectOne("checkReplyComment", reviewCmtCode); // 그래서 일단 Object에 먼저 받는다...
		
		if(indent == null) { // 나보다 step이 큰 글이 없으면
			return 0;
			
		} else { // 나보다 step이 큰 글이 있으면 indent를 int형으로 변환하여 리턴
			return (Integer) indent;
			
		}
		
	}

}
