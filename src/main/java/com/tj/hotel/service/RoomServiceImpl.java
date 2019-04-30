package com.tj.hotel.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.hotel.dao.RoomDao;
import com.tj.hotel.model.Room;
@Service
public class RoomServiceImpl implements RoomService {
	@Autowired
	private RoomDao roomDao;
	@Override
	public Room getStandardRoom(String hotelCode) {
		return roomDao.getStandardRoom(hotelCode);
	}

	@Override
	public Room getDeluxeRoom(String hotelCode) {
		return roomDao.getDeluxeRoom(hotelCode);
	}

	@Override
	public Room getSuiteRoom(String hotelCode) {
		return roomDao.getSuiteRoom(hotelCode);
	}

	@Override
	public int modifyRoomInfo(MultipartHttpServletRequest mRequest) {
		String uploadPath = mRequest.getRealPath("imgFileUpload/");
		String backupPath = "D:/mega_IT/team_project/source/team_project/src/main/webapp/imgFileUpload/";
		Iterator<String> params = mRequest.getFileNames();
		String[] roomimg = {"","","","",""};
		int idx = 0;
		while(params.hasNext()) {
			String param = params.next();
			MultipartFile mFile = mRequest.getFile(param); // 파라미터에 연결된 파일 객체
			roomimg[idx] = mFile.getOriginalFilename();
			if(roomimg[idx]!=null && !roomimg[idx].equals("")) { // 파일첨부했다
				if(new File(uploadPath+roomimg[idx]).exists()) { // 서버에 같은 파일 이름이 있을때
					roomimg[idx] = System.currentTimeMillis()+"_"+roomimg[idx];
				}
				
				try {
					mFile.transferTo(new File(uploadPath+roomimg[idx])); // 서버에 저장하는 로직
					System.out.println("서버파일 : "+uploadPath+roomimg[idx]);
					System.out.println("백업파일 : "+backupPath+roomimg[idx]);
					int result = 
						filecopy(uploadPath+roomimg[idx], backupPath+roomimg[idx]); // 파일 카피
					System.out.println(result == 1? idx+"번째 복사성공":idx+"번째 복사 실패");
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}else { // 파일첨부 안했다
				roomimg[idx] = "";
			}//if
			idx++;
		}//while
		Room room = new Room();
		room.setRoomCode(mRequest.getParameter("roomCode"));
		room.setHotelCode(mRequest.getParameter("hotelCode"));
		room.setRoomName(mRequest.getParameter("roomName"));
		room.setRoomGrade(mRequest.getParameter("roomGrade"));
		room.setRoomCost(Integer.parseInt(mRequest.getParameter("roomCost")));
		room.setRoomLimit(Integer.parseInt(mRequest.getParameter("roomLimit")));
		room.setRoomImg_1(roomimg[0]);
		room.setRoomImg_2(roomimg[1]);
		room.setRoomImg_3(roomimg[2]);
		room.setRoomImg_4(roomimg[3]);
		room.setRoomImg_5(roomimg[4]);
		
		return roomDao.modifyRoomInfo(room);
	}

	private int filecopy(String serverFile, String backupFile) {
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
				if(nRead==-1)break;
				os.write(buff, 0, nRead);
			}
			isCopy=1;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(os!=null)os.close();
				if(is!=null)is.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return isCopy;
	}

	// [은실] 객실 하나 가져오는 메소드
	@Override
	public Room getOneRoom(String roomCode) {
		// TODO Auto-generated method stub
		return roomDao.getOneRoom(roomCode);
	}
}
