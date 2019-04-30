package com.tj.hotel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.hotel.service.RoomService;

@Controller
@RequestMapping(value="room.do")
public class RoomController {
	@Autowired
	private RoomService roomService;
	
	@RequestMapping(params="method=getStandardRoom")
	public String getStandardRoom(String hotelCode, Model model) {
		model.addAttribute("roomInfo", roomService.getStandardRoom(hotelCode));
		return "hotel/roomModifyView";
	}
	@RequestMapping(params="method=getDeluxeRoom")
	public String getDeluxeRoom(String hotelCode, Model model) {
		model.addAttribute("roomInfo", roomService.getDeluxeRoom(hotelCode));
		return "hotel/roomModifyView";
	}
	@RequestMapping(params="method=getSuiteRoom")
	public String getSuiteRoom(String hotelCode, Model model) {
		model.addAttribute("roomInfo", roomService.getSuiteRoom(hotelCode));
		return "hotel/roomModifyView";
	}
	@RequestMapping(params="method=modifyRoomInfo")
	public String modifyRoomInfo(MultipartHttpServletRequest mRequest, HttpSession session) {
		roomService.modifyRoomInfo(mRequest);
		String adminId = (String) session.getAttribute("adminId");
		return "redirect:hotel.do?method=hotelManage&adminId="+adminId;
	}
}
