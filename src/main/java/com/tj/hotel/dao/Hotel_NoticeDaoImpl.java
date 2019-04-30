package com.tj.hotel.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tj.hotel.model.Hotel_Notice;
@Repository
public class Hotel_NoticeDaoImpl implements Hotel_NoticeDao{
	@Autowired
	private SqlSession sessionTemplate;
	@Override
	public List<Hotel_Notice> hotel_notice_list(Hotel_Notice hotel_notice) {
		return sessionTemplate.selectList("hotel_notice_list", hotel_notice);
	}

	@Override
	public int hotel_notice_write(Hotel_Notice hotel_notice) {
		return sessionTemplate.insert("hotel_notice_write", hotel_notice);
	}

	@Override
	public int hotel_notice_modify(Hotel_Notice hotel_notice) {
		return sessionTemplate.update("hotel_notice_modify", hotel_notice);
	}

	@Override
	public int hotel_notice_delete(int noticeCode) {
		return sessionTemplate.delete("hotel_notice_delete", noticeCode);
	}

	@Override
	public void hotel_notice_viewup(int noticeCode) {
		sessionTemplate.update("hotel_notice_viewup", noticeCode);
	}
	
	@Override
	public Hotel_Notice hotel_notice_view(int noticeCode) {
		hotel_notice_viewup(noticeCode); 
		return sessionTemplate.selectOne("hotel_notice_view", noticeCode);
	}
	
	@Override
	public int counthotel_notice(Hotel_Notice hotel_notice) {
		return sessionTemplate.selectOne("counthotel_notice", hotel_notice);
	}
}
