package com.tj.hotel.service;

import javax.servlet.http.HttpSession;

import com.tj.hotel.model.Admin;

public interface AdminService {
	public Admin getAdmin(String adminId);
	public String loginCheck(String adminId, String adminPw, HttpSession httpSession);
}
