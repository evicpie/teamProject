package com.tj.hotel.model;

import java.sql.Timestamp;

public class ReviewComment {
	
	// 리뷰 댓글 기본정보 필드
	private int reviewCmtCode;
	private String guestId;
	private String guestName;
	private int reviewCode;
	private String reviewCmtContent;
	private Timestamp reviewCmtDate;
	private String reviewCmtIp;
	
	// 리뷰 댓글 - 대댓글 처리 필드
	private int reviewCmtGroup;
	private int reviewCmtStep;
	private int reviewCmtIndent;
	
	// 페이징 처리 필드
	private int startRow;
	private int endRow;
	
	// Constructor
	public ReviewComment() {
	}

	public ReviewComment(int reviewCmtCode, String guestId, String guestName, int reviewCode, String reviewCmtContent,
			Timestamp reviewCmtDate, String reviewCmtIp, int reviewCmtGroup, int reviewCmtStep, int reviewCmtIndent,
			int startRow, int endRow) {
		super();
		this.reviewCmtCode = reviewCmtCode;
		this.guestId = guestId;
		this.guestName = guestName;
		this.reviewCode = reviewCode;
		this.reviewCmtContent = reviewCmtContent;
		this.reviewCmtDate = reviewCmtDate;
		this.reviewCmtIp = reviewCmtIp;
		this.reviewCmtGroup = reviewCmtGroup;
		this.reviewCmtStep = reviewCmtStep;
		this.reviewCmtIndent = reviewCmtIndent;
		this.startRow = startRow;
		this.endRow = endRow;
	}

	// Getter & Setter Methods
	public int getReviewCmtCode() {
		return reviewCmtCode;
	}

	public void setReviewCmtCode(int reviewCmtCode) {
		this.reviewCmtCode = reviewCmtCode;
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

	public int getReviewCode() {
		return reviewCode;
	}

	public void setReviewCode(int reviewCode) {
		this.reviewCode = reviewCode;
	}

	public String getReviewCmtContent() {
		return reviewCmtContent;
	}

	public void setReviewCmtContent(String reviewCmtContent) {
		this.reviewCmtContent = reviewCmtContent;
	}

	public Timestamp getReviewCmtDate() {
		return reviewCmtDate;
	}

	public void setReviewCmtDate(Timestamp reviewCmtDate) {
		this.reviewCmtDate = reviewCmtDate;
	}

	public String getReviewCmtIp() {
		return reviewCmtIp;
	}

	public void setReviewCmtIp(String reviewCmtIp) {
		this.reviewCmtIp = reviewCmtIp;
	}

	public int getReviewCmtGroup() {
		return reviewCmtGroup;
	}

	public void setReviewCmtGroup(int reviewCmtGroup) {
		this.reviewCmtGroup = reviewCmtGroup;
	}

	public int getReviewCmtStep() {
		return reviewCmtStep;
	}

	public void setReviewCmtStep(int reviewCmtStep) {
		this.reviewCmtStep = reviewCmtStep;
	}

	public int getReviewCmtIndent() {
		return reviewCmtIndent;
	}

	public void setReviewCmtIndent(int reviewCmtIndent) {
		this.reviewCmtIndent = reviewCmtIndent;
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

	public void setEndRow(int entRow) {
		this.endRow = entRow;
	}

	@Override
	public String toString() {
		return "ReviewComment [reviewCmtCode=" + reviewCmtCode + ", guestId=" + guestId + ", guestName=" + guestName
				+ ", reviewCode=" + reviewCode + ", reviewCmtContent=" + reviewCmtContent + ", reviewCmtDate="
				+ reviewCmtDate + ", reviewCmtIp=" + reviewCmtIp + ", reviewCmtGroup=" + reviewCmtGroup
				+ ", reviewCmtStep=" + reviewCmtStep + ", reviewCmtIndent=" + reviewCmtIndent + ", startRow=" + startRow
				+ ", endRow=" + endRow + "]";
	}
	

}
