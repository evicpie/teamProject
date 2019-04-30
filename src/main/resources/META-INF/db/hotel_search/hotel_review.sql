--------------------------------------------------------------------------------------------------------------
-- Query about Rservation
--------------------------------------------------------------------------------------------------------------
DROP SEQUENCE RESERVATION_SEQ;
DROP TABLE RESERVATION;
CREATE SEQUENCE RESERVATION_SEQ MAXVALUE 999999999 NOCACHE NOCYCLE;
CREATE TABLE RESERVATION(
    RCODE NUMBER(9) PRIMARY KEY, 
    HOTELCODE NUMBER(9) REFERENCES HOTEL(HOTELCODE), 
    ROOMCODE NUMBER(9) REFERENCES ROOM(ROOMCODE), 
    GUESTID VARCHAR2(30) REFERENCES GUEST(GUESTID), 
    RCHECKIN DATE, 
    RCHECKOUT DATE, 
    RREVIEWSTATUS NUMBER(1) DEFAULT 0
);
INSERT INTO RESERVATION VALUES (RESERVATION_SEQ.NEXTVAL, 1, 1, 'ggg', '2019-04-09', '2019-04-10', 0);
SELECT * FROM RESERVATION;
--------------------------------------------------------------------------------------------------------------
-- Query about Hotel_Review
--------------------------------------------------------------------------------------------------------------
DROP TABLE HOTEL_REVIEW;
DROP TABLE HOTEL_REVIEW_SEQ;
CREATE SEQUENCE HOTEL_REVIEW_SEQ MAXVALUE 999999999 NOCACHE NOCYCLE;
CREATE TABLE HOTEL_REVIEW(
    HRCODE NUMBER(9) PRIMARY KEY, 
    GUESTID VARCHAR2(30) REFERENCES GUEST(GUESTID), 
    RCODE NUMBER(9) REFERENCES RESERVATION(RCODE), 
    HOTELCODE NUMBER(9) REFERENCES HOTEL(HOTELCODE), 
    HRTITLE VARCHAR2(100), 
    HRCONTENT CLOB, 
    HRFILE VARCHAR2(255), 
    HRDATE DATE DEFAULT SYSDATE, 
    HRIP VARCHAR2(30), 
    HRSCORE NUMBER(2, 1)
    );
INSERT INTO HOTEL_REVIEW VALUES 
    (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 1, 1, '호텔후기 제목', '호텔후기 본문', 'NOIMG.JPG', SYSDATE, '192.168.1.151', 4.0);

--------------------------------------------------------------------------------------------------------------
-- Query about Review_Comment
--------------------------------------------------------------------------------------------------------------
DROP SEQUENCE REVIEW_COMMENT_SEQ;
DROP TABLE REVIEW_COMMENT;
CREATE SEQUENCE REVIEW_COMMENT_SEQ MAXVALUE 999999999 NOCACHE NOCYCLE;
CREATE TABLE REVIEW_COMMENT(
    RCCODE NUMBER(9) PRIMARY KEY, 
    GUESTID VARCHAR2(30) REFERENCES GUEST(GUESTID), 
    HRCODE NUMBER(9) REFERENCES HOTEL_REVIEW(HRCODE), 
    RCCONTENT VARCHAR2(1000), 
    RCDATE DATE, 
    RCIP VARCHAR2(30)
);

--------------------------------------------------------------------------------------------------------------
-- Query about Room_Mark
--------------------------------------------------------------------------------------------------------------
DROP SEQUENCE ROOM_MARK_SEQ;
DROP TABLE ROOM_MARK;
CREATE SEQUENCE ROOM_MARK_SEQ MAXVALUE 999999999 NOCACHE NOCYCLE;
CREATE TABLE ROOM_MARK(
    MARKID NUMBER(9) PRIMARY KEY, 
    HOTELCODE NUMBER(9) REFERENCES HOTEL(HOTELCODE), 
    GUESTID VARCHAR2(30) REFERENCES GUEST(GUESTID)
);