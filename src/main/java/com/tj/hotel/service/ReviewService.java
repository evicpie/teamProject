package com.tj.hotel.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.hotel.model.Review;

public interface ReviewService {
	
	// 리뷰 개수 불러오기 
	public int reviewCnt(String hotelCode);
	
	// 리뷰 목록보기
	public List<Review> reviewList(Review review);
	
	// 리뷰 작성하기
	public void writeReview(MultipartHttpServletRequest mRequest, Review review);
	
	// 리뷰 가져오기
	public Review getOneReview(int reviewCode);
	
	// 리뷰 수정하기
	public int modifyReview(MultipartHttpServletRequest mRequest, Review review);
	
	// 리뷰 삭제하기
	public int deleteReview(int reviewCode);

}
