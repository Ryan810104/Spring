
INSERT INTO member1 (password, email, phone) values
(123, 'aaa@gmail.com', '0912345678'),
(321, 'bbb@gmail.com', '0912345678'),
(111, '456@gmail.com', '0912311111'),
(222, '825@gmail.com', '0912322222'),
(333, '963@gmail.com', '0912333333');

INSERT INTO vip_level values
(1,'垃圾'),
(2,'普通會員'),
(3,'高級會員'),
(4,'尊爵不凡'),
(5,'乾爹'),
(6,'管理員');

insert into member(member_id,member_password,member_permission,member_email,member_phonenum,member_registered_date,member_viplevel,member_photo) values('abcdefgh','0000000000',0,'abcdefghij@abcd.com','0123456789',getdate(),0,null);

