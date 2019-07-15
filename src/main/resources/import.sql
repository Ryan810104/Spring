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
(2,10000,'2017-07-12','a',1,1,'Thomas','TT'),
(3,-1000,'2017-08-12','b',1,0,'Judy','JJ'),
(1,20000,'2017-09-12','c',1,1,'Jack','JJ'),
(2,70000,'2017-10-12','a',1,1,'Thomas','TT'),
(1,-14500,'2018-11-10','c',1,0,'Jack','kk'),
(3,12220,'2019-01-13','b',1,1,'Judy','JJ'),
(2,2500,'2019-07-12','a',1,1,'Thomas','TT');

IF Object_ID('dbo.summary') IS NOT NULL
    DROP VIEW dbo.summary;


create view summary
  as
  select money_record_member_num,
         sum(money_record_cash) as total_cash
  from moneyrecord
  group by money_record_member_num;
  
  
  
  
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
(1.0,1,'https://tw.beanfun.com/bnb/images/game/5/image005.gif','垃圾'),
(0.89,2,'https://tw.beanfun.com/bnb/images/game/5/image105.gif','普通會員'),
(0.79,3,'https://tw.beanfun.com/bnb/images/game/5/image205.gif','高級會員'),
(0.69,4,'https://tw.beanfun.com/bnb/images/game/5/image305.gif','尊爵不凡'),
(0.59,5,'https://tw.beanfun.com/bnb/images/game/5/image350.gif','乾爹'),
(0.49,6,'https://tw.beanfun.com/bnb/images/game/5/image400.gif','管理員');


insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl) values('abcdefgh','0000000000',0,'abcdefghij@abcd.com','0123456789',getdate(),0,null,567,'/resources/img/default-picture.png');
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl) values('user','123',0,'abcdefghij@abcd.com','0123456789',getdate(),0,null,789,'/resources/img/default-picture.png');
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl) values('admin','123',0,'abcdefghij@abcd.com','0123456789',getdate(),0,null,56799,'/resources/img/default-picture.png');
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance,member_photourl) values('admin2','123',0,'abcdefghij@abcd.com','0123456789',getdate(),0,null,78999,'/resources/img/default-picture.png');



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



