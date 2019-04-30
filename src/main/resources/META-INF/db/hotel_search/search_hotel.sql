--------------------------------------------------------------------------------------------------------------
-- Query about Hotel Search
--------------------------------------------------------------------------------------------------------------
-- 호텔별 잔여 객실
SELECT H.*, 
    (SELECT COUNT(*) FROM HOTEL_REVIEW WHERE H.HOTELCODE=HOTEL_REVIEW.HOTELCODE) REVIEWCNT
    FROM HOTEL H;


-- 지역별 호텔 검색
SELECT * FROM
    (SELECT ROWNUM RN, A.* FROM
        (SELECT * FROM HOTEL WHERE HOTELADDRESS LIKE '%'||'서울'||'%')A)
    WHERE RN BETWEEN 1 AND 2;

-- 이름으로 호텔 검색
SELECT * FROM
    (SELECT ROWNUM RN, A.* FROM
    (SELECT * FROM HOTEL WHERE HOTELADDRESS LIKE '%'||'서울'||'%'
        AND HOTELNAME LIKE '%' || '시그니엘' || '%')A)
    WHERE RN BETWEEN 1 AND 2;
    
-- 후기 많은 순 호텔 정렬
SELECT * FROM
    (SELECT ROWNUM RN, A.* FROM
    (SELECT H.*, 
    (SELECT COUNT(*) FROM HOTEL_REVIEW WHERE H.HOTELCODE=HOTEL_REVIEW.HOTELCODE) REVIEWCNT
    FROM HOTEL H ORDER BY REVIEWCNT DESC)A)
    WHERE RN BETWEEN 1 AND 2;

-- 평점 높은 순 호텔 정렬
SELECT * FROM
    (SELECT ROWNUM RN, A.* FROM
    (SELECT * FROM HOTEL ORDER BY HOTELSCORE DESC)A)
    WHERE RN BETWEEN 1 AND 2;

-- 옵션별 호텔 정렬
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
        WHERE HOTELNAME LIKE '%' || '시그' || '%' 
          AND HOTELADDRESS LIKE '%'||'서울'||'%'
          AND 
    
    ORDER BY REVIEWCNT DESC;