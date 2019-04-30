package com.tj.hotel.dao;

import com.tj.hotel.model.Hotel;

public interface HotelDao {
	public Hotel getHotel(String hotelCode);
	public Hotel hotelManage(String adminId);
	public int hotelModify(Hotel hotel);
}
