package com.tj.hotel.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tj.hotel.model.Hotel;
@Repository
public class HotelDaoImpl implements HotelDao {
	@Autowired
	private SqlSession sessionTemplate;
	@Override
	public Hotel getHotel(String hotelCode) {
		return sessionTemplate.selectOne("getHotel", hotelCode);
	}

	@Override
	public Hotel hotelManage(String adminId) {
		return sessionTemplate.selectOne("hotelManage", adminId);
	}

	@Override
	public int hotelModify(Hotel hotel) {
		return sessionTemplate.update("hotelModify", hotel);
	}

}
