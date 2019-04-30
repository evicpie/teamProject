package com.tj.hotel.controller;

import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tj.hotel.model.Guest;
import com.tj.hotel.service.GuestService;
import com.tj.hotel.service.Paging;

@Controller
@RequestMapping(value="guest.do")
public class GuestController {

	@Autowired
	private GuestService gService;
	
	@RequestMapping(params="method=joinForm")
	public String joinForm() {
		return "guest/joinForm";
	}
	
	@RequestMapping(params="method=idConfirm")
	public String idConfirm(String guestId, Model model) {
		int result = gService.idConfirm(guestId);
		model.addAttribute("result", result);
		return "guest/idConfirm";
	}
	
	@RequestMapping(params="method=emailConfirm")
	public String emailConfirm(String guestEmail, Model model) {
		int result = gService.emailConfirm(guestEmail);
		model.addAttribute("result", result);
		return "guest/emailConfirm";
	}
	
	@RequestMapping(params="method=join")
	public String join(Guest guest, Model model, HttpSession httpSession, String tempPhone1, String tempPhone2, String tempPhone3) {
		gService.joinGuest(guest, tempPhone1, tempPhone2, tempPhone3);
		httpSession.setAttribute("guestId", guest.getGuestId());
		System.out.println("★controller 2★");
		return "redirect:guest.do?method=loginForm";
	}
	
	@RequestMapping(params="method=loginForm")
	public String loginForm() {
		return "guest/loginForm";
	}
	
	@RequestMapping(params="method=login")
	public String login(String guestId, String guestPw, Model model, HttpSession httpSession) {
		String result = gService.loginCheck(guestId, guestPw, httpSession);
		if(result.equals("로그인 성공")) {
			return "redirect:main.do";
			
		}else {
			model.addAttribute("guestId", guestId);
			model.addAttribute("guestPw", guestPw);
			model.addAttribute("result", result);
			return "forward:guest.do?method=loginForm";
		}
	}
	
	@RequestMapping(params="method=logout")
	public String logout(HttpSession httpSession) {
		System.out.println("logoutControll in");
		httpSession.invalidate();
		return "redirect:main.do";
	}
	
	@RequestMapping(params="method=modifyForm")
	public String modifyForm(Model model, HttpSession httpSession) {
		Guest guest = (Guest)httpSession.getAttribute("guest");
		String tempPhone = guest.getGuestPhone();
		StringTokenizer tempPhoneList = new StringTokenizer(tempPhone, "-");
		String tempPhone1 = tempPhoneList.nextToken();
		String tempPhone2 = tempPhoneList.nextToken();
		String tempPhone3 = tempPhoneList.nextToken();
		
		model.addAttribute("modifyGuest", guest);
		model.addAttribute("phone1", tempPhone1);
		model.addAttribute("phone2", tempPhone2);
		model.addAttribute("phone3", tempPhone3);
		
		return "guest/modifyForm";
	}
	
	@RequestMapping(params="method=modify", method=RequestMethod.POST)
	public String modify(Guest guest, Model model, HttpSession httpSession, String guestNewPw, String tempPhone1, String tempPhone2, String tempPhone3) {
		int result = gService.modifyGuest(guest, guestNewPw, tempPhone1, tempPhone2, tempPhone3);
		if(result==1) {//수정 성공
			httpSession.setAttribute("guest", guest);
			model.addAttribute("modifyResult", result);
			return "redirect:guest.do?method=myPage"; // 마이페이지로 이동하도록 수정
		}else {
			return "forward:guest.do?method=myPage"; // 마이페이지로 이동하도록 수정
		}
	}
	
	@RequestMapping(params="method=withdrawForm")
	public String withdrawForm(Model model, HttpSession httpSession) {
		System.out.println("withrowForm controll in");
		Guest guest = (Guest)httpSession.getAttribute("guest");
		model.addAttribute("withdrawGuest", guest);
		return "guest/withdrawForm";
	}
	
	@RequestMapping(params="method=withdraw")
	public String withdraw(Guest guest, Model model, HttpSession httpSession) {
		System.out.println("withrow controll in");
		int result = gService.withdrawGuest(guest);
		if(result==1) {
			httpSession.setAttribute("guest", guest);
			model.addAttribute("withdrawResult", result);
			return "redirect:guest.do?method=logout";
		}else {
			return "forward:guest.do?method=withdrawForm";
		}
	}
	
	@RequestMapping(params="method=findIdForm")
	public String findIdForm() {
		return "guest/findIdForm";
	}
	
	@RequestMapping(params="method=findId")
	public String findId(String guestName, String tempPhone1 , String tempPhone2, String tempPhone3, Model model) {
		String result = gService.findId(guestName, tempPhone1, tempPhone2, tempPhone3);
		if(result =="noGuest") {
			return "guest/noIdGuest";
		}else {
		model.addAttribute("findId", result);
		return "guest/findIdComplete";
		}
	}
	
	@RequestMapping(params="method=findPwForm")
	public String findPwForm() {
		return "guest/findPwForm";
	}
	
	@RequestMapping(params="method=findPw")
	public String findPw(String guestId, String guestEmail, Model model) {
		Guest guest = gService.findPw(guestId, guestEmail);
		if(guest == null) {
			model.addAttribute("findPw", "회원정보가 없습니다");
			return "forward:guest.do?method=findPwForm";
		}else {
			gService.pwReset(guest);
			return "forward:guest.do?method=pwResetComplete";
		}
	}
	
	@RequestMapping(params="method=pwResetComplete")
	public String pwResetComplete() {
		return "guest/pwResetComplete";
	}
	
	// [희영] 관리자 측에서 사용하는 Guest관련 메소드들
	@RequestMapping(params="method=guestSearch")
	public String guestSearch(Model model, String pageNum, Guest guest) {
		if(pageNum==null) {
			pageNum = "1";
		}
			
		Paging paging = new Paging(gService.countGuest(guest), pageNum, 5, 5);
		guest.setStartRow(paging.getStartRow());
		guest.setEndRow(paging.getEndRow());
		model.addAttribute("guestView", gService.guestSearch(guest));
		model.addAttribute("paging", paging);
		return "guest/guestSearch";
	}
	
	@RequestMapping(params="method=updateGuestStatus")
	public String updateGuestStatus(String[] guestId, int guestStatus, HttpServletRequest request, String pageNum, Model model) {
		gService.updateGuestStatus(guestId, guestStatus, request, model);
		return "forward:guest.do?method=guestSearch";
	}
	
	@RequestMapping(params="method=givingPoint")
	public String givingPoint(String[] guestId, int guestPoint, HttpServletRequest request, String pageNum, Model model) {
		gService.givingPoint(guestId, guestPoint, request, model);
		return "forward:guest.do?method=guestSearch";
	}
	
	// [은실] 마이페이지로 이동하는 메소드
	@RequestMapping(params="method=myPage")
	public String myPage() {
		
		return "guest/myPage";
	}
}
