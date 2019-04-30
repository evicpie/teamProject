package com.tj.hotel.model;

import java.sql.Date;

public class Guest {

	// Guest 기본정보 필드
    private String guestId;
    private String guestPw;
    private String guestName;
    private String guestEmail;
    private String guestPhone;
    private Date guestBirth;
    private int guestStatus;
    private int guestPoint;
    private String getEvent; // 이벤트 참여 기록을 저장하는 필드
    
    // 페이징 처리용 필드
    private int startRow;
    private int endRow;
    
    // 검색 처리용 필드
    private String schItem;
    private String schWord;
   
    public Guest () {
    }

	public Guest(String guestId, String guestPw, String guestName, String guestEmail, String guestPhone,
			Date guestBirth, int guestStatus, int guestPoint, String getEvent, int startRow, int endRow, String schItem,
			String schWord) {
		super();
		this.guestId = guestId;
		this.guestPw = guestPw;
		this.guestName = guestName;
		this.guestEmail = guestEmail;
		this.guestPhone = guestPhone;
		this.guestBirth = guestBirth;
		this.guestStatus = guestStatus;
		this.guestPoint = guestPoint;
		this.getEvent = getEvent;
		this.startRow = startRow;
		this.endRow = endRow;
		this.schItem = schItem;
		this.schWord = schWord;
	}



	public String getGuestId() {
		return guestId;
	}

	public void setGuestId(String guestId) {
		this.guestId = guestId;
	}

	public String getGuestPw() {
		return guestPw;
	}

	public void setGuestPw(String guestPw) {
		this.guestPw = guestPw;
	}

	public String getGuestName() {
		return guestName;
	}

	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}

	public String getGuestEmail() {
		return guestEmail;
	}

	public void setGuestEmail(String guestEmail) {
		this.guestEmail = guestEmail;
	}

	public String getGuestPhone() {
		return guestPhone;
	}

	public void setGuestPhone(String guestPhone) {
		this.guestPhone = guestPhone;
	}

	public Date getGuestBirth() {
		return guestBirth;
	}

	public void setGuestBirth(Date guestBirth) {
		this.guestBirth = guestBirth;
	}

	public int getGuestStatus() {
		return guestStatus;
	}

	public void setGuestStatus(int guestStatus) {
		this.guestStatus = guestStatus;
	}

	public int getGuestPoint() {
		return guestPoint;
	}

	public void setGuestPoint(int guestPoint) {
		this.guestPoint = guestPoint;
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
	
	public String getGetEvent() {
		return getEvent;
	}

	public void setGetEvent(String getEvent) {
		this.getEvent = getEvent;
	}

	@Override
	public String toString() {
		return "Guest [guestId=" + guestId + ", guestPw=" + guestPw + ", guestName=" + guestName + ", guestEmail="
				+ guestEmail + ", guestPhone=" + guestPhone + ", guestBirth=" + guestBirth + ", guestStatus="
				+ guestStatus + ", guestPoint=" + guestPoint + ", getEvent=" + getEvent + ", startRow=" + startRow
				+ ", endRow=" + endRow + ", schItem=" + schItem + ", schWord=" + schWord + "]";
	}

	
}