package com.tj.hotel.service;

import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.hotel.model.Room;
@Repository
public interface RoomService {
	public Room getStandardRoom(String hotelCode);
	public Room getDeluxeRoom(String hotelCode);
	public Room getSuiteRoom(String hotelCode);
	public int modifyRoomInfo(MultipartHttpServletRequest mRequest);
	
	// [은실] 객실 하나 가져오는 메소드
	public Room getOneRoom(String roomCode);
}
