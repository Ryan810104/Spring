
INSERT INTO Chip(chip_member_num,chip_balanced,chip_type,win,play_round)values
(1,200,'a',1,1),
(2,-1000,'b',0,1),
(1,200,'b',1,1),
(1,-200,'b',0,1),
(3,400,'c',1,1),
(3,-200,'a',0,1),
(1,200,'a',1,1);


INSERT INTO Moneyrecord(money_record_member_num,money_record_time,money_record_point,money_record_chip,money_record_chiptype)values
(1,getdate(),10000,10000,'a'),
(3,getdate(),1000,1000,'b'),
(2,getdate(),20000,20000,'c'),
(2,getdate(),70000,70000,'a'),
(2,getdate(),14500,14500,'b'),
(1,getdate(),12220,12220,'a'),
(3,getdate(),2500,2500,'c');

INSERT INTO Chiprecord(chip_record_member_num,chip_record_chip,chip_record_time,chip_record_chiptype,play_round,win) values
(2,10000,getdate(),'a',1,1),
(3,-1000,getdate(),'b',1,0),
(1,20000,getdate(),'c',1,1),
(2,70000,getdate(),'a',1,1),
(1,-14500,getdate(),'c',1,0),
(3,12220,getdate(),'b',1,1),
(2,2500,getdate(),'a',1,1);

IF Object_ID('dbo.summary') IS NOT NULL
    DROP VIEW dbo.summary;


create view summary
  as
  select money_record_member_num,
         sum(money_record_point) as total_point
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
  select chip_member_num,sum(chip_balanced) as summary 
  from chip 
  group by chip_member_num;
  
  

 INSERT INTO vip_level values
(1.0,1,'https://tw.beanfun.com/bnb/images/game/5/image005.gif','垃圾'),
(0.89,2,'https://tw.beanfun.com/bnb/images/game/5/image105.gif','普通會員'),
(0.79,3,'https://tw.beanfun.com/bnb/images/game/5/image205.gif','高級會員'),
(0.69,4,'https://tw.beanfun.com/bnb/images/game/5/image305.gif','尊爵不凡'),
(0.59,5,'https://tw.beanfun.com/bnb/images/game/5/image350.gif','乾爹'),
(0.49,6,'https://tw.beanfun.com/bnb/images/game/5/image400.gif','管理員');


insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance) values('abcdefgh','0000000000',0,'abcdefghij@abcd.com','0123456789',getdate(),0,null,567);
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance) values('user','123',0,'abcdefghij@abcd.com','0123456789',getdate(),0,null,789);
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance) values('admin','123',0,'abcdefghij@abcd.com','0123456789',getdate(),0,null,56799);
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,create_time,member_viplevel,member_photo,money_balance) values('admin2','123',0,'abcdefghij@abcd.com','0123456789',getdate(),0,null,78999);



insert into customer_Message_Board(customermessageboard_article_floor,customermessageboard_memberid,customermessageboard_message,customermessageboard_messagetime,customermessageboard_response_floor,customermessageboard_status,customermessageboard_title) values (1,'user','測試1',getdate(),0,1,'測試內容1');
insert into customer_Message_Board(customermessageboard_article_floor,customermessageboard_memberid,customermessageboard_message,customermessageboard_messagetime,customermessageboard_response_floor,customermessageboard_status,customermessageboard_title) values (2,'user','測試2',getdate(),0,1,'測試內容2');
insert into customer_Message_Board(customermessageboard_article_floor,customermessageboard_memberid,customermessageboard_message,customermessageboard_messagetime,customermessageboard_response_floor,customermessageboard_status,customermessageboard_title) values (3,'user','測試3',getdate(),0,1,'測試內容3');
insert into customer_Message_Board(customermessageboard_article_floor,customermessageboard_memberid,customermessageboard_message,customermessageboard_messagetime,customermessageboard_response_floor,customermessageboard_status,customermessageboard_title) values (4,'user','測試4',getdate(),0,1,'測試內容4');
insert into customer_Message_Board(customermessageboard_article_floor,customermessageboard_memberid,customermessageboard_message,customermessageboard_messagetime,customermessageboard_response_floor,customermessageboard_status,customermessageboard_title) values (5,'user','測試5',getdate(),0,1,'測試內容5');

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



