package com.tj.hotel.model;

public class Room {
	private String roomCode; // 방 코드
	private String hotelCode;// 호텔 코드
	private String roomName; // 방 이름
	private String roomGrade;// 방 등급
	private int roomCost;	 // 방 가격
	private int	roomLimit;	 // 방 정원
	private String roomImg_1;// 이미지
	private String roomImg_2;
	private String roomImg_3;
	private String roomImg_4;
	private String roomImg_5;
	
	public Room() {	}
	
	public Room(String roomCode, String hotelCode, String roomName, String roomGrade, int roomCost, int roomLimit,
			String roomImg_1, String roomImg_2, String roomImg_3, String roomImg_4, String roomImg_5) {
		this.roomCode = roomCode;
		this.hotelCode = hotelCode;
		this.roomName = roomName;
		this.roomGrade = roomGrade;
		this.roomCost = roomCost;
		this.roomLimit = roomLimit;
		this.roomImg_1 = roomImg_1;
		this.roomImg_2 = roomImg_2;
		this.roomImg_3 = roomImg_3;
		this.roomImg_4 = roomImg_4;
		this.roomImg_5 = roomImg_5;
	}

	public String getRoomCode() {
		return roomCode;
	}

	public void setRoomCode(String roomCode) {
		this.roomCode = roomCode;
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

	public int getRoomLimit() {
		return roomLimit;
	}

	public void setRoomLimit(int roomLimit) {
		this.roomLimit = roomLimit;
	}

	public String getRoomImg_1() {
		return roomImg_1;
	}

	public void setRoomImg_1(String roomImg_1) {
		this.roomImg_1 = roomImg_1;
	}

	public String getRoomImg_2() {
		return roomImg_2;
	}

	public void setRoomImg_2(String roomImg_2) {
		this.roomImg_2 = roomImg_2;
	}

	public String getRoomImg_3() {
		return roomImg_3;
	}

	public void setRoomImg_3(String roomImg_3) {
		this.roomImg_3 = roomImg_3;
	}

	public String getRoomImg_4() {
		return roomImg_4;
	}

	public void setRoomImg_4(String roomImg_4) {
		this.roomImg_4 = roomImg_4;
	}

	public String getRoomImg_5() {
		return roomImg_5;
	}

	public void setRoomImg_5(String roomImg_5) {
		this.roomImg_5 = roomImg_5;
	}

	@Override
	public String toString() {
		return "Room [roomCode=" + roomCode + ", hotelCode=" + hotelCode + ", roomName=" + roomName + ", roomGrade="
				+ roomGrade + ", roomCost=" + roomCost + ", roomLimit=" + roomLimit + ", roomImg_1=" + roomImg_1
				+ ", roomImg_2=" + roomImg_2 + ", roomImg_3=" + roomImg_3 + ", roomImg_4=" + roomImg_4 + ", roomImg_5="
				+ roomImg_5 + "]";
	}
	
}
