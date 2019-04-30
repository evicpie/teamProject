-----------------------------------------------------------------------------------------------------------------------
-- review dummy data
-----------------------------------------------------------------------------------------------------------------------


INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 1, 'holiday_seoul', '잘 쉬다 갑니다', '시설이 청결하고 좋았어요!\r\n객실도 따뜻하고 너무 좋았습니다.', 'reviewImg.jpg', SYSDATE, '204.24.31.678', 4.5);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 2, 'holiday_seoul', '쏘쏘했습니다~', '다 괜찮은데 방음이 살짝 약한게 아쉽네요\r\n복도에서 나는 소음이 들리는게 아쉽습니다.', 'review_noImg.jpg', SYSDATE, '204.24.31.678', 3.0);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 3, 'holiday_seoul', '깔끔하고 괜찮아요', '추천드립니다.', 'reviewImg2.jpg', SYSDATE, '204.24.31.678', 4.0);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 4, 'holiday_seoul', '처음가봤는데 괜찮네요', '근처 다른 호텔들보다 가성비가 좋은 것 같습니다.', 'reviewImg3.jpg', SYSDATE, '204.24.31.678', 3.5);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 5, 'holiday_seoul', '깨끗하고 좋았습니다.', '다음에 재방문할 의사 있습니다.', 'review_noImg.jpg', SYSDATE, '204.24.31.678', 4.0);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 6, 'holiday_seoul', '출장와서 하루 숙박했습니다.', '객실도 깔끔하고 조용해서 좋네요\r\n다음에 다시 오고 싶습니다.', 'review_noImg.jpg', SYSDATE, '204.24.31.678', 4.5);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 7, 'holiday_seoul', '교통이 편리해서 좋았습니다.', '바로 앞에 버스정류장도 있고 \r\n조금만 걸어가면 지하철역도 가까워서 \r\n여기저기 돌아다니기 좋습니다.', 'reviewImg4.jpg', SYSDATE, '204.24.31.678', 5.0);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 8, 'holiday_seoul', '또 가고싶습니다', '뷰가 너무 예뻐서 분위기 완전 좋았어요~ \r\n잘 놀다 갑니다!', 'reviewImg5.jpg', SYSDATE, '204.24.31.678', 5.0);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 9, 'holiday_seoul', '가격대비 만족', '객실 청소상태 양호\r\n프론트서비스 평균\r\n접근성 좋음\r\n시설및서비스 좋음', 'reviewImg6.jpg', SYSDATE, '204.24.31.678', 3.5);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'aaaaa', 10, 'holiday_seoul', '주차공간이 별로에요', '주차공간이 협소해서 아쉬웠습니다. \r\n그것 빼고는 전반적으로 괜찮은 곳입니다.', 'reviewImg7.jpg', SYSDATE, '204.24.31.678', 2.5);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 11, 'holiday_seoul', '직원분들이 친절하셔서 너무 좋아요', '시설도 좋았고 조금 번거로운 부탁들을 많이 드렸었는데 \r\n항상 웃으면서 응대해주셔서 진짜 감사했습니다. \r\n덕분에 기분좋게 잘 쉬다 갑니다!\r\n다음에 또 올게요!!!', 'reviewImg8.jpg', SYSDATE, '204.24.31.678', 5.0);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 12, 'holiday_seoul', '기념일이라 놀러왔는데', '분위기도 너무 좋고 \r\n시설도 정말 좋아요!! 내년에도 내후년에도 또 오고싶네요', 'reviewImg9.jpg', SYSDATE, '204.24.31.678', 4.5);
