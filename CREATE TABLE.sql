create table User(
	id int not null auto_increment,
    username varchar(255) not null,
    password varchar(255) not null,
    role enum("Quản lý", "Nhân viên"),
    primary key (id)
);

create table SinhVien(
	msv varchar(255) unique not null,
    firstname varchar(255) not null,
    lastname varchar(255) not null,
    location varchar(255) not null,
    department enum("Công nghệ thông tin","An toàn thông tin","Kế toán","Điện tử","Viễn thông"),
    year int, 
	class varchar(255),
    primary key (msv)
);

create table Mon(
	id int not null auto_increment, 
    name varchar(255),
    credit int, 
    department enum("Công nghệ thông tin","An toàn thông tin","Kế toán","Điện tử","Viễn thông","Cơ bản"),
    description varchar(255),
    primary key(id)
);

create table LopTC(
	id int not null auto_increment,
    lecturer varchar(255) not null, 
    mon int, 
    date int,
    session int,
    primary key (id),
    foreign key (mon) references Mon(id)
);

create table QuanLy (
	msv varchar(255), 
    lop int, 
    oral_grade int,
    test_grade int,
    project_grade int, 
    final_grade int, 
    foreign key(msv) references SinhVien(msv),
    foreign key(lop) references LopTC(id)
);