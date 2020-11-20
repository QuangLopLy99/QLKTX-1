
delete from tblmonthly;
delete from tblcheckout;
delete from tblcheckin;
delete from tblxe;
delete from tblkhach;
delete from tblsinhviendichvu;
delete from tblsinhvien;
delete from tblphong;
delete from tbldichvu;

ALTER TABLE tblphong AUTO_INCREMENT = 1;
ALTER TABLE tblsinhvien AUTO_INCREMENT = 1;
ALTER TABLE tblkhach AUTO_INCREMENT = 1;
ALTER TABLE tblsinhviendichvu AUTO_INCREMENT = 1;
ALTER TABLE tblxe AUTO_INCREMENT = 1;
ALTER TABLE tblcheckin AUTO_INCREMENT = 1;
ALTER TABLE tblcheckout AUTO_INCREMENT = 1;
ALTER TABLE tblmonthly AUTO_INCREMENT = 1;
ALTER TABLE tbldichvu AUTO_INCREMENT = 1;

insert into tblphong(sophong, loaiphong, dongia, songuoi)
values('105', 'phong thuong', 500000, 6),
('106', 'phong thuong', 300000, 8),
('107', 'phong thuong', 700000, 4),
('201', 'phong vip', 1000000, 8),
('202', 'phong vip', 2000000, 6),
('203', 'phong vip', 3000000, 4),
('304', 'phong thuong', 800000, 6),
('305', 'phong thuong', 900000, 4),
('306', 'phong thuong', 500000, 6);

insert into tblsinhvien(masv, ten, socmt, ngaysinh, lop, quequan, phongid)
values('B17DCCN335', 'Hoàng Tăng Khải', '123456789', 19990128,'CNPM05', 'Hà Nội', 1),
('B17DCCN359', 'Phạm Trung Kiên', '123456987', 19990127,'CNPM05', 'Quảng Ninh', 1),
('B17DCCN563', 'Nguyễn Tất Thắng', '123458769', 19990126,'CNPM05', 'Thái Bình', 2),
('B17DCCN335', 'Hoàng Minh Tâm', '123476589', 19990125,'CNPM05', 'Hà Nội', 2),
('B17DCCN335', 'Bùi Xuân Quang', '125436789', 19990124,'CNPM05', 'Thái Bình', 3);


insert into tblkhach(socmt, ten, ngaysinh, sinhvienid)
values('123459768', 'Nguyễn Quang Huy', 19991208, 1),
('123459687', 'Nguyễn Ngọc Tuấn', 19990819, 2),
('123453454', 'Nguyễn Đức Thủy', 19950819, 3),
('123454325', 'Nguyễn Tuấn Nghĩa', 19990615, 4),
('123475674', 'Hoàng Tùng Lâm', 20000820, 2),
('543453214', 'Hoàng Hải An', 20010919, 1),
('543459687', 'Nguyễn Ngọc Ánh', 19990819, 3),
('876459768', 'Quách Gia Huy', 19990708, 5);

insert into tbldichvu(ten, dongia, thoigian)
values('Trông xe', 3000, 8),
('Thuê xe', 100000, 24),
('Giặt là', 200000, 2),
('Thuê phòng ăn', 50000, 2);

insert into tblxe(bienso, sinhvienid)
values('29Y5 12345', 1),
('14Y5 03739', 2),
('17Y5 12134', 3),
('29Z6 7481', 4),
('17Y5 84353', 5);


insert into tblsinhviendichvu(soluong, sinhvienid, dichvuid)
values(1, 1, 1),
(2, 2, 2),
(1, 3, 2),
(1, 1, 3),
(1, 4, 4);

insert into tblmonthly(sinhvienid, thang, xeid)
values(1, 11, 1),
(2, 11, 2),
(3, 12, 3),
(4, 12, 4);

insert into tblcheckin(xeid, thoigian)
values(1, 20201119080000),
(2, 20201111070000),
(3, 20201119090000),
(4, 20201116100000),
(5, 20201113160000);

insert into tblcheckout(checkinid, thoigian)
values(2, 20201117070000),
(4, 20201119080000),
(5, 20201114070000);


