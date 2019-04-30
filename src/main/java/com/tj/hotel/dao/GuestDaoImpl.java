package com.tj.hotel.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tj.hotel.model.Guest;

@Repository
public class GuestDaoImpl implements GuestDao {

	@Autowired
	private SqlSession sessionTemplate;
	
	@Override
	public int idConfirm(String guestId) {
		int result = sessionTemplate.selectOne("idConfirm", guestId);
		return result;
	}
	
	@Override
	public int emailConfirm(String guestEmail) {
		int result = sessionTemplate.selectOne("emailConfirm", guestEmail);
		return result;
	}

	@Override
	public int joinGuest(Guest guest) {
		System.out.println("★dao in★");
		return sessionTemplate.insert("joinGuest", guest);
	}

	@Override
	public Guest getGuest(String guestId) {
		return sessionTemplate.selectOne("getGuest", guestId);
	}

	@Override
	public int modifyGuest(Guest guest) {
		return sessionTemplate.update("modifyGuest", guest);
	}

	@Override
	public int withdrawGuest(Guest guest) {
		return sessionTemplate.update("withdraw", guest);
	}

	@Override
	public String findId(String guestName, String guestPhone) {
		Guest guest = new Guest();
		guest.setGuestName(guestName);
		guest.setGuestPhone(guestPhone);
		String result = sessionTemplate.selectOne("findId", guest);
		System.out.println("dao: " + result);
		return result;
	}

	@Override
	public Guest findPw(String guestId, String guestEmail) {
		Guest guest = new Guest();
		guest.setGuestId(guestId);
		guest.setGuestEmail(guestEmail);
		return sessionTemplate.selectOne("findPw", guest);
	}

	@Override
	public int pwReset(Guest guest) {
		return sessionTemplate.update("pwReset", guest);
	}
	// [은실] 결제 시 포인트 차감하는 메소드 추가
	@Override
	public int usePoint(Guest guest) {
		return sessionTemplate.update("usePoint", guest);
	}

	// [희영] 관리자 측에서 사용할 Guest 관련 메소드들 
	@Override
	public List<Guest> guestSearch(Guest guest) {
		return sessionTemplate.selectList("guestSearch", guest);
	}

	@Override
	public int updateGuestStatus(Guest guest) {
		return sessionTemplate.update("updateGuestStatus", guest);
	}
	
	@Override
	public int givingPoint(Guest guest) {
		return sessionTemplate.update("givingPoint", guest);
	}

	@Override
	public int myPoint(String guestId) {
		return sessionTemplate.selectOne("myPoint", guestId);
	}

	@Override
	public int countGuest(Guest guest) {
		return sessionTemplate.selectOne("countGuest", guest);
	}

	// [은실] 이벤트 참여 여부를 기록하는 메소드
	@Override
	public int alreadyEvent(Guest guest) {
		// TODO Auto-generated method stub
		return sessionTemplate.update("alreadyEvent", guest);
	}
}
