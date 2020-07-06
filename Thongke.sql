-- Thống kê số sinh viên theo khoa
SELECT COUNT(msv), department FROM Sinhvien GROUP BY department;

-- Thống kê số sinh viên theo khóa 
SELECT COUNT(msv), year FROM Sinhvien GROUP BY year;

-- Thống kê top 5 sinh viên có điểm trung bình cao nhất. 
SELECT sinhvien.firstname, sinhvien.lastname, sinhvien.class, sinhvien.msv,quanly.final_grade*0.5 + quanly.project_grade*0.2 + quanly.test_grade*0.2 + quanly.oral_grade*0.1 AS gpa FROM Quanly INNER JOIN Sinhvien ON Quanly.msv = sinhvien.msv order by gpa desc limit 5;

-- Thống kê số sinh viên trong lớp học.
SELECT A.sosinhvien, mon.name FROM (SELECT COUNT(quanly.msv) AS sosinhvien, loptc.mon FROM Quanly INNER JOIN LopTC ON quanly.lop = loptc.id GROUP BY loptc.mon) AS A INNER JOIN Mon ON Mon.id = A.mon;

SELECT COUNT(msv) AS sosinhvien, year FROM Sinhvien GROUP BY year;