INSERT INTO Chip(chip_member_num,chip_balanced,chip_type,win,play_round,chip_first_name,chip_nick_name)values
(1,200,'a',1,1.0,'Jack','kk'),
(2,-1000,'b',0,1.0,'Thomas','TT'),
(1,200,'b',1,1.0,'Jack','kk'),
(1,-200,'b',0,1.0,'Jack','kk'),
(3,400,'c',1,1.0,'Judy','JJ'),
(3,200,'a',1,1.0,'Judy','JJ'),
(3,600,'b',1,1.0,'Judy','JJ'),
(2,800,'b',1,1.0,'Thomas','TT'),
(1,1000,'c',1,1.0,'Jack','kk'),
(1,2000,'a',1,1.0,'Jack','kk'),
(3,1400,'b',1,1.0,'Judy','JJ'),
(2,1400,'a',1,1.0,'Thomas','TT'),
(1,-200,'a',0,1.0,'Jack','kk'),
(1,200,'b',1,1.0,'Jack','kk'),
(2,200,'c',1,1.0,'Thomas','TT'),
(4,600,'a',1,1.0,'York','YY'),
(4,600,'c',1,1.0,'York','YY'),
(4,600,'b',1,1.0,'York','YY'),
(4,-200,'c',0,1.0,'York','YY'),
(1,200,'b',1,1.0,'Jack','kk');


INSERT INTO Moneyrecord(money_record_member_num,money_record_time,money_record_cash,money_record_chip,money_record_type,money_record_first_name,money_record_nick_name)values
(1,getdate(),10000,10000,'topup','Jack','kk'),
(3,getdate(),1000,1000,'topup','Judy','JJ'),
(2,getdate(),20000,20000,'topup','Thomas','TT'),
(2,getdate(),70000,70000,'topup','Thomas','TT'),
(2,getdate(),14500,14500,'topup','Thomas','TT'),
(1,getdate(),12220,12220,'topup','Jack','kk'),
(3,getdate(),2500,2500,'topup','Judy','JJ');

INSERT INTO Chiprecord(chip_record_member_num,chip_record_chip,chip_record_time,chip_record_chiptype,play_round,win,chip_record_first_name,chip_record_nick_name) values
(2,1000,'2017-07-12','a',1,1,'Thomas','TT'),
(2,500,'2017-07-13','a',1,1,'Thomas','TT'),
(3,-200,'2017-07-14','a',1,0,'Judy','JJ'),
(1,2000,'2017-07-20','a',1,1,'Jack','JJ'),
(4,600,'2017-07-15','a',1,1,'York','YY'),
(3,-1000,'2017-08-12','b',1,0,'Judy','JJ'),
(3,200,'2017-08-13','b',1,1,'Judy','JJ'),
(2,-800,'2017-08-13','b',1,0,'Thomas','TT'),
(4,1200,'2017-08-15','b',1,1,'York','YY'),
(1,2000,'2017-09-12','c',1,1,'Jack','JJ'),
(1,-800,'2017-09-13','c',1,0,'Jack','JJ'),
(2,-400,'2017-09-14','c',1,0,'Thomas','TT'),
(3,600,'2017-09-15','c',1,1,'Judy','JJ'),
(4,1200,'2017-09-16','c',1,1,'York','YY'),
(2,700,'2017-10-12','a',1,1,'Thomas','TT'),
(1,-1400,'2018-11-10','c',1,0,'Jack','kk'),
(3,1200,'2019-01-13','b',1,1,'Judy','JJ'),
(2,2500,'2019-07-12','a',1,1,'Thomas','TT');

IF Object_ID('dbo.summary') IS NOT NULL
    DROP VIEW dbo.summary;


create view summary
  as
  select money_record_nick_name,
         sum(money_record_cash) as total_cash
  from moneyrecord
  group by money_record_nick_name;
  
  
  
  
  IF Object_ID('dbo.wintimerank') IS NOT NULL
    DROP VIEW dbo.wintimerank;

  create view wintimerank
  as
  select chip_member_num,chip_type,sum(win) as total_win 
  from chip 
  group by chip_member_num,chip_type;
  
 IF Object_ID('dbo.summary1') IS NOT NULL
    DROP VIEW dbo.summary1;
  create view summary1 
  as 
  select chip_member_num,FORMAT(sum(chip_balanced), 'N0') as summary 
  from chip 
  group by chip_member_num;
  
  
  
  IF Object_ID('dbo.totalround') IS NOT NULL
    DROP VIEW dbo.totalround;
  create view totalround 
  as 
  select chip_member_num,chip_type,sum(play_round) as total_round 
  from chip 
  group by chip_member_num,chip_type;
  
  
  
  IF Object_ID('dbo.bonusrank') IS NOT NULL
    DROP VIEW dbo.bonusrank;
  create view bonusrank
  as
  select chip_nick_name,sum(chip_balanced) as total_balanced,win 
  from chip 
  group by chip_nick_name,win;
  

  IF Object_ID('dbo.wintotal') IS NOT NULL
    DROP VIEW dbo.wintotal;
  create view wintotal 
  as
  select chip_nick_name,sum(win) as totalwin from chip group by chip_nick_name;
  
   IF Object_ID('dbo.wincalculate') IS NOT NULL
    DROP VIEW dbo.wincalculate;
    
    create view wincalculate 
  as
   select chip_type,sum(win) as totalwin,sum(play_round) as totalround,convert(numeric(3,2),sum(win)/sum(play_round)) as rate from chip where chip_type='a'or chip_type='b'or chip_type='c' group by chip_type ;
  

  
   IF Object_ID('dbo.gameatrend') IS NOT NULL
    DROP VIEW dbo.gameatrend;
   create view gameatrend
  as
  select row_number() OVER(ORDER BY chip_record_time)AS num,chip_record_chiptype,chip_record_chip
  from chiprecord
  where chip_record_chiptype='a';
  
  
  IF Object_ID('dbo.gamebtrend') IS NOT NULL
    DROP VIEW dbo.gamebtrend;
   create view gamebtrend
  as
  select row_number() OVER(ORDER BY chip_record_time)AS num,chip_record_chiptype,chip_record_chip
  from chiprecord
  where chip_record_chiptype='b';
  
  
  IF Object_ID('dbo.gamectrend') IS NOT NULL
    DROP VIEW dbo.gamectrend;
   create view gamectrend
  as
  select row_number() OVER(ORDER BY chip_record_time)AS num,chip_record_chiptype,chip_record_chip
  from chiprecord
  where chip_record_chiptype='c';
   
   
 INSERT INTO vip_level values
(1.0,0,'https://tw.beanfun.com/bnb/images/game/5/image005.gif','垃圾'),
(0.89,1,'https://tw.beanfun.com/bnb/images/game/5/image105.gif','普通會員'),
(0.79,2,'https://tw.beanfun.com/bnb/images/game/5/image205.gif','高級會員'),
(0.69,3,'https://tw.beanfun.com/bnb/images/game/5/image305.gif','尊爵不凡'),
(0.59,4,'https://tw.beanfun.com/bnb/images/game/5/image350.gif','乾爹'),
(0.49,5,'https://tw.beanfun.com/bnb/images/game/5/image450.gif','管理員');


insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl) values('abcdefgh','0000000000',0,'abcdefghij@abcd.com','0123456789',getdate(),1,null,567,'/resources/img/default-picture.png');
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl) values('user','123',0,'abcdefghij@abcd.com','0123456789',getdate(),2,null,789,'/resources/img/default-picture.png');
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl) values('admin','123',0,'abcdefghij@abcd.com','0123456789',getdate(),5,null,56799,'/resources/img/default-picture.png');
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl) values('admin2','123',0,'abcdefghij@abcd.com','0123456789',getdate(),3,null,78999,'/resources/img/default-picture.png');




insert into customer_Message_Board(customermessageboard_article_floor,customermessageboard_memberid,customermessageboard_message,customermessageboard_messagetime,customermessageboard_response_floor,customermessageboard_status,customermessageboard_title,customermessageboard_member_num) values (1,'user','測試1',getdate(),0,1,'測試內容1',2);
insert into customer_Message_Board(customermessageboard_article_floor,customermessageboard_memberid,customermessageboard_message,customermessageboard_messagetime,customermessageboard_response_floor,customermessageboard_status,customermessageboard_title,customermessageboard_member_num) values (2,'user','測試2',getdate(),0,1,'測試內容2',2);
insert into customer_Message_Board(customermessageboard_article_floor,customermessageboard_memberid,customermessageboard_message,customermessageboard_messagetime,customermessageboard_response_floor,customermessageboard_status,customermessageboard_title,customermessageboard_member_num) values (3,'user','測試3',getdate(),0,1,'測試內容3',2);
insert into customer_Message_Board(customermessageboard_article_floor,customermessageboard_memberid,customermessageboard_message,customermessageboard_messagetime,customermessageboard_response_floor,customermessageboard_status,customermessageboard_title,customermessageboard_member_num) values (4,'user','測試4',getdate(),0,1,'測試內容4',2);
insert into customer_Message_Board(customermessageboard_article_floor,customermessageboard_memberid,customermessageboard_message,customermessageboard_messagetime,customermessageboard_response_floor,customermessageboard_status,customermessageboard_title,customermessageboard_member_num) values (5,'user','測試5',getdate(),0,1,'測試內容5',2);

insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('錢被吃還我錢',getdate(),null,0,3,'user1');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('網頁跳轉失敗',getdate(),null,0,2,'user2');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('聊天室閃退',getdate(),null,0,2,'user3');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('好友列表消失',getdate(),null,0,2,'user4');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('輪盤卡住',getdate(),null,0,1,'user5');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('輪盤停不下來',getdate(),null,0,1,'user6');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('不能儲值',getdate(),null,0,3,'user7');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('儲值失敗有夠爛',getdate(),null,0,3,'user8');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('遊戲無聊',getdate(),null,0,1,'user9');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('遊戲難度太低',getdate(),null,0,1,'user10');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('字真d太小',getdate(),null,0,2,'user11');


insert into article_nice values (1,'user');
insert into article_nice values (3,'user');

/*fake data*/
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl) values('Sally','123',0,'sally@gmail.com','0123456789',getdate(),2,null,500,'/resources/memberPhoto/sally.jpg');
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl) values('Mike','123',0,'mike@gmail.com','0123456789',getdate(),3,null,3504,'/resources/memberPhoto/mike.jpg');
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl) values('Ogushi','123',0,'Ogushi@gmail.com','0123456789',getdate(),1,null,400,'/resources/memberPhoto/Ogushi.png');
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl) values('Udo','123',0,'Udo@gmail.com','0123456789',getdate(),3,null,7,'/resources/memberPhoto/udo.jpg');
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl) values('Sam','123',0,'Sam@gmail.com','0123456789',getdate(),3,null,744,'/resources/memberPhoto/sam.jpg');
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl) values('John','123',0,'John@gmail.com','0123456789',getdate(),3,null,744,'/resources/memberPhoto/John.jpg');

insert into friend_list(friend_id_is_read , friend_list_friendid , friend_list_memberid , friend_notify)  values (1,6,5,1);
insert into friend_list(friend_id_is_read , friend_list_friendid , friend_list_memberid , friend_notify)  values (1,5,6,1);
insert into friend_list(friend_id_is_read , friend_list_friendid , friend_list_memberid , friend_notify)  values (1,8,5,1);
insert into friend_list(friend_id_is_read , friend_list_friendid , friend_list_memberid , friend_notify)  values (1,5,8,1);
insert into friend_list(friend_id_is_read , friend_list_friendid , friend_list_memberid , friend_notify)  values (1,9,5,1);
insert into friend_list(friend_id_is_read , friend_list_friendid , friend_list_memberid , friend_notify)  values (1,5,9,1);
insert into friend_list(friend_id_is_read , friend_list_friendid , friend_list_memberid , friend_notify)  values (1,7,5,1);
insert into friend_list(friend_id_is_read , friend_list_friendid , friend_list_memberid , friend_notify)  values (1,5,7,1);

INSERT INTO chat_room (chat_room_memberid , chat_room_message , chat_room_message_to , chat_room_time ) values (5,'安安',6,getdate());
INSERT INTO chat_room (chat_room_memberid , chat_room_message , chat_room_message_to , chat_room_time ) values (5,'在線上嗎?',6,getdate());
INSERT INTO chat_room (chat_room_memberid , chat_room_message , chat_room_message_to , chat_room_time ) values (5,'這次要賭哪支球隊',6,getdate());
INSERT INTO chat_room (chat_room_memberid , chat_room_message , chat_room_message_to , chat_room_time ) values (6,'不跟你說',5,getdate());
INSERT INTO chat_room (chat_room_memberid , chat_room_message , chat_room_message_to , chat_room_time ) values (6,'掰掰',5,getdate());
INSERT INTO chat_room (chat_room_memberid , chat_room_message , chat_room_message_to , chat_room_time ) values (5,'.....',6,getdate());

  insert into news(briefcontent,content,title,createdate) values ('2019/07/10例行性維修','系統將於2019/07/10 09:00 ~ 11:00維修，請見諒。','公告',getdate());
  insert into news(briefcontent,content,title,createdate) values ('第101期百家樂中獎名單','恭喜 user 玩家得到金額 15,150元 ! ','活動',getdate());
  insert into news(briefcontent,content,title,createdate) values ('2019/07/11例行性維修','系統將於2019/07/11 09:00 ~ 11:00維修，請見諒。','公告',getdate());
 insert into news(briefcontent,content,title,createdate) values ('2019/07/12例行性維修','系統將於2019/07/12 09:00 ~ 11:00維修，請見諒。','公告',getdate());
 insert into news(briefcontent,content,title,createdate) values ('踩地雷遊戲bug修正','更新踩地雷遊戲bug','遊戲',getdate());
 insert into news(briefcontent,content,title,createdate) values ('2019/07/14例行性維修','系統將於2019/07/14 09:00 ~ 11:00維修，請見諒。','公告',getdate());
insert into news(briefcontent,content,title,createdate) values ('2019/07/16例行性維修','系統將於2019/07/16 09:00 ~ 11:00維修，請見諒。','公告',getdate());
insert into news(briefcontent,content,title,createdate) values ('端午活動上線啦！獎品總額高達 1,000,000 元。','端午活動上線啦！獎品總額高達 1,000,000 元。','活動',getdate());
insert into news(briefcontent,content,title,createdate) values ('踩地雷遊戲bug修正','更新踩地雷遊戲bug','遊戲',getdate());

