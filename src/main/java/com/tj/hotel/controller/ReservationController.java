package com.tj.hotel.controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tj.hotel.model.Guest;
import com.tj.hotel.model.Hotel;
import com.tj.hotel.model.Reservation;
import com.tj.hotel.model.Room;
import com.tj.hotel.service.GuestService;
import com.tj.hotel.service.HotelService;
import com.tj.hotel.service.Paging;
import com.tj.hotel.service.ReservationService;
import com.tj.hotel.service.RoomService;

@Controller
@RequestMapping(value="reservation")
public class ReservationController {
	@Autowired
	private ReservationService reservationService;
	
	@Autowired
	private HotelService hotelService;
	
	@Autowired
	private RoomService roomService;
	
	@Autowired
	private GuestService guestService;
	
	// 날짜 선택&인원수 선택 화면으로 이동
	@RequestMapping(params="method=availableRoomForm")
	public String availableRoomForm(String hotelCode, Model model) {
		Hotel hotel = hotelService.getHotel(hotelCode);
		
		// 호텔소개페이지랑 연동되기 때문에 호텔 객체 하나 넣어둠
		model.addAttribute("hotelInfo", hotel);
		
		return "reservation/searchRoomForm";
	}
	
	// 예약 가능한 방 검색
	@RequestMapping(params="method=availableRoom")
	public String availableRoom(Reservation reservation, Model model) {
		Hotel hotel = hotelService.getHotel(reservation.getHotelCode());
		
		reservation.setRoomGrade("standard");
		List<Room> availableStandardRoom = reservationService.availableRoom(reservation);
		
		reservation.setRoomGrade("deluxe");
		List<Room> availableDeluxeRoom = reservationService.availableRoom(reservation);
		
		reservation.setRoomGrade("suiteroom");
		List<Room> availableSuiteRoom = reservationService.availableRoom(reservation);
		
		model.addAttribute("availableStandardRoom", availableStandardRoom);
		model.addAttribute("availableDeluxeRoom", availableDeluxeRoom);
		model.addAttribute("availableSuiteRoom", availableSuiteRoom);
		
		model.addAttribute("reservation", reservation);
		model.addAttribute("hotelInfo", hotel);
		
		return "reservation/availableRoom";
	}
	
	// 결제화면으로 이동
	@RequestMapping(params="method=payForReservation")
	public String payForReservation(Reservation reservation, String hotelCode, Model model) {
		System.out.println("[Controller] hotelCode: " + reservation.getHotelCode());
		
		// 숙박일수만큼 금액을 계산해야지 1박요금을 냅다 질러버리면 어떡하니 ㅠㅠ.........
		// 여튼 숙박일수 * 1박요금 계산해서 예약 객체에 세팅해놓는다.
		int totalPrice = reservationService.calculateTotalCost(reservation);
		reservation.setRoomCost(totalPrice);
		
		// 포인트 조회는 뷰단에서 세션 통해 불러올 것. -> 안됨 세션 갱신이 안되서 마이너스 포인트 기록 ㅠㅠ
		// 포인트 조회도 데이터베이스에서 따끈따끈한 데이터를 불러오자
		int guestPoint = guestService.getGuest(reservation.getGuestId()).getGuestPoint();
		
		// 호텔이름 출력을 위해서 호텔코드 받아서 호텔 객체 만들 것
		Hotel reserveHotel = hotelService.getHotel(hotelCode);
		
		// 객실이름 &가격 출력을 위해서 객실코드 받아서 객실 객체 만들 것
		Room reserveRoom = roomService.getOneRoom(reservation.getRoomCode());
		
		model.addAttribute("payForReservation", reservation); // 앞에서 받아온 예약정보 모델에 세팅
		model.addAttribute("reserveHotel", reserveHotel);  
		model.addAttribute("reserveRoom", reserveRoom);
		model.addAttribute("guestPoint", guestPoint);
		
		return "reservation/payForReservation";
	}
	
	// 결제하기(=예약완료)
	@RequestMapping(params="method=reserve")
	public String reserve(Reservation reservation, int usedPoint, HttpSession session, Model model) {
		System.out.println("[ReserveController] reserve() in");
		reservationService.reserve(reservation);
		
		// 포인트 차감하는 서비스 메소드 수행
		Guest guest = new Guest();
		guest.setGuestId(reservation.getGuestId());
		guest.setGuestPoint(usedPoint);
		guestService.usePoint(guest);
		
		// 세션에 포인트 변경내용 적용시키기 위해 다시 게스트 세팅
		session.setAttribute("guest", guestService.getGuest(reservation.getGuestId()));
		
		model.addAttribute("justPaidReservation", reservationService.justPaidReservation(reservation.getGuestId()));
				
		return "reservation/completeReservation";
	}
	
	// 사용자: 나의 지난 예약(호텔별/ 객실별/ 기간별)
	@RequestMapping(params="method=myPastReservation")
	public String myPastReservation(Reservation reservation, String pageNum, String searchCheckin, String searchCheckout, String enter, Model model) {
		
//		System.out.println(reservation.getHotelName());
//		System.out.println(searchCheckin);
//		System.out.println(searchCheckout);
		
		// 날짜 타입 변환 처리(String -> Date)
		if(searchCheckin != null && !searchCheckin.equals("")) {
			reservation.setReserveCheckin(Date.valueOf(searchCheckin));
		}
		if(searchCheckout != null && !searchCheckout.equals("")) {
			reservation.setReserveCheckout(Date.valueOf(searchCheckout));
		}
		
		
//		System.out.println("[Controller] instance/checkin: " + reservation.getReserveCheckin());
//		System.out.println("[Controller] instance/checkout: " + reservation.getReserveCheckout());

		// 페이징 처리
		Paging paging = new Paging(reservationService.myPastReservationCnt(reservation), pageNum, 8, 10);
		reservation.setStartRow(paging.getStartRow());
		reservation.setEndRow(paging.getEndRow());
		
		// 리스트 불러옴
		List<Reservation> myPastReservation = reservationService.myPastReservation(reservation);
		
		// 페이징 객체랑 리스트 모델에 세팅
		model.addAttribute("myPastReservation", myPastReservation);
		model.addAttribute("paging", paging);
		return "reservation/myPastReservation";
	}
	
	// 사용자 : 나의 예약 현황(호텔별)
	@RequestMapping(params="method=myReservation")
	public String myReservation(Reservation reservation, String pageNum, Model model) {
		
		// 페이징 처리
		Paging paging = new Paging(reservationService.myReservationCnt(reservation), pageNum, 8, 10);
		reservation.setStartRow(paging.getStartRow());
		reservation.setEndRow(paging.getEndRow());
		
		// 리스트 불러옴
		List<Reservation> myReservation = reservationService.myReservation(reservation);
		
		// 페이징 객체랑 리스트 모델에 세팅
		model.addAttribute("myReservation", myReservation);
		model.addAttribute("paging", paging);
		
		return "reservation/myReservation";
	}
	
	
	// 관리자 : 지난 예약 조회(기간별, 고객이름별, 객실별)
	@RequestMapping(params="method=hotelPastReservation")
	public String hotelPastReservation(String adminId, Reservation reservation, String pageNum, String searchCheckin, String searchCheckout, Model model) {
		
		// 날짜 타입 변환 처리(String -> Date)
		if(searchCheckin != null && !searchCheckin.equals("")) {
			reservation.setReserveCheckin(Date.valueOf(searchCheckin));
		}
		if(searchCheckout != null && !searchCheckout.equals("")) {
			reservation.setReserveCheckout(Date.valueOf(searchCheckout));
		}
		
		// 페이징 처리
		Paging paging = new Paging(reservationService.hotelPastReservationCnt(reservation), pageNum, 8, 10);
		reservation.setStartRow(paging.getStartRow());
		reservation.setEndRow(paging.getEndRow());

		// 리스트 불러옴
		List<Reservation> hotelPastReservation = reservationService.hotelPastReservation(reservation);

		// 페이징 객체랑 리스트 모델에 세팅
		model.addAttribute("hotelPastReservation", hotelPastReservation);
		model.addAttribute("paging", paging);

		return "reservation/hotelPastReservation";
	}
	
	// 관리자 : 예약 현황 조회(객실별, 체크인날짜별, 고객이름별)
	@RequestMapping(params = "method=hotelReservation")
	public String hotelReservation(String adminId, Reservation reservation, String pageNum, String searchCheckin, Model model) {
				
		// 날짜 타입 변환 처리(String -> Date)
		if (searchCheckin != null && !searchCheckin.equals("")) {
			reservation.setReserveCheckin(Date.valueOf(searchCheckin));
		}

		// 페이징 처리
		Paging paging = new Paging(reservationService.hotelReservationCnt(reservation), pageNum, 8, 10);
		reservation.setStartRow(paging.getStartRow());
		reservation.setEndRow(paging.getEndRow());

		// 리스트 불러옴
		List<Reservation> hotelReservation = reservationService.hotelReservation(reservation);

		// 페이징 객체랑 리스트 모델에 세팅
		model.addAttribute("hotelReservation", hotelReservation);
		model.addAttribute("paging", paging);

		return "reservation/hotelReservation";
	}
	
	// 예약 취소 확인 다이얼로그 띄우기
	@RequestMapping(params="method=cancelConfirm")
	public String cancelConfirm(int reserveCode, Model model) {
		System.out.println("[controller] reserveCode: " + reserveCode);
		reservationService.cancelConfirm(reserveCode, model);
		
		return "reservation/cancelConfirm";
	}
	
	// 예약 취소하기
	@RequestMapping(params="method=cancelReservation")
	public String cancelReservation(int reserveCode, Model model, HttpSession session) {
		
		// 예약 취소 수행하고 수행 결과 모델에 세팅
		int cancelResult = reservationService.cancelReservation(reserveCode);
		model.addAttribute("cancelResult", cancelResult);
		
		// 나의 예약 현황 페이지로 돌아가기 위해 세션에서 guestId 다시 불러옴
		String guestId = ((Guest) session.getAttribute("guest")).getGuestId();
		
		// 포인트 재정산을 위해 세션에 다시 guest 세팅
		session.setAttribute("guest", guestService.getGuest(guestId));
		
		return "forward:reservation.do?method=myReservation&guestId=" + guestId;
		
	}
	
	// [추가] 관리자 예약관리 페이지 이동 
	@RequestMapping(params="method=adminReservation")
	public String adminReservation(String adminId, Model model) {
		
		// 관리자가 맡은 호텔 코드 가져와서 모델에 세팅
		String adminHotelCode = hotelService.hotelManage(adminId).getHotelCode();
		System.out.println("[controller] hotelCode:" + adminHotelCode);
		model.addAttribute("adminHotelCode", adminHotelCode);
		
		return "reservation/adminReservationPage";
	}

	
	
}
