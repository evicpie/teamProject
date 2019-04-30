package com.tj.hotel.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.tj.hotel.dao.GuestDao;
import com.tj.hotel.model.Guest;

@Service
public class GuestServiceImpl implements GuestService {

	@Autowired
	private GuestDao guestDao;
	
	@Autowired
	private JavaMailSenderImpl mailSender;
	
	@Override
	public Guest getGuest(String guestId) {
		return guestDao.getGuest(guestId);
	}

	@Override
	public int idConfirm(String guestId) {
		return guestDao.idConfirm(guestId);
	}
	
	@Override
	public int emailConfirm(String guestEmail) {
		return guestDao.emailConfirm(guestEmail);
	}

	@Override
	public int joinGuest(final Guest guest, String tempPhone1, String tempPhone2, String tempPhone3) {
		//전화번호 넣기
				guest.setGuestPhone(tempPhone1+"-"+tempPhone2+"-"+tempPhone3);
		
		//이메일 보내기
				
		MimeMessagePreparator message = new MimeMessagePreparator() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd (E)");
		String content = 
				"<img src=\"http://daramchu.dothome.co.kr/mailHeader.png\" width=\"800\">"
				+ "<div style=\"width: 800px; margin: 30px 0;\">"
				+ "<h1 style=\"text-align: center;\">"+guest.getGuestName()+"님의 회원가입을 진심으로 축하드립니다!</h1>"
				+ "<table style=\"margin: 20px auto;\">"
				+ "<tr><th>아이디</th><td>"+guest.getGuestId()+"</td></tr>"
				+ "<tr><th>이메일</th><td>"+guest.getGuestEmail()+"</td></tr>"
				+ "<tr><th>전화번호</th><td>"+guest.getGuestPhone()+"</td></tr>"
				+ "<tr><th>생년월일</th><td>"+sdf.format(guest.getGuestBirth())+"</td></tr>"
				+ "</table>"
				+ "<p style=\"text-align: center; font-weight: bold; margin-bottom: 50px;\">- 감사합니다. -</p>"
				+ "<hr color=\"red\" style=\"width: 800px;\"></div>";
				
			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				mimeMessage.setRecipient(Message.RecipientType.TO, 
						new InternetAddress(guest.getGuestEmail()));
				mimeMessage.setFrom(new InternetAddress("hybrid190501@gmail.com "));
				mimeMessage.setSubject(guest.getGuestName()+"님 회원가입 감사합니다.");
				mimeMessage.setText(content, "utf-8", "html");
					
			}
		};
		mailSender.send(message);
		System.out.println("★Service 2★");
		return guestDao.joinGuest(guest);
	}

	@Override
	public String loginCheck(String guestId, String guestPw, HttpSession httpSession) {
		String result = "로그인 성공";
		Guest guest = guestDao.getGuest(guestId);
		if(guest == null) {
			result = "유효하지 않은 아이디입니다";
			
		}else if(!guest.getGuestPw().equals(guestPw)) {
			result = "비밀번호가 맞지 않습니다";
	
		}else {
			int guestStatus = guest.getGuestStatus();
			if(guestStatus==0) {
				result = "탈퇴한 회원입니다";
			}else {
			// 로그인 성공			
			httpSession.setAttribute("guest", guest);
			httpSession.setAttribute("guestId", guestId);
			
			// [은실] 게스트로 로그인하면 관리자 로그인 해제
			httpSession.removeAttribute("admin");
			httpSession.removeAttribute("adminId");
			
			}	
		}
		return result;
	}

	@Override
	public int modifyGuest(Guest guest, String guestNewPw, String tempPhone1, String tempPhone2, String tempPhone3) {
		guest.setGuestPhone(tempPhone1+"-"+tempPhone2+"-"+tempPhone3);
		if(!guestNewPw.equals("")) {
			guest.setGuestPw(guestNewPw);
		}
		return guestDao.modifyGuest(guest);
	}

	@Override
	public int withdrawGuest(Guest guest) {
		return guestDao.withdrawGuest(guest);
	}

	@Override
	public String findId(String guestName, String tempPhone1, String tempPhone2, String tempPhone3) {
		String guestPhone = tempPhone1+"-"+tempPhone2+"-"+tempPhone3;
		String tempId = guestDao.findId(guestName, guestPhone);
		if(tempId!=null) {
			String id = "";
			for(int i=0; i<tempId.length(); i++) {
				if(i<3) {
					id += "*";
				}else {
					id += tempId.charAt(i);
				}
			}
			System.out.println(id);
			return id;
		}
		else {
			return "noGuest";
		}
		
	}

	@Override
	public Guest findPw(String guestId, String guestEmail) {	
		return guestDao.findPw(guestId, guestEmail);
	}

	@Override
	public int pwReset(final Guest guest) {
		String randTemp = "";
		ArrayList<String> temp = new ArrayList<String>();
		for (int i = 0; i < 10; i++) {
			int randNum;
			if(i==0 || i==4 || i==8) {
				do {
					randNum = (int)(Math.random()*123);
				}while(96 >= randNum || randNum >= 123);//소문자아스키
			}else if(i == 1) {
				do {
					randNum = (int)(Math.random()*123);
				}while(64 >= randNum || randNum >= 91);//대문자아스키
			}else {
				do {
					randNum = (int)(Math.random()*123);
				}while(47 >= randNum || randNum >= 58);//숫자아스키
			}
			char code = (char) randNum;
			temp.add(String.valueOf(code));
		}
		for(int i=0; i<10; i++) {
			randTemp += temp.get(i);
		}
	
		final String randPw = randTemp; 
		guest.setGuestPw(randPw);
		
		MimeMessagePreparator message = new MimeMessagePreparator() {
			String content = "<img src=\"http://daramchu.dothome.co.kr/mailHeader.png\" width=\"800\">"
					+ "<div style=\"width: 800px; margin: 30px 0; text-align: center;\">"
					+ "<h1 style=\"text-align: center;\">임시 비밀번호 발송</h1>"
					+ randPw + "<br><a href=\"http://localhost:8181/hotel/index.jsp\">로그인하러 가기</a>"
					+ "<p style=\"text-align: center; font-weight: bold; margin-bottom: 50px;\">- 감사합니다. -</p>"
					+ "<hr color=\"red\" style=\"width: 800px;\"></div>";
			
				@Override
				public void prepare(MimeMessage mimeMessage) throws Exception {
					mimeMessage.setRecipient(Message.RecipientType.TO, 
							new InternetAddress(guest.getGuestEmail()));
					mimeMessage.setFrom(new InternetAddress("hybrid190501@gmail.com "));
					mimeMessage.setSubject(guest.getGuestName()+"님 임시 비밀번호가 발송되었습니다");
					mimeMessage.setText(content, "utf-8", "html");
						
				}
			};
			mailSender.send(message);
		return guestDao.pwReset(guest);
	}

	// [은실] 결제 시 포인트 차감하는 메소드
	@Override
	public int usePoint(Guest guest) {
		return guestDao.usePoint(guest);
	}

	// [희영] 관리자측에서 사용하는 Guest관련 서비스 메소드
	@Override
	public int updateGuestStatus(String[] guestId, int guestStatus, HttpServletRequest request, Model model) {
		guestId = request.getParameterValues("guestId");
		int result = 0;
		for(int i = 0; i < guestId.length; i++) {
			Guest guest = new Guest();
			guest.setGuestId(guestId[i]);
			guest.setGuestStatus(guestStatus);
			result = guestDao.updateGuestStatus(guest);
			if(result == 0) {
				model.addAttribute("failMsg", "회원 등급 변경에 실패했습니다");
			}else {
				model.addAttribute("successMsg", "회원 등급 변경이 완료되었습니다");
			}
		}
		return result;
	}

	@Override
	public int givingPoint (String[] guestId, int guestPoint, HttpServletRequest request, Model model) {
		guestId = request.getParameterValues("guestId");
		int result = 0;
		for(int i=0; i < guestId.length; i++) {
			final Guest guest = guestDao.getGuest(guestId[i]);
			System.out.println("★★★★★★★★★★★★★★★★★★★guestEmail : " + guest.getGuestEmail());
			guest.setGuestPoint(guestPoint);
			MimeMessagePreparator message = new MimeMessagePreparator() {
				String content = 
						"<img src=\"http://daramchu.dothome.co.kr/mailHeader.png\" width=\"800\">\r\n" + 
						"<div style=\"width: 800px;\">\r\n" + 
						"<h3 style=\"text-align: center;\">HOLIDAY에서 " + guest.getGuestName() + "님께 드리는 특별포인트!!</h3>\r\n" + 
						"<table style=\"margin: 0 auto;\">\r\n" + 
						"   <tr>\r\n" + 
						"      <td colspan=\"2\" style=\"text-align: center;\">" + guest.getGuestName() + "님께 " + guest.getGuestPoint() + "포인트가 지급되었습니다</td>\r\n" + 
						"   </tr>\r\n" + 
						"   <tr>\r\n" + 
						"      <td colspan=\"2\" style=\"text-align: center; \">" + "포인트는 호텔예약시 이용가능합니다</td>\r\n" + 
						"   </tr>\r\n" + 
						"</table>\r\n" + 
						"<p style=\"text-align: center; font-weight: bold;\">- 언제나 저희 HOLIDAY를 이용해 주셔서 감사합니다  -</p>\r\n" +
						"<hr color=\"red\" style=\"width: 800px;\">" +
						"</div>";
				@Override
				public void prepare(MimeMessage mimeMessage) throws Exception {
					mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(guest.getGuestEmail()));
					mimeMessage.setFrom(new InternetAddress("hybrid190501@gmail.com "));
					mimeMessage.setSubject(guest.getGuestName()+"님께 포인트가 지급되었습니다");
					mimeMessage.setText(content, "utf-8", "html");
				}
			};
			mailSender.send(message);
			result = guestDao.givingPoint(guest);
			if(result == 0) {
				model.addAttribute("failMsg", "포인트 지급에 실패했습니다");
			}else {
				model.addAttribute("successMsg", "포인트 지급이 완료되었습니다");
			}
		}
		return result; 
	}

	@Override
	public int countGuest(Guest guest) {
		return guestDao.countGuest(guest);
	}

	@Override
	public List<Guest> guestSearch(Guest guest) {
		return guestDao.guestSearch(guest);
	}

}
