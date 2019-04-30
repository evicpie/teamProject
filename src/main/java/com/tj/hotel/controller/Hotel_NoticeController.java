package com.tj.hotel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.hotel.model.Hotel_Notice;
import com.tj.hotel.service.Hotel_NoticeService;
import com.tj.hotel.service.Paging;

@Controller
@RequestMapping("hotel_notice")
public class Hotel_NoticeController {
	private int write_view = 0;
	@Autowired
	private Hotel_NoticeService hotel_noticeService;
	
	@RequestMapping(params="method=hotel_notice_List")
	public String hotel_notice_List(String pageNum, Hotel_Notice hotel_notice, Model model) {
		if(pageNum==null || pageNum=="") {
			pageNum = "1";
		}
		Paging paging = new Paging(hotel_noticeService.counthotel_notice(hotel_notice), pageNum, 5, 5);
		hotel_notice.setStartRow(paging.getStartRow());
		hotel_notice.setEndRow(paging.getEndRow());
		model.addAttribute("hotel_notice", hotel_noticeService.hotel_notice_list(hotel_notice));
		model.addAttribute("paging", paging);
		return "hotel_notice/hotel_notice_List";
	}
	
	@RequestMapping(params="method=hotel_notice_View")
	public String hotel_notice_View(int noticeCode, Model model) {
		model.addAttribute("hotel_notice", hotel_noticeService.hotel_notice_view(noticeCode));
		return "hotel_notice/hotel_notice_View";
	}
	
	@RequestMapping(params="method=hotel_notice_WriteForm")
	public String hotel_notice_WriteForm() {
		write_view = 1;
		return "hotel_notice/hotel_notice_WriteForm";
	}
	
	@RequestMapping(params="method=hotel_notice_Write")
	public String hotel_notice_Write(Hotel_Notice hotel_notice, MultipartHttpServletRequest mRequest, Model model) {
		if(write_view == 1) {
			hotel_noticeService.hotel_notice_write(mRequest, hotel_notice, model);
			write_view = 0;
		}
		return "forward:hotel_notice.do?method=hotel_notice_List";
	}
	
	@RequestMapping(params="method=hotel_notice_ModifyForm")
	public String hotel_notice_ModifyForm(int noticeCode, Model model) {
		model.addAttribute("notice", hotel_noticeService.hotel_notice_view(noticeCode));
		return "hotel_notice/hotel_notice_ModifyForm";
	}
	
	@RequestMapping(params="method=hotel_notice_Modify")
	public String hotel_notice_Modify(MultipartHttpServletRequest mRequest, int noticeCode, Model model) {
		hotel_noticeService.hotel_notice_modify(mRequest, noticeCode, model);
		return "forward:hotel_notice.do?method=hotel_notice_List";
	}
	
	@RequestMapping(params="method=hotel_notice_Delete")
	public String hotel_notice_Delete(int noticeCode, Model model) {
		hotel_noticeService.hotel_notice_delete(noticeCode, model);
		return "forward:hotel_notice.do?method=hotel_notice_List";
	}
}
