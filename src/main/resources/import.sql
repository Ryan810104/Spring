



INSERT INTO chip(chip_memberid,chip_balanced)values
('mary1024',10000),
('Jason0924',-1000),
('king2024',20000),
('GGGG7124',70000),
('QQQQ3624',14500),
('MMNH9574',12220),
('Liiy9924',2500);


INSERT INTO chipRecord values
('mary1024',10000,getdate()),
('Jason0924',-1000,getdate()),
('king2024',20000,getdate()),
('GGGG7124',70000,getdate()),
('QQQQ3624',14500,getdate()),
('MMNH9574',12220,getdate()),
('Liiy9924',2500,getdate());


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




