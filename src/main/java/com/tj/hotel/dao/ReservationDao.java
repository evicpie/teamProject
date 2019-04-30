package com.tj.hotel.dao;

import java.util.List;

import com.tj.hotel.model.Reservation;
import com.tj.hotel.model.Room;

public interface ReservationDao {

	// 예약 가능 방 조회
	public List<Room> availableRoom(Reservation reservation);
	
	// 예약하기
	public void reserve(Reservation reservation);
	
	// 사용자: 나의 지난 예약 조회
	public List<Reservation> myPastReservation(Reservation reservation);
	
	// 사용자 : 나의 지난 예약 조회 전체 개수
	public int myPastReservationCnt(Reservation reservation);
	
	// 사용자: 나의 예약 현황 조회
	public List<Reservation> myReservation(Reservation reservation);
	
	// 사용자 : 나의 예약 현황 전체 개수
	public int myReservationCnt(Reservation reservation);
	
	// 관리자: 지난 예약 조회
	public List<Reservation> hotelPastReservation(Reservation reservation);
	
	// 관리자 : 지난 예약 조회 전체 개수
	public int hotelPastReservationCnt(Reservation reservation);
	
	// 관리자: 예약 현황 조회
	public List<Reservation> hotelReservation(Reservation reservation);
	
	// 관리자 : 예약 현황 전체 개수
	public int hotelReservationCnt(Reservation reservation);
	
	// 예약 하나 가져오기
	public Reservation getReservation(int reserveCode);
	
	// 예약 취소
	public int cancelReservation(int reserveCode);
	
	// 리뷰 작성 여부 업데이트
	public int uploadReview(int reserveCode);
	
	// 내가 방금 결제한 예약번호 가져오기
	public int justPaidReservation(String guestId);

}
