--------------------------------------------------------------------------------------------------------------
-- Query about Hotel
--------------------------------------------------------------------------------------------------------------
DROP TABLE HOTEL CASCADE CONSTRAINTS;
DROP SEQUENCE HOTEL_SEQ;

CREATE SEQUENCE HOTEL_SEQ MAXVALUE 999999999 NOCACHE NOCYCLE;

CREATE TABLE HOTEL(
    hotelCODE NUMBER(9) PRIMARY KEY,
    adminId VARCHAR2(30) REFERENCES admin(adminId) NOT NULL, 
    hotelNAME VARCHAR2(100) NOT NULL,
    hotelADDRESS VARCHAR2(255) NOT NULL,
    hotelPOST VARCHAR2(5) NOT NULL,
    hotelPHONE VARCHAR2(30) UNIQUE NOT NULL,
    hotelIMG_1 VARCHAR2(255) NOT NULL,
    hotelIMG_2 VARCHAR2(255) DEFAULT 'noimg_hotel.jpg',
    hotelIMG_3 VARCHAR2(255) DEFAULT 'noimg_hotel.jpg',
    hotelNOTICE CLOB NOT NULL,
    hotelDETAIL CLOB NOT NULL,
    hotelSCORE NUMBER(2,1) DEFAULT 5.0 NOT NULL
    );

--------------------------------------------------------------------------------------------------------------
-- Query about Hotel_Room
--------------------------------------------------------------------------------------------------------------
DROP SEQUENCE HOTEL_NOTICE_SEQ;
DROP TABLE HOTEL_NOTICE;
CREATE TABLE HOTEL_NOTICE (
    NOTICECODE NUMBER(9) PRIMARY KEY, 
    ADMINID VARCHAR2(30) REFERENCES ADMIN(ADMINID), 
    NOTICETITLE VARCHAR2(100) NOT NULL, 
    NOTICECONTENT CLOB NOT NULL, 
    NOTICEFILE VARCHAR2(255) NOT NULL, 
    NOTICEDATE DATE DEFAULT SYSDATE, 
    NOTICEIP VARCHAR2(30)
);