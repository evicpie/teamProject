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

import com.tj.hotel.dao.HotelDao;
import com.tj.hotel.model.Hotel;
@Service
public class HotelServiceImpl implements HotelService {
	@Autowired
	private HotelDao hotelDao;
	@Override
	public Hotel getHotel(String hotelCode) {
		return hotelDao.getHotel(hotelCode);
	}

	@Override
	public Hotel hotelManage(String adminId) {
		return hotelDao.hotelManage(adminId);
	}

	@Override
	public int hotelModify(MultipartHttpServletRequest mRequest) {
		String uploadPath = mRequest.getRealPath("imgFileUpload/");
		String backupPath = "D:/mega_IT/team_project/source/team_project/src/main/webapp/imgFileUpload/";
		Iterator<String> params = mRequest.getFileNames();
		String[] hotelimg = {"","",""};
		int idx = 0;
		while(params.hasNext()) {
			String param = params.next();
			MultipartFile mFile = mRequest.getFile(param); // 파라미터에 연결된 파일 객체
			hotelimg[idx] = mFile.getOriginalFilename();
			if(hotelimg[idx]!=null && !hotelimg[idx].equals("")) { // 파일첨부했다
				if(new File(uploadPath+hotelimg[idx]).exists()) { // 서버에 같은 파일 이름이 있을때
					hotelimg[idx] = System.currentTimeMillis()+"_"+hotelimg[idx];
				}
				try {
					mFile.transferTo(new File(uploadPath+hotelimg[idx])); // 서버에 저장하는 로직
					System.out.println("서버파일 : "+uploadPath+hotelimg[idx]);
					System.out.println("백업파일 : "+backupPath+hotelimg[idx]);
					int result = 
						filecopy(uploadPath+hotelimg[idx], backupPath+hotelimg[idx]); // 파일 카피
					System.out.println(result == 1? idx+"번째 복사성공":idx+"번째 복사 실패");
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}else { // 파일첨부 안했다
				hotelimg[idx] = "";
			}//if
			idx++;
		}//while
		Hotel hotel = new Hotel();
		hotel.setHotelName(mRequest.getParameter("hotelName"));
		hotel.setHotelAddress(mRequest.getParameter("hotelAddress"));
		hotel.setHotelPhone(mRequest.getParameter("hotelPhone"));
		hotel.setHotelImg_1(hotelimg[0]);
		hotel.setHotelImg_2(hotelimg[1]);
		hotel.setHotelImg_3(hotelimg[2]);
		hotel.setHotelNotice(mRequest.getParameter("hotelNotice"));
		hotel.setHotelDetail(mRequest.getParameter("hotelDetail"));
		hotel.setAdminId(mRequest.getParameter("adminId"));
		return hotelDao.hotelModify(hotel);
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
}
