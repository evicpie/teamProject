--���̵������Դϴ� CTRL+A �����ð� F9�����ּ���

--���� ������ �Է�

INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_seoul', 'hotel2019', '����');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_incheon', 'hotel2019', '��õ');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_gyeonggi', 'hotel2019', '��⵵');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_gangwon', 'hotel2019', '������');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_chungcheongn', 'hotel2019', '��û�ϵ�');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_chungcheongs', 'hotel2019', '��û����');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_daejeon', 'hotel2019', '����');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_jeollan', 'hotel2019', '����ϵ�');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_jeollas', 'hotel2019', '���󳲵�');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_gwangju', 'hotel2019', '����');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_gyeongsangn', 'hotel2019', '���ϵ�');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_gyeongsangs', 'hotel2019', '��󳲵�');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_daegu', 'hotel2019', '�뱸');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_ulsan', 'hotel2019', '���');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_busan', 'hotel2019', '�λ�');
INSERT INTO ADMIN  (ADMINID, ADMINPW, ADMINSECTION) VALUES ('holiday_jeju', 'hotel2019', '����');

--���� ȣ�� ���� ���̵����� �Է�
--�������� holiday_seoul
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_seoul', 'holiday_seoul', 'HOLIDAY ȣ�� ���� ����', '����Ư���� ���ı� �ø��ȷ� 300 �Ե�����Ÿ�� 76',  '02-3213-1000', 'holiday_seoul_01', 'holiday_seoul_02', 'holiday_seoul_03',
    '�� 12�� �̸��� ��̴� 79���� ��ġ�� �̱���ťƼ�� ������� ��� �� ���� ������ �� �����ϴ�. 

�� 15�� ������ ��̴� ��Ʈ�Ͻ� �� �� ��쳪 �ü��� �̿��Ͻ� �� �����ϴ�. 

�� 11�� ������ ��̰� �ǳ� �������� �̿��Ϸ��� �θ� �Ǵ� ���� ��ȣ�ڸ� �����ؾ��մϴ�. 

��Ʈ�Ͻ� ���ʹ� �ſ� ������ �����ϸ��� �޹��Դϴ�.

���� ���� �ð��� Shah Seoul�� �̸� �˷��ֽʽÿ�. ���� �� ���� ��û���� �����ϰų� ���� Ȯ�μ��� ����� ���� ����ó�� ���� �����ϼŵ� �˴ϴ�.', 
'ȣ�� �� ���������� �Ե�����Ÿ�� 76~101���� ��ġ�ϰ�, Ź Ʈ�� ������ ������ �ڶ��ϴ� ������ �����ϰ� �ֽ��ϴ�. 

�� 5���� ȣ�ڿ��� ������ ��, �̽��� ��Ÿ �������, �ǳ� ������, ��Ʈ�Ͻ� ����, ��ȸ �ü��� �ֽ��ϴ�. 

ȣ���� ����ö 2ȣ���� 8ȣ���� ������ ��ǿ��� ���ϵ��� ���� �ٷ� ����Ǿ� �ֽ��ϴ�.

��� ������ ī�� �ٴ�, �̴Ϲ�, �����, Ŀ�� �ӽ�, ���� �ݰ�, ��� TV�� ���߰� �ֽ��ϴ�. 

�ǳ� ��ǿ��� ������̾�, ���� ���鵵��, ������, ���� �񵥰� ��ġ�� ���Ⱑ ����Ǿ� �ֽ��ϴ�. 

����� ���Ĵ� 86���� ��ġ�ϰ�, ���Ŀ� ��쳪 �ü��� ���߰� �ֽ��ϴ�. 

���� �������� ���������� ���Ϲ� ����, �߷���ŷ(�븮 ����), ���þ��� ���񽺸� �����մϴ�. 

�����Ŭ����, ��Ź, ���� ���� �ٸ���, �ٸ��� ���񽺴� �߰� ������� �̿� �����մϴ�.', 5.0);

--��õ ���� holiday_incheon
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_incheon', 'holiday_incheon', 'HOLIDAY ȣ�� ��õ ����', '��õ �߱� �����ؾȳ���321���� 186',  '1833-8855', 'holiday_incheon_01', 'holiday_incheon_02', 'holiday_incheon_03',
    '�ǳ� ������� ����� �������� 2019.06.09~2019.06.15 ���� �ӽ÷� ���� �ݽ��ϴ�.
    
��� �������� üũ�� �� ������ ������ ��ȿ�� �ź����� �ſ�ī�带 �����ϼž� �մϴ�. 

��� ���� ��û ������ üũ�� �� ������ ��쿡 ���� �����Ǹ�, �߰� ����� �ΰ��� ���� ������ �ȳ��帳�ϴ�.

��쳪�� 2019�� 4�� 01�� (��)~2019�� 6�� 30�� (��)�� ��� �ߴ��մϴ�',
'ȣ�� ���� ���� ���� ��Ǵ� �ǳ� ������� �߿� �������� ����Ͽ� ��Ʈ�Ͻ� ���Ϳ� ��� �����͸� ���߰� �ֽ��ϴ�. 

���� Wi-Fi ���񽺿� ���� ���� �������� �̿��Ͻ� �� �ֽ��ϴ�.

�� ���ǿ��� ��� TV�� ���� �̴Ϲٰ� ���õǾ� �ֽ��ϴ�. 

�ǳ� ��ǿ��� ������ ���� �񵥰� �Ϻ�� ȭ����� ������, ������, ��� ����, ���� ���鵵���� ������̾ �����˴ϴ�.

ȣ�� ������ ��Ʈ, �籸, ������ �÷��̽����̼� �� �پ��� ������ ��� ���ʽÿ�.',5.0);

--��� ���� holiday_gyeonggi

INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_gyeonggi', 'holiday_gyeonggi', 'HOLIDAY ȣ�� ��� ����', '��⵵ ���� �ϻ굿�� �±ط� 20',  '031-927-7700', 'holiday_gyeonggi_01', 'holiday_gyeonggi_02', 'holiday_gyeonggi_03', 
    '��� �������� üũ�� �� ������ ������ ��ȿ�� �ź����� �ſ�ī�带 �����ϼž� �մϴ�. 
��� ���� ��û ������ üũ�� �� ������ ��쿡 ���� �����Ǹ�, �߰� ����� �ΰ��� ���� ������ �ȳ��帳�ϴ�.
    
�̸� üũ��/���� üũ�ƿ� �� ������ ����� �ΰ��˴ϴ�. 

�̸� üũ��: 
06:00 ����: ù 1�� ����� 100% û�� 
09:00 ����: ù 1�� ����� 50% û�� 
12:00 ����: ù 1�� ����� 30% û�� 

���� üũ�ƿ�: 
12:00 ����: ù 1�� ����� 30% û�� 
15:00 ����: ù 1�� ����� 50% û�� 
18:00 ����: ù 1�� ����� 100% û��', 
'�߿� ������� ��쳪 �ü��� �ڶ��ϴ� ȣ�� ���� ���� Wi-Fi�� �Ϻ�� ����� ����� ������ �����մϴ�. 3���� ��������� 24�ð� �뼭�񽺵� �̿��Ͻ� �� �ֽ��ϴ�. ��õ ������ ������ ȣ�� �ٷ� �տ� �����մϴ�.

ȣ���� Ų�ؽ� ���������� ���Ϳ� ������ 10��, ����ö �ֿ����� ��ȭ������ ������ 20�� �Ÿ��� �ֽ��ϴ�. ���� ���������� �� 15km ������ �ֽ��ϴ�.

ī�� �ٴ����� ������ ������ ������, �޽� ����, ���̺� ��� TV�� ��/Ŀ�� ����Ŀ�� ���߰� �ֽ��ϴ�. �ǳ� ��ǿ��� �񵥿� ���� ���鵵���� �Ϻ�Ǿ� �ֽ��ϴ�.

��Ʈ�Ͻ� ���Ϳ��� ��� �ϰų� 24�ð� �����ǿ��� ��Ź/�ٸ��� ���񽺸� ��û�Ͻ� �� �ֽ��ϴ�. ����Ͻ� ���͵� �̿��� �����մϴ�.

�� ȣ�ڿ� ��翡 �ڸ��� 3���� ����������� ��Ż���� �丮, ������ �丮�� �߱� ���� �丮 �� �پ��� �丮�� �����ñ� �ٶ��ϴ�.', 5.0);

--���� ���� holiday_gangwon
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_gangwon', 'holiday_gangwon', 'HOLIDAY ȣ�� ���� ����', '������ ���ʽ� ���ǻ�� 998',  '02-6670-7000', 'holiday_gangwon_01', 'holiday_gangwon_02', 'holiday_gangwon_03', 
    '�θ� ���� 12�� ���� ��� ����, 2�� 1�� �����̸�, �߰� �ο��� ���� ��� 1�δ� 20,000(VAT ����)�� �߰��˴ϴ�.
    ��� �������� üũ�� �� ������ ������ ��ȿ�� �ź����� �ſ�ī�带 �����ϼž� �մϴ�. 
��� ���� ��û ������ üũ�� �� ������ ��쿡 ���� �����Ǹ�, �߰� ����� �ΰ��� ���� ������ �ȳ��帳�ϴ�.

�̸� üũ��/���� üũ�ƿ� �� ������ ����� �ΰ��˴ϴ�. 

�̸� üũ��: 
06:00 ����: ù 1�� ����� 100% û�� 
09:00 ����: ù 1�� ����� 50% û�� 
12:00 ����: ù 1�� ����� 30% û�� 

���� üũ�ƿ�: 
12:00 ����: ù 1�� ����� 30% û�� 
15:00 ����: ù 1�� ����� 50% û�� 
18:00 ����: ù 1�� ����� 100% û��', 
    '�� ȣ�� ���� ���δ� ���ǻ� �������� �Ա����� ���� �� 5�� �Ÿ��� �ֽ��ϴ�. 
    �׸��� û��ȣ, �����ؼ�����, ������ �� ������ �ֿ� �������� ���� �� 25�� �Ÿ��� �ֽ��ϴ�. 
    ȣ�� ������ PC, ���ձ� ���� ����� �̿��Ͻ� �� �ִ� ����Ͻ� ���Ͱ� ������ 1���� �Ƿ� ���嵵 �־ ���ϰ� ������ �Ͻ� �� �ֽ��ϴ�.
    ����Ʈ ����ũ������ ȯ�� �� ��Ź ���񽺸� �����ϰ� �ֽ��ϴ�. 
    ����ϰ� �ٸ��� ���ǿ����� �̴Ϲ�, ������, ������ ���� ������ ��ǿ��� ��� ����, ��ǿ�ǰ, ������̾� ���� ����Ǿ� �ֽ��ϴ�. 
    �Ӹ� �ƴ϶�, �Ϻ� ���ǿ����� �Ƹ��ٿ� ���ǻ� ������ �����Ͻ� �� �ֽ��ϴ�.
    �� 3���� ��������� ������ 1�� ��������� ������ �ѽ���, 2�� ���������� �ѽ� �� ������ũ��, 9�� �ֺ�ε忡���� ���� �� �Ľ�Ÿ �޴��� �����̰� �ֽ��ϴ�.
    ����, ������ ����� �����Ͻø� ���� ����������� ���� ���並 ��� �� �ֽ��ϴ�. ', 5.0);

--��� ���� holiday_chungcheongn
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_chungcheongn', 'holiday_chungcheongn', 'HOLIDAY ȣ�� ��� ����', '��û�ϵ� û�ֽ� û���� ������ ��������� 78',  '1577-1564', 'holiday_chungcheongn_01', 'holiday_chungcheongn_02', 'holiday_chungcheongn_03', 
    '��� �������� üũ�� �� ������ ������ ��ȿ�� �ź����� �ſ�ī�带 �����ϼž� �մϴ�. 
��� ���� ��û ������ üũ�� �� ������ ��쿡 ���� �����Ǹ�, �߰� ����� �ΰ��� ���� ������ �ȳ��帳�ϴ�.

�̸� üũ��/���� üũ�ƿ� �� ������ ����� �ΰ��˴ϴ�. 

�̸� üũ��: 
06:00 ����: ù 1�� ����� 100% û�� 
09:00 ����: ù 1�� ����� 50% û�� 
12:00 ����: ù 1�� ����� 30% û�� 

���� üũ�ƿ�: 
12:00 ����: ù 1�� ����� 30% û�� 
15:00 ����: ù 1�� ����� 50% û�� 
18:00 ����: ù 1�� ����� 100% û��', 
'ȣ�� ���� ���� ���� ��Ǵ� �ǳ� ������� �߿� �������� ����Ͽ� ��Ʈ�Ͻ� ���Ϳ� ��� �����͸� ���߰� �ֽ��ϴ�. 

���� Wi-Fi ���񽺿� ���� ���� �������� �̿��Ͻ� �� �ֽ��ϴ�.

�� ���ǿ��� ��� TV�� ���� �̴Ϲٰ� ���õǾ� �ֽ��ϴ�. 

�ǳ� ��ǿ��� ������ ���� �񵥰� �Ϻ�� ȭ����� ������, ������, ��� ����, ���� ���鵵���� ������̾ �����˴ϴ�.

ȣ�� ������ ��Ʈ, �籸, ������ �÷��̽����̼� �� �پ��� ������ ��� ���ʽÿ�.', 5.0);

--�泲 ���� holiday_chungcheongs
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_chungcheongs', 'holiday_chungcheongs', 'HOLIDAY ȣ�� �泲 ����', '��û���� �ƻ�� ����� �����õ�� 124-23',  '1577-1565', 'holiday_chungcheongs_01', 'holiday_chungcheongs_02', 'holiday_chungcheongs_03',
    '��� �������� üũ�� �� ������ ������ ��ȿ�� �ź����� �ſ�ī�带 �����ϼž� �մϴ�. 
��� ���� ��û ������ üũ�� �� ������ ��쿡 ���� �����Ǹ�, �߰� ����� �ΰ��� ���� ������ �ȳ��帳�ϴ�.

�̸� üũ��/���� üũ�ƿ� �� ������ ����� �ΰ��˴ϴ�. 

�̸� üũ��: 
06:00 ����: ù 1�� ����� 100% û�� 
09:00 ����: ù 1�� ����� 50% û�� 
12:00 ����: ù 1�� ����� 30% û�� 

���� üũ�ƿ�: 
12:00 ����: ù 1�� ����� 30% û�� 
15:00 ����: ù 1�� ����� 50% û�� 
18:00 ����: ù 1�� ����� 100% û��', 
'ȣ�� ���� ���� ���� ��Ǵ� �ǳ� ������� �߿� �������� ����Ͽ� ��Ʈ�Ͻ� ���Ϳ� ��� �����͸� ���߰� �ֽ��ϴ�. 

���� Wi-Fi ���񽺿� ���� ���� �������� �̿��Ͻ� �� �ֽ��ϴ�.

�� ���ǿ��� ��� TV�� ���� �̴Ϲٰ� ���õǾ� �ֽ��ϴ�. 

�ǳ� ��ǿ��� ������ ���� �񵥰� �Ϻ�� ȭ����� ������, ������, ��� ����, ���� ���鵵���� ������̾ �����˴ϴ�.

ȣ�� ������ ��Ʈ, �籸, ������ �÷��̽����̼� �� �پ��� ������ ��� ���ʽÿ�.', 5.0);
    
--���� ���� holiday_daejeon
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_daejeon', 'holiday_daejeon', 'HOLIDAY ȣ�� ���� ����', '���������� ������ ��������123���� 33',  '1577-1566', 'holiday_daejeon_01', 'holiday_daejeon_02', 'holiday_daejeon_03',
    '��� �������� üũ�� �� ������ ������ ��ȿ�� �ź����� �ſ�ī�带 �����ϼž� �մϴ�. 
��� ���� ��û ������ üũ�� �� ������ ��쿡 ���� �����Ǹ�, �߰� ����� �ΰ��� ���� ������ �ȳ��帳�ϴ�.

�̸� üũ��/���� üũ�ƿ� �� ������ ����� �ΰ��˴ϴ�. 

�̸� üũ��: 
06:00 ����: ù 1�� ����� 100% û�� 
09:00 ����: ù 1�� ����� 50% û�� 
12:00 ����: ù 1�� ����� 30% û�� 

���� üũ�ƿ�: 
12:00 ����: ù 1�� ����� 30% û�� 
15:00 ����: ù 1�� ����� 50% û�� 
18:00 ����: ù 1�� ����� 100% û��', 
'ȣ�� ���� ���� ���� ��Ǵ� �ǳ� ������� �߿� �������� ����Ͽ� ��Ʈ�Ͻ� ���Ϳ� ��� �����͸� ���߰� �ֽ��ϴ�. 

���� Wi-Fi ���񽺿� ���� ���� �������� �̿��Ͻ� �� �ֽ��ϴ�.

�� ���ǿ��� ��� TV�� ���� �̴Ϲٰ� ���õǾ� �ֽ��ϴ�. 

�ǳ� ��ǿ��� ������ ���� �񵥰� �Ϻ�� ȭ����� ������, ������, ��� ����, ���� ���鵵���� ������̾ �����˴ϴ�.

ȣ�� ������ ��Ʈ, �籸, ������ �÷��̽����̼� �� �پ��� ������ ��� ���ʽÿ�.', 5.0);
    
--���� ���� holiday_jeollan
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_jeollan', 'holiday_jeollan', 'HOLIDAY ȣ�� ���� ����', '���ֽ� ���ְ���5�� 94',  '1577-1567', 'holiday_jeollan_01', 'holiday_jeollan_02', 'holiday_jeollan_03',
    '��� �������� üũ�� �� ������ ������ ��ȿ�� �ź����� �ſ�ī�带 �����ϼž� �մϴ�. 
��� ���� ��û ������ üũ�� �� ������ ��쿡 ���� �����Ǹ�, �߰� ����� �ΰ��� ���� ������ �ȳ��帳�ϴ�.

�̸� üũ��/���� üũ�ƿ� �� ������ ����� �ΰ��˴ϴ�. 

�̸� üũ��: 
06:00 ����: ù 1�� ����� 100% û�� 
09:00 ����: ù 1�� ����� 50% û�� 
12:00 ����: ù 1�� ����� 30% û�� 

���� üũ�ƿ�: 
12:00 ����: ù 1�� ����� 30% û�� 
15:00 ����: ù 1�� ����� 50% û�� 
18:00 ����: ù 1�� ����� 100% û��', 
'ȣ�� ���� ���� ���� ��Ǵ� �ǳ� ������� �߿� �������� ����Ͽ� ��Ʈ�Ͻ� ���Ϳ� ��� �����͸� ���߰� �ֽ��ϴ�. 

���� Wi-Fi ���񽺿� ���� ���� �������� �̿��Ͻ� �� �ֽ��ϴ�.

�� ���ǿ��� ��� TV�� ���� �̴Ϲٰ� ���õǾ� �ֽ��ϴ�. 

�ǳ� ��ǿ��� ������ ���� �񵥰� �Ϻ�� ȭ����� ������, ������, ��� ����, ���� ���鵵���� ������̾ �����˴ϴ�.

ȣ�� ������ ��Ʈ, �籸, ������ �÷��̽����̼� �� �پ��� ������ ��� ���ʽÿ�.', 5.0);
    
--���� ���� holiday_jeollas
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_jeollas', 'holiday_jeollas', 'HOLIDAY ȣ�� ���� ����', '���󳲵� ������ ��ȭ�� 79',  '1577-1568', 'holiday_jeollas_01', 'holiday_jeollas_02', 'holiday_jeollas_03',
    '��� �������� üũ�� �� ������ ������ ��ȿ�� �ź����� �ſ�ī�带 �����ϼž� �մϴ�. 
��� ���� ��û ������ üũ�� �� ������ ��쿡 ���� �����Ǹ�, �߰� ����� �ΰ��� ���� ������ �ȳ��帳�ϴ�.

�̸� üũ��/���� üũ�ƿ� �� ������ ����� �ΰ��˴ϴ�. 

�̸� üũ��: 
06:00 ����: ù 1�� ����� 100% û�� 
09:00 ����: ù 1�� ����� 50% û�� 
12:00 ����: ù 1�� ����� 30% û�� 

���� üũ�ƿ�: 
12:00 ����: ù 1�� ����� 30% û�� 
15:00 ����: ù 1�� ����� 50% û�� 
18:00 ����: ù 1�� ����� 100% û��', 
'ȣ�� ���� ���� ���� ��Ǵ� �ǳ� ������� �߿� �������� ����Ͽ� ��Ʈ�Ͻ� ���Ϳ� ��� �����͸� ���߰� �ֽ��ϴ�. 

���� Wi-Fi ���񽺿� ���� ���� �������� �̿��Ͻ� �� �ֽ��ϴ�.

�� ���ǿ��� ��� TV�� ���� �̴Ϲٰ� ���õǾ� �ֽ��ϴ�. 

�ǳ� ��ǿ��� ������ ���� �񵥰� �Ϻ�� ȭ����� ������, ������, ��� ����, ���� ���鵵���� ������̾ �����˴ϴ�.

ȣ�� ������ ��Ʈ, �籸, ������ �÷��̽����̼� �� �پ��� ������ ��� ���ʽÿ�.', 5.0);
    
--���� ���� holiday_gwangju
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_gwangju', 'holiday_gwangju', 'HOLIDAY ȣ�� ���� ����', '����ϵ� ���ֽ� �ϻ걸 ����5�� 22-5',  '1577-1569', 'holiday_gwangju_01', 'holiday_gwangju_02', 'holiday_gwangju_03', 
    '��� �������� üũ�� �� ������ ������ ��ȿ�� �ź����� �ſ�ī�带 �����ϼž� �մϴ�. 
��� ���� ��û ������ üũ�� �� ������ ��쿡 ���� �����Ǹ�, �߰� ����� �ΰ��� ���� ������ �ȳ��帳�ϴ�.

�̸� üũ��/���� üũ�ƿ� �� ������ ����� �ΰ��˴ϴ�. 

�̸� üũ��: 
06:00 ����: ù 1�� ����� 100% û�� 
09:00 ����: ù 1�� ����� 50% û�� 
12:00 ����: ù 1�� ����� 30% û�� 

���� üũ�ƿ�: 
12:00 ����: ù 1�� ����� 30% û�� 
15:00 ����: ù 1�� ����� 50% û�� 
18:00 ����: ù 1�� ����� 100% û��', 
'ȣ�� ���� ���� ���� ��Ǵ� �ǳ� ������� �߿� �������� ����Ͽ� ��Ʈ�Ͻ� ���Ϳ� ��� �����͸� ���߰� �ֽ��ϴ�. 

���� Wi-Fi ���񽺿� ���� ���� �������� �̿��Ͻ� �� �ֽ��ϴ�.

�� ���ǿ��� ��� TV�� ���� �̴Ϲٰ� ���õǾ� �ֽ��ϴ�. 

�ǳ� ��ǿ��� ������ ���� �񵥰� �Ϻ�� ȭ����� ������, ������, ��� ����, ���� ���鵵���� ������̾ �����˴ϴ�.

ȣ�� ������ ��Ʈ, �籸, ������ �÷��̽����̼� �� �پ��� ������ ��� ���ʽÿ�.', 5.0);
    
--��� ���� holiday_gyeongsangn
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_gyeongsangn', 'holiday_gyeongsangn', 'HOLIDAY ȣ�� ��� ����', '���ϵ� �ȵ��� ���������� 346-69',  '1577-1570', 'holiday_gyeongsangn_01', 'holiday_gyeongsangn_02', 'holiday_gyeongsangn_03', 
    '��� �������� üũ�� �� ������ ������ ��ȿ�� �ź����� �ſ�ī�带 �����ϼž� �մϴ�. 
��� ���� ��û ������ üũ�� �� ������ ��쿡 ���� �����Ǹ�, �߰� ����� �ΰ��� ���� ������ �ȳ��帳�ϴ�.

�̸� üũ��/���� üũ�ƿ� �� ������ ����� �ΰ��˴ϴ�. 

�̸� üũ��: 
06:00 ����: ù 1�� ����� 100% û�� 
09:00 ����: ù 1�� ����� 50% û�� 
12:00 ����: ù 1�� ����� 30% û�� 

���� üũ�ƿ�: 
12:00 ����: ù 1�� ����� 30% û�� 
15:00 ����: ù 1�� ����� 50% û�� 
18:00 ����: ù 1�� ����� 100% û��', 
'ȣ�� ���� ���� ���� ��Ǵ� �ǳ� ������� �߿� �������� ����Ͽ� ��Ʈ�Ͻ� ���Ϳ� ��� �����͸� ���߰� �ֽ��ϴ�. 

���� Wi-Fi ���񽺿� ���� ���� �������� �̿��Ͻ� �� �ֽ��ϴ�.

�� ���ǿ��� ��� TV�� ���� �̴Ϲٰ� ���õǾ� �ֽ��ϴ�. 

�ǳ� ��ǿ��� ������ ���� �񵥰� �Ϻ�� ȭ����� ������, ������, ��� ����, ���� ���鵵���� ������̾ �����˴ϴ�.

ȣ�� ������ ��Ʈ, �籸, ������ �÷��̽����̼� �� �پ��� ������ ��� ���ʽÿ�.', 5.0);
    
--�泲 ���� holiday_gyeongsangs
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_gyeongsangs', 'holiday_gyeongsangs', 'HOLIDAY ȣ�� �泲 ����', '��󳲵� ���ر� ���� ����� 1523-21',  '1577-1571', 'holiday_gyeongsangs_01', 'holiday_gyeongsangs_02', 'holiday_gyeongsangs_03', 
    '��� �������� üũ�� �� ������ ������ ��ȿ�� �ź����� �ſ�ī�带 �����ϼž� �մϴ�. 
��� ���� ��û ������ üũ�� �� ������ ��쿡 ���� �����Ǹ�, �߰� ����� �ΰ��� ���� ������ �ȳ��帳�ϴ�.

�̸� üũ��/���� üũ�ƿ� �� ������ ����� �ΰ��˴ϴ�. 

�̸� üũ��: 
06:00 ����: ù 1�� ����� 100% û�� 
09:00 ����: ù 1�� ����� 50% û�� 
12:00 ����: ù 1�� ����� 30% û�� 

���� üũ�ƿ�: 
12:00 ����: ù 1�� ����� 30% û�� 
15:00 ����: ù 1�� ����� 50% û�� 
18:00 ����: ù 1�� ����� 100% û��', 
'ȣ�� ���� ���� ���� ��Ǵ� �ǳ� ������� �߿� �������� ����Ͽ� ��Ʈ�Ͻ� ���Ϳ� ��� �����͸� ���߰� �ֽ��ϴ�. 

���� Wi-Fi ���񽺿� ���� ���� �������� �̿��Ͻ� �� �ֽ��ϴ�.

�� ���ǿ��� ��� TV�� ���� �̴Ϲٰ� ���õǾ� �ֽ��ϴ�. 

�ǳ� ��ǿ��� ������ ���� �񵥰� �Ϻ�� ȭ����� ������, ������, ��� ����, ���� ���鵵���� ������̾ �����˴ϴ�.

ȣ�� ������ ��Ʈ, �籸, ������ �÷��̽����̼� �� �پ��� ������ ��� ���ʽÿ�.', 5.0);
    
--�뱸 ���� holiday_daegu
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_daegu', 'holiday_daegu', 'HOLIDAY ȣ�� �뱸 ����', '�뱸������ �޼��� ����� 7',  '1577-1572', 'holiday_daegu_01', 'holiday_daegu_02', 'holiday_daegu_03', 
    '��� �������� üũ�� �� ������ ������ ��ȿ�� �ź����� �ſ�ī�带 �����ϼž� �մϴ�. 
��� ���� ��û ������ üũ�� �� ������ ��쿡 ���� �����Ǹ�, �߰� ����� �ΰ��� ���� ������ �ȳ��帳�ϴ�.

�̸� üũ��/���� üũ�ƿ� �� ������ ����� �ΰ��˴ϴ�. 

�̸� üũ��: 
06:00 ����: ù 1�� ����� 100% û�� 
09:00 ����: ù 1�� ����� 50% û�� 
12:00 ����: ù 1�� ����� 30% û�� 

���� üũ�ƿ�: 
12:00 ����: ù 1�� ����� 30% û�� 
15:00 ����: ù 1�� ����� 50% û�� 
18:00 ����: ù 1�� ����� 100% û��', 
'ȣ�� ���� ���� ���� ��Ǵ� �ǳ� ������� �߿� �������� ����Ͽ� ��Ʈ�Ͻ� ���Ϳ� ��� �����͸� ���߰� �ֽ��ϴ�. 

���� Wi-Fi ���񽺿� ���� ���� �������� �̿��Ͻ� �� �ֽ��ϴ�.

�� ���ǿ��� ��� TV�� ���� �̴Ϲٰ� ���õǾ� �ֽ��ϴ�. 

�ǳ� ��ǿ��� ������ ���� �񵥰� �Ϻ�� ȭ����� ������, ������, ��� ����, ���� ���鵵���� ������̾ �����˴ϴ�.

ȣ�� ������ ��Ʈ, �籸, ������ �÷��̽����̼� �� �پ��� ������ ��� ���ʽÿ�.', 5.0);
    
--��� ���� holiday_ulsan
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_ulsan', 'holiday_ulsan', 'HOLIDAY ȣ�� ��� ����', '��걤���� ���� ���� 204',  '1577-1573', 'holiday_ulsan_01', 'holiday_ulsan_02', 'holiday_ulsan_03',
    '��� �������� üũ�� �� ������ ������ ��ȿ�� �ź����� �ſ�ī�带 �����ϼž� �մϴ�. 
��� ���� ��û ������ üũ�� �� ������ ��쿡 ���� �����Ǹ�, �߰� ����� �ΰ��� ���� ������ �ȳ��帳�ϴ�.

�̸� üũ��/���� üũ�ƿ� �� ������ ����� �ΰ��˴ϴ�. 

�̸� üũ��: 
06:00 ����: ù 1�� ����� 100% û�� 
09:00 ����: ù 1�� ����� 50% û�� 
12:00 ����: ù 1�� ����� 30% û�� 

���� üũ�ƿ�: 
12:00 ����: ù 1�� ����� 30% û�� 
15:00 ����: ù 1�� ����� 50% û�� 
18:00 ����: ù 1�� ����� 100% û��', 
'ȣ�� ���� ���� ���� ��Ǵ� �ǳ� ������� �߿� �������� ����Ͽ� ��Ʈ�Ͻ� ���Ϳ� ��� �����͸� ���߰� �ֽ��ϴ�. 

���� Wi-Fi ���񽺿� ���� ���� �������� �̿��Ͻ� �� �ֽ��ϴ�.

�� ���ǿ��� ��� TV�� ���� �̴Ϲٰ� ���õǾ� �ֽ��ϴ�. 

�ǳ� ��ǿ��� ������ ���� �񵥰� �Ϻ�� ȭ����� ������, ������, ��� ����, ���� ���鵵���� ������̾ �����˴ϴ�.

ȣ�� ������ ��Ʈ, �籸, ������ �÷��̽����̼� �� �پ��� ������ ��� ���ʽÿ�.', 5.0);
    
--�λ� ���� holiday_busan
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_busan', 'holiday_busan', 'HOLIDAY ȣ�� �λ� ����', '�λ걤���� �λ����� �����68���� 52',  '1577-1574', 'holiday_busan_01', 'holiday_busan_02', 'holiday_busan_03',
    '��� �������� üũ�� �� ������ ������ ��ȿ�� �ź����� �ſ�ī�带 �����ϼž� �մϴ�. 
��� ���� ��û ������ üũ�� �� ������ ��쿡 ���� �����Ǹ�, �߰� ����� �ΰ��� ���� ������ �ȳ��帳�ϴ�.

�̸� üũ��/���� üũ�ƿ� �� ������ ����� �ΰ��˴ϴ�. 

�̸� üũ��: 
06:00 ����: ù 1�� ����� 100% û�� 
09:00 ����: ù 1�� ����� 50% û�� 
12:00 ����: ù 1�� ����� 30% û�� 

���� üũ�ƿ�: 
12:00 ����: ù 1�� ����� 30% û�� 
15:00 ����: ù 1�� ����� 50% û�� 
18:00 ����: ù 1�� ����� 100% û��', 
'ȣ�� ���� ���� ���� ��Ǵ� �ǳ� ������� �߿� �������� ����Ͽ� ��Ʈ�Ͻ� ���Ϳ� ��� �����͸� ���߰� �ֽ��ϴ�. 

���� Wi-Fi ���񽺿� ���� ���� �������� �̿��Ͻ� �� �ֽ��ϴ�.

�� ���ǿ��� ��� TV�� ���� �̴Ϲٰ� ���õǾ� �ֽ��ϴ�. 

�ǳ� ��ǿ��� ������ ���� �񵥰� �Ϻ�� ȭ����� ������, ������, ��� ����, ���� ���鵵���� ������̾ �����˴ϴ�.

ȣ�� ������ ��Ʈ, �籸, ������ �÷��̽����̼� �� �پ��� ������ ��� ���ʽÿ�.', 5.0);
    
--���� ���� holiday_jeju
INSERT INTO HOTEL (hotelCODE, adminId, hotelNAME, hotelADDRESS, hotelPHONE, hotelIMG_1, hotelIMG_2, hotelIMG_3, hotelNOTICE, hotelDETAIL, hotelSCORE)
    VALUES ('holiday_jeju', 'holiday_jeju', 'HOLIDAY ȣ�� ����', '����Ư����ġ�� �������� �߹������� 72���� 60',  '064-735-8900', 'holiday_jeju_01', 'holiday_jeju_02', 'holiday_jeju_03', 
    '���� �� �̴� �� ���� ���� , �׽������� �ӽ� �� ĸ�� ����, Eilles�� Ƽ�� �ڽ�, 
    24�ð� �뼭��, ���̺� / ���� TV ä��, �ʰ�� ���ͳ� ����, ���þ��� ����, 
    ���� ����, ���ƿ� ħ�� (��û��), TV, �ٸ��̿� �ٸ��� �� (��û��), ���� ħ�� (��û��), 
    �� ������, ��ȭ, ���̽� ����, ���� �� �ݰ�, �����, ���� ��ǰ(���� �ҵ���, ���� ����, ���� ����, ħ�� ���� ��) ��û �� ���� ', 
    'Ư1�� ���Ÿ� ����Ŭ��ú��� ȣ���� �� ȣ�� ���ִ� �߹��������� �� ��ġ�ϰ� �־� õ���� ����, �߹����� �غ�, ������ �Ĺ��� ��� ����� �Ÿ��� �ֽ��ϴ�. 
    ���ָ� ��ǥ�ϴ� �Ѷ������� ���� �� 40���� �ҿ�˴ϴ�. ����, �Ϸ� 3ȸ ���ֱ������ױ��� ��Ʋ������ ��ϰ� �ֽ��ϴ�. 
    ȣ�� ������ ���� ���� ����� ����ž �߿� �������� ��ī���Ǵ�Ƽ�� ����� �¼�Ǯ ���� �Ǵ�Ƽ�� �ֽ��ϴ�.
    ȣ�ڿ� �ӹ��� ���� ������ ������ ����ȭ�� ������ �������� ��å�� ���ðų� �� ���� ���� ������ �ְ�� �ؾ� �ڽ���ƽ ��ǰ���� ������ ������ ���� �ֽ��ϴ�. 
    ����, ȣ�� ���� �ÿ��� ������, ��쳪 ��Ʈ�Ͻ� ����, ������ ���� ����� �̿��Ͻ� �� �ֽ��ϴ�. 
    ��� ���ǿ����� ���� â���� ���� �ڿ� ä���� ���� �� ������ Wi-Fi�� �Ϻ�Ǿ� �ֽ��ϴ�. 
    ���ǿ��� ���� �̿� ������ �̴� ��, �׽������� �ӽ�, ��ư���� ��޴�Ƽ�� ����Ǿ� �ֽ��ϴ�. ', 5.0);

SELECT * FROM HOTEL;

--�� ���̵�����

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard201', 'holiday_seoul', '���Ĵٵ�� 201ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard202', 'holiday_seoul', '���Ĵٵ�� 202ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard301', 'holiday_seoul', '���Ĵٵ�� 301ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard302', 'holiday_seoul', '���Ĵٵ�� 302ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard401', 'holiday_seoul', '���Ĵٵ�� 401ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard402', 'holiday_seoul', '���Ĵٵ�� 402ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard501', 'holiday_seoul', '���Ĵٵ�� 501ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard502', 'holiday_seoul', '���Ĵٵ�� 502ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard601', 'holiday_seoul', '���Ĵٵ�� 601ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_standard602', 'holiday_seoul', '���Ĵٵ�� 602ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_deluxe701', 'holiday_seoul', '�𷰽��� 701ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_deluxe702', 'holiday_seoul', '�𷰽��� 702ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_deluxe801', 'holiday_seoul', '�𷰽��� 801ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_deluxe802', 'holiday_seoul', '�𷰽��� 802ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_deluxe901', 'holiday_seoul', '�𷰽��� 901ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_deluxe902', 'holiday_seoul', '�𷰽��� 902ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_suiteroom1001', 'holiday_seoul', '����Ʈ�� 1001ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_suiteroom1101', 'holiday_seoul', '����Ʈ�� 1101ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_seoul_suiteroom1201', 'holiday_seoul', '����Ʈ�� 1201ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard201', 'holiday_incheon', '���Ĵٵ�� 201ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard202', 'holiday_incheon', '���Ĵٵ�� 202ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard301', 'holiday_incheon', '���Ĵٵ�� 301ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard302', 'holiday_incheon', '���Ĵٵ�� 302ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard401', 'holiday_incheon', '���Ĵٵ�� 401ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard402', 'holiday_incheon', '���Ĵٵ�� 402ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard501', 'holiday_incheon', '���Ĵٵ�� 501ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard502', 'holiday_incheon', '���Ĵٵ�� 502ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard601', 'holiday_incheon', '���Ĵٵ�� 601ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_standard602', 'holiday_incheon', '���Ĵٵ�� 602ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_deluxe701', 'holiday_incheon', '�𷰽��� 701ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_deluxe702', 'holiday_incheon', '�𷰽��� 702ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_deluxe801', 'holiday_incheon', '�𷰽��� 801ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_deluxe802', 'holiday_incheon', '�𷰽��� 802ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_deluxe901', 'holiday_incheon', '�𷰽��� 901ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_deluxe902', 'holiday_incheon', '�𷰽��� 902ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_suiteroom1001', 'holiday_incheon', '����Ʈ�� 1001ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_suiteroom1101', 'holiday_incheon', '����Ʈ�� 1101ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_incheon_suiteroom1201', 'holiday_incheon', '����Ʈ�� 1201ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard201', 'holiday_gyeonggi', '���Ĵٵ�� 201ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard202', 'holiday_gyeonggi', '���Ĵٵ�� 202ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard301', 'holiday_gyeonggi', '���Ĵٵ�� 301ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard302', 'holiday_gyeonggi', '���Ĵٵ�� 302ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard401', 'holiday_gyeonggi', '���Ĵٵ�� 401ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard402', 'holiday_gyeonggi', '���Ĵٵ�� 402ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard501', 'holiday_gyeonggi', '���Ĵٵ�� 501ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard502', 'holiday_gyeonggi', '���Ĵٵ�� 502ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard601', 'holiday_gyeonggi', '���Ĵٵ�� 601ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_standard602', 'holiday_gyeonggi', '���Ĵٵ�� 602ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_deluxe701', 'holiday_gyeonggi', '�𷰽��� 701ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_deluxe702', 'holiday_gyeonggi', '�𷰽��� 702ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_deluxe801', 'holiday_gyeonggi', '�𷰽��� 801ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_deluxe802', 'holiday_gyeonggi', '�𷰽��� 802ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_deluxe901', 'holiday_gyeonggi', '�𷰽��� 901ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_deluxe902', 'holiday_gyeonggi', '�𷰽��� 902ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_suiteroom1001', 'holiday_gyeonggi', '����Ʈ�� 1001ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_suiteroom1101', 'holiday_gyeonggi', '����Ʈ�� 1101ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeonggi_suiteroom1201', 'holiday_gyeonggi', '����Ʈ�� 1201ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard201', 'holiday_gangwon', '���Ĵٵ�� 201ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard202', 'holiday_gangwon', '���Ĵٵ�� 202ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard301', 'holiday_gangwon', '���Ĵٵ�� 301ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard302', 'holiday_gangwon', '���Ĵٵ�� 302ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard401', 'holiday_gangwon', '���Ĵٵ�� 401ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard402', 'holiday_gangwon', '���Ĵٵ�� 402ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard501', 'holiday_gangwon', '���Ĵٵ�� 501ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard502', 'holiday_gangwon', '���Ĵٵ�� 502ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard601', 'holiday_gangwon', '���Ĵٵ�� 601ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_standard602', 'holiday_gangwon', '���Ĵٵ�� 602ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_deluxe701', 'holiday_gangwon', '�𷰽��� 701ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_deluxe702', 'holiday_gangwon', '�𷰽��� 702ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_deluxe801', 'holiday_gangwon', '�𷰽��� 801ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_deluxe802', 'holiday_gangwon', '�𷰽��� 802ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_deluxe901', 'holiday_gangwon', '�𷰽��� 901ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_deluxe902', 'holiday_gangwon', '�𷰽��� 902ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_suiteroom1001', 'holiday_gangwon', '����Ʈ�� 1001ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_suiteroom1101', 'holiday_gangwon', '����Ʈ�� 1101ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gangwon_suiteroom1201', 'holiday_gangwon', '����Ʈ�� 1201ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard201', 'holiday_chungcheongn', '���Ĵٵ�� 201ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard202', 'holiday_chungcheongn', '���Ĵٵ�� 202ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard301', 'holiday_chungcheongn', '���Ĵٵ�� 301ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard302', 'holiday_chungcheongn', '���Ĵٵ�� 302ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard401', 'holiday_chungcheongn', '���Ĵٵ�� 401ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard402', 'holiday_chungcheongn', '���Ĵٵ�� 402ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard501', 'holiday_chungcheongn', '���Ĵٵ�� 501ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard502', 'holiday_chungcheongn', '���Ĵٵ�� 502ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard601', 'holiday_chungcheongn', '���Ĵٵ�� 601ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_standard602', 'holiday_chungcheongn', '���Ĵٵ�� 602ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_deluxe701', 'holiday_chungcheongn', '�𷰽��� 701ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_deluxe702', 'holiday_chungcheongn', '�𷰽��� 702ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_deluxe801', 'holiday_chungcheongn', '�𷰽��� 801ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_deluxe802', 'holiday_chungcheongn', '�𷰽��� 802ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_deluxe901', 'holiday_chungcheongn', '�𷰽��� 901ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_deluxe902', 'holiday_chungcheongn', '�𷰽��� 902ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_suiteroom1001', 'holiday_chungcheongn', '����Ʈ�� 1001ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_suiteroom1101', 'holiday_chungcheongn', '����Ʈ�� 1101ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongn_suiteroom1201', 'holiday_chungcheongn', '����Ʈ�� 1201ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard201', 'holiday_chungcheongs', '���Ĵٵ�� 201ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard202', 'holiday_chungcheongs', '���Ĵٵ�� 202ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard301', 'holiday_chungcheongs', '���Ĵٵ�� 301ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard302', 'holiday_chungcheongs', '���Ĵٵ�� 302ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard401', 'holiday_chungcheongs', '���Ĵٵ�� 401ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard402', 'holiday_chungcheongs', '���Ĵٵ�� 402ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard501', 'holiday_chungcheongs', '���Ĵٵ�� 501ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard502', 'holiday_chungcheongs', '���Ĵٵ�� 502ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard601', 'holiday_chungcheongs', '���Ĵٵ�� 601ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_standard602', 'holiday_chungcheongs', '���Ĵٵ�� 602ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_deluxe701', 'holiday_chungcheongs', '�𷰽��� 701ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_deluxe702', 'holiday_chungcheongs', '�𷰽��� 702ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_deluxe801', 'holiday_chungcheongs', '�𷰽��� 801ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_deluxe802', 'holiday_chungcheongs', '�𷰽��� 802ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_deluxe901', 'holiday_chungcheongs', '�𷰽��� 901ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_deluxe902', 'holiday_chungcheongs', '�𷰽��� 902ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_suiteroom1001', 'holiday_chungcheongs', '����Ʈ�� 1001ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_suiteroom1101', 'holiday_chungcheongs', '����Ʈ�� 1101ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_chungcheongs_suiteroom1201', 'holiday_chungcheongs', '����Ʈ�� 1201ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard201', 'holiday_daejeon', '���Ĵٵ�� 201ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard202', 'holiday_daejeon', '���Ĵٵ�� 202ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard301', 'holiday_daejeon', '���Ĵٵ�� 301ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard302', 'holiday_daejeon', '���Ĵٵ�� 302ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard401', 'holiday_daejeon', '���Ĵٵ�� 401ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard402', 'holiday_daejeon', '���Ĵٵ�� 402ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard501', 'holiday_daejeon', '���Ĵٵ�� 501ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard502', 'holiday_daejeon', '���Ĵٵ�� 502ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard601', 'holiday_daejeon', '���Ĵٵ�� 601ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_standard602', 'holiday_daejeon', '���Ĵٵ�� 602ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_deluxe701', 'holiday_daejeon', '�𷰽��� 701ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_deluxe702', 'holiday_daejeon', '�𷰽��� 702ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_deluxe801', 'holiday_daejeon', '�𷰽��� 801ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_deluxe802', 'holiday_daejeon', '�𷰽��� 802ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_deluxe901', 'holiday_daejeon', '�𷰽��� 901ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_deluxe902', 'holiday_daejeon', '�𷰽��� 902ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_suiteroom1001', 'holiday_daejeon', '����Ʈ�� 1001ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_suiteroom1101', 'holiday_daejeon', '����Ʈ�� 1101ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daejeon_suiteroom1201', 'holiday_daejeon', '����Ʈ�� 1201ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard201', 'holiday_jeollan', '���Ĵٵ�� 201ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard202', 'holiday_jeollan', '���Ĵٵ�� 202ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard301', 'holiday_jeollan', '���Ĵٵ�� 301ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard302', 'holiday_jeollan', '���Ĵٵ�� 302ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard401', 'holiday_jeollan', '���Ĵٵ�� 401ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard402', 'holiday_jeollan', '���Ĵٵ�� 402ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard501', 'holiday_jeollan', '���Ĵٵ�� 501ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard502', 'holiday_jeollan', '���Ĵٵ�� 502ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard601', 'holiday_jeollan', '���Ĵٵ�� 601ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_standard602', 'holiday_jeollan', '���Ĵٵ�� 602ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_deluxe701', 'holiday_jeollan', '�𷰽��� 701ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_deluxe702', 'holiday_jeollan', '�𷰽��� 702ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_deluxe801', 'holiday_jeollan', '�𷰽��� 801ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_deluxe802', 'holiday_jeollan', '�𷰽��� 802ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_deluxe901', 'holiday_jeollan', '�𷰽��� 901ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_deluxe902', 'holiday_jeollan', '�𷰽��� 902ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_suiteroom1001', 'holiday_jeollan', '����Ʈ�� 1001ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_suiteroom1101', 'holiday_jeollan', '����Ʈ�� 1101ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollan_suiteroom1201', 'holiday_jeollan', '����Ʈ�� 1201ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard201', 'holiday_jeollas', '���Ĵٵ�� 201ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard202', 'holiday_jeollas', '���Ĵٵ�� 202ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard301', 'holiday_jeollas', '���Ĵٵ�� 301ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard302', 'holiday_jeollas', '���Ĵٵ�� 302ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard401', 'holiday_jeollas', '���Ĵٵ�� 401ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard402', 'holiday_jeollas', '���Ĵٵ�� 402ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard501', 'holiday_jeollas', '���Ĵٵ�� 501ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard502', 'holiday_jeollas', '���Ĵٵ�� 502ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard601', 'holiday_jeollas', '���Ĵٵ�� 601ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_standard602', 'holiday_jeollas', '���Ĵٵ�� 602ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_deluxe701', 'holiday_jeollas', '�𷰽��� 701ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_deluxe702', 'holiday_jeollas', '�𷰽��� 702ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_deluxe801', 'holiday_jeollas', '�𷰽��� 801ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_deluxe802', 'holiday_jeollas', '�𷰽��� 802ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_deluxe901', 'holiday_jeollas', '�𷰽��� 901ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_deluxe902', 'holiday_jeollas', '�𷰽��� 902ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_suiteroom1001', 'holiday_jeollas', '����Ʈ�� 1001ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_suiteroom1101', 'holiday_jeollas', '����Ʈ�� 1101ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeollas_suiteroom1201', 'holiday_jeollas', '����Ʈ�� 1201ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard201', 'holiday_gwangju', '���Ĵٵ�� 201ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard202', 'holiday_gwangju', '���Ĵٵ�� 202ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard301', 'holiday_gwangju', '���Ĵٵ�� 301ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard302', 'holiday_gwangju', '���Ĵٵ�� 302ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard401', 'holiday_gwangju', '���Ĵٵ�� 401ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard402', 'holiday_gwangju', '���Ĵٵ�� 402ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard501', 'holiday_gwangju', '���Ĵٵ�� 501ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard502', 'holiday_gwangju', '���Ĵٵ�� 502ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard601', 'holiday_gwangju', '���Ĵٵ�� 601ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_standard602', 'holiday_gwangju', '���Ĵٵ�� 602ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_deluxe701', 'holiday_gwangju', '�𷰽��� 701ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_deluxe702', 'holiday_gwangju', '�𷰽��� 702ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_deluxe801', 'holiday_gwangju', '�𷰽��� 801ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_deluxe802', 'holiday_gwangju', '�𷰽��� 802ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_deluxe901', 'holiday_gwangju', '�𷰽��� 901ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_deluxe902', 'holiday_gwangju', '�𷰽��� 902ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_suiteroom1001', 'holiday_gwangju', '����Ʈ�� 1001ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_suiteroom1101', 'holiday_gwangju', '����Ʈ�� 1101ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gwangju_suiteroom1201', 'holiday_gwangju', '����Ʈ�� 1201ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard201', 'holiday_gyeongsangn', '���Ĵٵ�� 201ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard202', 'holiday_gyeongsangn', '���Ĵٵ�� 202ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard301', 'holiday_gyeongsangn', '���Ĵٵ�� 301ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard302', 'holiday_gyeongsangn', '���Ĵٵ�� 302ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard401', 'holiday_gyeongsangn', '���Ĵٵ�� 401ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard402', 'holiday_gyeongsangn', '���Ĵٵ�� 402ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard501', 'holiday_gyeongsangn', '���Ĵٵ�� 501ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard502', 'holiday_gyeongsangn', '���Ĵٵ�� 502ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard601', 'holiday_gyeongsangn', '���Ĵٵ�� 601ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_standard602', 'holiday_gyeongsangn', '���Ĵٵ�� 602ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_deluxe701', 'holiday_gyeongsangn', '�𷰽��� 701ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_deluxe702', 'holiday_gyeongsangn', '�𷰽��� 702ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_deluxe801', 'holiday_gyeongsangn', '�𷰽��� 801ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_deluxe802', 'holiday_gyeongsangn', '�𷰽��� 802ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_deluxe901', 'holiday_gyeongsangn', '�𷰽��� 901ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_deluxe902', 'holiday_gyeongsangn', '�𷰽��� 902ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_suiteroom1001', 'holiday_gyeongsangn', '����Ʈ�� 1001ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_suiteroom1101', 'holiday_gyeongsangn', '����Ʈ�� 1101ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangn_suiteroom1201', 'holiday_gyeongsangn', '����Ʈ�� 1201ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard201', 'holiday_gyeongsangs', '���Ĵٵ�� 201ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard202', 'holiday_gyeongsangs', '���Ĵٵ�� 202ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard301', 'holiday_gyeongsangs', '���Ĵٵ�� 301ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard302', 'holiday_gyeongsangs', '���Ĵٵ�� 302ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard401', 'holiday_gyeongsangs', '���Ĵٵ�� 401ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard402', 'holiday_gyeongsangs', '���Ĵٵ�� 402ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard501', 'holiday_gyeongsangs', '���Ĵٵ�� 501ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard502', 'holiday_gyeongsangs', '���Ĵٵ�� 502ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard601', 'holiday_gyeongsangs', '���Ĵٵ�� 601ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_standard602', 'holiday_gyeongsangs', '���Ĵٵ�� 602ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_deluxe701', 'holiday_gyeongsangs', '�𷰽��� 701ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_deluxe702', 'holiday_gyeongsangs', '�𷰽��� 702ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_deluxe801', 'holiday_gyeongsangs', '�𷰽��� 801ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_deluxe802', 'holiday_gyeongsangs', '�𷰽��� 802ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_deluxe901', 'holiday_gyeongsangs', '�𷰽��� 901ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_deluxe902', 'holiday_gyeongsangs', '�𷰽��� 902ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_suiteroom1001', 'holiday_gyeongsangs', '����Ʈ�� 1001ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_suiteroom1101', 'holiday_gyeongsangs', '����Ʈ�� 1101ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_gyeongsangs_suiteroom1201', 'holiday_gyeongsangs', '����Ʈ�� 1201ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard201', 'holiday_daegu', '���Ĵٵ�� 201ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard202', 'holiday_daegu', '���Ĵٵ�� 202ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard301', 'holiday_daegu', '���Ĵٵ�� 301ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard302', 'holiday_daegu', '���Ĵٵ�� 302ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard401', 'holiday_daegu', '���Ĵٵ�� 401ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard402', 'holiday_daegu', '���Ĵٵ�� 402ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard501', 'holiday_daegu', '���Ĵٵ�� 501ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard502', 'holiday_daegu', '���Ĵٵ�� 502ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard601', 'holiday_daegu', '���Ĵٵ�� 601ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_standard602', 'holiday_daegu', '���Ĵٵ�� 602ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_deluxe701', 'holiday_daegu', '�𷰽��� 701ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_deluxe702', 'holiday_daegu', '�𷰽��� 702ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_deluxe801', 'holiday_daegu', '�𷰽��� 801ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_deluxe802', 'holiday_daegu', '�𷰽��� 802ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_deluxe901', 'holiday_daegu', '�𷰽��� 901ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_deluxe902', 'holiday_daegu', '�𷰽��� 902ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_suiteroom1001', 'holiday_daegu', '����Ʈ�� 1001ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_suiteroom1101', 'holiday_daegu', '����Ʈ�� 1101ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_daegu_suiteroom1201', 'holiday_daegu', '����Ʈ�� 1201ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard201', 'holiday_ulsan', '���Ĵٵ�� 201ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard202', 'holiday_ulsan', '���Ĵٵ�� 202ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard301', 'holiday_ulsan', '���Ĵٵ�� 301ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard302', 'holiday_ulsan', '���Ĵٵ�� 302ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard401', 'holiday_ulsan', '���Ĵٵ�� 401ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard402', 'holiday_ulsan', '���Ĵٵ�� 402ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard501', 'holiday_ulsan', '���Ĵٵ�� 501ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard502', 'holiday_ulsan', '���Ĵٵ�� 502ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard601', 'holiday_ulsan', '���Ĵٵ�� 601ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_standard602', 'holiday_ulsan', '���Ĵٵ�� 602ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_deluxe701', 'holiday_ulsan', '�𷰽��� 701ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_deluxe702', 'holiday_ulsan', '�𷰽��� 702ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_deluxe801', 'holiday_ulsan', '�𷰽��� 801ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_deluxe802', 'holiday_ulsan', '�𷰽��� 802ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_deluxe901', 'holiday_ulsan', '�𷰽��� 901ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_deluxe902', 'holiday_ulsan', '�𷰽��� 902ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_suiteroom1001', 'holiday_ulsan', '����Ʈ�� 1001ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_suiteroom1101', 'holiday_ulsan', '����Ʈ�� 1101ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_ulsan_suiteroom1201', 'holiday_ulsan', '����Ʈ�� 1201ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard201', 'holiday_busan', '���Ĵٵ�� 201ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard202', 'holiday_busan', '���Ĵٵ�� 202ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard301', 'holiday_busan', '���Ĵٵ�� 301ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard302', 'holiday_busan', '���Ĵٵ�� 302ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard401', 'holiday_busan', '���Ĵٵ�� 401ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard402', 'holiday_busan', '���Ĵٵ�� 402ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard501', 'holiday_busan', '���Ĵٵ�� 501ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard502', 'holiday_busan', '���Ĵٵ�� 502ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard601', 'holiday_busan', '���Ĵٵ�� 601ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_standard602', 'holiday_busan', '���Ĵٵ�� 602ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_deluxe701', 'holiday_busan', '�𷰽��� 701ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_deluxe702', 'holiday_busan', '�𷰽��� 702ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_deluxe801', 'holiday_busan', '�𷰽��� 801ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_deluxe802', 'holiday_busan', '�𷰽��� 802ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_deluxe901', 'holiday_busan', '�𷰽��� 901ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_deluxe902', 'holiday_busan', '�𷰽��� 902ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_suiteroom1001', 'holiday_busan', '����Ʈ�� 1001ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_suiteroom1101', 'holiday_busan', '����Ʈ�� 1101ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_busan_suiteroom1201', 'holiday_busan', '����Ʈ�� 1201ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard201', 'holiday_jeju', '���Ĵٵ�� 201ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard202', 'holiday_jeju', '���Ĵٵ�� 202ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard301', 'holiday_jeju', '���Ĵٵ�� 301ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard302', 'holiday_jeju', '���Ĵٵ�� 302ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard401', 'holiday_jeju', '���Ĵٵ�� 401ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard402', 'holiday_jeju', '���Ĵٵ�� 402ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard501', 'holiday_jeju', '���Ĵٵ�� 501ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard502', 'holiday_jeju', '���Ĵٵ�� 502ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard601', 'holiday_jeju', '���Ĵٵ�� 601ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_standard602', 'holiday_jeju', '���Ĵٵ�� 602ȣ��', 'standard', 250000, 2, 'STANDARDROOMIMG_1', 'STANDARDROOMIMG_2', 'STANDARDROOMIMG_3', 'STANDARDROOMIMG_4', 'STANDARDROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_deluxe701', 'holiday_jeju', '�𷰽��� 701ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_deluxe702', 'holiday_jeju', '�𷰽��� 702ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_deluxe801', 'holiday_jeju', '�𷰽��� 801ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_deluxe802', 'holiday_jeju', '�𷰽��� 802ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_deluxe901', 'holiday_jeju', '�𷰽��� 901ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_deluxe902', 'holiday_jeju', '�𷰽��� 902ȣ��', 'deluxe', 700000, 2, 'DELUXEROOMIMG_1', 'DELUXEROOMIMG_2', 'DELUXEROOMIMG_3', 'DELUXEROOMIMG_4', 'DELUXEROOMIMG_5');

INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_suiteroom1001', 'holiday_jeju', '����Ʈ�� 1001ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_suiteroom1101', 'holiday_jeju', '����Ʈ�� 1101ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');
INSERT INTO ROOM (ROOMCODE, HOTELCODE, ROOMNAME, ROOMGRADE, ROOMCOST, ROOMLIMIT, ROOMIMG_1, ROOMIMG_2, ROOMIMG_3, ROOMIMG_4, ROOMIMG_5)
    VALUES('holiday_jeju_suiteroom1201', 'holiday_jeju', '����Ʈ�� 1201ȣ��', 'suiteroom', 1000000, 2, 'SUITEROOMIMG_1', 'SUITEROOMIMG_2', 'SUITEROOMIMG_3', 'SUITEROOMIMG_4', 'SUITEROOMIMG_5');

update room set roomimg_1=roomimg_1||'.jpg';
update room set roomimg_2=roomimg_2||'.jpg';
update room set roomimg_3=roomimg_3||'.jpg';
update room set roomimg_4=roomimg_4||'.jpg';
update room set roomimg_5=roomimg_5||'.jpg';
update hotel set hotelimg_1=hotelimg_1||'.jpg';
update hotel set hotelimg_2=hotelimg_2||'.jpg';
update hotel set hotelimg_3=hotelimg_3||'.jpg';


update hotel set hotelimg_1=replace(hotelimg_1,'holiday', 'shah');
update hotel set hotelimg_2=replace(hotelimg_2,'holiday', 'shah');
update hotel set hotelimg_3=replace(hotelimg_3,'holiday', 'shah');



commit;
INSERT INTO GUEST (GUESTID, GUESTPW, GUESTNAME, GUESTEMAIL, GUESTPHONE, GUESTBIRTH) 
    VALUES ('evicpie', '1231', '��������', 'pwoqhr@hamail.com', '010-111-2222', '92/02/02');

select
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
            INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test1', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.125', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test2', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.16', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test3', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.127', SUPPORT_SEQ.CURRVAL, 0, 0);
INSERT INTO SUPPORT (SUPPORTCODE, GUESTID, SUPPORTTITLE, SUPPORTCONTENT, SUPPORTDATE, SUPPORTIP, SUPPORTGROUP, SUPPORTSTEP, SUPPORTINDENT)
	    	VALUES (SUPPORT_SEQ.NEXTVAL, 'evicpie', 'test4', '�׽�Ʈ �޽��� �Դϴ�', SYSDATE, '158.5.2.128', SUPPORT_SEQ.CURRVAL, 0, 0);
commit;