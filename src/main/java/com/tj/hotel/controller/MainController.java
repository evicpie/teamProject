package com.tj.hotel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tj.hotel.model.Event;
import com.tj.hotel.model.Hotel_Notice;
import com.tj.hotel.service.EventService;
import com.tj.hotel.service.Hotel_NoticeService;

@Controller
public class MainController {
	
	@Autowired
	private Hotel_NoticeService hotel_NoticeService;

	@Autowired
	private EventService eventService;
	
	@RequestMapping (value="main")
	public String main(Model model) {
		
		// [은실] 메인에 띄울 공지사항 리스트 불러오기
		List<Hotel_Notice> mainNoticeList = hotel_NoticeService.mainNotice();
		model.addAttribute("mainNoticeList", mainNoticeList);
		
		// [은실] 메인에 띄울 이벤트 리스트 불러오기
		List<Event> mainEventList = eventService.mainEvent();
		model.addAttribute("mainEventList", mainEventList);
		
		return "main/main";
	}
	
}
