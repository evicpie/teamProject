package com.tj.hotel.model;

import java.sql.Timestamp;

public class Hotel_Notice {
	private int noticeCode;
	private String adminId;
	private String noticeTitle;
	private String noticeContent;
	private String noticeFile;
	private Timestamp noticeDate;
	private String noticeIp;
	private int noticeView;
	private int startRow;
	private int endRow;
	private String schItem;
	private String schWord;
	
	public Hotel_Notice() {
	}

	public Hotel_Notice(int noticeCode, String adminId, String noticeTitle, String noticeContent, String noticeFile,
			Timestamp noticeDate, String noticeIp, int noticeView, int startRow, int endRow, String schItem,
			String schWord) {
		super();
		this.noticeCode = noticeCode;
		this.adminId = adminId;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeFile = noticeFile;
		this.noticeDate = noticeDate;
		this.noticeIp = noticeIp;
		this.noticeView = noticeView;
		this.startRow = startRow;
		this.endRow = endRow;
		this.schItem = schItem;
		this.schWord = schWord;
	}

	public int getNoticeCode() {
		return noticeCode;
	}

	public void setNoticeCode(int noticeCode) {
		this.noticeCode = noticeCode;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public String getNoticeFile() {
		return noticeFile;
	}

	public void setNoticeFile(String noticeFile) {
		this.noticeFile = noticeFile;
	}

	public Timestamp getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(Timestamp noticeDate) {
		this.noticeDate = noticeDate;
	}

	public String getNoticeIp() {
		return noticeIp;
	}

	public void setNoticeIp(String noticeIp) {
		this.noticeIp = noticeIp;
	}

	public int getNoticeView() {
		return noticeView;
	}

	public void setNoticeView(int noticeView) {
		this.noticeView = noticeView;
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

	public String getSchItem() {
		return schItem;
	}

	public void setSchItem(String schItem) {
		this.schItem = schItem;
	}

	public String getSchWord() {
		return schWord;
	}

	public void setSchWord(String schWord) {
		this.schWord = schWord;
	}

	@Override
	public String toString() {
		return "Hotel_Notice [noticeCode=" + noticeCode + ", adminId=" + adminId + ", noticeTitle=" + noticeTitle
				+ ", noticeContent=" + noticeContent + ", noticeFile=" + noticeFile + ", noticeDate=" + noticeDate
				+ ", noticeIp=" + noticeIp + ", noticeView=" + noticeView + ", startRow=" + startRow + ", endRow="
				+ endRow + ", schItem=" + schItem + ", schWord=" + schWord + "]";
	}
}
