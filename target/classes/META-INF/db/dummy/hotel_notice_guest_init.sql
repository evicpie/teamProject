-- ȸ�� ���� ������

DECLARE
C NUMBER := 1;

BEGIN
LOOP 
    EXIT WHEN C > 124;
 insert into guest values
    ('yhy' || C , '123', '�����', '1234@' || C || '36.com', '010-12' || C || '-5678', '94/03/12', 1, 0, '45,');
    C := C + 1;
END LOOP;
END;
COMMIT;
SELECT * FROM GUEST;
SELECT * FROM HOTEL_NOTICE;
SELECT * FROM EVENT;

-- �������� ���̵�����
DECLARE
C NUMBER := 1;

BEGIN
LOOP 
    EXIT WHEN C > 124;
 INSERT INTO HOTEL_NOTICE VALUES
    (HOTEL_NOTICE_SEQ.NEXTVAL , 'holiday_seoul', '�������� ���� ' || C, '�������� ����', '', '19/04/23', '192.168.2.151', 0);
    C := C + 1;
END LOOP;
END;
drop table hotel_notice;
select * from hotel_notice;
COMMIT;
select * from admin;