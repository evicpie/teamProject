package com.tj.hotel.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.tj.hotel.model.Guest;

public interface GuestService {

	public Guest getGuest(String guestId);
	public int idConfirm(String guestId);
	public int emailConfirm(String guestEmail);
	public int joinGuest(Guest guest, String tempPhone1, String tempPhone2, String tempPhone3);
	public String loginCheck(String guestId, String guestPw, HttpSession httpSession);
	public int modifyGuest(Guest guest, String guestNewPw, String tempPhone1, String tempPhone2, String tempPhone3);
	public int withdrawGuest(Guest guest);
	public String findId(String guestName, String tempPhone1, String tempPhone2, String tempPhone3);
	public Guest findPw(String guestId, String guestEmail);
	public int pwReset(Guest guest);
	
	// [은실] 결제시 포인트 사용하는 서비스 메소드
	public int usePoint(Guest guest);
	
	// [희영] 관리자측에서 사용하는 Guest관련 서비스 메소드
	public List<Guest> guestSearch(Guest guest);
	public int updateGuestStatus(String[] guestId, int guestStatus, HttpServletRequest request, Model model);
	public int givingPoint (String[] guestId, int guestPoint, HttpServletRequest request, Model model);
	public int countGuest(Guest guest);
}
