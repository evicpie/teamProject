package com.tj.hotel.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tj.hotel.model.Review;

@Repository
public class ReviewDaoImpl implements ReviewDao {
	
	@Autowired
	private SqlSession sessionTemplate;

	// 리뷰 개수 조회
	@Override
	public int reviewCnt(String hotelCode) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("reviewCnt", hotelCode);
	}

	// 리뷰 목록 한 페이지 가져오기
	@Override
	public List<Review> reviewList(Review review) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectList("reviewList", review);
	}

	// 리뷰 작성(리뷰는 답글 없음)
	@Override
	public void writeReview(Review review) {
		sessionTemplate.insert("writeReview", review);
	}

	// 호텔 총평점 계산
	@Override
	public int updateHotelScore(String hotelCode) {
		// TODO Auto-generated method stub
		return sessionTemplate.update("updateHotelScore", hotelCode);
	}

	// 리뷰 하나 가져오기
	@Override
	public Review getOneReview(int reviewCode) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("getOneReview", reviewCode);
	}

	// 리뷰 수정
	@Override
	public int modifyReview(Review review) {
		// TODO Auto-generated method stub
		return sessionTemplate.update("modifyReview", review);
	}

	// 리뷰 삭제
	@Override
	public int deleteReview(int reviewCode) {
		// TODO Auto-generated method stub
		return sessionTemplate.delete("deleteReview", reviewCode);
	}

}
