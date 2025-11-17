-- 1. Tạo cơ sở dữ liệu
create database QuanLyThuVien;
-- 2. Sử dụng cơ sở dữ liệu vừa tạo
use QuanLyThuVien;
-- 3. Tạo bảng TacGia
create table TacGia (
    MaTacGia int auto_increment primary key,
    TenTacGia varchar(100) not null,
    QuocTich varchar(50)
);
-- 4. Tạo bảng DocGia
create table DocGia (
    MaDocGia int auto_increment primary key,
    TenDocGia varchar (100) not null,
    DiaChi varchar(255),
    SoDienThoai varchar(15) unique
);
