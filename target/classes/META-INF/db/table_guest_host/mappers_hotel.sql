-- ��Guest.xml��
-- Guest.xml�� idConfirm(id�ߺ�üũ)
SELECT COUNT(*) FROM GUEST WHERE GUESTID='ggg';


--Guest.xml�� id=joinGuest(ȸ������)
INSERT INTO GUEST (GUESTID, GUESTPW, GUESTNAME, GUESTEMAIL, GUESTPHONE, GUESTBIRTH) VALUES ('ggg', 'g11', 'guest01','guest01@naver.com','010-111-1111','1995-01-01'); 

--GUEST.xml�� id=modifyGuset(ȸ�����������ϱ�)
UPDATE GUEST SET
    GUESTPW ='11g',
    GUESTNAME='guest01_update',
    GUESTEMAIL='hybrid@tj.com',
    GUESTPHONE='010-111-2222',
    GUESTBIRTH='1997-12-12'
    WHERE GUESTID='ggg';

--GUEST.xml�� id=withdrawal(ȸ��Ż���ϱ�)
UPDATE GUEST SET
    GUESTSTATUS = 1 WHERE GUESTID='ggg';
    
SELECT * FROM GUEST;
------------------------------------------------------------------------------------
-- ��Host.xml��
-- Host.xml�� idConfirm(id�ߺ�üũ)
SELECT COUNT(*) FROM HOST WHERE HOSTID='hhh';


--Host.xml�� id=joinHost(ȸ������)
INSERT INTO HOST (HOSTID, HOSTPW, HOSTNAME, HOSTEMAIL, HOSTPHONE) VALUES ('hhh', 'h11','host01','host01@naver.com','010-222-2222');

--GUEST.xml�� id=modifyGuset(ȸ�����������ϱ�)
UPDATE HOST SET
    HOSTPW ='11h',
    HOSTNAME='host01_update',
    HOSTEMAIL='hybrid@tj.com',
    HOSTPHONE='010-222-1111'
    WHERE HOSTID='hhh';

--GUEST.xml�� id=withdrawal(ȸ��Ż���ϱ�)
UPDATE HOST SET
    HOSTSTATUS = 0 WHERE HOSTID='hhh';
    
SELECT * FROM HOST;
------------------------------------------------------------------------------------

COMMIT;
