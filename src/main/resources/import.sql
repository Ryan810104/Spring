
INSERT INTO member1 (password, email, phone) values
(123, 'aaa@gmail.com', '0912345678'),
(321, 'bbb@gmail.com', '0912345678'),
(111, '456@gmail.com', '0912311111'),
(222, '825@gmail.com', '0912322222'),
(333, '963@gmail.com', '0912333333');

INSERT INTO vip_level (vip_title) values
('垃圾'),
('普通會員'),
('高級會員'),
('尊爵不凡'),
('乾爹'),
('管理員');

insert into member(member_id,member_password,member_permission,member_email,member_phonenum,member_registered_date,member_viplevel,member_photo) values('abcdefgh','0000000000',0,'abcdefghij@abcd.com','0123456789',getdate(),0,null);
insert into member(member_id,member_password,member_permission,member_email,member_phonenum,member_registered_date,member_viplevel,member_photo) values('user','123',0,'abcdefghij@abcd.com','0123456789',getdate(),0,null);

