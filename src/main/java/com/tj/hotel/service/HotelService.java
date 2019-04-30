package com.tj.hotel.service;

import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.hotel.model.Hotel;
@Repository
public interface HotelService {
	public Hotel getHotel(String hotelCode);
	public Hotel hotelManage(String adminId);
	public int hotelModify(MultipartHttpServletRequest mRequest);
}
