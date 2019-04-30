package com.tj.hotel.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.hotel.model.Event;

public interface EventService {

	public List<Event> eventListAll();
	public List<Event> eventListPaging(Event event);
	public Event getEvent(int eventNum);
	public int registerEvent(MultipartHttpServletRequest mRequest, Event event);
	public int modifyEvent(MultipartHttpServletRequest mRequest);
	public int deleteEvent(int eventNum);
	public int cntEvent();
	
	// [은실] 메인에 띄울 이벤트 리스트 불러오기
	public List<Event> mainEvent();
	
	// [은실] 이벤트 참여 서비스
	public int getEvent(String guestId, int eventNum);
}
