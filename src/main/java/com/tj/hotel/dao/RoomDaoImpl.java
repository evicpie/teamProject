package com.tj.hotel.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tj.hotel.model.Room;
@Repository
public class RoomDaoImpl implements RoomDao {
	@Autowired
	private SqlSession sessionTemplate;
	@Override
	public Room getStandardRoom(String hotelCode) {
		return sessionTemplate.selectOne("getStandardRoom", hotelCode);
	}

	@Override
	public Room getDeluxeRoom(String hotelCode) {
		return sessionTemplate.selectOne("getDeluxeRoom", hotelCode);
	}

	@Override
	public Room getSuiteRoom(String hotelCode) {
		return sessionTemplate.selectOne("getSuiteRoom", hotelCode);
	}

	@Override
	public int modifyRoomInfo(Room room) {
		return sessionTemplate.update("modifyRoomInfo", room);
	}
	
	// [은실] 객실 하나 가져오는 메소드
	@Override
	public Room getOneRoom(String roomCode) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("getOneRoom", roomCode);
	}

}
