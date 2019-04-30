package com.tj.hotel.model;

public class Event {

	// 이벤트 기본정보 필드
	private int eventNum;
	private String eventTitle;
	private String eventBanner;
	private String eventImg1;
	private String eventImg2;
	private String eventImg3;
	private String eventInfo;
	private int sendPoint; // 이벤트에서 포인트 부여 기능에 사용할 필드
	private int eventStatus; // 이벤트 진행중/완료 표시용 필드(1: 진행중, 0: 완료)
	
	// 페이징 처리용 필드
	private int startRow;
	private int endRow;
	
	// Constructors
	public Event() {
	
	}

	public Event(int eventNum, String eventTitle, String eventBanner, String eventImg1, String eventImg2,
			String eventImg3, String eventInfo, int sendPoint, int eventStatus, int startRow, int endRow) {
		super();
		this.eventNum = eventNum;
		this.eventTitle = eventTitle;
		this.eventBanner = eventBanner;
		this.eventImg1 = eventImg1;
		this.eventImg2 = eventImg2;
		this.eventImg3 = eventImg3;
		this.eventInfo = eventInfo;
		this.sendPoint = sendPoint;
		this.eventStatus = eventStatus;
		this.startRow = startRow;
		this.endRow = endRow;
	}




	public int getEventNum() {
		return eventNum;
	}

	public void setEventNum(int eventNum) {
		this.eventNum = eventNum;
	}

	public String getEventTitle() {
		return eventTitle;
	}

	public void setEventTitle(String eventTitle) {
		this.eventTitle = eventTitle;
	}

	public String getEventBanner() {
		return eventBanner;
	}

	public void setEventBanner(String eventBanner) {
		this.eventBanner = eventBanner;
	}

	public String getEventImg1() {
		return eventImg1;
	}

	public void setEventImg1(String eventImg1) {
		this.eventImg1 = eventImg1;
	}

	public String getEventImg2() {
		return eventImg2;
	}

	public void setEventImg2(String eventImg2) {
		this.eventImg2 = eventImg2;
	}

	public String getEventImg3() {
		return eventImg3;
	}

	public void setEventImg3(String eventImg3) {
		this.eventImg3 = eventImg3;
	}

	public String getEventInfo() {
		return eventInfo;
	}

	public void setEventInfo(String eventInfo) {
		this.eventInfo = eventInfo;
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
	
	public int getSendPoint() {
		return sendPoint;
	}

	public void setSendPoint(int sendPoint) {
		this.sendPoint = sendPoint;
	}
	
	public int getEventStatus() {
		return eventStatus;
	}

	public void setEventStatus(int eventStatus) {
		this.eventStatus = eventStatus;
	}

	@Override
	public String toString() {
		return "Event [eventNum=" + eventNum + ", eventTitle=" + eventTitle + ", eventBanner=" + eventBanner
				+ ", eventImg1=" + eventImg1 + ", eventImg2=" + eventImg2 + ", eventImg3=" + eventImg3 + ", eventInfo="
				+ eventInfo + ", sendPoint=" + sendPoint + ", eventStatus=" + eventStatus + ", startRow=" + startRow
				+ ", endRow=" + endRow + "]";
	}

	
}
