package com.tj.hotel.model;

import java.sql.Date;

public class Reservation {

	// 예약 기본 정보 필드
	private int reserveCode;
	private String hotelCode;
	private String roomCode;
	private String guestId;
	private String guestName; // guestName 필드 추가
	private Date reserveCheckin;
	private Date reserveCheckout;
	private int reviewStatus;
	private int paidPrice;
	private String hotelName;
	private String roomName;
	private String roomGrade;
	private int roomCost;
	private int roomLimit;
	
	// 페이징 처리 필드
	private int startRow;
	private int endRow;
	
	// Constructors
	public Reservation() {
	}

	public Reservation(int reserveCode, String hotelCode, String roomCode, String guestId, String guestName,
			Date reserveCheckin, Date reserveCheckout, int reviewStatus, int paidPrice, String hotelName,
			String roomName, String roomGrade, int roomCost, int roomLimit, int startRow, int endRow) {
		super();
		this.reserveCode = reserveCode;
		this.hotelCode = hotelCode;
		this.roomCode = roomCode;
		this.guestId = guestId;
		this.guestName = guestName;
		this.reserveCheckin = reserveCheckin;
		this.reserveCheckout = reserveCheckout;
		this.reviewStatus = reviewStatus;
		this.paidPrice = paidPrice;
		this.hotelName = hotelName;
		this.roomName = roomName;
		this.roomGrade = roomGrade;
		this.roomCost = roomCost;
		this.roomLimit = roomLimit;
		this.startRow = startRow;
		this.endRow = endRow;
	}



	// Getter & Setter methods
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

	public String getRoomCode() {
		return roomCode;
	}

	public void setRoomCode(String roomCode) {
		this.roomCode = roomCode;
	}

	public String getGuestId() {
		return guestId;
	}

	public void setGuestId(String guestId) {
		this.guestId = guestId;
	}

	public Date getReserveCheckin() {
		return reserveCheckin;
	}

	public void setReserveCheckin(Date reserveCheckin) {
		this.reserveCheckin = reserveCheckin;
	}

	public Date getReserveCheckout() {
		return reserveCheckout;
	}

	public void setReserveCheckout(Date reserveCheckout) {
		this.reserveCheckout = reserveCheckout;
	}

	public int getReviewStatus() {
		return reviewStatus;
	}

	public void setReviewStatus(int reviewStatus) {
		this.reviewStatus = reviewStatus;
	}

	public int getPaidPrice() {
		return paidPrice;
	}

	public void setPaidPrice(int paidPrice) {
		this.paidPrice = paidPrice;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public String getRoomGrade() {
		return roomGrade;
	}

	public void setRoomGrade(String roomGrade) {
		this.roomGrade = roomGrade;
	}

	public int getRoomCost() {
		return roomCost;
	}

	public void setRoomCost(int roomCost) {
		this.roomCost = roomCost;
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
	
	public int getRoomLimit() {
		return roomLimit;
	}

	public void setRoomLimit(int roomLimit) {
		this.roomLimit = roomLimit;
	}
	
	public String getGuestName() {
		return guestName;
	}

	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}

	@Override
	public String toString() {
		return "Reservation [reserveCode=" + reserveCode + ", hotelCode=" + hotelCode + ", roomCode=" + roomCode
				+ ", guestId=" + guestId + ", guestName=" + guestName + ", reserveCheckin=" + reserveCheckin
				+ ", reserveCheckout=" + reserveCheckout + ", reviewStatus=" + reviewStatus + ", paidPrice=" + paidPrice
				+ ", hotelName=" + hotelName + ", roomName=" + roomName + ", roomGrade=" + roomGrade + ", roomCost="
				+ roomCost + ", roomLimit=" + roomLimit + ", startRow=" + startRow + ", endRow=" + endRow + "]";
	}

	
	
}
