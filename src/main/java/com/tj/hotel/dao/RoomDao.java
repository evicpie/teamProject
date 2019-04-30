package com.tj.hotel.dao;

import com.tj.hotel.model.Room;

public interface RoomDao {
	public Room getStandardRoom(String hotelCode);
	public Room getDeluxeRoom(String hotelCode);
	public Room getSuiteRoom(String hotelCode);
	public int modifyRoomInfo(Room room);
	
	// [은실] 객실 하나 가져오는 메소드
	public Room getOneRoom(String roomCode);
}
