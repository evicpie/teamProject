package com.tj.hotel.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tj.hotel.model.Event;

@Repository
public class EventDaoImpl implements EventDao {

	@Autowired
	private SqlSession sessionTemplate;
	
	@Override
	public List<Event> eventListAll() {
		return sessionTemplate.selectList("eventListAll");
	}

	@Override
	public List<Event> eventListPaging(Event event) {
		return sessionTemplate.selectList("eventListPaging", event);
	}

	@Override
	public Event getEvent(int eventNum) {
		return sessionTemplate.selectOne("getEvent", eventNum);
	}

	@Override
	public int registerEvent(Event event) {
		return sessionTemplate.insert("registerEvent", event);
	}

	@Override
	public int modifyEvent(Event event) {
		return sessionTemplate.update("modifyEvent", event);
	}

	@Override
	public int deleteEvent(int eventNum) {
		return sessionTemplate.delete("deleteEvent", eventNum);
	}

	@Override
	public int cntEvent() {
		return sessionTemplate.selectOne("cntEvent");
	}
}
