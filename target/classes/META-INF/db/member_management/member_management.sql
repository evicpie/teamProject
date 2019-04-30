--------------------------------------------------------------------------------------------------------------
-- ȸ�� ����Ʈ
--------------------------------------------------------------------------------------------------------------
-- ���̵�� �˻�
SELECT * FROM 
    (SELECT ROWNUM RN, A.* FROM
        (SELECT * FROM GUEST WHERE GUESTID LIKE '%' || 'g' || '%' ORDER BY GUESTID)A)
    WHERE RN BETWEEN 1 AND 2;
    
-- �̸����� �˻�
SELECT * FROM 
    (SELECT ROWNUM RN, A.* FROM
        (SELECT * FROM GUEST WHERE GUESTNAME LIKE '%' || 'g' || '%' ORDER BY GUESTID)A)
    WHERE RN BETWEEN 1 AND 2;

-- ��ȭ��ȣ�� �˻�
SELECT * FROM
    (SELECT ROWNUM RN, A.* FROM
        (SELECT * FROM GUEST WHERE GUESTPHONE LIKE '%' || '010' || '%' ORDER BY GUESTID)A)
    WHERE RN BETWEEN 1 AND 2;
    
-- ������� �˻�
SELECT * FROM
    (SELECT ROWNUM RN, A.* FROM
        (SELECT * FROM GUEST WHERE GUESTSTATUS LIKE '%' || '2' || '%' ORDER BY GUESTID)A)
    WHERE RN BETWEEN 1 AND 2;
    
-- Ż������ ���� ȸ�� �� ��
SELECT COUNT(*) FROM GUEST WHERE GUESTSTATUS!=0;
    
--------------------------------------------------------------------------------------------------------------
-- ȸ�� ��� ����(0: Ż��, 1:�Ϲ�, 2:VIP, 3:������Ʈ)
--------------------------------------------------------------------------------------------------------------
-- ������Ʈ�� ����
UPDATE GUEST SET GUESTSTATUS = 3
            WHERE GUESTID = 'ggg'; 
            
-- VIP�� ����
UPDATE GUEST SET GUESTSTATUS = 2
            WHERE GUESTID = 'ggg'; 

--------------------------------------------------------------------------------------------------------------
-- ����Ʈ
--------------------------------------------------------------------------------------------------------------
-- ����Ʈ �ο�
UPDATE GUEST SET GUESTPOINT = GUESTPOINT + 100
    WHERE GUESTID = 'ggg';
    
-- �� ����Ʈ
SELECT GUESTPOINT FROM GUEST WHERE GUESTID = 'ggg';

--------------------------------------------------------------------------------------------------------------
-- ��������
--------------------------------------------------------------------------------------------------------------
-- �������� �� ���
-- �ۼ���ID�� �˻�
SELECT * FROM
    (SELECT A.*, ROWNUM RN FROM
    (SELECT * FROM HOTEL_NOTICE WHERE ADMINID LIKE '%' || 'a' || '%' ORDER BY NOTICECODE DESC)A)
    WHERE RN BETWEEN 1 AND 2;
-- �������� �˻�
SELECT * FROM
    (SELECT A.*, ROWNUM RN FROM
    (SELECT * FROM HOTEL_NOTICE WHERE NOTICETITLE LIKE '%' || '����' || '%' ORDER BY NOTICECODE DESC)A)
    WHERE RN BETWEEN 1 AND 2;
-- �������� �˻�
SELECT * FROM
    (SELECT A.*, ROWNUM RN FROM
    (SELECT * FROM HOTEL_NOTICE WHERE NOTICECONTENT LIKE '%' || '����' || '%' ORDER BY NOTICECODE DESC)A)
    WHERE RN BETWEEN 1 AND 2;
-- ����+�������� �˻�
SELECT * FROM
    (SELECT A.*, ROWNUM RN FROM
    (SELECT * FROM HOTEL_NOTICE WHERE NOTICETITLE LIKE '%' || '����' || '%' OR NOTICECONTENT LIKE '%' || '����' || '%' ORDER BY NOTICECODE DESC)A)
    WHERE RN BETWEEN 1 AND 2;

-- �������׿� �� �ۼ�
INSERT INTO HOTEL_NOTICE (NOTICECODE, ADMINID, NOTICETITLE, NOTICECONTENT, NOTICEFILE, NOTICEIP) 
VALUES (HOTEL_NOTICE_SEQ.NEXTVAL, 'aaa', '�������� �� ����', '�������� �� ����', 'noimg.jpg', '192.168.10.151');

-- �������� �� ����
UPDATE HOTEL_NOTICE SET ADMINID = 'aaa', 
                        NOTICETITLE = '���� �� �� ����', 
                        NOTICECONTENT = '���� �� �� ����', 
                        NOTICEFILE = 'noimg.jpg', 
                        NOTICEIP = '192.168.10.151'
                  WHERE NOTICECODE = 2;
-- �������� �� ����
DELETE HOTEL_NOTICE WHERE NOTICECODE = 1;

-- �������� �� ����
SELECT * FROM HOTEL_NOTICE WHERE NOTICECODE = 1;

-- �������� �� ����
SELECT COUNT(*) FROM HOTEL_NOTICE;

-- �������� ��ȸ�� �ø���
UPDATE HOTEL_NOTICE SET NOTICEVIEW = NOTICEVIEW + 1
    WHERE NOTICECODE = 1;
    
COMMIT;



