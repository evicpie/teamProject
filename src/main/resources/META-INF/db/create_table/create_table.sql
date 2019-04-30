--------------------------------------------------------------------------------------------------------------
-- DROP TABLE, SEQUENCE
--------------------------------------------------------------------------------------------------------------
-- �ܷ�Ű ���� �ɷ��־ ���̺� ������ �� �ֵ��� CASCADE CONSTRAINTS ���� �߰��߽��ϴ�.
DROP TABLE REVIEW_COMMENT CASCADE CONSTRAINTS;
DROP TABLE HOTEL_REVIEW CASCADE CONSTRAINTS;
DROP TABLE SUPPORT CASCADE CONSTRAINTS;
DROP TABLE RESERVATION CASCADE CONSTRAINTS;
DROP TABLE HOTEL_NOTICE CASCADE CONSTRAINTS;
DROP TABLE ROOM CASCADE CONSTRAINTS;
DROP TABLE HOTEL CASCADE CONSTRAINTS;
DROP TABLE GUEST CASCADE CONSTRAINTS;
DROP TABLE ADMIN CASCADE CONSTRAINTS;
DROP SEQUENCE REVIEW_COMMENT_SEQ;
DROP SEQUENCE HOTEL_REVIEW_SEQ;
DROP SEQUENCE SUPPORT_SEQ;
DROP SEQUENCE RESERVATION_SEQ;
DROP SEQUENCE HOTEL_NOTICE_SEQ;

-- Hotel&Room code�� VARCHAR2���� ����ϹǷ� ���ʿ����� �������� �ּ�ó���մϴ�.
-- DROP SEQUENCE ROOM_SEQ;
-- DROP SEQUENCE HOTEL_SEQ;

--------------------------------------------------------------------------------------------------------------
-- Query about ADMIN
--------------------------------------------------------------------------------------------------------------
CREATE TABLE ADMIN(
    ADMINID VARCHAR2(30) PRIMARY KEY,
    ADMINPW VARCHAR2(30) NOT NULL,
    ADMINSECTION VARCHAR2(30) NOT NULL);
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('aaa', 'hotel2019', '������');

--------------------------------------------------------------------------------------------------------------
-- Query about GUEST
--------------------------------------------------------------------------------------------------------------
CREATE TABLE GUEST(
    GUESTID VARCHAR2(30) PRIMARY KEY,
    GUESTPW VARCHAR2(30) NOT NULL,
    GUESTNAME VARCHAR2(30) NOT NULL,
    GUESTEMAIL VARCHAR2(40) UNIQUE,
    GUESTPHONE VARCHAR2(30) NOT NULL,
    GUESTBIRTH DATE NOT NULL,
    GUESTSTATUS NUMBER(1) DEFAULT 1, 
    GUESTPOINT NUMBER(10) DEFAULT 0,
    GETEVENT VARCHAR2(1000)
    );

select * from guest;
-- ��������
-- -- GUESTEMAIL NOT NULL ���� ���� (Ż��� NULLó���Ͽ� �簡�Խ� ������ �̸����� ����� �� �ֵ���)
-- -- GUESTPHONE UNIQUE ���� ���� (�޴�����ȣ�� ����Ǿ� �ٸ������ ����ϰ� �� ��쿡�� ������ �� �ֵ���)
-- -- GETEVENT �÷� �߰�(������ �̺�Ʈ ��ȣ�� ����ϴ� �ʵ�)

INSERT INTO GUEST 
    (GUESTID, GUESTPW, GUESTNAME, GUESTEMAIL, GUESTPHONE, GUESTBIRTH) 
    VALUES ('ggg', 'g11', 'guest01','guest01@naver.com','010-111-1111','1995-01-01'); 
    
INSERT INTO GUEST 
    (GUESTID, GUESTPW, GUESTNAME, GUESTEMAIL, GUESTPHONE, GUESTBIRTH) 
    VALUES ('qqq', 'q11', '�ݿ���','guest02@naver.com','010-111-1111','1995-03-06'); 
INSERT INTO GUEST 
    (GUESTID, GUESTPW, GUESTNAME, GUESTEMAIL, GUESTPHONE, GUESTBIRTH) 
    VALUES ('www', 'w11', '������','guest42@naver.com','010-111-1111','1984-03-09'); 
UPDATE GUEST SET getevent=null WHERE GUESTID='ggg';
select * from guest;

--------------------------------------------------------------------------------------------------------------
-- Query about Hotel
--------------------------------------------------------------------------------------------------------------
-- CREATE SEQUENCE HOTEL_SEQ MAXVALUE 999999999 NOCACHE NOCYCLE; -- ������ ���ʿ�

CREATE TABLE HOTEL(
    hotelCODE VARCHAR2(50) PRIMARY KEY,
    adminId VARCHAR2(30) REFERENCES admin(adminId) NOT NULL, 
    hotelNAME VARCHAR2(100) NOT NULL,
    hotelADDRESS VARCHAR2(255) NOT NULL,
    hotelPHONE VARCHAR2(30) UNIQUE NOT NULL,
    hotelIMG_1 VARCHAR2(255) NOT NULL,
    hotelIMG_2 VARCHAR2(255) DEFAULT 'noimg_hotel.jpg',
    hotelIMG_3 VARCHAR2(255) DEFAULT 'noimg_hotel.jpg',
    hotelNOTICE CLOB NOT NULL,
    hotelDETAIL CLOB NOT NULL,
    hotelSCORE NUMBER(2,1) DEFAULT 5.0);
    
-- ��������
-- -- HOTELCODE VARCHAR2(50)������ ����
-- -- HOTELPOST(�����ȣ) �÷� ����

--------------------------------------------------------------------------------------------------------------
-- Query about ROOM
--------------------------------------------------------------------------------------------------------------
-- CREATE SEQUENCE ROOM_SEQ MAXVALUE 999999999 NOCACHE NOCYCLE; -- ������ ���ʿ�

CREATE TABLE ROOM(
    roomCode VARCHAR2(100) PRIMARY KEY, 
    hotelCode VARCHAR2(50) NOT NULL REFERENCES HOTEL(HOTELCODE),
    roomName VARCHAR2(100) NOT NULL,
    roomGRADE VARCHAR2(30) NOT NULL,
    roomCOST NUMBER(20) NOT NULL,
    roomLIMIT NUMBER(3) NOT NULL,
    roomIMG_1 VARCHAR2(255) NOT NULL,
    roomIMG_2 VARCHAR2(255) NOT NULL,
    roomIMG_3 VARCHAR2(255) NOT NULL,
    roomIMG_4 VARCHAR2(255) DEFAULT 'noimg_room.jpg',
    roomIMG_5 VARCHAR2(255) DEFAULT 'noimg_room.jpg');
    select * from room;
-- ��������
-- -- ROOMCODE VARCHAR2(100)������ ����
    
--------------------------------------------------------------------------------------------------------------
-- Query about Hotel_Notice
--------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE HOTEL_NOTICE_SEQ MAXVALUE 999999999 NOCACHE NOCYCLE;
CREATE TABLE HOTEL_NOTICE (
    NOTICECODE NUMBER(9) PRIMARY KEY, 
    ADMINID VARCHAR2(30) REFERENCES ADMIN(ADMINID), 
    NOTICETITLE VARCHAR2(100) NOT NULL, 
    NOTICECONTENT CLOB NOT NULL, 
    NOTICEFILE VARCHAR2(255), 
    NOTICEDATE DATE DEFAULT SYSDATE, 
    NOTICEIP VARCHAR2(30) NOT NULL, 
    NOTICEVIEW NUMBER(9) DEFAULT 0
);
SELECT * FROM ROOM;
-- ��������
-- -- NOTICEVIEW �÷� �߰�(��ȸ�� �ʵ�)

--------------------------------------------------------------------------------------------------------------
-- Query about Reservation
--------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE RESERVATION_SEQ MAXVALUE 999999999;
CREATE TABLE RESERVATION (
    RESERVECODE NUMBER(9) PRIMARY KEY, 
    HOTELCODE VARCHAR2(50) REFERENCES HOTEL(HOTELCODE), 
    ROOMCODE VARCHAR2(100) REFERENCES ROOM(ROOMCODE), 
    GUESTID VARCHAR2(30) REFERENCES GUEST(GUESTID), 
    RESERVECHECKIN DATE NOT NULL, 
    RESERVECHECKOUT DATE NOT NULL, 
    REVIEWSTATUS NUMBER(1) DEFAULT 0,
    PAIDPRICE NUMBER(9) NOT NULL
);

-- ��������
-- -- PAIDPRICE �÷� �߰� (���� �������� �ʵ� - ���α��� ����� ����)

--------------------------------------------------------------------------------------------------------------
-- Query about Support
--------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE SUPPORT_SEQ MAXVALUE 999999999 NOCACHE NOCYCLE;
CREATE TABLE SUPPORT (
    SUPPORTCODE NUMBER(9) PRIMARY KEY, 
    GUESTID VARCHAR2(30) REFERENCES GUEST(GUESTID), 
    ADMINID VARCHAR2(30) REFERENCES ADMIN(ADMINID), 
    SUPPORTTITLE VARCHAR2(100) NOT NULL, 
    SUPPORTCONTENT CLOB NOT NULL, 
    SUPPORTFILE VARCHAR2(255), 
    SUPPORTDATE DATE DEFAULT SYSDATE, 
    SUPPORTIP VARCHAR2(30) NOT NULL, 
    SUPPORTGROUP NUMBER(9) NOT NULL, 
    SUPPORTSTEP NUMBER(9) NOT NULL, 
    SUPPORTINDENT NUMBER(9) NOT NULL
);

--------------------------------------------------------------------------------------------------------------
-- Query about Hotel_Review
--------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE HOTEL_REVIEW_SEQ MAXVALUE 999999999 NOCACHE NOCYCLE;
CREATE TABLE HOTEL_REVIEW (
    REVIEWCODE NUMBER(9) PRIMARY KEY, 
    GUESTID VARCHAR2(30) REFERENCES GUEST(GUESTID), 
    RESERVECODE NUMBER(9) REFERENCES RESERVATION(RESERVECODE) ON DELETE SET NULL, 
    HOTELCODE VARCHAR2(50) REFERENCES HOTEL(HOTELCODE), 
    REVIEWTITLE VARCHAR2(100) NOT NULL, 
    REVIEWCONTENT CLOB NOT NULL,
    REVIEWFILE VARCHAR2(255), 
    REVIEWDATE DATE DEFAULT SYSDATE, 
    REVIEWIP VARCHAR2(30) NOT NULL, 
    REVIEWSCORE NUMBER(2, 1)
);

-- ��������
-- -- ��
--------------------------------------------------------------------------------------------------------------
-- Query about Review_Comment
--------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE REVIEW_COMMENT_SEQ MAXVALUE 999999999 NOCACHE NOCYCLE;
CREATE TABLE REVIEW_COMMENT (
    REVIEWCMTCODE NUMBER(9) PRIMARY KEY, 
    GUESTID VARCHAR2(30) REFERENCES GUEST(GUESTID), 
    REVIEWCODE NUMBER(9) REFERENCES HOTEL_REVIEW(REVIEWCODE) ON DELETE CASCADE, 
    REVIEWCMTCONTENT VARCHAR2(1000) NOT NULL, 
    REVIEWCMTDATE DATE DEFAULT SYSDATE, 
    REVIEWCMTIP VARCHAR2(30) NOT NULL,
    REVIEWCMTGROUP NUMBER(9) NOT NULL,
    REVIEWCMTSTEP NUMBER(9) NOT NULL,
    REVIEWCMTINDENT NUMBER(9) NOT NULL
);

-- ��������
-- -- ���� �� �� �ֵ��� GROUP, STEP, INDENT �÷� �߰�
-- -- ���䰡 �����Ǹ� ��۵� ���� �����ǵ��� REVIEWCODE �÷��� �ܷ�Ű �ɼ� �߰�(ON DELETE CASCADE)

--------------------------------------------------------------------------------------------------------------
-- Query about Event
--------------------------------------------------------------------------------------------------------------
DROP TABLE EVENT;
DROP SEQUENCE EVENT_SEQ;

CREATE TABLE EVENT(
    EVENTNUM NUMBER(4) PRIMARY KEY,
    EVENTTITLE VARCHAR2(200) NOT NULL,
    EVENTBANNER VARCHAR2(100) DEFAULT 'noimg.jpg'  NOT NULL,
    EVENTIMG1 VARCHAR2(100) DEFAULT 'noimg.jpg' NOT NULL,
    EVENTIMG2 VARCHAR2(100),
    EVENTIMG3 VARCHAR2(100),
    EVENTINFO CLOB,
    EVENTSTATUS NUMBER(1) DEFAULT 1,
    SENDPOINT NUMBER(9) DEFAULT 0);
CREATE SEQUENCE EVENT_SEQ;

alter table event add (eventstatus number(1) default 1);

COMMIT;
-- ��������
-- -- �̺�Ʈ ���̺� �߰�
-- -- ������ ����Ʈ �÷�(SENDPOINT) �߰�
-- -- �̺�Ʈ ������/�ϷḦ ��Ÿ�� �÷�(EVENTSTATUS) �߰�

UPDATE GUEST SET GETEVENT=GETEVENT||'45'||',' WHERE GUESTID='ggg';
UPDATE GUEST SET GUESTPOINT = GUESTPOINT+6000 WHERE GUESTID='ggg';
