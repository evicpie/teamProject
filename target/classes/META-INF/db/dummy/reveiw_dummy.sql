-----------------------------------------------------------------------------------------------------------------------
-- review dummy data
-----------------------------------------------------------------------------------------------------------------------


INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 1, 'holiday_seoul', '�� ���� ���ϴ�', '�ü��� û���ϰ� ���Ҿ��!\r\n���ǵ� �����ϰ� �ʹ� ���ҽ��ϴ�.', 'reviewImg.jpg', SYSDATE, '204.24.31.678', 4.5);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 2, 'holiday_seoul', '����߽��ϴ�~', '�� �������� ������ ��¦ ���Ѱ� �ƽ��׿�\r\n�������� ���� ������ �鸮�°� �ƽ����ϴ�.', 'review_noImg.jpg', SYSDATE, '204.24.31.678', 3.0);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 3, 'holiday_seoul', '����ϰ� �����ƿ�', '��õ�帳�ϴ�.', 'reviewImg2.jpg', SYSDATE, '204.24.31.678', 4.0);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 4, 'holiday_seoul', 'ó�����ôµ� �����׿�', '��ó �ٸ� ȣ�ڵ麸�� ������ ���� �� �����ϴ�.', 'reviewImg3.jpg', SYSDATE, '204.24.31.678', 3.5);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 5, 'holiday_seoul', '�����ϰ� ���ҽ��ϴ�.', '������ ��湮�� �ǻ� �ֽ��ϴ�.', 'review_noImg.jpg', SYSDATE, '204.24.31.678', 4.0);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 6, 'holiday_seoul', '����ͼ� �Ϸ� �����߽��ϴ�.', '���ǵ� ����ϰ� �����ؼ� ���׿�\r\n������ �ٽ� ���� �ͽ��ϴ�.', 'review_noImg.jpg', SYSDATE, '204.24.31.678', 4.5);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 7, 'holiday_seoul', '������ ���ؼ� ���ҽ��ϴ�.', '�ٷ� �տ� ���������嵵 �ְ� \r\n���ݸ� �ɾ�� ����ö���� ������� \r\n�������� ���ƴٴϱ� �����ϴ�.', 'reviewImg4.jpg', SYSDATE, '204.24.31.678', 5.0);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 8, 'holiday_seoul', '�� ����ͽ��ϴ�', '�䰡 �ʹ� ������ ������ ���� ���Ҿ��~ \r\n�� ��� ���ϴ�!', 'reviewImg5.jpg', SYSDATE, '204.24.31.678', 5.0);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 9, 'holiday_seoul', '���ݴ�� ����', '���� û�һ��� ��ȣ\r\n����Ʈ���� ���\r\n���ټ� ����\r\n�ü��׼��� ����', 'reviewImg6.jpg', SYSDATE, '204.24.31.678', 3.5);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'aaaaa', 10, 'holiday_seoul', '���������� ���ο���', '���������� �����ؼ� �ƽ������ϴ�. \r\n�װ� ����� ���������� ������ ���Դϴ�.', 'reviewImg7.jpg', SYSDATE, '204.24.31.678', 2.5);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 11, 'holiday_seoul', '�����е��� ģ���ϼż� �ʹ� ���ƿ�', '�ü��� ���Ұ� ���� ���ŷο� ��Ź���� ���� ��Ⱦ��µ� \r\n�׻� �����鼭 �������ּż� ��¥ �����߽��ϴ�. \r\n���п� ������� �� ���� ���ϴ�!\r\n������ �� �ðԿ�!!!', 'reviewImg8.jpg', SYSDATE, '204.24.31.678', 5.0);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 12, 'holiday_seoul', '������̶� ��Դµ�', '�����⵵ �ʹ� ���� \r\n�ü��� ���� ���ƿ�!! ���⿡�� ���ĳ⿡�� �� ����ͳ׿�', 'reviewImg9.jpg', SYSDATE, '204.24.31.678', 4.5);
