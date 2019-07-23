INSERT INTO Chip(chip_member_num,chip_balanced,chip_type,win,play_round,chip_first_name,chip_nick_name)values
(1,200,'a',1,1.0,'Sally','莎莉'),
(2,-1000,'b',0,1.0,'Mike','麥克'),
(1,200,'b',1,1.0,'Sally','莎莉'),
(1,-200,'b',0,1.0,'Sally','莎莉'),
(3,400,'c',1,1.0,'Ogushi','奧斯'),
(3,200,'a',1,1.0,'Ogushi','奧斯'),
(3,600,'b',1,1.0,'Ogushi','奧斯'),
(2,800,'b',1,1.0,'Mike','麥克'),
(1,1000,'c',1,1.0,'Sally','莎莉'),
(1,2000,'a',1,1.0,'Sally','莎莉'),
(3,1400,'b',1,1.0,'Ogushi','奧斯'),
(2,1400,'a',1,1.0,'Mike','麥克'),
(1,-200,'a',0,1.0,'Sally','莎莉'),
(1,200,'b',1,1.0,'Sally','莎莉'),
(2,200,'c',1,1.0,'Mike','麥克'),
(4,600,'a',1,1.0,'Udo','約督'),
(4,600,'c',1,1.0,'Udo','約督'),
(4,600,'b',1,1.0,'Udo','約督'),
(4,-200,'c',0,1.0,'Udo','約督'),
(5,2000,'a',1,1.0,'Sam','山姆'),
(5,1400,'b',1,1.0,'Sam','山姆'),
(5,1400,'a',1,1.0,'Sam','山姆'),
(6,-200,'a',0,1.0,'John','強'),
(6,200,'b',1,1.0,'John','強'),
(6,600,'c',1,1.0,'John','強'),
(1,200,'b',1,1.0,'Sally','莎莉');


INSERT INTO Moneyrecord(money_record_member_num,money_record_time,money_record_cash,money_record_chip,money_record_type,money_record_first_name,money_record_nick_name)values
(1,getdate(),2000,10000,'超值禮包','Sally','莎莉'),
(3,getdate(),5000,50000,'進階禮包','Ogushi','奧斯'),
(2,getdate(),10000,150000,'高級禮包','Mike','麥克'),
(2,getdate(),2000,10000,'超值禮包','Thomas','麥克'),
(2,getdate(),10000,150000,'高級禮包','Mike','麥克'),
(1,getdate(),5000,50000,'進階禮包','Sally','莎莉'),
(4,getdate(),5000,50000,'進階禮包','Udo','約督'),
(4,getdate(),10000,150000,'高級禮包','Udo','約督'),
(5,getdate(),10000,150000,'高級禮包','Sam','山姆'),
(5,getdate(),5000,50000,'進階禮包','Sam','山姆'),
(6,getdate(),2000,10000,'超值禮包','John','強'),
(3,getdate(),10000,150000,'高級禮包','Ogushi','奧斯');



INSERT INTO Chiprecord(chip_record_member_num,chip_record_chip,chip_record_time,chip_record_chiptype,play_round,win,chip_record_first_name,chip_record_nick_name) values
(2,1000,'2017-07-12','a',1,1,'Mike','麥克'),
(2,500,'2017-07-13','a',1,1,'Mike','麥克'),
(3,-200,'2017-07-14','a',1,0,'Ogushi','奧斯'),
(1,2000,'2017-07-20','a',1,1,'Sally','莎莉'),
(4,600,'2017-07-15','a',1,1,'Udo','約督'),
(3,-1000,'2017-08-12','b',1,0,'Ogushi','奧斯'),
(3,200,'2017-08-13','b',1,1,'Ogushi','奧斯'),
(2,-800,'2017-08-13','b',1,0,'Mike','麥克'),
(4,1200,'2017-08-15','b',1,1,'Udo','約督'),
(1,2000,'2017-09-12','c',1,1,'Sally','莎莉'),
(1,-800,'2017-09-13','c',1,0,'Sally','莎莉'),
(2,-400,'2017-09-14','c',1,0,'Mike','麥克'),
(3,600,'2017-09-15','c',1,1,'Ogushi','奧斯'),
(4,1200,'2017-09-16','c',1,1,'Udo','約督'),
(2,700,'2017-10-12','a',1,1,'Mike','麥克'),
(1,-1400,'2018-11-10','c',1,0,'Sally','莎莉'),
(5,1200,'2019-02-13','b',1,1,'Sam','山姆'),
(5,1200,'2018-09-16','c',1,1,'Sam','山姆'),
(5,700,'2018-10-12','a',1,1,'Sam','山姆'),
(1,-1400,'2018-11-10','c',1,0,'Sally','莎莉'),
(6,200,'2017-08-20','b',1,1,'John','強'),
(6,-200,'2017-08-31','a',1,0,'John','強'),
(2,2500,'2019-07-12','a',1,1,'Mike','麥克');

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
  
  IF Object_ID('dbo.companyearn') IS NOT NULL
    DROP VIEW dbo.companyearn;
 create view companyearn
 as
 select FORMAT(sum(money_record_cash), 'N0') as total_cash from moneyrecord;
   
 INSERT INTO vip_level values
(1.0,0,'https://tw.beanfun.com/bnb/images/game/5/image005.gif','初級會員'),
(0.89,1,'https://tw.beanfun.com/bnb/images/game/5/image105.gif','中級會員'),
(0.79,2,'https://tw.beanfun.com/bnb/images/game/5/image205.gif','高級會員'),
(0.69,3,'https://tw.beanfun.com/bnb/images/game/5/image305.gif','尊爵不凡'),
(0.59,4,'https://tw.beanfun.com/bnb/images/game/5/image350.gif','乾爹'),
(0.49,5,'https://tw.beanfun.com/bnb/images/game/5/image450.gif','管理員');


insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl) values('abcdefgh','0000000000',0,'abcdefghij@abcd.com','0123456789',getdate(),1,null,567,'/resources/img/default-picture.png');
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl,member_nick_name,member_fitst_name,member_last_name,member_location) values('user','123',0,'GodOfGamblers@gmail.com','3345678',getdate(),2,null,789,'/resources/memberPhoto/user.jpg','賭神','高','進','Taipei');
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl,member_nick_name,member_fitst_name,member_last_name,member_location) values('admin','123',0,'abcdefghij@abcd.com','02-87654321',getdate(),5,null,56799,'/resources/img/team/admin.jpg','救世主','無','管理員','公司');
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl) values('admin2','123',0,'abcdefghij@abcd.com','0123456789',getdate(),3,null,78999,'/resources/img/default-picture.png');




insert into customer_Message_Board(customermessageboard_article_floor,customermessageboard_memberid,customermessageboard_message,customermessageboard_messagetime,customermessageboard_response_floor,customermessageboard_status,customermessageboard_title,customermessageboard_member_num) values (1,'高進','我是誰?',getdate(),0,1,'我是巧克力',2);
insert into customer_Message_Board(customermessageboard_article_floor,customermessageboard_memberid,customermessageboard_message,customermessageboard_messagetime,customermessageboard_response_floor,customermessageboard_status,customermessageboard_title,customermessageboard_member_num) values (2,'John','天啊!',getdate(),0,1,'竟然出現頭獎了?!!!',10);
insert into customer_Message_Board(customermessageboard_article_floor,customermessageboard_memberid,customermessageboard_message,customermessageboard_messagetime,customermessageboard_response_floor,customermessageboard_status,customermessageboard_title,customermessageboard_member_num) values (3,'Mike','我有預感我要大贏錢了，輪盤我來辣~~~',getdate(),0,1,'今天這天象......',6);
insert into customer_Message_Board(customermessageboard_article_floor,customermessageboard_memberid,customermessageboard_message,customermessageboard_messagetime,customermessageboard_response_floor,customermessageboard_status,customermessageboard_title,customermessageboard_member_num) values (4,'Sally','我覺得是暴龍，支持勇士的站出來說服我吧!!',getdate(),0,1,'今天到底誰會贏',5);
insert into customer_Message_Board(customermessageboard_article_floor,customermessageboard_memberid,customermessageboard_message,customermessageboard_messagetime,customermessageboard_response_floor,customermessageboard_status,customermessageboard_title,customermessageboard_member_num) values (5,'Sam','今天好衰喔，希望明天能更好',getdate(),0,1,'輪盤又輸了2000  可惡',9);
insert into customer_Message_Board(customermessageboard_article_floor,customermessageboard_memberid,customermessageboard_message,customermessageboard_messagetime,customermessageboard_response_floor,customermessageboard_status,customermessageboard_title,customermessageboard_member_num) values (6,'Ogushi','趕羚羊旺八彈，祝你們全部輸錢辣',getdate(),0,1,'fuuuuuuukyou~~',7);
insert into customer_Message_Board(customermessageboard_article_floor,customermessageboard_memberid,customermessageboard_message,customermessageboard_messagetime,customermessageboard_response_floor,customermessageboard_status,customermessageboard_title,customermessageboard_member_num) values (7,'Udo','嘴臭仔Ogushi滾辣，小心生兒子沒闢演',getdate(),0,1,'不爽不要玩',8);

insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('錢被吃還我錢',getdate(),null,0,3,'Sally');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('網頁跳轉失敗',getdate(),null,0,2,'Mike');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id,cmb_num) values ('文章編號:6	(勿更改以利查證)',getdate(),null,0,4,'Sam',6);
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('字真d太小',getdate(),null,0,2,'Udo');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('聊天室閃退',getdate(),null,0,2,'Ogushi');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('好友列表消失',getdate(),null,0,2,'Sally');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('輪盤卡住',getdate(),null,0,1,'Mike');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('輪盤停不下來',getdate(),null,0,1,'Sally');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('不能儲值',getdate(),null,0,3,'Ogushi');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('儲值失敗有夠爛',getdate(),null,0,3,'Mike');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id,cmb_num) values ('文章編號:7	(勿更改以利查證)',getdate(),null,0,4,'Sally',7);
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('遊戲無聊',getdate(),null,0,1,'Udo');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('遊戲難度太低',getdate(),null,0,1,'Ogushi');
insert into complaint(complaint_message,complaint_messagetime,complaint_response,complaint_status,complaint_type,member_id) values ('金額不符',getdate(),null,0,3,'Udo');

insert into article_nice values (1,'user');
insert into article_nice values (3,'user');

/*fake data*/
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl,member_nick_name,member_fitst_name,member_last_name,member_location) values('Sally','123',0,'sally@gmail.com','0987-654-321',getdate(),2,null,500,'/resources/memberPhoto/sally.jpg','莎莉','Sally','Michaela','Taipei');
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl,member_nick_name,member_fitst_name,member_last_name,member_location) values('Mike','123',0,'mike@gmail.com','0123456789',getdate(),3,null,3504,'/resources/memberPhoto/mike.jpg','麥克','Mike','Smith','Taipei');
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl,member_nick_name,member_fitst_name,member_last_name,member_location) values('Ogushi','123',0,'Ogushi@gmail.com','0123456789',getdate(),1,null,400,'/resources/memberPhoto/Ogushi.png','奧斯','Ogushi','Jones','Taipei');
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl,member_nick_name,member_fitst_name,member_last_name,member_location) values('Udo','123',0,'Udo@gmail.com','0123456789',getdate(),3,null,7,'/resources/memberPhoto/udo.jpg','約督','Udo','Williams','Taipei');
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl,member_nick_name,member_fitst_name,member_last_name,member_location) values('Sam','123',0,'Sam@gmail.com','0123456789',getdate(),3,null,744,'/resources/memberPhoto/sam.jpg','山姆','Sam','Taylor','Taipei');
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl,member_nick_name,member_fitst_name,member_last_name,member_location) values('John','123',0,'John@gmail.com','0123456789',getdate(),3,null,744,'/resources/memberPhoto/John.jpg','強','John','Brown','Taipei');

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

