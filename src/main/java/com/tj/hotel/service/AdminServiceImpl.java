package com.tj.hotel.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tj.hotel.dao.AdminDao;
import com.tj.hotel.model.Admin;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminDao adminDao;

	@Override
	public Admin getAdmin(String adminId) {
		return adminDao.getAdmin(adminId);
	}

	@Override
	public String loginCheck(String adminId, String adminPw, HttpSession httpSession) {
		String result = "로그인 성공";
		Admin admin = adminDao.getAdmin(adminId);
		if(admin == null) {
			result = "유효하지 않은 아이디입니다";
		}else if(!admin.getAdminPw().equals(adminPw)) {
			result = "비밀번호가 맞지 않습니다";
		}else {
			httpSession.setAttribute("admin", admin);
			httpSession.setAttribute("adminId", adminId);
			
			// [은실] 관리자로 로그인하면 게스트 로그인 해제
			httpSession.removeAttribute("guest"); 
			httpSession.removeAttribute("guestId");
			
			
		}
		return result;
	}

}
