package com.tj.hotel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.hotel.service.HotelService;
import com.tj.hotel.service.RoomService;

@Controller
@RequestMapping(value="hotel.do")
public class HotelController {
	
	@Autowired
	private HotelService hotelService;
	@Autowired
	private RoomService roomService;
	
	@RequestMapping(params="method=hotelManage")
	public String hotelManage(String adminId, Model model) {
		model.addAttribute("hotelInfo", hotelService.hotelManage(adminId));
		return "hotel/hotelPage";
	}
	@RequestMapping(params="method=hotelModifyView")
	public String hotelModifyView(String hotelCode, Model model) {
		model.addAttribute("hotelInfo", hotelService.getHotel(hotelCode));
		return "hotel/hotelModifyView";
	}
	@RequestMapping(params="method=hotelModify")
	public String hotelModify(MultipartHttpServletRequest mRequest, HttpSession session) {
		hotelService.hotelModify(mRequest);
		String adminId = (String) session.getAttribute("adminId");
		return "redirect:hotel.do?method=hotelManage&adminId="+adminId;
	}
	@RequestMapping(params="method=getHotel")
	public String getHotel(String hotelCode, Model model) {
		model.addAttribute("hotelInfo", hotelService.getHotel(hotelCode));
		model.addAttribute("standardInfo", roomService.getStandardRoom(hotelCode));
		model.addAttribute("deluxeInfo", roomService.getDeluxeRoom(hotelCode));
		model.addAttribute("suiteInfo", roomService.getSuiteRoom(hotelCode));
		return "hotel/guestHotelPage";
	}
}
