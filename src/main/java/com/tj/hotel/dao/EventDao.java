package com.tj.hotel.dao;

import java.util.List;

import com.tj.hotel.model.Event;

public interface EventDao {

	public List<Event> eventListAll();
	public List<Event> eventListPaging(Event event);
	public Event getEvent(int eventNum);
	public int registerEvent(Event event);
	public int modifyEvent(Event event);
	public int deleteEvent(int eventNum);
	public int cntEvent();
	
}
