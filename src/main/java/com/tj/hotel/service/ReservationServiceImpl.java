package com.tj.hotel.service;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.tj.hotel.dao.GuestDao;
import com.tj.hotel.dao.ReservationDao;
import com.tj.hotel.dao.RoomDao;
import com.tj.hotel.model.Guest;
import com.tj.hotel.model.Reservation;
import com.tj.hotel.model.Room;

@Service
public class ReservationServiceImpl implements ReservationService {
	
	@Autowired
	private ReservationDao reservationDao;
	
	@Autowired
	private GuestDao guestDao;
	
	@Autowired
	private RoomDao roomDao;
	
	@Autowired
	private JavaMailSender mailSender;

	// 예약 가능 방 조회
	@Override
	public List<Room> availableRoom(Reservation reservation) {
		// TODO Auto-generated method stub
		return reservationDao.availableRoom(reservation);
	}

	// 예약하기
	@Override
	public void reserve(Reservation reservation) {
		// 예약이 완료되었다는 메일 전송
		final Guest reserveGuest = guestDao.getGuest(reservation.getGuestId());
		reservationDao.reserve(reservation);
		final Reservation justPaidReservation = justPaidReservation(reserveGuest.getGuestId());
		
		MimeMessagePreparator message = new MimeMessagePreparator() {
			String content = 
			 "		<img src=\"http://daramchu.dothome.co.kr/mailHeader.png\" width=\"800\">"
			+"		<div style=\"width: 800px; margin: 30px 0; text-align: center;\">"
			+"		<h1 style=\"text-align: center;\">"+reserveGuest.getGuestName()+" 님의 예약이 완료되었습니다.</h1>"
			+"		<table style=\"margin: 0 auto;\">"
			+"			<tr>"
			+"				<th>예약번호</th>"
			+"				<td>"+justPaidReservation.getReserveCode()+"</td>"
			+"			</tr>"
			+"			<tr>"
			+"				<th>호텔명</th>"
			+"				<td>"+justPaidReservation.getHotelName()+"</td>"
			+"			</tr>"
			+"			<tr>"
			+"				<th>객실명</th>"
			+"				<td>"+justPaidReservation.getRoomName()+"</td>"
			+"			</tr>"
			+"			<tr>"
			+"				<th>체크인일자</th>"
			+"				<td>"+justPaidReservation.getReserveCheckin()+"</td>"
			+"			</tr>"
			+"			<tr>"
			+"				<th>체크아웃일자</th>"
			+"				<td>"+justPaidReservation.getReserveCheckout()+"</td>"
			+"			</tr>"
			+"			<tr>"
			+"				<th>결제금액</th>"
			+"				<td>"+justPaidReservation.getPaidPrice()+"원</td>"
			+"			</tr>"
			+"		</table>"
			+"		<p style=\"text-align: center; font-weight: bold;\">- 감사합니다. -</p>"
			+"		</div>";
				
			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				mimeMessage.setRecipient(Message.RecipientType.TO, 
						new InternetAddress(reserveGuest.getGuestEmail()));
				mimeMessage.setFrom(new InternetAddress("hybrid190501@gmail.com "));
				mimeMessage.setSubject(reserveGuest.getGuestName()+"님의 예약이 완료되었습니다.");
				mimeMessage.setText(content, "utf-8", "html");
			}
		};
		mailSender.send(message);
		
	}

	// 사용자: 나의 지난 예약 조회
	@Override
	public List<Reservation> myPastReservation(Reservation reservation) {
		// TODO Auto-generated method stub
		return reservationDao.myPastReservation(reservation);
	}

	// 사용자: 나의 예약 현황 조회
	@Override
	public List<Reservation> myReservation(Reservation reservation) {
		// TODO Auto-generated method stub
		return reservationDao.myReservation(reservation);
	}

	// 관리자: 지난 예약 조회
	@Override
	public List<Reservation> hotelPastReservation(Reservation reservation) {
		// TODO Auto-generated method stub
		return reservationDao.hotelPastReservation(reservation);
	}

	// 관리자: 예약 현황 조회
	@Override
	public List<Reservation> hotelReservation(Reservation reservation) {
		// TODO Auto-generated method stub
		return reservationDao.hotelReservation(reservation);
	}

	// 사용자 : 나의 지난 예약 조회 전체 개수
	@Override
	public int myPastReservationCnt(Reservation reservation) {
		// TODO Auto-generated method stub
		return reservationDao.myPastReservationCnt(reservation);
	}

	// 사용자 : 나의 예약 현황 전체 개수
	@Override
	public int myReservationCnt(Reservation reservation) {
		// TODO Auto-generated method stub
		return reservationDao.myReservationCnt(reservation);
	}

	// 관리자 : 지난 예약 조회 전체 개수
	@Override
	public int hotelPastReservationCnt(Reservation reservation) {
		// TODO Auto-generated method stub
		return reservationDao.hotelPastReservationCnt(reservation);
	}

	// 관리자 : 예약 현황 전체 개수
	@Override
	public int hotelReservationCnt(Reservation reservation) {
		// TODO Auto-generated method stub
		return reservationDao.hotelReservationCnt(reservation);
	}

	// 예약 취소
	@Override
	public void cancelConfirm(int reserveCode,  Model model) {
		// 취소할 예약 불러오기
		Reservation reservation = reservationDao.getReservation(reserveCode);
		
		// 환불금액 계산하는 로직
		Long oneDay = (long) (1000 * 60 * 60 * 24); 
		
		// 취소할 예약에서 체크인 날짜 가져오기
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date reserveCheckin = reservation.getReserveCheckin();
		System.out.println("[Service] reservation.getCheckin() : " + sdf.format(reservation.getReserveCheckin()));
		long reserveCheckinTime = reserveCheckin.getTime();
		
		// 오늘 날짜만 불러다가 00시 00분 00초로 세팅
		Date tempNow = new Date(System.currentTimeMillis());
		Date today = new Date(tempNow.getYear(), tempNow.getMonth(), tempNow.getDate());
		System.out.println("[Service] cancelDate(today) : " + sdf.format(today));
		long todayTime = today.getTime();
		
		// 환불금액 비율 정하기
		int refundPrice = 0;
		
		if ((reserveCheckinTime - (5 * oneDay)) > todayTime) { // 입실 5일 전이면 100% 환불
			System.out.println("5 days before checkin : " + sdf.format(new Date(reserveCheckinTime - (5 * oneDay))));
			refundPrice = reservation.getPaidPrice(); // 100%
			System.out.println("100% refund");

		} else if ((reserveCheckinTime - (3 * oneDay)) > todayTime) { // 입실 5일전 ~ 3일전이면 70% 환불
			System.out.println("3 days before checkin : " + sdf.format(new Date(reserveCheckinTime - (3 * oneDay))));
			refundPrice = (int)(reservation.getPaidPrice() * 0.7); // 70%
			System.out.println("70% refund");

		} else if ((reserveCheckinTime - oneDay) > todayTime) { // 입실 3일전 ~ 1일전이면 50% 환불
			System.out.println("1 days before checkin : " + sdf.format(new Date(reserveCheckinTime - (oneDay))));
			refundPrice = (int)(reservation.getPaidPrice() * 0.5); // 50%
			System.out.println("50% refund");

		} else if ((reserveCheckinTime - oneDay) == todayTime) { // 입실 1일전이면 20% 환불
			refundPrice = (int)(reservation.getPaidPrice() * 0.2); // 20%
			System.out.println("20% refund");

		} else { // 입실 당일은 환불 불가능
			refundPrice = 0;
			System.out.println("cannot refund");

		}
		
		
		
		// 취소할 예약과 환불금 모델에 세팅
		model.addAttribute("cancelConfirm", reservation);
		model.addAttribute("refundPrice", refundPrice);
		
	}

	// 예약 취소 서비스
	@Override
	public int cancelReservation(int reserveCode) {

		// 취소할 예약 불러오기
		Reservation reservation = reservationDao.getReservation(reserveCode);
		
		// 포인트를 사용했다면 다시 환불
		int roomCost = reservation.getRoomCost();
		int usedPoint = roomCost - reservation.getPaidPrice(); // 방 정상가 - 실결제금액 = 사용한 포인트

		// 게스트에게 usedPoint를 다시 돌려주는 update문 수행
		Guest refundedGuest = new Guest();
		
		// 사용자 아이디와 돌려줄 포인트 두 개의 파라미터가 필요하므로 세팅해준다.
		refundedGuest.setGuestId(reservation.getGuestId());
		refundedGuest.setGuestPoint(usedPoint);
		
		guestDao.givingPoint(refundedGuest);
		
		return reservationDao.cancelReservation(reserveCode);
	}
	
	// 예약 하나 불러오는 서비스
	@Override
	public Reservation getOneReservation(int reserveCode) {
		// TODO Auto-generated method stub
		return reservationDao.getReservation(reserveCode);
	}

	// 내가 방금 결제한 예약 객체 가져오기
	@Override
	public Reservation justPaidReservation(String guestId) {
		int justReserveCode = reservationDao.justPaidReservation(guestId);
		return reservationDao.getReservation(justReserveCode);
	}

	// 숙박 요금 계산하는 서비스
	@Override
	public int calculateTotalCost(Reservation reservation) {
		
		long checkIn = reservation.getReserveCheckin().getTime();
		long checkOut = reservation.getReserveCheckout().getTime();
		int roomCost = roomDao.getOneRoom(reservation.getRoomCode()).getRoomCost();
		
		int stayDays = (int)(checkOut-checkIn)/(1000*60*60*24);
		int totalCost = stayDays * roomCost;		
		return totalCost;
	}

}
