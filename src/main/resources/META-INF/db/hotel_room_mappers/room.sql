--------------------------------------------------------------------------------------------------------------
-- Query about ROOM
--------------------------------------------------------------------------------------------------------------

DROP TABLE ROOM CASCADE CONSTRAINTS;
DROP SEQUENCE ROOM_SEQ;

CREATE SEQUENCE ROOM_SEQ MAXVALUE 999999999 NOCACHE NOCYCLE;

CREATE TABLE ROOM(
    roomCode NUMBER(9) PRIMARY KEY, 
    hotelCode NUMBER(9) NOT NULL,
    roomGRADE VARCHAR2(30) NOT NULL,
    roomCOST NUMBER(20),
    roomSTOCK NUMBER(5),
    roomLIMIT NUMBER(3),
    roomIMG_1 VARCHAR2(255) NOT NULL,
    roomIMG_2 VARCHAR2(255) NOT NULL,
    roomIMG_3 VARCHAR2(255) NOT NULL,
    roomIMG_4 VARCHAR2(255) DEFAULT 'noimg_room.jpg',
    roomIMG_5 VARCHAR2(255) DEFAULT 'noimg_room.jpg',
    FOREIGN KEY (hotelCode) REFERENCES HOTEL(hotelCode));
    
SELECT * FROM ROOM;

-- #. 호텔 내의 객실 모두보기(가격 오름차순)(id=roomList)
SELECT * FROM ROOM WHERE hotelCODE=1 ORDER BY roomCOST ASC;

-- #. 객실 생성(id=addRoom)
INSERT INTO ROOM (roomCODE, hotelCODE, roomGRADE, roomCOST, roomSTOCK, roomLIMIT, roomIMG_1, roomIMG_2, roomIMG_3, roomIMG_4, roomIMG_5)
VALUES (ROOM_SEQ.NEXTVAL, 1, '프리미어 더블룸', 496100, 15, 2, 'signiel_room1.jpg', 'signiel_room2.jpg', 'signiel_room3.jpg', 'signiel_room4.jpg', 'signiel_room5.jpg');

-- #. 객실 정보 수정(id=modifyRoomInfo)
UPDATE ROOM SET roomGRADE='프리미어 트윈룸', roomCOST=496100, roomSTOCK=20, roomLIMIT=2, roomIMG_1='signiel_room1.jpg',  roomIMG_2='signiel_room2.jpg',  roomIMG_3='signiel_room3.jpg', roomIMG_4='signiel_room4.jpg', roomIMG_5='signiel_room5.jpg' WHERE roomCODE=1;

-- #. 객실 하나 불러오기(id=roomContent)
SELECT * FROM ROOM WHERE roomCODE=1;

-- #. 객실 제거하기(id=deleteRoom)
DELETE FROM ROOM WHERE roomCODE=10;
