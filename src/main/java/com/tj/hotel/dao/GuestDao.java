package com.tj.hotel.dao;

import java.util.List;

import com.tj.hotel.model.Guest;

public interface GuestDao {

	public int idConfirm(String guestId);
	public int emailConfirm(String guestEmail);
	public int joinGuest(Guest guest);
	public Guest getGuest(String guestId);
	public int modifyGuest(Guest guest);
	public int withdrawGuest(Guest guest);
	public String findId(String guestName, String guestPhone);
	public Guest findPw(String guestId, String guestEmail);
	public int pwReset(Guest guest);
	
	// [은실] 결제 시 포인트 사용하는 메소드
	public int usePoint(Guest guest);
	
	// [희영] 관리자측에서 사용할 Guest 관련 메소드
	public List<Guest> guestSearch(Guest guest);
	public int updateGuestStatus (Guest guest);
	public int givingPoint (Guest guest);
	public int myPoint(String guestId);
	public int countGuest(Guest guest);
	
	// [은실] 이벤트 참여 여부를 기록하는 메소드
	public int alreadyEvent(Guest guest);
}
