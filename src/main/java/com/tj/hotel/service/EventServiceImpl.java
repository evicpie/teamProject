package com.tj.hotel.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.hotel.dao.EventDao;
import com.tj.hotel.dao.GuestDao;
import com.tj.hotel.model.Event;
import com.tj.hotel.model.Guest;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	private EventDao eventDao;
	
	@Autowired
	private GuestDao guestDao;
	
	@Override
	public List<Event> eventListAll() {
		return eventDao.eventListAll();
	}

	@Override
	public List<Event> eventListPaging(Event event) {
		return eventDao.eventListPaging(event);
	}

	@Override
	public Event getEvent(int eventNum) {
		return eventDao.getEvent(eventNum);
	}

	@Override
	public int registerEvent(MultipartHttpServletRequest mRequest, Event event) {
		String uploadPath = mRequest.getRealPath("eventImgFileUpload/");
		String backupPath = "D:/mega_IT/team_project/source/team_project/src/main/webapp/eventImgFileUpload/";
		Iterator<String> params = mRequest.getFileNames();
		String[] eventImg= {"","","",""};
		int idx = 0;
		while(params.hasNext()) {
			String param = params.next();
			MultipartFile mFile = mRequest.getFile(param);
			eventImg[idx] = mFile.getOriginalFilename();
			if(eventImg[idx]!=null && !eventImg[idx].equals("")) {
				if(new File(uploadPath+eventImg[idx]).exists()) {
					eventImg[idx] = System.currentTimeMillis()+"_"+eventImg[idx];
				}
				try {
					mFile.transferTo(new File(uploadPath+eventImg[idx]));
					System.out.println("서버파일 : "+uploadPath+eventImg[idx]);
					System.out.println("백업파일 : "+backupPath+eventImg[idx]);
					int result = fileCopy(uploadPath+eventImg[idx], backupPath+eventImg[idx]);
					System.out.println(result == 1? idx+"번째 복사성공":idx+"번째 복사 실패");
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}else {
				eventImg[idx] = "";
			}
			idx++;
		}
		event.setEventBanner(eventImg[0]);
		event.setEventImg1(eventImg[1]);
		event.setEventImg2(eventImg[2]);
		event.setEventImg3(eventImg[3]);
		return eventDao.registerEvent(event);
	}

	private int fileCopy(String serverFile, String backupFile) {
		int isCopy = 0;
		FileInputStream is = null;
		FileOutputStream os = null;
		try {
			is = new FileInputStream(serverFile);
			os = new FileOutputStream(backupFile);
			File sFile = new File(serverFile);
			byte[] buff = new byte[(int)sFile.length()];
			while(true) {
				int nRead = is.read(buff);
				if(nRead == -1) {
					break;
				}
				os.write(buff, 0, nRead);
			}
			isCopy = 1;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}  catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(os!= null) {
					os.close();
				}
				if(is!=null){
					is.close();
				}
			} catch(Exception e) {
				
			}
		}
		return isCopy;
	}

	@Override
	public int modifyEvent(MultipartHttpServletRequest mRequest) {
		String uploadPath = mRequest.getRealPath("eventImgFileUpload/");
		String backupPath = "D:/mega_IT/team_project/source/team_project/src/main/webapp/eventImgFileUpload/";
		Iterator<String> params = mRequest.getFileNames();
		String[] eventImg= {"","","",""};
		int idx = 0;
		while(params.hasNext()) {
			String param = params.next();
			MultipartFile mFile = mRequest.getFile(param);
			eventImg[idx] = mFile.getOriginalFilename();
			if(eventImg[idx]!=null && !eventImg[idx].equals("")) {
				if(new File(uploadPath+eventImg[idx]).exists()) {
					eventImg[idx] = System.currentTimeMillis()+"_"+eventImg[idx];
				}
				try {
					mFile.transferTo(new File(uploadPath+eventImg[idx]));
					System.out.println("서버파일 : "+uploadPath+eventImg[idx]);
					System.out.println("백업파일 : "+backupPath+eventImg[idx]);
					int result = fileCopy(uploadPath+eventImg[idx], backupPath+eventImg[idx]);
					System.out.println(result == 1? idx+"번째 복사성공":idx+"번째 복사 실패");
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}else {
				eventImg[idx] = "";
			}
			idx++;
		}
		Event event = new Event();
		event.setEventNum(Integer.parseInt(mRequest.getParameter("eventNum")));
		event.setEventTitle(mRequest.getParameter("eventTitle"));
		event.setEventBanner(eventImg[0]);
		event.setEventImg1(eventImg[1]);
		event.setEventImg2(eventImg[2]);
		event.setEventImg3(eventImg[3]);
		event.setEventInfo(mRequest.getParameter("eventInfo"));
		event.setEventStatus(Integer.parseInt(mRequest.getParameter("eventStatus")));
		event.setSendPoint(Integer.parseInt(mRequest.getParameter("sendPoint")));
		return eventDao.modifyEvent(event);
	}

	@Override
	public int deleteEvent(int eventNum) {
		return eventDao.deleteEvent(eventNum);
	}
	
	@Override
	public int cntEvent() {
		return eventDao.cntEvent();
	}

	// [은실] 메인에 띄울 이벤트 리스트 불러오기
	@Override
	public List<Event> mainEvent() {
		Event event = new Event();
		
		// 이벤트 3개 띄울 예정(개수 조정하려면 endRow를 늘리세용)
		event.setStartRow(1);
		event.setEndRow(3);
		return eventDao.eventListPaging(event);
	}

	// [은실] 이벤트 참여 서비스
	@Override
	public int getEvent(String guestId, int eventNum) {
		
		// 이벤트 참여 여부 확인
		String eventHistory = guestDao.getGuest(guestId).getGetEvent();
		if(eventHistory != null) { // 이벤트 참여 기록이 있는 경우
			StringTokenizer historyTokens = new StringTokenizer(eventHistory, ",");
			
			while(historyTokens.hasMoreTokens()) {
				int eventToken = Integer.parseInt(historyTokens.nextToken());
				if(eventToken == eventNum) {
					return 0; // 이미 참여한 경우 false 리턴
				}
			}
		}
		
		// 사용자에게 포인트 부여
		int sendPoint = eventDao.getEvent(eventNum).getSendPoint();
		Guest guest = new Guest();
		guest.setGuestId(guestId);
		guest.setGuestPoint(sendPoint);
		guestDao.givingPoint(guest);
		
		// 이벤트 참여 기록
		guest.setGetEvent(String.valueOf(eventNum)); // getEvent에 부득이하게 eventNum을 실어보낸다 ㅠㅠ
		guestDao.alreadyEvent(guest);
		
		
		
		return 1; // 참여에 성공한 경우 true 리턴
	}

}
