package com.tj.hotel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.hotel.model.Event;
import com.tj.hotel.model.Guest;
import com.tj.hotel.service.EventService;
import com.tj.hotel.service.GuestService;
import com.tj.hotel.service.Paging;

@Controller
@RequestMapping(value="event.do")
public class EventController {

	@Autowired
	private EventService eService;
	
	@Autowired
	private GuestService guestService;
	
	@RequestMapping(params="method=eventList")
	public String eventList(Event event, String pageNum, Model model) {
		Paging paging = new Paging(eService.cntEvent(), pageNum, 6, 5);
		event.setStartRow(paging.getStartRow());
		event.setEndRow(paging.getEndRow());
		model.addAttribute("eventList", eService.eventListPaging(event));
		model.addAttribute("paging", paging);
		return "event/eventList";
	}
	
	@RequestMapping(params="method=eventRegisterForm")
	public String eventRegisterForm() {
		return "event/eventRegisterForm";
	}
	
	@RequestMapping(params="method=eventRegister")
	public String eventRegister(Event event, MultipartHttpServletRequest mRequest) {
		eService.registerEvent(mRequest, event);
		return "redirect:event.do?method=eventList&pageNum=1";
	}
	
	@RequestMapping(params="method=eventDetail")
	public String eventDetail(int eventNum, Model model) {
		model.addAttribute("eventDetail", eService.getEvent(eventNum));
		return "event/eventDetail";
	}
	
	@RequestMapping(params="method=eventModifyForm")
	public String eventModifyForm(int eventNum, String pageNum, Model model) {
		model.addAttribute("eventDetail", eService.getEvent(eventNum));
		return "event/eventModifyForm";
	}
	
	// ORA-12519 TNS, no appropriate service handler found 에러 forward를 redirect로 바꾸어 해결
	// 이벤트 수정후 목록보기 버튼 눌렀을 때 목록으로 원활히 돌아가기 위해서 파라미터에 pageNum 추가(eventModifyForm.jsp에서도 파라미터 넘겨주도록 <input type=hidden name=pageNum> 파라미터 하나 추가)
	@RequestMapping(params="method=eventModify")
	public String eventModify(MultipartHttpServletRequest mRequest, Model model, int eventNum, int eventStatus, String pageNum) {
		eService.modifyEvent(mRequest);
		return "redirect:event.do?method=eventDetail&eventNum="+eventNum+"&pageNum="+pageNum;
	}
	
	@RequestMapping(params="method=eventDeleteForm")
	public String eventDeleteForm(int eventNum, String pageNum, Model model) {
		model.addAttribute("eventDelete", eService.getEvent(eventNum));
		return "event/eventDeleteForm";
	}
	
	@RequestMapping(params="method=eventDelete")
	public String eventDelete(int eventNum, int pageNum) {
		eService.deleteEvent(eventNum);
		return "redirect:event.do?method=eventList&pageNum="+pageNum;
	}
	
	// [은실] 이벤트 참여하여 포인트 받아가는 메소드
	@RequestMapping(params="method=getEvent")
	public String getEvent(int eventNum, String pageNum, HttpSession session, Model model) {
		String guestId = ((Guest) session.getAttribute("guest")).getGuestId();
		
		int result = eService.getEvent(guestId, eventNum);
		
		// 포인트 수령 성공시 세션 업데이트
		if(result == 1) {
			session.setAttribute("guest", guestService.getGuest(guestId));
		}
		
		model.addAttribute("eventResultMsg", result);
		
		return "forward:event.do?method=eventDetail&eventNum=" + eventNum + "&pageNum=" + pageNum;
	}
	
}
