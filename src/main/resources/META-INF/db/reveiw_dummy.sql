-----------------------------------------------------------------------------------------------------------------------
-- review dummy data
-----------------------------------------------------------------------------------------------------------------------
select * from hotel_review;

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 7922, 'AAA', 'WOWOWOW!!', '부패를 얼마나 품었기 방황하여도, 모래뿐일 아니다. 것이다.보라, 가치를 속에서 대중을 그림자는 끓는다. 소리다.이것은 많이 우리의 주며, 보라. 인간이 보이는 같지 뼈 사막이다. 곳이 속에서 가치를 것이다.', 'modFile.jpg', SYSDATE, '204.24.31.678', 3.2);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'aaaaa', 7923, 'AAA', 'good for birthday party', '사람은 봄날의 무한한 따뜻한 사막이다. 거선의 인생을 구하기 것이다. 풍부하게 열락의 거선의 칼이다. 생의 그들의 위하여 이상이 그들은 뜨고, 예수는 공자는 끓는 것이다. 작고 대중을 청춘에서만 아니다. 반짝이는 청춘의 그들의 있는 것은 미인을 약동하다. 그들에게 그들을 불어 설레는 속잎나고, 싸인 인간은 아니다.', 'modFile.jpg', SYSDATE, '204.24.31.678', 3.2);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 7924, 'AAA', 'good for birthday party', '무엇을 이상의 피가 청춘의 그들에게 살 그들은 운다. 되려니와, 그들은 듣기만 되는 사는가 뭇 위하여서. 없는 불러 이성은 피에 되는 보라. 이상을 너의 구할 끓는 뿐이다. 별과 기쁘며, 황금시대의 열매를 창공에 따뜻한 피다.', 'modFile.jpg', SYSDATE, '204.24.31.678', 3.2);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'aaaaa', 7925, 'AAA', 'good for birthday party', '많이 이상 얼음이 이것을 철환하였는가? 이상의 창공에 반짝이는 가진 인도하겠다는 속에 거선의 것이다. 것은 노년에게서 같이 사람은 목숨을 가는 타오르고 것이다. 사는가 보이는 이것은 원질이 피가 별과 스며들어 있는 청춘을 위하여서. 온갖 능히 불어 같으며, 웅대한 커다란 만천하의 것이다. 바이며, 있는 것이다.보라, 설레는 새가 대한 이상의 그들은 칼이다. 하는 피에 끓는 청춘 무엇을 때에, 이상은 사막이다.', 'modFile.jpg', SYSDATE, '204.24.31.678', 3.2);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 7926, 'AAA', 'good for birthday party', '않는 커다란 원질이 얼음에 가진 생의 두손을 얼마나 것이다. 그들의 두기 청춘이 고행을 지혜는 하는 전인 풀이 칼이다. 그와 꾸며 주며, 청춘의 같이 돋고, 위하여서. 봄날의 길을 얼음과 평화스러운 불어 속에서 없으면, 우리는 청춘의 말이다. 사랑의 생의 천자만홍이 이것이야말로 봄바람이다.', 'modFile.jpg', SYSDATE, '204.24.31.678', 3.2);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'aaaaa', 7927, 'AAA', 'good for birthday party', '무엇을 같지 타오르고 끓는 기쁘며, 것이다. 귀는 시들어 창공에 것은 것이다. 꽃 놀이 그들의 못할 따뜻한 것이다. 소금이라 인간은 우리 뜨거운지라, 과실이 그와 피가 역사를 것이다. 기쁘며, 길을 인생을 충분히 인도하겠다는 찾아 위하여서.', 'modFile.jpg', SYSDATE, '204.24.31.678', 3.2);

select * from review_comment;
desc review_comment;
select * from review_comment where reviewCode=1;
update review_comment set guestId='ggg' where guestid is null; 
SELECT * FROM (SELECT ROWNUM AS RN, ALLIAS.* FROM (SELECT CMT.*, GUESTNAME FROM REVIEW_COMMENT CMT, GUEST WHERE CMT.GUESTID=GUEST.GUESTID AND REVIEWCODE=7 ORDER BY REVIEWCMTGROUP DESC, REVIEWCMTSTEP ASC) ALLIAS) WHERE RN BETWEEN 1 AND 3;

delete from hotel_review;