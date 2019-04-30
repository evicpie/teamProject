SELECT * FROM EVENT;
update event set eventstatus=1;
update event set eventbanner='tulip.jpg' where eventnum=2;

SELECT * FROM ROOM WHERE ROOMCODE='ROOM9';

update guest set guestpw='11111111' where guestid='daramchu';
select * from guest;
select * from event;
update guest set getevent=null where guestid='daramchu';

commit;

update guest set guestpoint=34000 where guestid='daramchu';

select * from room;

update room set roomimg_1='img1.jpg', roomimg_2='img2.jpg', roomimg_3='img3.jpg', roomimg_4='img4.jpg', roomimg_5='img5.jpg';
update guest set guestphone='010-111-1111' where guestid='evicpie';
commit;