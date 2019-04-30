package com.tj.hotel.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.hotel.model.Review;
import com.tj.hotel.model.ReviewComment;
import com.tj.hotel.service.Paging;
import com.tj.hotel.service.ReviewCommentService;
import com.tj.hotel.service.ReviewService;

@Controller
@RequestMapping(value="review")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private ReviewCommentService reviewCommentService;
	
// === 리뷰 관련 컨트롤러 메뉴들 ==========================================================================================	
	// 리뷰 프레임 불러오기 
	@RequestMapping(params="method=reviewFrame") 
	public String reviewFrame(String hotelCode, Model model) {
		// PageCnt(총 페이지 갯수)를 알아내기 위한 페이징 객체 이용. pageNum이나 PAGESIZE, BLOCKSIZE는 아무거나 넣음
		Paging paging = new Paging(reviewService.reviewCnt(hotelCode), "1", 3, 10); 
		
		model.addAttribute("pageCnt", paging.getPageCnt());
		
		return "review/reviewFrame";
	}
	
	// 리뷰 목록 불러오기
	@RequestMapping(params="method=reviewList")
	public String reviewList(String hotelCode, String pageNum, Model model) {
		// 페이징 처리
		Paging paging = new Paging(reviewService.reviewCnt(hotelCode), pageNum, 3, 10); // 근데 댓글 더보기 형식이면 사실 블록사이즈가 없는거 아닌가... 전에 선생님이 알려주셨던거 한번 봐야지
		Review review = new Review();
		review.setStartRow(paging.getStartRow());
		review.setEndRow(paging.getEndRow());
		review.setHotelCode(hotelCode); // 마지막으로 호텔코드 세팅
		
		List<Review> reviewList = reviewService.reviewList(review);
		
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("paging", paging); // 페이징 객체도 데려가야 하나??
		
		return "review/reviewList"; // 처음 불러오는 리뷰목록조차 Ajax를 이용해야 메소드를 공유할 수 있겠네...
	}
	
	// 리뷰 작성 폼 띄우기 : 지난예약 조회 페이지에 다이얼로그로 삽입하므로 삭제해도 될듯
	/*
	 * @RequestMapping(params = "method=writeReviewForm") public String
	 * writeReviewForm() { // reserveCode도 파라미터로 Form까지 갈테니까 굳이 addAttribute하지 않아도
	 * 될것같은데... return "review/writeReviewForm"; }
	 */
	
	// 리뷰 작성하기
	@RequestMapping(params = "method=writeReview")
	public String writeReview(Review review, MultipartHttpServletRequest mRequest, Model model) {
		reviewService.writeReview(mRequest, review); // 리뷰 작성
		// String hotelCode = review.getHotelCode();
		String guestId = review.getGuestId();
		return "redirect:reservation.do?method=myPastReservation&guestId=" + guestId;
	}
	
	// 리뷰 수정 폼 띄우기 
	@RequestMapping(params="method=modifyReviewForm")
	public String modifyReviewForm(int reviewCode, Model model) {
		// 수정할 리뷰 불러와서 모델에 세팅!
		Review modifyReview = reviewService.getOneReview(reviewCode);
		model.addAttribute("modifyReview", modifyReview);
		
		return "review/modifyReviewData"; // json 써본다 
		
	}
	
	// 리뷰 수정하기
	@RequestMapping(params = "method=modifyReview")
	public String modifyReview(Review review, MultipartHttpServletRequest mRequest, Model model) {
		int result = reviewService.modifyReview(mRequest, review);
		String hotelCode = review.getHotelCode();
		return "redirect:review.do?method=reviewFrame&hotelCode=" + hotelCode;

	}
	
	// 리뷰 삭제하기
	@RequestMapping(params="method=deleteReview")
	public String deleteReview(int reviewCode, String hotelCode, Model model) {
		// 호텔코드를 뷰단에서 항상 얻어와도 되나???????
		int result = reviewService.deleteReview(reviewCode);
		return "redirect:review.do?method=reviewFrame&hotelCode=" + hotelCode;
	}
	
// === 리뷰 댓글 관련 컨트롤러 메뉴들 ========================================================================================
	
	// 리뷰 댓글 목록 가져오기
	@RequestMapping(params="method=reviewCommentList")
	public String reviewCommentList(int reviewCode, String pageNum, Model model) {
		// 페이징 처리
		System.out.println("[Controller] parameter cmtPageNum: " + pageNum);
		Paging paging = new Paging(reviewCommentService.reviewCommentCnt(reviewCode), pageNum, 3, 10); // 근데 댓글 더보기 형식이면 사실 블록사이즈가 없는거 아닌가... 전에 선생님이 알려주셨던거 한번 봐야지
		ReviewComment reviewComment = new ReviewComment();
		reviewComment.setStartRow(paging.getStartRow());
		reviewComment.setEndRow(paging.getEndRow());
		reviewComment.setReviewCode(reviewCode);
		
		List<ReviewComment> reviewCommentList = reviewCommentService.reviewCommentList(reviewComment);
		
		model.addAttribute("reviewCommentList", reviewCommentList);
		model.addAttribute("paging", paging); // 페이징 객체도 데려가야 하나??
		System.out.println("[Controller] paging cmtPageNum: " + paging.getCurrentPage());
		return "review/reviewCommentList";
	}
	
	// 리뷰 댓글 달기
	@RequestMapping(params="method=writeReviewComment")
	public String writeReviewComment(ReviewComment reviewComment, HttpServletRequest request, Model model) {
		reviewComment.setReviewCmtIp(request.getRemoteAddr());
		System.out.println("[controller] reviewCmtCode : " + reviewComment.getReviewCmtCode());
		reviewCommentService.writeReviewComment(reviewComment);
		
		// 호텔코드 가져오는 코드(코멘트에서 리뷰코드를 가져와서 그걸로 리뷰 객체를 가져와서 거기서 호텔코드를 가져옴....)
		String hotelCode = (reviewService.getOneReview(reviewComment.getReviewCode())).getHotelCode();
		return "redirect:review.do?method=reviewFrame&hotelCode=" + hotelCode; 
	}
	
	// 리뷰 대댓글 작성 폼 띄우기
	@RequestMapping(params="method=replyReviewCommentForm")
	public String replyReviewCommentForm(int reviewCmtCode, Model model) {
		ReviewComment replyReviewComment = reviewCommentService.getOneReviewComment(reviewCmtCode);
		model.addAttribute("replyReviewComment", replyReviewComment);
		return "review/reviewCommentForm";
	}
	
	// 리뷰 댓글 수정 폼 띄우기
	@RequestMapping(params="method=modifyReviewCommentForm")
	public String modifyReviewCommentForm(int reviewCmtCode, Model model) {
		ReviewComment modifyReviewComment = reviewCommentService.getOneReviewComment(reviewCmtCode);
		model.addAttribute("modifyReviewComment", modifyReviewComment);
		return "review/modifyCommentForm";
	}
	
	// 리뷰 댓글 수정하기
	@RequestMapping(params="method=modifyReviewComment")
	public String modifyReviewComment(ReviewComment reviewComment, HttpServletRequest request, Model model) {
		// 수정하기 전에 IP주소 갱신
		reviewComment.setReviewCmtIp(request.getRemoteAddr());
		int result = reviewCommentService.modifyReviewComment(reviewComment);
		
		// 호텔코드 가져오는 코드(코멘트에서 리뷰코드를 가져와서 그걸로 리뷰 객체를 가져와서 거기서 호텔코드를 가져옴....)
		String hotelCode = (reviewService.getOneReview(reviewComment.getReviewCode())).getHotelCode();
		return "redirect:review.do?method=reviewFrame&hotelCode=" + hotelCode;
	}
	
	// 리뷰 댓글 삭제하기
	@RequestMapping(params="method=deleteReviewComment")
	public String deleteReviewComment(int reviewCmtCode, Model model) {
		// 호텔코드 가져오는 코드(코멘트에서 리뷰코드를 가져와서 그걸로 리뷰 객체를 가져와서 거기서 호텔코드를 가져옴....)
		Review review = reviewService.getOneReview(reviewCommentService.getOneReviewComment(reviewCmtCode).getReviewCode());
		String hotelCode = review.getHotelCode();

		int result = reviewCommentService.deleteReviewComment(reviewCmtCode);
		
		return "redirect:review.do?method=reviewFrame&hotelCode=" + hotelCode;
	}
	

}
