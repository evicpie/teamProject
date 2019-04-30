-----------------------------------------------------------------------------------------------------------------------
-- review dummy data
-----------------------------------------------------------------------------------------------------------------------
select * from hotel_review;

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 7922, 'AAA', 'WOWOWOW!!', '���и� �󸶳� ǰ���� ��Ȳ�Ͽ���, �𷡻��� �ƴϴ�. ���̴�.����, ��ġ�� �ӿ��� ������ �׸��ڴ� ���´�. �Ҹ���.�̰��� ���� �츮�� �ָ�, ����. �ΰ��� ���̴� ���� �� �縷�̴�. ���� �ӿ��� ��ġ�� ���̴�.', 'modFile.jpg', SYSDATE, '204.24.31.678', 3.2);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'aaaaa', 7923, 'AAA', 'good for birthday party', '����� ������ ������ ������ �縷�̴�. �ż��� �λ��� ���ϱ� ���̴�. ǳ���ϰ� ������ �ż��� Į�̴�. ���� �׵��� ���Ͽ� �̻��� �׵��� �߰�, ������ ���ڴ� ���� ���̴�. �۰� ������ û�ῡ���� �ƴϴ�. ��¦�̴� û���� �׵��� �ִ� ���� ������ �ൿ�ϴ�. �׵鿡�� �׵��� �Ҿ� ������ ���ٳ���, ���� �ΰ��� �ƴϴ�.', 'modFile.jpg', SYSDATE, '204.24.31.678', 3.2);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 7924, 'AAA', 'good for birthday party', '������ �̻��� �ǰ� û���� �׵鿡�� �� �׵��� ���. �Ƿ��Ͽ�, �׵��� ��⸸ �Ǵ� ��°� �� ���Ͽ���. ���� �ҷ� �̼��� �ǿ� �Ǵ� ����. �̻��� ���� ���� ���� ���̴�. ���� ��ڸ�, Ȳ�ݽô��� ���Ÿ� â���� ������ �Ǵ�.', 'modFile.jpg', SYSDATE, '204.24.31.678', 3.2);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'aaaaa', 7925, 'AAA', 'good for birthday party', '���� �̻� ������ �̰��� öȯ�Ͽ��°�? �̻��� â���� ��¦�̴� ���� �ε��ϰڴٴ� �ӿ� �ż��� ���̴�. ���� ��⿡�Լ� ���� ����� ����� ���� Ÿ������ ���̴�. ��°� ���̴� �̰��� ������ �ǰ� ���� ������ �ִ� û���� ���Ͽ���. �°� ���� �Ҿ� ������, ������ Ŀ�ٶ� ��õ���� ���̴�. ���̸�, �ִ� ���̴�.����, ������ ���� ���� �̻��� �׵��� Į�̴�. �ϴ� �ǿ� ���� û�� ������ ����, �̻��� �縷�̴�.', 'modFile.jpg', SYSDATE, '204.24.31.678', 3.2);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'ggg', 7926, 'AAA', 'good for birthday party', '�ʴ� Ŀ�ٶ� ������ ������ ���� ���� �μ��� �󸶳� ���̴�. �׵��� �α� û���� ������ ������ �ϴ� ���� Ǯ�� Į�̴�. �׿� �ٸ� �ָ�, û���� ���� ����, ���Ͽ���. ������ ���� ������ ��ȭ������ �Ҿ� �ӿ��� ������, �츮�� û���� ���̴�. ����� ���� õ�ڸ�ȫ�� �̰��̾߸��� ���ٶ��̴�.', 'modFile.jpg', SYSDATE, '204.24.31.678', 3.2);

INSERT INTO HOTEL_REVIEW (REVIEWCODE, GUESTID, RESERVECODE, HOTELCODE, REVIEWTITLE, REVIEWCONTENT, REVIEWFILE, REVIEWDATE, REVIEWIP, REVIEWSCORE) 
VALUES (HOTEL_REVIEW_SEQ.NEXTVAL, 'aaaaa', 7927, 'AAA', 'good for birthday party', '������ ���� Ÿ������ ���� ��ڸ�, ���̴�. �ʹ� �õ�� â���� ���� ���̴�. �� ���� �׵��� ���� ������ ���̴�. �ұ��̶� �ΰ��� �츮 �߰ſ�����, ������ �׿� �ǰ� ���縦 ���̴�. ��ڸ�, ���� �λ��� ����� �ε��ϰڴٴ� ã�� ���Ͽ���.', 'modFile.jpg', SYSDATE, '204.24.31.678', 3.2);

select * from review_comment;
desc review_comment;
select * from review_comment where reviewCode=1;
update review_comment set guestId='ggg' where guestid is null; 
SELECT * FROM (SELECT ROWNUM AS RN, ALLIAS.* FROM (SELECT CMT.*, GUESTNAME FROM REVIEW_COMMENT CMT, GUEST WHERE CMT.GUESTID=GUEST.GUESTID AND REVIEWCODE=7 ORDER BY REVIEWCMTGROUP DESC, REVIEWCMTSTEP ASC) ALLIAS) WHERE RN BETWEEN 1 AND 3;

delete from hotel_review;