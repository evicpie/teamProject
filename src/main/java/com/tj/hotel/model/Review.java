package com.tj.hotel.model;

import java.sql.Timestamp;

public class Review {
	
	// 리뷰 정보 필드
	private int reviewCode;
	private String guestId;
	private String guestName;
	private int reserveCode;
	private String hotelCode;
	private String roomName;
	private String reviewTitle;
	private String reviewContent;
	private String reviewFile;
	private Timestamp reviewDate;
	private String reviewIp;
	private double reviewScore;
	private int commentCnt;
	
	// 페이징 처리용 필드
	private int startRow;
	private int endRow;
	
	// Constructors
	public Review() {
	}

	public Review(int reviewCode, String guestId, String guestName, int reserveCode, String hotelCode, String roomName,
			String reviewTitle, String reviewContent, String reviewFile, Timestamp reviewDate, String reviewIp,
			double reviewScore, int commentCnt, int startRow, int endRow) {
		super();
		this.reviewCode = reviewCode;
		this.guestId = guestId;
		this.guestName = guestName;
		this.reserveCode = reserveCode;
		this.hotelCode = hotelCode;
		this.roomName = roomName;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewFile = reviewFile;
		this.reviewDate = reviewDate;
		this.reviewIp = reviewIp;
		this.reviewScore = reviewScore;
		this.commentCnt = commentCnt;
		this.startRow = startRow;
		this.endRow = endRow;
	}




	// Getter & Setter Methods
	public int getReviewCode() {
		return reviewCode;
	}

	public void setReviewCode(int reviewCode) {
		this.reviewCode = reviewCode;
	}

	public String getGuestId() {
		return guestId;
	}

	public void setGuestId(String guestId) {
		this.guestId = guestId;
	}

	public String getGuestName() {
		return guestName;
	}

	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}

	public int getReserveCode() {
		return reserveCode;
	}

	public void setReserveCode(int reserveCode) {
		this.reserveCode = reserveCode;
	}

	public String getHotelCode() {
		return hotelCode;
	}

	public void setHotelCode(String hotelCode) {
		this.hotelCode = hotelCode;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public String getReviewFile() {
		return reviewFile;
	}

	public void setReviewFile(String reviewFile) {
		this.reviewFile = reviewFile;
	}

	public Timestamp getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(Timestamp reviewDate) {
		this.reviewDate = reviewDate;
	}

	public String getReviewIp() {
		return reviewIp;
	}

	public void setReviewIp(String reviewIp) {
		this.reviewIp = reviewIp;
	}

	public double getReviewScore() {
		return reviewScore;
	}

	public void setReviewScore(double reviewScore) {
		this.reviewScore = reviewScore;
	}

	public int getStartRow() {
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}
	
	public int getCommentCnt() {
		return commentCnt;
	}

	public void setCommentCnt(int commentCnt) {
		this.commentCnt = commentCnt;
	}

	@Override
	public String toString() {
		return "Review [reviewCode=" + reviewCode + ", guestId=" + guestId + ", guestName=" + guestName
				+ ", reserveCode=" + reserveCode + ", hotelCode=" + hotelCode + ", roomName=" + roomName
				+ ", reviewTitle=" + reviewTitle + ", reviewContent=" + reviewContent + ", reviewFile=" + reviewFile
				+ ", reviewDate=" + reviewDate + ", reviewIp=" + reviewIp + ", reviewScore=" + reviewScore
				+ ", commentCnt=" + commentCnt + ", startRow=" + startRow + ", endRow=" + endRow + "]";
	}

	
}
