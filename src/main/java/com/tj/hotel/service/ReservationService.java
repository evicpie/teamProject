package com.tj.hotel.service;

import java.sql.Date;
import java.util.List;

import org.springframework.ui.Model;

import com.tj.hotel.model.Reservation;
import com.tj.hotel.model.Room;

public interface ReservationService {

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
	
	// 예약 하나 불러오는 서비스
	public Reservation getOneReservation(int reserveCode);
	
	// 예약 취소 확인 다이얼로그 띄우는 서비스
	public void cancelConfirm(int reserveCode, Model model);
	
	// 예약 취소 서비스
	public int cancelReservation(int reserveCode);
	
	// 내가 방금 결제한 예약 객체 가져오기
	public Reservation justPaidReservation(String guestId);
	
	// 숙박 요금 계산하는 서비스
	public int calculateTotalCost(Reservation reservation);

}
