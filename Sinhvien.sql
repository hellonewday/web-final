SELECT * FROM SinhVien;

INSERT INTO SinhVien VALUES ("B17DCCN288","Nguyễn","Hùng","Hà Nội","Công nghệ thông tin",2017,"E17CQCN01-B");
INSERT INTO SinhVien VALUES ("B17DCKT144","Trần","Thị Hà","Thái Bình","Kế toán",2017,"D17CQKT01-B");
INSERT INTO SinhVien VALUES ("B18DCVT241","Nguyễn","Tuyết","Hà Nội","Viễn thông",2018,"D17CQVT04-B");
INSERT INTO SinhVien VALUES ("B19DCCN421","Hoàng","Bích","Hà Nội","Công nghệ thông tin",2019,"E17CQCN01-B");
INSERT INTO SinhVien VALUES ("B16DCAT052","Lê","Văn Đức","Tuyên Quang","An toàn thông tin",2016,"D16CQDT01-B");
INSERT INTO SinhVien VALUES ("B16DCVT204","Trần","Hà My","Phú Thọ","Viễn thông",2016,"D16CQVT01-B");

-- Thống kê số sinh viên theo khóa 
SELECT COUNT(msv), year FROM Sinhvien GROUP BY year;

