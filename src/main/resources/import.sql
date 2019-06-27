
INSERT INTO member1 (password, email, phone) values
(123, 'aaa@gmail.com', '0912345678'),
(321, 'bbb@gmail.com', '0912345678'),
(111, '456@gmail.com', '0912311111'),
(222, '825@gmail.com', '0912322222'),
(111, '456@gmail.com', '0912311223'),
(012, '741@gmail.com', '0912311123'),
(021, '993@gmail.com', '0912311321'),
(120, '741@gmail.com', '0912311456'),
(210, '852@gmail.com', '0912311987'),
(666, '487@gmail.com', '0912311852'),
(111, '456@gmail.com', '0912311111'),
(222, '825@gmail.com', '0912322222'),
(111, '456@gmail.com', '0912311223'),
(012, '741@gmail.com', '0912311123'),
(021, '993@gmail.com', '0912311321'),
(120, '741@gmail.com', '0912311456'),
(210, '852@gmail.com', '0912311987'),
(177, '465@gmail.com', '0912311743'),
(333, '963@gmail.com', '0912333333');


INSERT INTO test (password, email, phone, datetime) values
(123, 'aaa@gmail.com', '0912345678','2012/10/10'),
(321, 'bbb@gmail.com', '0912345678','2012/08/10'),
(111, '456@gmail.com', '0912311111','2016/09/10'),
(222, '825@gmail.com', '0912322222','2017/11/10'),
(111, '456@gmail.com', '0912311223','2018/12/10'),
(012, '741@gmail.com', '0912311123','2013/01/10'),
(021, '993@gmail.com', '0912311321','2012/02/10'),
(120, '741@gmail.com', '0912311456','2012/03/10'),
(210, '852@gmail.com', '0912311987','2011/04/10'),
(666, '487@gmail.com', '0912311852','2009/05/10'),
(111, '456@gmail.com', '0912311111','2002/06/10'),
(222, '825@gmail.com', '0912322222','2012/07/10'),
(111, '456@gmail.com', '0912311223','2010/05/10'),
(012, '741@gmail.com', '0912311123','2019/03/10'),
(021, '993@gmail.com', '0912311321','2020/10/10'),
(120, '741@gmail.com', '0912311456','2021/10/11'),
(210, '852@gmail.com', '0912311987','2022/11/10'),
(177, '465@gmail.com', '0912311743','2014/10/20'),
(333, '963@gmail.com', '0912333333','2015/03/10');


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




