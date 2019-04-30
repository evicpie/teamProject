package com.tj.hotel.dao;

import java.util.List;

import com.tj.hotel.model.Review;

public interface ReviewDao {
	
	// 리뷰 개수 조회
	public int reviewCnt(String hotelCode);
	
	// 리뷰 목록 한 페이지 가져오기
	public List<Review> reviewList(Review review);
	
	// 리뷰 작성(리뷰는 답글 없음)
	public void writeReview(Review review);
	
	// 호텔 총평점 계산
	public int updateHotelScore(String hotelCode);
	
	// 리뷰 하나 가져오기
	public Review getOneReview(int reviewCode);
	
	// 리뷰 수정
	public int modifyReview(Review review);
	
	// 리뷰 삭제
	public int deleteReview(int reviewCode);

}
