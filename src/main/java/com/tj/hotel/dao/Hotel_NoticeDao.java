package com.tj.hotel.dao;

import java.util.List;

import com.tj.hotel.model.Hotel_Notice;


public interface Hotel_NoticeDao {
	public List<Hotel_Notice> hotel_notice_list (Hotel_Notice hotel_notice);
	public int hotel_notice_write (Hotel_Notice hotel_notice);
	public int hotel_notice_modify (Hotel_Notice hotel_notice);
	public int hotel_notice_delete (int noticeCode);
	public void hotel_notice_viewup (int noticeCode);
	public Hotel_Notice hotel_notice_view(int noticeCode);
	public int counthotel_notice (Hotel_Notice hotel_notice);
}
