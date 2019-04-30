package com.tj.hotel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tj.hotel.service.AdminService;

@Controller
@RequestMapping(value="admin.do")
public class AdminController {
	@Autowired
	private AdminService aService;
	
	@RequestMapping(params="method=AdminloginForm")
	public String loginForm() {
		return "admin/loginForm";
	}
	
	@RequestMapping(params="method=login")
	public String login(String adminId, String adminPw, Model model, HttpSession httpSession) {
		String result = aService.loginCheck(adminId, adminPw, httpSession);
		if(result.equals("로그인 성공")) {
			return "redirect:main.do";
		}else {
			model.addAttribute("adminId", adminId);
			model.addAttribute("adminPw", adminPw);
			model.addAttribute("result", result);
			return "forward:admin.do?method=AdminloginForm"; // 앗 이거 내가 잘못 수정했었나 * 주의할것
		}
	}
	
	@RequestMapping(params="method=logout")
	public String logout(HttpSession httpSession) {
		httpSession.invalidate();
		return "redirect:main.do";
	}
}
