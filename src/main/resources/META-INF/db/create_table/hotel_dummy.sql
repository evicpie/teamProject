--더미데이터입니다 CTRL+A 누르시고 F9눌러주세요

--지부 관리자 입력

INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_seoul', 'hotel2019', '서울');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_incheon', 'hotel2019', '인천');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_gyeonggi', 'hotel2019', '경기도');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_gangwon', 'hotel2019', '강원도');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_chungcheongn', 'hotel2019', '충청북도');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_chungcheongs', 'hotel2019', '충청남도');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_daejeon', 'hotel2019', '대전');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_jeollan', 'hotel2019', '전라북도');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_jeollas', 'hotel2019', '전라남도');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_gwangju', 'hotel2019', '광주');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_gyeongsangn', 'hotel2019', '경상북도');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_gyeongsangs', 'hotel2019', '경상남도');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_daegu', 'hotel2019', '대구');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_ulsan', 'hotel2019', '울산');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_busan', 'hotel2019', '부산');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_jeju', 'hotel2019', '제주');

--지부 호텔 정보 더미데이터 입력
--서울지점 holiday_seoul
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_seoul', 'holiday_seoul', 'HOLIDAY 호텔 서울 지점', '서울특별시 송파구 올림픽로 300 롯데월드타워 76',  '02-3213-1000', 'holiday_seoul_01', 'holiday_seoul_02', 'holiday_seoul_03',
    '만 12세 미만의 어린이는 79층에 위치한 이그제큐티브 라운지인 살롱 드 샤에 입장할 수 없습니다. 

만 15세 이하의 어린이는 피트니스 짐 및 사우나 시설을 이용하실 수 없습니다. 

만 11세 이하의 어린이가 실내 수영장을 이용하려면 부모 또는 법적 보호자를 동반해야합니다. 

피트니스 센터는 매월 마지막 월요일마다 휴무입니다.

예상 도착 시간을 Shah Seoul에 미리 알려주십시오. 예약 시 별도 요청란에 기재하거나 예약 확인서에 기재된 숙소 연락처로 직접 연락하셔도 됩니다.', 
'호텔 샤 서울지점은 롯데월드타워 76~101층에 위치하고, 탁 트인 서울의 전망을 자랑하는 객실을 보유하고 있습니다. 

이 5성급 호텔에는 샴페인 바, 미쉐린 스타 레스토랑, 실내 수영장, 피트니스 센터, 연회 시설이 있습니다. 

호텔은 지하철 2호선과 8호선이 지나는 잠실역과 지하도를 통해 바로 연결되어 있습니다.

모든 객실은 카펫 바닥, 미니바, 냉장고, 커피 머신, 안전 금고, 평면 TV를 갖추고 있습니다. 

실내 욕실에는 헤어드라이어, 무료 세면도구, 슬리퍼, 전기 비데가 설치된 변기가 구비되어 있습니다. 

에비앙 스파는 86층에 위치하고, 스파와 사우나 시설을 갖추고 있습니다. 

샤의 직원들은 투숙객에게 수하물 보관, 발레파킹(대리 주차), 컨시어지 서비스를 제공합니다. 

드라이클리닝, 세탁, 바지 전용 다리미, 다림질 서비스는 추가 요금으로 이용 가능합니다.', 5.0);

--인천 지점 holiday_incheon
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_incheon', 'holiday_incheon', 'HOLIDAY 호텔 인천 지점', '인천 중구 영종해안남로321번길 186',  '1833-8855', 'holiday_incheon_01', 'holiday_incheon_02', 'holiday_incheon_03',
    '실내 수영장과 연결된 수영장은 2019.06.09~2019.06.15 사이 임시로 문을 닫습니다.
    
모든 투숙객은 체크인 시 사진이 부착된 유효한 신분증과 신용카드를 제시하셔야 합니다. 

모든 별도 요청 사항은 체크인 시 가능한 경우에 한해 제공되며, 추가 비용이 부과될 수도 있음을 안내드립니다.

사우나는 2019년 4월 01일 (월)~2019년 6월 30일 (일)에 운영을 중단합니다',
'호텔 샤는 연중 내내 운영되는 실내 수영장과 야외 수영장을 비롯하여 피트니스 센터와 어린이 놀이터를 갖추고 있습니다. 

무료 Wi-Fi 서비스와 무료 전용 주차장을 이용하실 수 있습니다.

각 객실에는 평면 TV와 무료 미니바가 마련되어 있습니다. 

실내 욕실에는 욕조와 전기 비데가 완비된 화장실이 있으며, 슬리퍼, 목욕 가운, 무료 세면도구와 헤어드라이어도 제공됩니다.

호텔 샤에서 다트, 당구, 볼링과 플레이스테이션 등 다양한 게임을 즐겨 보십시오.',5.0);

--경기 지역 holiday_gyeonggi

INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_gyeonggi', 'holiday_gyeonggi', 'HOLIDAY 호텔 경기 지점', '경기도 고양시 일산동구 태극로 20',  '031-927-7700', 'holiday_gyeonggi_01', 'holiday_gyeonggi_02', 'holiday_gyeonggi_03', 
    '모든 투숙객은 체크인 시 사진이 부착된 유효한 신분증과 신용카드를 제시하셔야 합니다. 
모든 별도 요청 사항은 체크인 시 가능한 경우에 한해 제공되며, 추가 비용이 부과될 수도 있음을 안내드립니다.
    
이른 체크인/늦은 체크아웃 시 다음의 요금이 부과됩니다. 

이른 체크인: 
06:00 이전: 첫 1박 요금의 100% 청구 
09:00 이전: 첫 1박 요금의 50% 청구 
12:00 이전: 첫 1박 요금의 30% 청구 

늦은 체크아웃: 
12:00 이후: 첫 1박 요금의 30% 청구 
15:00 이후: 첫 1박 요금의 50% 청구 
18:00 이후: 첫 1박 요금의 100% 청구', 
'야외 수영장과 사우나 시설을 자랑하는 호텔 샤는 무료 Wi-Fi가 완비된 우아한 장식의 객실을 제공합니다. 3개의 레스토랑과 24시간 룸서비스도 이용하실 수 있습니다. 인천 공항행 버스가 호텔 바로 앞에 정차합니다.

호텔은 킨텍스 전시컨벤션 센터에 도보로 10분, 지하철 주엽역과 대화역에서 도보로 20분 거리에 있습니다. 김포 국제공항은 단 15km 떨어져 있습니다.

카펫 바닥으로 마감된 객실은 에어컨, 휴식 공간, 케이블 평면 TV와 차/커피 메이커를 갖추고 있습니다. 실내 욕실에는 비데와 무료 세면도구가 완비되어 있습니다.

피트니스 센터에서 운동을 하거나 24시간 리셉션에서 세탁/다림질 서비스를 요청하실 수 있습니다. 비즈니스 센터도 이용이 가능합니다.

샤 호텔에 고양에 자리한 3개의 레스토랑에서 이탈리아 요리, 프랑스 요리와 중국 전통 요리 등 다양한 요리를 맛보시기 바랍니다.', 5.0);

--강원 지역 holiday_gangwon
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_gangwon', 'holiday_gangwon', 'HOLIDAY 호텔 강원 지점', '강원도 속초시 설악산로 998',  '02-6670-7000', 'holiday_gangwon_01', 'holiday_gangwon_02', 'holiday_gangwon_03', 
    '부모 동반 12세 이하 어린이 무료, 2인 1실 기준이며, 추가 인원이 있을 경우 1인당 20,000(VAT 별도)이 추가됩니다.
    모든 투숙객은 체크인 시 사진이 부착된 유효한 신분증과 신용카드를 제시하셔야 합니다. 
모든 별도 요청 사항은 체크인 시 가능한 경우에 한해 제공되며, 추가 비용이 부과될 수도 있음을 안내드립니다.

이른 체크인/늦은 체크아웃 시 다음의 요금이 부과됩니다. 

이른 체크인: 
06:00 이전: 첫 1박 요금의 100% 청구 
09:00 이전: 첫 1박 요금의 50% 청구 
12:00 이전: 첫 1박 요금의 30% 청구 

늦은 체크아웃: 
12:00 이후: 첫 1박 요금의 30% 청구 
15:00 이후: 첫 1박 요금의 50% 청구 
18:00 이후: 첫 1박 요금의 100% 청구', 
    '샤 호텔 강원 지부는 설악산 국립공원 입구에서 차로 단 5분 거리에 있습니다. 
    그리고 청초호, 속초해수욕장, 대포항 등 속초의 주요 관광지가 차로 약 25분 거리에 있습니다. 
    호텔 내에는 PC, 복합기 등을 무료로 이용하실 수 있는 비즈니스 센터가 있으며 1층에 의류 매장도 있어서 편리하게 쇼핑을 하실 수 있습니다.
    프런트 데스크에서는 환전 및 세탁 서비스를 제공하고 있습니다. 
    깔끔하게 꾸며진 객실에서는 미니바, 가습기, 슬리퍼 등이 있으며 욕실에는 목욕 가운, 욕실용품, 헤어드라이어 등이 구비되어 있습니다. 
    뿐만 아니라, 일부 객실에서는 아름다운 설악산 전경을 감상하실 수 있습니다.
    총 3개의 레스토랑이 있으며 1층 가얏고에서는 정갈한 한식을, 2층 더퀸에서는 한식 및 스테이크를, 9층 애비로드에서는 피자 및 파스타 메뉴를 선보이고 있습니다.
    또한, 별도의 요금을 지불하시면 더퀸 레스토랑에서 조식 뷔페를 드실 수 있습니다. ', 5.0);

--충북 지역 holiday_chungcheongn
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_chungcheongn', 'holiday_chungcheongn', 'HOLIDAY 호텔 충북 지점', '충청북도 청주시 청원구 내수읍 내수학평길 78',  '1577-1564', 'holiday_chungcheongn_01', 'holiday_chungcheongn_02', 'holiday_chungcheongn_03', 
    '모든 투숙객은 체크인 시 사진이 부착된 유효한 신분증과 신용카드를 제시하셔야 합니다. 
모든 별도 요청 사항은 체크인 시 가능한 경우에 한해 제공되며, 추가 비용이 부과될 수도 있음을 안내드립니다.

이른 체크인/늦은 체크아웃 시 다음의 요금이 부과됩니다. 

이른 체크인: 
06:00 이전: 첫 1박 요금의 100% 청구 
09:00 이전: 첫 1박 요금의 50% 청구 
12:00 이전: 첫 1박 요금의 30% 청구 

늦은 체크아웃: 
12:00 이후: 첫 1박 요금의 30% 청구 
15:00 이후: 첫 1박 요금의 50% 청구 
18:00 이후: 첫 1박 요금의 100% 청구', 
'호텔 샤는 연중 내내 운영되는 실내 수영장과 야외 수영장을 비롯하여 피트니스 센터와 어린이 놀이터를 갖추고 있습니다. 

무료 Wi-Fi 서비스와 무료 전용 주차장을 이용하실 수 있습니다.

각 객실에는 평면 TV와 무료 미니바가 마련되어 있습니다. 

실내 욕실에는 욕조와 전기 비데가 완비된 화장실이 있으며, 슬리퍼, 목욕 가운, 무료 세면도구와 헤어드라이어도 제공됩니다.

호텔 샤에서 다트, 당구, 볼링과 플레이스테이션 등 다양한 게임을 즐겨 보십시오.', 5.0);

--충남 지역 holiday_chungcheongs
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_chungcheongs', 'holiday_chungcheongs', 'HOLIDAY 호텔 충남 지점', '충청남도 아산시 도고면 도고온천로 124-23',  '1577-1565', 'holiday_chungcheongs_01', 'holiday_chungcheongs_02', 'holiday_chungcheongs_03',
    '모든 투숙객은 체크인 시 사진이 부착된 유효한 신분증과 신용카드를 제시하셔야 합니다. 
모든 별도 요청 사항은 체크인 시 가능한 경우에 한해 제공되며, 추가 비용이 부과될 수도 있음을 안내드립니다.

이른 체크인/늦은 체크아웃 시 다음의 요금이 부과됩니다. 

이른 체크인: 
06:00 이전: 첫 1박 요금의 100% 청구 
09:00 이전: 첫 1박 요금의 50% 청구 
12:00 이전: 첫 1박 요금의 30% 청구 

늦은 체크아웃: 
12:00 이후: 첫 1박 요금의 30% 청구 
15:00 이후: 첫 1박 요금의 50% 청구 
18:00 이후: 첫 1박 요금의 100% 청구', 
'호텔 샤는 연중 내내 운영되는 실내 수영장과 야외 수영장을 비롯하여 피트니스 센터와 어린이 놀이터를 갖추고 있습니다. 

무료 Wi-Fi 서비스와 무료 전용 주차장을 이용하실 수 있습니다.

각 객실에는 평면 TV와 무료 미니바가 마련되어 있습니다. 

실내 욕실에는 욕조와 전기 비데가 완비된 화장실이 있으며, 슬리퍼, 목욕 가운, 무료 세면도구와 헤어드라이어도 제공됩니다.

호텔 샤에서 다트, 당구, 볼링과 플레이스테이션 등 다양한 게임을 즐겨 보십시오.', 5.0);
    
--대전 지역 holiday_daejeon
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_daejeon', 'holiday_daejeon', 'HOLIDAY 호텔 대전 지점', '대전광역시 유성구 엑스포로123번길 33',  '1577-1566', 'holiday_daejeon_01', 'holiday_daejeon_02', 'holiday_daejeon_03',
    '모든 투숙객은 체크인 시 사진이 부착된 유효한 신분증과 신용카드를 제시하셔야 합니다. 
모든 별도 요청 사항은 체크인 시 가능한 경우에 한해 제공되며, 추가 비용이 부과될 수도 있음을 안내드립니다.

이른 체크인/늦은 체크아웃 시 다음의 요금이 부과됩니다. 

이른 체크인: 
06:00 이전: 첫 1박 요금의 100% 청구 
09:00 이전: 첫 1박 요금의 50% 청구 
12:00 이전: 첫 1박 요금의 30% 청구 

늦은 체크아웃: 
12:00 이후: 첫 1박 요금의 30% 청구 
15:00 이후: 첫 1박 요금의 50% 청구 
18:00 이후: 첫 1박 요금의 100% 청구', 
'호텔 샤는 연중 내내 운영되는 실내 수영장과 야외 수영장을 비롯하여 피트니스 센터와 어린이 놀이터를 갖추고 있습니다. 

무료 Wi-Fi 서비스와 무료 전용 주차장을 이용하실 수 있습니다.

각 객실에는 평면 TV와 무료 미니바가 마련되어 있습니다. 

실내 욕실에는 욕조와 전기 비데가 완비된 화장실이 있으며, 슬리퍼, 목욕 가운, 무료 세면도구와 헤어드라이어도 제공됩니다.

호텔 샤에서 다트, 당구, 볼링과 플레이스테이션 등 다양한 게임을 즐겨 보십시오.', 5.0);
    
--전북 지역 holiday_jeollan
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_jeollan', 'holiday_jeollan', 'HOLIDAY 호텔 전북 지점', '전주시 전주객사5길 94',  '1577-1567', 'holiday_jeollan_01', 'holiday_jeollan_02', 'holiday_jeollan_03',
    '모든 투숙객은 체크인 시 사진이 부착된 유효한 신분증과 신용카드를 제시하셔야 합니다. 
모든 별도 요청 사항은 체크인 시 가능한 경우에 한해 제공되며, 추가 비용이 부과될 수도 있음을 안내드립니다.

이른 체크인/늦은 체크아웃 시 다음의 요금이 부과됩니다. 

이른 체크인: 
06:00 이전: 첫 1박 요금의 100% 청구 
09:00 이전: 첫 1박 요금의 50% 청구 
12:00 이전: 첫 1박 요금의 30% 청구 

늦은 체크아웃: 
12:00 이후: 첫 1박 요금의 30% 청구 
15:00 이후: 첫 1박 요금의 50% 청구 
18:00 이후: 첫 1박 요금의 100% 청구', 
'호텔 샤는 연중 내내 운영되는 실내 수영장과 야외 수영장을 비롯하여 피트니스 센터와 어린이 놀이터를 갖추고 있습니다. 

무료 Wi-Fi 서비스와 무료 전용 주차장을 이용하실 수 있습니다.

각 객실에는 평면 TV와 무료 미니바가 마련되어 있습니다. 

실내 욕실에는 욕조와 전기 비데가 완비된 화장실이 있으며, 슬리퍼, 목욕 가운, 무료 세면도구와 헤어드라이어도 제공됩니다.

호텔 샤에서 다트, 당구, 볼링과 플레이스테이션 등 다양한 게임을 즐겨 보십시오.', 5.0);
    
--전남 지역 holiday_jeollas
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_jeollas', 'holiday_jeollas', 'HOLIDAY 호텔 전남 지점', '전라남도 목포시 평화로 79',  '1577-1568', 'holiday_jeollas_01', 'holiday_jeollas_02', 'holiday_jeollas_03',
    '모든 투숙객은 체크인 시 사진이 부착된 유효한 신분증과 신용카드를 제시하셔야 합니다. 
모든 별도 요청 사항은 체크인 시 가능한 경우에 한해 제공되며, 추가 비용이 부과될 수도 있음을 안내드립니다.

이른 체크인/늦은 체크아웃 시 다음의 요금이 부과됩니다. 

이른 체크인: 
06:00 이전: 첫 1박 요금의 100% 청구 
09:00 이전: 첫 1박 요금의 50% 청구 
12:00 이전: 첫 1박 요금의 30% 청구 

늦은 체크아웃: 
12:00 이후: 첫 1박 요금의 30% 청구 
15:00 이후: 첫 1박 요금의 50% 청구 
18:00 이후: 첫 1박 요금의 100% 청구', 
'호텔 샤는 연중 내내 운영되는 실내 수영장과 야외 수영장을 비롯하여 피트니스 센터와 어린이 놀이터를 갖추고 있습니다. 

무료 Wi-Fi 서비스와 무료 전용 주차장을 이용하실 수 있습니다.

각 객실에는 평면 TV와 무료 미니바가 마련되어 있습니다. 

실내 욕실에는 욕조와 전기 비데가 완비된 화장실이 있으며, 슬리퍼, 목욕 가운, 무료 세면도구와 헤어드라이어도 제공됩니다.

호텔 샤에서 다트, 당구, 볼링과 플레이스테이션 등 다양한 게임을 즐겨 보십시오.', 5.0);
    
--광주 지역 holiday_gwangju
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_gwangju', 'holiday_gwangju', 'HOLIDAY 호텔 전주 지점', '전라북도 전주시 완산구 서곡5길 22-5',  '1577-1569', 'holiday_gwangju_01', 'holiday_gwangju_02', 'holiday_gwangju_03', 
    '모든 투숙객은 체크인 시 사진이 부착된 유효한 신분증과 신용카드를 제시하셔야 합니다. 
모든 별도 요청 사항은 체크인 시 가능한 경우에 한해 제공되며, 추가 비용이 부과될 수도 있음을 안내드립니다.

이른 체크인/늦은 체크아웃 시 다음의 요금이 부과됩니다. 

이른 체크인: 
06:00 이전: 첫 1박 요금의 100% 청구 
09:00 이전: 첫 1박 요금의 50% 청구 
12:00 이전: 첫 1박 요금의 30% 청구 

늦은 체크아웃: 
12:00 이후: 첫 1박 요금의 30% 청구 
15:00 이후: 첫 1박 요금의 50% 청구 
18:00 이후: 첫 1박 요금의 100% 청구', 
'호텔 샤는 연중 내내 운영되는 실내 수영장과 야외 수영장을 비롯하여 피트니스 센터와 어린이 놀이터를 갖추고 있습니다. 

무료 Wi-Fi 서비스와 무료 전용 주차장을 이용하실 수 있습니다.

각 객실에는 평면 TV와 무료 미니바가 마련되어 있습니다. 

실내 욕실에는 욕조와 전기 비데가 완비된 화장실이 있으며, 슬리퍼, 목욕 가운, 무료 세면도구와 헤어드라이어도 제공됩니다.

호텔 샤에서 다트, 당구, 볼링과 플레이스테이션 등 다양한 게임을 즐겨 보십시오.', 5.0);
    
--경북 지역 holiday_gyeongsangn
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_gyeongsangn', 'holiday_gyeongsangn', 'HOLIDAY 호텔 경북 지점', '경상북도 안동시 관광단지로 346-69',  '1577-1570', 'holiday_gyeongsangn_01', 'holiday_gyeongsangn_02', 'holiday_gyeongsangn_03', 
    '모든 투숙객은 체크인 시 사진이 부착된 유효한 신분증과 신용카드를 제시하셔야 합니다. 
모든 별도 요청 사항은 체크인 시 가능한 경우에 한해 제공되며, 추가 비용이 부과될 수도 있음을 안내드립니다.

이른 체크인/늦은 체크아웃 시 다음의 요금이 부과됩니다. 

이른 체크인: 
06:00 이전: 첫 1박 요금의 100% 청구 
09:00 이전: 첫 1박 요금의 50% 청구 
12:00 이전: 첫 1박 요금의 30% 청구 

늦은 체크아웃: 
12:00 이후: 첫 1박 요금의 30% 청구 
15:00 이후: 첫 1박 요금의 50% 청구 
18:00 이후: 첫 1박 요금의 100% 청구', 
'호텔 샤는 연중 내내 운영되는 실내 수영장과 야외 수영장을 비롯하여 피트니스 센터와 어린이 놀이터를 갖추고 있습니다. 

무료 Wi-Fi 서비스와 무료 전용 주차장을 이용하실 수 있습니다.

각 객실에는 평면 TV와 무료 미니바가 마련되어 있습니다. 

실내 욕실에는 욕조와 전기 비데가 완비된 화장실이 있으며, 슬리퍼, 목욕 가운, 무료 세면도구와 헤어드라이어도 제공됩니다.

호텔 샤에서 다트, 당구, 볼링과 플레이스테이션 등 다양한 게임을 즐겨 보십시오.', 5.0);
    
--경남 지역 holiday_gyeongsangs
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_gyeongsangs', 'holiday_gyeongsangs', 'HOLIDAY 호텔 경남 지점', '경상남도 남해군 남면 남면로 1523-21',  '1577-1571', 'holiday_gyeongsangs_01', 'holiday_gyeongsangs_02', 'holiday_gyeongsangs_03', 
    '모든 투숙객은 체크인 시 사진이 부착된 유효한 신분증과 신용카드를 제시하셔야 합니다. 
모든 별도 요청 사항은 체크인 시 가능한 경우에 한해 제공되며, 추가 비용이 부과될 수도 있음을 안내드립니다.

이른 체크인/늦은 체크아웃 시 다음의 요금이 부과됩니다. 

이른 체크인: 
06:00 이전: 첫 1박 요금의 100% 청구 
09:00 이전: 첫 1박 요금의 50% 청구 
12:00 이전: 첫 1박 요금의 30% 청구 

늦은 체크아웃: 
12:00 이후: 첫 1박 요금의 30% 청구 
15:00 이후: 첫 1박 요금의 50% 청구 
18:00 이후: 첫 1박 요금의 100% 청구', 
'호텔 샤는 연중 내내 운영되는 실내 수영장과 야외 수영장을 비롯하여 피트니스 센터와 어린이 놀이터를 갖추고 있습니다. 

무료 Wi-Fi 서비스와 무료 전용 주차장을 이용하실 수 있습니다.

각 객실에는 평면 TV와 무료 미니바가 마련되어 있습니다. 

실내 욕실에는 욕조와 전기 비데가 완비된 화장실이 있으며, 슬리퍼, 목욕 가운, 무료 세면도구와 헤어드라이어도 제공됩니다.

호텔 샤에서 다트, 당구, 볼링과 플레이스테이션 등 다양한 게임을 즐겨 보십시오.', 5.0);
    
--대구 지역 holiday_daegu
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_daegu', 'holiday_daegu', 'HOLIDAY 호텔 대구 지점', '대구광역시 달서구 성당로 7',  '1577-1572', 'holiday_daegu_01', 'holiday_daegu_02', 'holiday_daegu_03', 
    '모든 투숙객은 체크인 시 사진이 부착된 유효한 신분증과 신용카드를 제시하셔야 합니다. 
모든 별도 요청 사항은 체크인 시 가능한 경우에 한해 제공되며, 추가 비용이 부과될 수도 있음을 안내드립니다.

이른 체크인/늦은 체크아웃 시 다음의 요금이 부과됩니다. 

이른 체크인: 
06:00 이전: 첫 1박 요금의 100% 청구 
09:00 이전: 첫 1박 요금의 50% 청구 
12:00 이전: 첫 1박 요금의 30% 청구 

늦은 체크아웃: 
12:00 이후: 첫 1박 요금의 30% 청구 
15:00 이후: 첫 1박 요금의 50% 청구 
18:00 이후: 첫 1박 요금의 100% 청구', 
'호텔 샤는 연중 내내 운영되는 실내 수영장과 야외 수영장을 비롯하여 피트니스 센터와 어린이 놀이터를 갖추고 있습니다. 

무료 Wi-Fi 서비스와 무료 전용 주차장을 이용하실 수 있습니다.

각 객실에는 평면 TV와 무료 미니바가 마련되어 있습니다. 

실내 욕실에는 욕조와 전기 비데가 완비된 화장실이 있으며, 슬리퍼, 목욕 가운, 무료 세면도구와 헤어드라이어도 제공됩니다.

호텔 샤에서 다트, 당구, 볼링과 플레이스테이션 등 다양한 게임을 즐겨 보십시오.', 5.0);
    
--울산 지역 holiday_ulsan
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_ulsan', 'holiday_ulsan', 'HOLIDAY 호텔 울산 지점', '울산광역시 남구 삼산로 204',  '1577-1573', 'holiday_ulsan_01', 'holiday_ulsan_02', 'holiday_ulsan_03',
    '모든 투숙객은 체크인 시 사진이 부착된 유효한 신분증과 신용카드를 제시하셔야 합니다. 
모든 별도 요청 사항은 체크인 시 가능한 경우에 한해 제공되며, 추가 비용이 부과될 수도 있음을 안내드립니다.

이른 체크인/늦은 체크아웃 시 다음의 요금이 부과됩니다. 

이른 체크인: 
06:00 이전: 첫 1박 요금의 100% 청구 
09:00 이전: 첫 1박 요금의 50% 청구 
12:00 이전: 첫 1박 요금의 30% 청구 

늦은 체크아웃: 
12:00 이후: 첫 1박 요금의 30% 청구 
15:00 이후: 첫 1박 요금의 50% 청구 
18:00 이후: 첫 1박 요금의 100% 청구', 
'호텔 샤는 연중 내내 운영되는 실내 수영장과 야외 수영장을 비롯하여 피트니스 센터와 어린이 놀이터를 갖추고 있습니다. 

무료 Wi-Fi 서비스와 무료 전용 주차장을 이용하실 수 있습니다.

각 객실에는 평면 TV와 무료 미니바가 마련되어 있습니다. 

실내 욕실에는 욕조와 전기 비데가 완비된 화장실이 있으며, 슬리퍼, 목욕 가운, 무료 세면도구와 헤어드라이어도 제공됩니다.

호텔 샤에서 다트, 당구, 볼링과 플레이스테이션 등 다양한 게임을 즐겨 보십시오.', 5.0);
    
--부산 지역 holiday_busan
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_busan', 'holiday_busan', 'HOLIDAY 호텔 부산 지점', '부산광역시 부산진구 서면로68번길 52',  '1577-1574', 'holiday_busan_01', 'holiday_busan_02', 'holiday_busan_03',
    '모든 투숙객은 체크인 시 사진이 부착된 유효한 신분증과 신용카드를 제시하셔야 합니다. 
모든 별도 요청 사항은 체크인 시 가능한 경우에 한해 제공되며, 추가 비용이 부과될 수도 있음을 안내드립니다.

이른 체크인/늦은 체크아웃 시 다음의 요금이 부과됩니다. 

이른 체크인: 
06:00 이전: 첫 1박 요금의 100% 청구 
09:00 이전: 첫 1박 요금의 50% 청구 
12:00 이전: 첫 1박 요금의 30% 청구 

늦은 체크아웃: 
12:00 이후: 첫 1박 요금의 30% 청구 
15:00 이후: 첫 1박 요금의 50% 청구 
18:00 이후: 첫 1박 요금의 100% 청구', 
'호텔 샤는 연중 내내 운영되는 실내 수영장과 야외 수영장을 비롯하여 피트니스 센터와 어린이 놀이터를 갖추고 있습니다. 

무료 Wi-Fi 서비스와 무료 전용 주차장을 이용하실 수 있습니다.

각 객실에는 평면 TV와 무료 미니바가 마련되어 있습니다. 

실내 욕실에는 욕조와 전기 비데가 완비된 화장실이 있으며, 슬리퍼, 목욕 가운, 무료 세면도구와 헤어드라이어도 제공됩니다.

호텔 샤에서 다트, 당구, 볼링과 플레이스테이션 등 다양한 게임을 즐겨 보십시오.', 5.0);
    
--제주 지역 holiday_jeju
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_jeju', 'holiday_jeju', 'HOLIDAY 호텔 지점', '제주특별자치도 서귀포시 중문관광로 72번길 60',  '064-735-8900', 'holiday_jeju_01', 'holiday_jeju_02', 'holiday_jeju_03', 
    '객실 내 미니 바 무료 제공 , 네스프레소 머신 과 캡슐 제공, Eilles’ 티백 박스, 
    24시간 룸서비스, 케이블 / 위성 TV 채널, 초고속 인터넷 서비스, 컨시어지 서비스, 
    투어 센터, 유아용 침대 (요청시), TV, 다리미와 다리미 판 (요청시), 간이 침대 (요청시), 
    찻 주전자, 전화, 보이스 메일, 객실 내 금고, 냉장고, 유아 용품(젖병 소독기, 유아 욕조, 범보 의자, 침대 가드 등) 요청 시 제공 ', 
    '특1급 럭셔리 올인클루시브형 호텔인 샤 호텔 제주는 중문관광단지 내 위치하고 있어 천제연 폭포, 중문색달 해변, 여미지 식물원 등에서 가까운 거리에 있습니다. 
    제주를 대표하는 한라산까지는 차로 약 40분이 소요됩니다. 또한, 하루 3회 제주국제공항까지 셔틀버스를 운영하고 있습니다. 
    호텔 내에는 국내 최초 사계절 루프탑 야외 수영장인 스카이피니티와 사계절 온수풀 오션 피니티가 있습니다.
    호텔에 머무는 동안 제주의 오름을 형상화한 정원인 모을에서 산책을 즐기시거나 더 스파 바이 딸고에서 최고급 해양 코스메틱 제품으로 관리를 받으실 수도 있습니다. 
    또한, 호텔 투숙 시에는 수영장, 사우나 피트니스 센터, 주차장 등을 무료로 이용하실 수 있습니다. 
    모든 객실에서는 대형 창문을 통해 자연 채광을 즐기실 수 있으며 Wi-Fi도 완비되어 있습니다. 
    객실에는 무료 이용 가능한 미니 바, 네스프레소 머신, 몰튼브라운 어메니티가 구비되어 있습니다. ', 5.0);

SELECT * FROM HOTEL;

--방 더미데이터

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard201', 'holiday_seoul', '스탠다드룸 201호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard202', 'holiday_seoul', '스탠다드룸 202호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard301', 'holiday_seoul', '스탠다드룸 301호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard302', 'holiday_seoul', '스탠다드룸 302호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard401', 'holiday_seoul', '스탠다드룸 401호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard402', 'holiday_seoul', '스탠다드룸 402호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard501', 'holiday_seoul', '스탠다드룸 501호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard502', 'holiday_seoul', '스탠다드룸 502호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard601', 'holiday_seoul', '스탠다드룸 601호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard602', 'holiday_seoul', '스탠다드룸 602호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_deluxe701', 'holiday_seoul', '디럭스룸 701호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_deluxe702', 'holiday_seoul', '디럭스룸 702호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_deluxe801', 'holiday_seoul', '디럭스룸 801호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_deluxe802', 'holiday_seoul', '디럭스룸 802호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_deluxe901', 'holiday_seoul', '디럭스룸 901호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_deluxe902', 'holiday_seoul', '디럭스룸 902호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_suiteroom1001', 'holiday_seoul', '스위트룸 1001호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_suiteroom1101', 'holiday_seoul', '스위트룸 1101호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_suiteroom1201', 'holiday_seoul', '스위트룸 1201호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard201', 'holiday_incheon', '스탠다드룸 201호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard202', 'holiday_incheon', '스탠다드룸 202호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard301', 'holiday_incheon', '스탠다드룸 301호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard302', 'holiday_incheon', '스탠다드룸 302호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard401', 'holiday_incheon', '스탠다드룸 401호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard402', 'holiday_incheon', '스탠다드룸 402호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard501', 'holiday_incheon', '스탠다드룸 501호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard502', 'holiday_incheon', '스탠다드룸 502호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard601', 'holiday_incheon', '스탠다드룸 601호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard602', 'holiday_incheon', '스탠다드룸 602호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_deluxe701', 'holiday_incheon', '디럭스룸 701호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_deluxe702', 'holiday_incheon', '디럭스룸 702호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_deluxe801', 'holiday_incheon', '디럭스룸 801호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_deluxe802', 'holiday_incheon', '디럭스룸 802호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_deluxe901', 'holiday_incheon', '디럭스룸 901호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_deluxe902', 'holiday_incheon', '디럭스룸 902호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_suiteroom1001', 'holiday_incheon', '스위트룸 1001호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_suiteroom1101', 'holiday_incheon', '스위트룸 1101호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_suiteroom1201', 'holiday_incheon', '스위트룸 1201호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard201', 'holiday_gyeonggi', '스탠다드룸 201호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard202', 'holiday_gyeonggi', '스탠다드룸 202호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard301', 'holiday_gyeonggi', '스탠다드룸 301호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard302', 'holiday_gyeonggi', '스탠다드룸 302호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard401', 'holiday_gyeonggi', '스탠다드룸 401호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard402', 'holiday_gyeonggi', '스탠다드룸 402호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard501', 'holiday_gyeonggi', '스탠다드룸 501호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard502', 'holiday_gyeonggi', '스탠다드룸 502호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard601', 'holiday_gyeonggi', '스탠다드룸 601호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard602', 'holiday_gyeonggi', '스탠다드룸 602호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_deluxe701', 'holiday_gyeonggi', '디럭스룸 701호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_deluxe702', 'holiday_gyeonggi', '디럭스룸 702호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_deluxe801', 'holiday_gyeonggi', '디럭스룸 801호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_deluxe802', 'holiday_gyeonggi', '디럭스룸 802호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_deluxe901', 'holiday_gyeonggi', '디럭스룸 901호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_deluxe902', 'holiday_gyeonggi', '디럭스룸 902호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_suiteroom1001', 'holiday_gyeonggi', '스위트룸 1001호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_suiteroom1101', 'holiday_gyeonggi', '스위트룸 1101호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_suiteroom1201', 'holiday_gyeonggi', '스위트룸 1201호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard201', 'holiday_gangwon', '스탠다드룸 201호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard202', 'holiday_gangwon', '스탠다드룸 202호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard301', 'holiday_gangwon', '스탠다드룸 301호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard302', 'holiday_gangwon', '스탠다드룸 302호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard401', 'holiday_gangwon', '스탠다드룸 401호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard402', 'holiday_gangwon', '스탠다드룸 402호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard501', 'holiday_gangwon', '스탠다드룸 501호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard502', 'holiday_gangwon', '스탠다드룸 502호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard601', 'holiday_gangwon', '스탠다드룸 601호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard602', 'holiday_gangwon', '스탠다드룸 602호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_deluxe701', 'holiday_gangwon', '디럭스룸 701호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_deluxe702', 'holiday_gangwon', '디럭스룸 702호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_deluxe801', 'holiday_gangwon', '디럭스룸 801호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_deluxe802', 'holiday_gangwon', '디럭스룸 802호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_deluxe901', 'holiday_gangwon', '디럭스룸 901호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_deluxe902', 'holiday_gangwon', '디럭스룸 902호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_suiteroom1001', 'holiday_gangwon', '스위트룸 1001호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_suiteroom1101', 'holiday_gangwon', '스위트룸 1101호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_suiteroom1201', 'holiday_gangwon', '스위트룸 1201호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard201', 'holiday_chungcheongn', '스탠다드룸 201호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard202', 'holiday_chungcheongn', '스탠다드룸 202호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard301', 'holiday_chungcheongn', '스탠다드룸 301호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard302', 'holiday_chungcheongn', '스탠다드룸 302호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard401', 'holiday_chungcheongn', '스탠다드룸 401호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard402', 'holiday_chungcheongn', '스탠다드룸 402호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard501', 'holiday_chungcheongn', '스탠다드룸 501호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard502', 'holiday_chungcheongn', '스탠다드룸 502호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard601', 'holiday_chungcheongn', '스탠다드룸 601호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard602', 'holiday_chungcheongn', '스탠다드룸 602호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_deluxe701', 'holiday_chungcheongn', '디럭스룸 701호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_deluxe702', 'holiday_chungcheongn', '디럭스룸 702호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_deluxe801', 'holiday_chungcheongn', '디럭스룸 801호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_deluxe802', 'holiday_chungcheongn', '디럭스룸 802호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_deluxe901', 'holiday_chungcheongn', '디럭스룸 901호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_deluxe902', 'holiday_chungcheongn', '디럭스룸 902호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_suiteroom1001', 'holiday_chungcheongn', '스위트룸 1001호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_suiteroom1101', 'holiday_chungcheongn', '스위트룸 1101호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_suiteroom1201', 'holiday_chungcheongn', '스위트룸 1201호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard201', 'holiday_chungcheongs', '스탠다드룸 201호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard202', 'holiday_chungcheongs', '스탠다드룸 202호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard301', 'holiday_chungcheongs', '스탠다드룸 301호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard302', 'holiday_chungcheongs', '스탠다드룸 302호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard401', 'holiday_chungcheongs', '스탠다드룸 401호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard402', 'holiday_chungcheongs', '스탠다드룸 402호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard501', 'holiday_chungcheongs', '스탠다드룸 501호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard502', 'holiday_chungcheongs', '스탠다드룸 502호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard601', 'holiday_chungcheongs', '스탠다드룸 601호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard602', 'holiday_chungcheongs', '스탠다드룸 602호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_deluxe701', 'holiday_chungcheongs', '디럭스룸 701호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_deluxe702', 'holiday_chungcheongs', '디럭스룸 702호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_deluxe801', 'holiday_chungcheongs', '디럭스룸 801호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_deluxe802', 'holiday_chungcheongs', '디럭스룸 802호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_deluxe901', 'holiday_chungcheongs', '디럭스룸 901호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_deluxe902', 'holiday_chungcheongs', '디럭스룸 902호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_suiteroom1001', 'holiday_chungcheongs', '스위트룸 1001호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_suiteroom1101', 'holiday_chungcheongs', '스위트룸 1101호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_suiteroom1201', 'holiday_chungcheongs', '스위트룸 1201호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard201', 'holiday_daejeon', '스탠다드룸 201호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard202', 'holiday_daejeon', '스탠다드룸 202호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard301', 'holiday_daejeon', '스탠다드룸 301호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard302', 'holiday_daejeon', '스탠다드룸 302호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard401', 'holiday_daejeon', '스탠다드룸 401호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard402', 'holiday_daejeon', '스탠다드룸 402호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard501', 'holiday_daejeon', '스탠다드룸 501호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard502', 'holiday_daejeon', '스탠다드룸 502호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard601', 'holiday_daejeon', '스탠다드룸 601호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard602', 'holiday_daejeon', '스탠다드룸 602호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_deluxe701', 'holiday_daejeon', '디럭스룸 701호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_deluxe702', 'holiday_daejeon', '디럭스룸 702호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_deluxe801', 'holiday_daejeon', '디럭스룸 801호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_deluxe802', 'holiday_daejeon', '디럭스룸 802호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_deluxe901', 'holiday_daejeon', '디럭스룸 901호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_deluxe902', 'holiday_daejeon', '디럭스룸 902호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_suiteroom1001', 'holiday_daejeon', '스위트룸 1001호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_suiteroom1101', 'holiday_daejeon', '스위트룸 1101호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_suiteroom1201', 'holiday_daejeon', '스위트룸 1201호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard201', 'holiday_jeollan', '스탠다드룸 201호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard202', 'holiday_jeollan', '스탠다드룸 202호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard301', 'holiday_jeollan', '스탠다드룸 301호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard302', 'holiday_jeollan', '스탠다드룸 302호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard401', 'holiday_jeollan', '스탠다드룸 401호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard402', 'holiday_jeollan', '스탠다드룸 402호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard501', 'holiday_jeollan', '스탠다드룸 501호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard502', 'holiday_jeollan', '스탠다드룸 502호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard601', 'holiday_jeollan', '스탠다드룸 601호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard602', 'holiday_jeollan', '스탠다드룸 602호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_deluxe701', 'holiday_jeollan', '디럭스룸 701호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_deluxe702', 'holiday_jeollan', '디럭스룸 702호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_deluxe801', 'holiday_jeollan', '디럭스룸 801호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_deluxe802', 'holiday_jeollan', '디럭스룸 802호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_deluxe901', 'holiday_jeollan', '디럭스룸 901호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_deluxe902', 'holiday_jeollan', '디럭스룸 902호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_suiteroom1001', 'holiday_jeollan', '스위트룸 1001호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_suiteroom1101', 'holiday_jeollan', '스위트룸 1101호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_suiteroom1201', 'holiday_jeollan', '스위트룸 1201호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard201', 'holiday_jeollas', '스탠다드룸 201호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard202', 'holiday_jeollas', '스탠다드룸 202호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard301', 'holiday_jeollas', '스탠다드룸 301호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard302', 'holiday_jeollas', '스탠다드룸 302호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard401', 'holiday_jeollas', '스탠다드룸 401호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard402', 'holiday_jeollas', '스탠다드룸 402호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard501', 'holiday_jeollas', '스탠다드룸 501호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard502', 'holiday_jeollas', '스탠다드룸 502호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard601', 'holiday_jeollas', '스탠다드룸 601호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard602', 'holiday_jeollas', '스탠다드룸 602호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_deluxe701', 'holiday_jeollas', '디럭스룸 701호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_deluxe702', 'holiday_jeollas', '디럭스룸 702호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_deluxe801', 'holiday_jeollas', '디럭스룸 801호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_deluxe802', 'holiday_jeollas', '디럭스룸 802호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_deluxe901', 'holiday_jeollas', '디럭스룸 901호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_deluxe902', 'holiday_jeollas', '디럭스룸 902호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_suiteroom1001', 'holiday_jeollas', '스위트룸 1001호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_suiteroom1101', 'holiday_jeollas', '스위트룸 1101호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_suiteroom1201', 'holiday_jeollas', '스위트룸 1201호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard201', 'holiday_gwangju', '스탠다드룸 201호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard202', 'holiday_gwangju', '스탠다드룸 202호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard301', 'holiday_gwangju', '스탠다드룸 301호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard302', 'holiday_gwangju', '스탠다드룸 302호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard401', 'holiday_gwangju', '스탠다드룸 401호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard402', 'holiday_gwangju', '스탠다드룸 402호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard501', 'holiday_gwangju', '스탠다드룸 501호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard502', 'holiday_gwangju', '스탠다드룸 502호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard601', 'holiday_gwangju', '스탠다드룸 601호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard602', 'holiday_gwangju', '스탠다드룸 602호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_deluxe701', 'holiday_gwangju', '디럭스룸 701호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_deluxe702', 'holiday_gwangju', '디럭스룸 702호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_deluxe801', 'holiday_gwangju', '디럭스룸 801호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_deluxe802', 'holiday_gwangju', '디럭스룸 802호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_deluxe901', 'holiday_gwangju', '디럭스룸 901호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_deluxe902', 'holiday_gwangju', '디럭스룸 902호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_suiteroom1001', 'holiday_gwangju', '스위트룸 1001호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_suiteroom1101', 'holiday_gwangju', '스위트룸 1101호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_suiteroom1201', 'holiday_gwangju', '스위트룸 1201호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard201', 'holiday_gyeongsangn', '스탠다드룸 201호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard202', 'holiday_gyeongsangn', '스탠다드룸 202호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard301', 'holiday_gyeongsangn', '스탠다드룸 301호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard302', 'holiday_gyeongsangn', '스탠다드룸 302호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard401', 'holiday_gyeongsangn', '스탠다드룸 401호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard402', 'holiday_gyeongsangn', '스탠다드룸 402호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard501', 'holiday_gyeongsangn', '스탠다드룸 501호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard502', 'holiday_gyeongsangn', '스탠다드룸 502호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard601', 'holiday_gyeongsangn', '스탠다드룸 601호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard602', 'holiday_gyeongsangn', '스탠다드룸 602호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_deluxe701', 'holiday_gyeongsangn', '디럭스룸 701호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_deluxe702', 'holiday_gyeongsangn', '디럭스룸 702호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_deluxe801', 'holiday_gyeongsangn', '디럭스룸 801호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_deluxe802', 'holiday_gyeongsangn', '디럭스룸 802호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_deluxe901', 'holiday_gyeongsangn', '디럭스룸 901호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_deluxe902', 'holiday_gyeongsangn', '디럭스룸 902호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_suiteroom1001', 'holiday_gyeongsangn', '스위트룸 1001호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_suiteroom1101', 'holiday_gyeongsangn', '스위트룸 1101호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_suiteroom1201', 'holiday_gyeongsangn', '스위트룸 1201호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard201', 'holiday_gyeongsangs', '스탠다드룸 201호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard202', 'holiday_gyeongsangs', '스탠다드룸 202호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard301', 'holiday_gyeongsangs', '스탠다드룸 301호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard302', 'holiday_gyeongsangs', '스탠다드룸 302호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard401', 'holiday_gyeongsangs', '스탠다드룸 401호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard402', 'holiday_gyeongsangs', '스탠다드룸 402호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard501', 'holiday_gyeongsangs', '스탠다드룸 501호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard502', 'holiday_gyeongsangs', '스탠다드룸 502호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard601', 'holiday_gyeongsangs', '스탠다드룸 601호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard602', 'holiday_gyeongsangs', '스탠다드룸 602호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_deluxe701', 'holiday_gyeongsangs', '디럭스룸 701호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_deluxe702', 'holiday_gyeongsangs', '디럭스룸 702호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_deluxe801', 'holiday_gyeongsangs', '디럭스룸 801호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_deluxe802', 'holiday_gyeongsangs', '디럭스룸 802호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_deluxe901', 'holiday_gyeongsangs', '디럭스룸 901호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_deluxe902', 'holiday_gyeongsangs', '디럭스룸 902호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_suiteroom1001', 'holiday_gyeongsangs', '스위트룸 1001호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_suiteroom1101', 'holiday_gyeongsangs', '스위트룸 1101호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_suiteroom1201', 'holiday_gyeongsangs', '스위트룸 1201호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard201', 'holiday_daegu', '스탠다드룸 201호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard202', 'holiday_daegu', '스탠다드룸 202호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard301', 'holiday_daegu', '스탠다드룸 301호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard302', 'holiday_daegu', '스탠다드룸 302호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard401', 'holiday_daegu', '스탠다드룸 401호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard402', 'holiday_daegu', '스탠다드룸 402호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard501', 'holiday_daegu', '스탠다드룸 501호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard502', 'holiday_daegu', '스탠다드룸 502호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard601', 'holiday_daegu', '스탠다드룸 601호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard602', 'holiday_daegu', '스탠다드룸 602호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_deluxe701', 'holiday_daegu', '디럭스룸 701호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_deluxe702', 'holiday_daegu', '디럭스룸 702호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_deluxe801', 'holiday_daegu', '디럭스룸 801호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_deluxe802', 'holiday_daegu', '디럭스룸 802호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_deluxe901', 'holiday_daegu', '디럭스룸 901호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_deluxe902', 'holiday_daegu', '디럭스룸 902호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_suiteroom1001', 'holiday_daegu', '스위트룸 1001호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_suiteroom1101', 'holiday_daegu', '스위트룸 1101호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_suiteroom1201', 'holiday_daegu', '스위트룸 1201호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard201', 'holiday_ulsan', '스탠다드룸 201호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard202', 'holiday_ulsan', '스탠다드룸 202호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard301', 'holiday_ulsan', '스탠다드룸 301호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard302', 'holiday_ulsan', '스탠다드룸 302호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard401', 'holiday_ulsan', '스탠다드룸 401호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard402', 'holiday_ulsan', '스탠다드룸 402호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard501', 'holiday_ulsan', '스탠다드룸 501호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard502', 'holiday_ulsan', '스탠다드룸 502호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard601', 'holiday_ulsan', '스탠다드룸 601호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard602', 'holiday_ulsan', '스탠다드룸 602호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_deluxe701', 'holiday_ulsan', '디럭스룸 701호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_deluxe702', 'holiday_ulsan', '디럭스룸 702호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_deluxe801', 'holiday_ulsan', '디럭스룸 801호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_deluxe802', 'holiday_ulsan', '디럭스룸 802호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_deluxe901', 'holiday_ulsan', '디럭스룸 901호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_deluxe902', 'holiday_ulsan', '디럭스룸 902호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_suiteroom1001', 'holiday_ulsan', '스위트룸 1001호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_suiteroom1101', 'holiday_ulsan', '스위트룸 1101호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_suiteroom1201', 'holiday_ulsan', '스위트룸 1201호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard201', 'holiday_busan', '스탠다드룸 201호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard202', 'holiday_busan', '스탠다드룸 202호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard301', 'holiday_busan', '스탠다드룸 301호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard302', 'holiday_busan', '스탠다드룸 302호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard401', 'holiday_busan', '스탠다드룸 401호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard402', 'holiday_busan', '스탠다드룸 402호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard501', 'holiday_busan', '스탠다드룸 501호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard502', 'holiday_busan', '스탠다드룸 502호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard601', 'holiday_busan', '스탠다드룸 601호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard602', 'holiday_busan', '스탠다드룸 602호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_deluxe701', 'holiday_busan', '디럭스룸 701호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_deluxe702', 'holiday_busan', '디럭스룸 702호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_deluxe801', 'holiday_busan', '디럭스룸 801호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_deluxe802', 'holiday_busan', '디럭스룸 802호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_deluxe901', 'holiday_busan', '디럭스룸 901호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_deluxe902', 'holiday_busan', '디럭스룸 902호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_suiteroom1001', 'holiday_busan', '스위트룸 1001호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_suiteroom1101', 'holiday_busan', '스위트룸 1101호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_suiteroom1201', 'holiday_busan', '스위트룸 1201호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard201', 'holiday_jeju', '스탠다드룸 201호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard202', 'holiday_jeju', '스탠다드룸 202호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard301', 'holiday_jeju', '스탠다드룸 301호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard302', 'holiday_jeju', '스탠다드룸 302호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard401', 'holiday_jeju', '스탠다드룸 401호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard402', 'holiday_jeju', '스탠다드룸 402호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard501', 'holiday_jeju', '스탠다드룸 501호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard502', 'holiday_jeju', '스탠다드룸 502호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard601', 'holiday_jeju', '스탠다드룸 601호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard602', 'holiday_jeju', '스탠다드룸 602호실', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_deluxe701', 'holiday_jeju', '디럭스룸 701호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_deluxe702', 'holiday_jeju', '디럭스룸 702호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_deluxe801', 'holiday_jeju', '디럭스룸 801호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_deluxe802', 'holiday_jeju', '디럭스룸 802호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_deluxe901', 'holiday_jeju', '디럭스룸 901호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_deluxe902', 'holiday_jeju', '디럭스룸 902호실', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_suiteroom1001', 'holiday_jeju', '스위트룸 1001호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_suiteroom1101', 'holiday_jeju', '스위트룸 1101호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_suiteroom1201', 'holiday_jeju', '스위트룸 1201호실', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

update room set roomimg_1=roomimg_1||'.jpg';
update room set roomimg_2=roomimg_2||'.jpg';
update room set roomimg_3=roomimg_3||'.jpg';
update room set roomimg_4=roomimg_4||'.jpg';
update room set roomimg_5=roomimg_5||'.jpg';
update hotel set hotelimg_1=hotelimg_1||'.jpg';
update hotel set hotelimg_2=hotelimg_2||'.jpg';
update hotel set hotelimg_3=hotelimg_3||'.jpg';


update hotel set hotelimg_1=replace(hotelimg_1,'holiday', 'shah');
update hotel set hotelimg_2=replace(hotelimg_2,'holiday', 'shah');
update hotel set hotelimg_3=replace(hotelimg_3,'holiday', 'shah');



commit;
INSERT INTO GUEST (GUESTID, GUESTPW, GUESTNAME, GUESTEMAIL, GUESTPHONE, GUESTBIRTH) 
    VALUES ('evicpie', '1231', '에빅파이', 'pwoqhr@hamail.com', '010-111-2222', '92/02/02');

select
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '테스트 메시지 입니다', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '테스트 메시지 입니다', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '테스트 메시지 입니다', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '테스트 메시지 입니다', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
commit;