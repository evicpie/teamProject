--------------------------------------------------------------------------------------------------------------
-- Query about Hotel Search
--------------------------------------------------------------------------------------------------------------
-- ȣ�ں� �ܿ� ����
SELECT H.*, 
    (SELECT COUNT(*) FROM HOTEL_REVIEW WHERE H.HOTELCODE=HOTEL_REVIEW.HOTELCODE) REVIEWCNT
    FROM HOTEL H;


-- ������ ȣ�� �˻�
SELECT * FROM
    (SELECT ROWNUM RN, A.* FROM
        (SELECT * FROM HOTEL WHERE HOTELADDRESS LIKE '%'||'����'||'%')A)
    WHERE RN BETWEEN 1 AND 2;

-- �̸����� ȣ�� �˻�
SELECT * FROM
    (SELECT ROWNUM RN, A.* FROM
    (SELECT * FROM HOTEL WHERE HOTELADDRESS LIKE '%'||'����'||'%'
        AND HOTELNAME LIKE '%' || '�ñ״Ͽ�' || '%')A)
    WHERE RN BETWEEN 1 AND 2;
    
-- �ı� ���� �� ȣ�� ����
SELECT * FROM
    (SELECT ROWNUM RN, A.* FROM
    (SELECT H.*, 
    (SELECT COUNT(*) FROM HOTEL_REVIEW WHERE H.HOTELCODE=HOTEL_REVIEW.HOTELCODE) REVIEWCNT
    FROM HOTEL H ORDER BY REVIEWCNT DESC)A)
    WHERE RN BETWEEN 1 AND 2;

-- ���� ���� �� ȣ�� ����
SELECT * FROM
    (SELECT ROWNUM RN, A.* FROM
    (SELECT * FROM HOTEL ORDER BY HOTELSCORE DESC)A)
    WHERE RN BETWEEN 1 AND 2;

-- �ɼǺ� ȣ�� ����
SELECT * FROM
    (SELECT ROWNUM RN, A.* FROM
    (SELECT * FROM HOTEL 
      WHERE HOTELBATHTUB = 0
        AND HOTELBREAKFAST = 0
        AND HOTELFITNESS = 0
        AND HOTELLOCKER = 0
        AND HOTELNON_SMOKING = 0
        AND HOTELNOTEBOOK = 0
        AND HOTELSAUNA = 0
        AND HOTELSHUTTLE = 0
        AND HOTELPOOL = 0
        AND HOTELWI_FI = 0
        ORDER BY HOTELCODE)A)
    WHERE RN BETWEEN 1 AND 2;
    
SELECT H.*, 
    (SELECT COUNT(*) FROM HOTEL_REVIEW WHERE H.HOTELCODE=HOTEL_REVIEW.HOTELCODE) REVIEWCNT
    FROM HOTEL H 
        WHERE HOTELNAME LIKE '%' || '�ñ�' || '%' 
          AND HOTELADDRESS LIKE '%'||'����'||'%'
          AND 
    
    ORDER BY REVIEWCNT DESC;