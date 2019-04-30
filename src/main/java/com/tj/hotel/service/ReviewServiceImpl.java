package com.tj.hotel.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.hotel.dao.ReservationDao;
import com.tj.hotel.dao.ReviewDao;
import com.tj.hotel.model.Reservation;
import com.tj.hotel.model.Review;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewDao reviewDao;
	
	@Autowired
	private ReservationDao reservationDao;

	// 리뷰 개수 불러오기 
	@Override
	public int reviewCnt(String hotelCode) {
		// TODO Auto-generated method stub
		return reviewDao.reviewCnt(hotelCode);
	}

	// 리뷰 목록보기
	@Override
	public List<Review> reviewList(Review review) {
		// TODO Auto-generated method stub
		return reviewDao.reviewList(review);
	}

	// 리뷰 작성하기
	@Override
	public void writeReview(MultipartHttpServletRequest mRequest, Review review) {
		// 파일첨부 로직
		String uploadPath = mRequest.getRealPath("hotel_review_fileupload/");
		String backupPath = "D:/mega_IT/team_project/source/team_project/src/main/webapp/hotel_review_fileupload/";
		
		Iterator<String> params = mRequest.getFileNames();
		String[] reviewFileNames = {"", "", ""};
		int idx = 0;
		
		// 추후에 사진 여러장 업로드로 확장을 고려하여 while문 처리(아마도 3장까지)
		while(params.hasNext()) {
			String param = params.next();
			MultipartFile mFile = mRequest.getFile(param);
			reviewFileNames[idx] = mFile.getOriginalFilename();
			
			// 파일이 존재하면 서버에 올린다
			if(reviewFileNames[idx] != null && !reviewFileNames[idx].contentEquals("")) {
				// 그전에 이미 존재하는 파일이 있는지 체크하여 파일이름이 겹치지 않도록 한다.
				if(new File("uploadPath"+reviewFileNames[idx]).exists()) { // 파일이 이미 존재
					reviewFileNames[idx] = System.currentTimeMillis()+"_"+reviewFileNames[idx];
					
				}
				
				try {
					mFile.transferTo(new File(uploadPath + reviewFileNames[idx]));
					System.out.println("서버파일: " + uploadPath + reviewFileNames[idx]);
					System.out.println("백업파일: " + backupPath + reviewFileNames[idx]);
					
					// 파일 복사하는 과정을 filecopy()라는 메소드로 분리
					int result = filecopy(uploadPath+reviewFileNames[idx], backupPath+reviewFileNames[idx]);
					
					if(result == 1) {
						System.out.println("[ReviewService] writeReview() : filecopy success.");
					} else {
						System.out.println("[ReviewService] writeReview() : filecopy fail.");
					}
				
				} catch (Exception e) {
					System.out.println("[ReviewService] writeReview() : " + e.getMessage());
				
				}
				
			} else { // 파일첨부를 안했음
				// 데이터베이스에 review_noImg.jpg로 들어가도록 처리
				reviewFileNames[idx] = "review_noImg.jpg";
			}
			idx++;
		}
		review.setReviewFile(reviewFileNames[0]);
		review.setReviewIp(mRequest.getRemoteAddr()); // 근데 mRequest도 아이피 불러올 수 있나??
		
		// 예약번호를 이용해서 호텔코드를 찾아서  세팅
		Reservation reservation = reservationDao.getReservation(review.getReserveCode());
		review.setHotelCode(reservation.getHotelCode());

		// 리뷰 작성
		reviewDao.writeReview(review);
		
		// 리뷰 작성 여부 업데이트
		reservationDao.uploadReview(review.getReserveCode());
		
		// 호텔 평점 업데이트
		reviewDao.updateHotelScore(review.getHotelCode());
		
		
	}

	// 리뷰 가져오기
	@Override
	public Review getOneReview(int reviewCode) {
		// TODO Auto-generated method stub
		return reviewDao.getOneReview(reviewCode);
	}

	// 리뷰 수정하기 : writeReview()랑 너무 판박이인데;;;;;
	@Override
	public int modifyReview(MultipartHttpServletRequest mRequest, Review review) {
		// 파일첨부 로직
		String uploadPath = mRequest.getRealPath("hotel_review_fileupload/");
		String backupPath = "D:/mega_IT/team_project/source/team_project/src/main/webapp/hotel_review_fileupload/";

		Iterator<String> params = mRequest.getFileNames();
		String[] reviewFileNames = { "", "", "" };
		int idx = 0;

		// 추후에 사진 여러장 업로드로 확장을 고려하여 while문 처리(아마도 3장까지)
		while (params.hasNext()) {
			String param = params.next();
			MultipartFile mFile = mRequest.getFile(param);
			reviewFileNames[idx] = mFile.getOriginalFilename();

			// 파일이 존재하면 서버에 올린다
			if (reviewFileNames[idx] != null && !reviewFileNames[idx].contentEquals("")) {
				// 그전에 이미 존재하는 파일이 있는지 체크하여 파일이름이 겹치지 않도록 한다.
				if (new File("uploadPath" + reviewFileNames[idx]).exists()) { // 파일이 이미 존재
					reviewFileNames[idx] = System.currentTimeMillis() + "_" + reviewFileNames[idx];

				}

				try {
					mFile.transferTo(new File(uploadPath + reviewFileNames[idx]));
					System.out.println("서버파일: " + uploadPath + reviewFileNames[idx]);
					System.out.println("백업파일: " + backupPath + reviewFileNames[idx]);

					// 파일 복사하는 과정을 filecopy()라는 메소드로 분리
					int result = filecopy(uploadPath + reviewFileNames[idx], backupPath + reviewFileNames[idx]);

					if (result == 1) {
						System.out.println("[ReviewService] writeReview() : filecopy success.");
					} else {
						System.out.println("[ReviewService] writeReview() : filecopy fail.");
					}

				} catch (Exception e) {
					System.out.println("[ReviewService] writeReview() : " + e.getMessage());

				}

			} else { // 파일첨부를 안했음
				// 데이터베이스에 null로 들어가도록 빈칸 처리(위에서 이미 빈칸으로 초기화했으므로 생략해도 무관)
				reviewFileNames[idx] = "";
			}
			idx++;
		}
		review.setReviewFile(reviewFileNames[0]);
		review.setReviewIp(mRequest.getRemoteAddr()); // 근데 mRequest도 아이피 불러올 수 있나??

		// 리뷰 수정
		int result = reviewDao.modifyReview(review);
		reviewDao.updateHotelScore(review.getHotelCode());
		return result;
	}

	// 리뷰 삭제하기
	@Override
	public int deleteReview(int reviewCode) {
		// 삭제하기 전에 호텔코드 먼저 담아놓고
		String hotelCode = reviewDao.getOneReview(reviewCode).getHotelCode();
		
		// 리뷰 삭제
		int result = reviewDao.deleteReview(reviewCode);
		
		// 담아놓은 호텔코드 이용해서 평점 업데이트
		reviewDao.updateHotelScore(hotelCode);
		
		return result;
	}
	
	
	// ReviewServiceImpl Original Method : 파일 복사하는 메소드(writeReview() 에서 사용)
	private int filecopy(String serverFile, String backupFile) {
		int isCopy = 0;
		FileInputStream is = null;
		FileOutputStream os = null;
		
		try {
			is = new FileInputStream(serverFile);
			os = new FileOutputStream(backupFile);
			
			byte[] buff = new byte[1024*1024*10]; // 10MB까지 첨부가능
			
			while(true) {
				int nReadByte = is.read(buff);
				if(nReadByte == -1) {
					break;
				}
				os.write(buff, 0, nReadByte);
			}
			
			isCopy = 1;
			
		} catch (Exception e) {
			System.out.println("[ReviewService] filecopy() : " + e.getMessage());
			
		} finally {
			try {
				if(os!=null) {
					os.close();
				}
				if(is!=null) {
					is.close();
				}
			} catch (Exception e) {
			}
		}
		return isCopy;
	}

}
