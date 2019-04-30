--------------------------------------------------------------------------------------------------------------
-- 회원 리스트
--------------------------------------------------------------------------------------------------------------
-- 아이디로 검색
SELECT * FROM 
    (SELECT ROWNUM RN, A.* FROM
        (SELECT * FROM GUEST WHERE GUESTID LIKE '%' || 'g' || '%' ORDER BY GUESTID)A)
    WHERE RN BETWEEN 1 AND 2;
    
-- 이름으로 검색
SELECT * FROM 
    (SELECT ROWNUM RN, A.* FROM
        (SELECT * FROM GUEST WHERE GUESTNAME LIKE '%' || 'g' || '%' ORDER BY GUESTID)A)
    WHERE RN BETWEEN 1 AND 2;

-- 전화번호로 검색
SELECT * FROM
    (SELECT ROWNUM RN, A.* FROM
        (SELECT * FROM GUEST WHERE GUESTPHONE LIKE '%' || '010' || '%' ORDER BY GUESTID)A)
    WHERE RN BETWEEN 1 AND 2;
    
-- 등급으로 검색
SELECT * FROM
    (SELECT ROWNUM RN, A.* FROM
        (SELECT * FROM GUEST WHERE GUESTSTATUS LIKE '%' || '2' || '%' ORDER BY GUESTID)A)
    WHERE RN BETWEEN 1 AND 2;
    
-- 탈퇴하지 않은 회원 총 수
SELECT COUNT(*) FROM GUEST WHERE GUESTSTATUS!=0;
    
--------------------------------------------------------------------------------------------------------------
-- 회원 등급 조정(0: 탈퇴, 1:일반, 2:VIP, 3:블랙리스트)
--------------------------------------------------------------------------------------------------------------
-- 블랙리스트로 조정
UPDATE GUEST SET GUESTSTATUS = 3
            WHERE GUESTID = 'ggg'; 
            
-- VIP로 조정
UPDATE GUEST SET GUESTSTATUS = 2
            WHERE GUESTID = 'ggg'; 

--------------------------------------------------------------------------------------------------------------
-- 포인트
--------------------------------------------------------------------------------------------------------------
-- 포인트 부여
UPDATE GUEST SET GUESTPOINT = GUESTPOINT + 100
    WHERE GUESTID = 'ggg';
    
-- 내 포인트
SELECT GUESTPOINT FROM GUEST WHERE GUESTID = 'ggg';

--------------------------------------------------------------------------------------------------------------
-- 공지사항
--------------------------------------------------------------------------------------------------------------
-- 공지사항 글 목록
-- 작성자ID로 검색
SELECT * FROM
    (SELECT A.*, ROWNUM RN FROM
    (SELECT * FROM HOTEL_NOTICE WHERE ADMINID LIKE '%' || 'a' || '%' ORDER BY NOTICECODE DESC)A)
    WHERE RN BETWEEN 1 AND 2;
-- 제목으로 검색
SELECT * FROM
    (SELECT A.*, ROWNUM RN FROM
    (SELECT * FROM HOTEL_NOTICE WHERE NOTICETITLE LIKE '%' || '제목' || '%' ORDER BY NOTICECODE DESC)A)
    WHERE RN BETWEEN 1 AND 2;
-- 본문으로 검색
SELECT * FROM
    (SELECT A.*, ROWNUM RN FROM
    (SELECT * FROM HOTEL_NOTICE WHERE NOTICECONTENT LIKE '%' || '본문' || '%' ORDER BY NOTICECODE DESC)A)
    WHERE RN BETWEEN 1 AND 2;
-- 제목+본문으로 검색
SELECT * FROM
    (SELECT A.*, ROWNUM RN FROM
    (SELECT * FROM HOTEL_NOTICE WHERE NOTICETITLE LIKE '%' || '제목' || '%' OR NOTICECONTENT LIKE '%' || '제목' || '%' ORDER BY NOTICECODE DESC)A)
    WHERE RN BETWEEN 1 AND 2;

-- 공지사항에 글 작성
INSERT INTO HOTEL_NOTICE (NOTICECODE, ADMINID, NOTICETITLE, NOTICECONTENT, NOTICEFILE, NOTICEIP) 
VALUES (HOTEL_NOTICE_SEQ.NEXTVAL, 'aaa', '공지사항 글 제목', '공지사항 글 본문', 'noimg.jpg', '192.168.10.151');

-- 공지사항 글 수정
UPDATE HOTEL_NOTICE SET ADMINID = 'aaa', 
                        NOTICETITLE = '수정 후 글 제목', 
                        NOTICECONTENT = '수정 후 글 본문', 
                        NOTICEFILE = 'noimg.jpg', 
                        NOTICEIP = '192.168.10.151'
                  WHERE NOTICECODE = 2;
-- 공지사항 글 삭제
DELETE HOTEL_NOTICE WHERE NOTICECODE = 1;

-- 공지사항 글 보기
SELECT * FROM HOTEL_NOTICE WHERE NOTICECODE = 1;

-- 공지사항 총 갯수
SELECT COUNT(*) FROM HOTEL_NOTICE;

-- 공지사항 조회수 올리기
UPDATE HOTEL_NOTICE SET NOTICEVIEW = NOTICEVIEW + 1
    WHERE NOTICECODE = 1;
    
COMMIT;



