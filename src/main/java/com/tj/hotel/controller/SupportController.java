package com.tj.hotel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.hotel.model.Guest;
import com.tj.hotel.model.Support;
import com.tj.hotel.service.Paging;
import com.tj.hotel.service.SupportService;

@Controller
@RequestMapping("support.do")
public class SupportController {
	@Autowired
	private SupportService supportService;
	@RequestMapping(params="method=supportList")
	public String supportList(Support support, String pageNum, Model model) {
		Paging paging = new Paging(supportService.supportTotal(), pageNum, 10, 10);
		support.setStartRow(paging.getStartRow());
		support.setEndRow(paging.getEndRow());
		model.addAttribute("list", supportService.supportListPaging(support));
		model.addAttribute("paging", paging);
		return "support/supportList";
	}
	@RequestMapping(params="method=supportWriteView")
	public String supportWriteView() {
		return "support/supportWriteView";
	}
	@RequestMapping(params="method=supportWrite")
	public String supportWrite(Support support, MultipartHttpServletRequest mRequest) {
		supportService.supportWrite(mRequest, support);
		return "redirect:support.do?method=supportList&pageNum=1";
	}
	@RequestMapping(params="method=supportDetail")
	public String supportDetail(int supportCode, Model model, String pageNum) {
		System.out.println("supportDetail : " + supportService.supportDetail(supportCode));
		model.addAttribute("supportDetail", supportService.supportDetail(supportCode));
		return "support/supportDetail";
	}
	@RequestMapping(params="method=supportModifyView")
	public String supportModifyView(int supportCode, Model model, String pageNum) {
		model.addAttribute("supportDetail", supportService.supportDetail(supportCode));
		return "support/supportModifyView";
	}
	@RequestMapping(params="method=supportModify")
	public String supportModify(MultipartHttpServletRequest mRequest, String pageNum) {
		supportService.supportModify(mRequest);
		return "redirect:support.do?method=supportList&pageNum="+pageNum;
	}
	@RequestMapping(params="method=supportDelete")
	public String supportDelete(int supportCode, Model model, String pageNum) {
		supportService.supportDelete(supportCode);
		model.addAttribute("resultMsg","삭제 성공");
		return "redirect:support.do?method=supportList&pageNum="+pageNum;
	}
	@RequestMapping(params="method=supportReplyView")
	public String supportReplyView(int supportCode, String pageNum, Model model) {
		model.addAttribute("supportDetail", supportService.supportDetail(supportCode));
		return "support/supportReplyView";
	}
	@RequestMapping(params="method=supportReply")
	public String suppportReply(Support support, MultipartHttpServletRequest mRequest, String pageNum) {
		supportService.supportReply(mRequest, support);
		return "redirect:support.do?method=supportList&pageNum="+pageNum;
	}
	@RequestMapping(params="method=mySupportList")
	public String mySupportList(Support support, String pageNum, Model model, HttpSession httpSession) {
		String guestId = ((Guest)httpSession.getAttribute("guest")).getGuestId();
		System.out.println("[]contr. : "+guestId);
		support.setGuestId(guestId);
		Paging paging = new Paging(supportService.mySupportTotal(guestId), pageNum, 10, 10);
		System.out.println("[controller] page: " + paging.getCurrentPage());
		support.setStartRow(paging.getStartRow());
		support.setEndRow(paging.getEndRow());
		System.out.println("[controller] sizeof list: " + supportService.mySupportList(support).size());
		model.addAttribute("list", supportService.mySupportList(support));
		model.addAttribute("paging", paging);
		return "support/mySupportList";
	}
	
}
