package com.tj.hotel.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tj.hotel.model.Reservation;
import com.tj.hotel.model.Room;

@Repository
public class ReservationDaoImpl implements ReservationDao {

	@Autowired 
	private SqlSession sessionTemplate;
	
	// 예약 가능 방 조회
	@Override
	public List<Room> availableRoom(Reservation reservation) {
		
		System.out.println("[DAO] preview parameters");
		System.out.println(reservation.getHotelCode());
		System.out.println(reservation.getReserveCheckin());
		System.out.println(reservation.getReserveCheckout());
		System.out.println(reservation.getRoomGrade());
		System.out.println(reservation.getRoomLimit());
		
		return sessionTemplate.selectList("availableRoom", reservation);
	}

	// 예약하기
	@Override
	public void reserve(Reservation reservation) {
		sessionTemplate.insert("reserve", reservation);
	}

	// 사용자: 나의 지난 예약 조회
	@Override
	public List<Reservation> myPastReservation(Reservation reservation) {
		return sessionTemplate.selectList("myPastReservation", reservation);
	}
	
	// 사용자 : 나의 지난 예약 조회 전체 개수
	@Override
	public int myPastReservationCnt(Reservation reservation) {
		return sessionTemplate.selectOne("myPastReservationCnt", reservation);
	}

	// 사용자: 나의 예약 현황 조회
	@Override
	public List<Reservation> myReservation(Reservation reservation) {
		return sessionTemplate.selectList("myReservation", reservation);
	}
	
	// 사용자 : 나의 예약 현황 전체 개수
	@Override
	public int myReservationCnt(Reservation reservation) {
		return sessionTemplate.selectOne("myReservationCnt", reservation);
	}

	// 관리자: 지난 예약 조회
	@Override
	public List<Reservation> hotelPastReservation(Reservation reservation) {
		return sessionTemplate.selectList("hotelPastReservation", reservation);
	}
	
	// 관리자 : 지난 예약 조회 전체 개수
	@Override
	public int hotelPastReservationCnt(Reservation reservation) {
		return sessionTemplate.selectOne("hotelPastReservationCnt", reservation);
	}

	// 관리자: 예약 현황 조회
	@Override
	public List<Reservation> hotelReservation(Reservation reservation) {
		return sessionTemplate.selectList("hotelReservation", reservation);
	}
	
	// 관리자 : 예약 현황 전체 개수
	@Override
	public int hotelReservationCnt(Reservation reservation) {
		return sessionTemplate.selectOne("hotelReservationCnt", reservation);
	}
	
	// 예약 하나 가져오기
	@Override
	public Reservation getReservation(int reserveCode) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("getReservation", reserveCode);
	}

	// 예약 취소
	@Override
	public int cancelReservation(int reserveCode) {
		// TODO Auto-generated method stub
		return sessionTemplate.delete("cancelReservation", reserveCode);
	}

	// 리뷰 작성 여부 업데이트
	@Override
	public int uploadReview(int reserveCode) {
		// TODO Auto-generated method stub
		return sessionTemplate.update("uploadReview", reserveCode);
	}

	// 내가 방금 결제한 예약번호 가져오기
	@Override
	public int justPaidReservation(String guestId) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("justPaidReservation", guestId);
	}
	
	

}
