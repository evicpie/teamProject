-- ★Guest.xml★
-- Guest.xml의 guestIdConfirm(id중복체크)
SELECT COUNT(*) FROM GUEST WHERE GUESTID='ggg';


--Guest.xml의 id=joinGuest(회원가입)
INSERT INTO GUEST (GUESTID, GUESTPW, GUESTNAME, GUESTEMAIL, GUESTPHONE, GUESTBIRTH) VALUES ('ggg', 'g11', 'guest01','guest01@naver.com','010-111-1111','1995-01-01'); 

UPDATE GUEST SET
   			 GUESTSTATUS = 0, GUESTEMAIL = '-' WHERE GUESTID='ggg';
--GUEST.xml의 id=modifyGuset(회원정보수정하기)
UPDATE GUEST SET
    GUESTPW ='11g',
    GUESTNAME='guest01_update',
    GUESTEMAIL='hybrid@tj.com',
    GUESTPHONE='010-111-2222',
    GUESTBIRTH='1997-12-12'
    WHERE GUESTID='ggg';

--GUEST.xml의 id=withdrawal(회원탈퇴하기)
UPDATE GUEST SET
    GUESTSTATUS = 1 WHERE GUESTID='ggg';

SELECT * FROM GUEST WHERE GUESTID='ggg'; 
SELECT COUNT(*) FROM GUEST WHERE GUESTID = 'ggg' AND GUESTEMAIL = 'hybrid@tj.com';

SELECT * FROM GUEST;
commit;
------------------------------------------------------------------------------------
-- ★Host.xml★
-- Host.xml의 hostIdConfirm(id중복체크)
SELECT COUNT(*) FROM HOST WHERE HOSTID='hhh';


--Host.xml의 id=joinHost(회원가입)
INSERT INTO HOST (HOSTID, HOSTPW, HOSTNAME, HOSTEMAIL, HOSTPHONE) VALUES ('hhh', 'h11','host01','host01@naver.com','010-222-2222');

--GUEST.xml의 id=modifyGuset(회원정보수정하기)
UPDATE HOST SET
    HOSTPW ='11h',
    HOSTNAME='host01_update',
    HOSTEMAIL='hybrid@tj.com',
    HOSTPHONE='010-222-1111'
    WHERE HOSTID='hhh';

--GUEST.xml의 id=withdrawal(회원탈퇴하기)
UPDATE HOST SET
    HOSTSTATUS = 0 WHERE HOSTID='hhh';

SELECT * FROM HOST WHERE HOSTID='hhh';

SELECT * FROM HOST;
------------------------------------------------------------------------------------

SELECT GUESTID FROM GUEST WHERE GUESTNAME = 'guest01' AND GUESTPHONE = '010-111-1111';
SELECT GUESTPW FROM GUEST WHERE GUESTID = 'ggg' AND GUESTEMAIL = 'hybrid@tj.com';
COMMIT;
