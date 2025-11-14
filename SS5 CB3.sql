CREATE TABLE DonHang (

    MaDonHang INT,

    NgayDatHang DATE,

    TongGiaTri INT,

    ThanhPhoGiaoHang VARCHAR(100)

);

 

INSERT INTO DonHang (MaDonHang, NgayDatHang, TongGiaTri, ThanhPhoGiaoHang) VALUES

(101, '2023-10-15', 1500000, 'Hà Nội'),

(102, '2023-10-18', 800000, 'Đà Nẵng'),

(103, '2023-10-20', 2200000, 'TP. Hồ Chí Minh'),

(104, '2023-10-22', 750000, 'Hà Nội'),

(105, '2023-10-25', 3100000, 'TP. Hồ Chí Minh');
-- 1. Tạo bảng và dữ liệu mẫu (chỉ cần chạy 1 lần)
CREATE TABLE DonHang (
    MaDonHang INT,
    NgayDatHang DATE,
    TongGiaTri INT,
    ThanhPhoGiaoHang VARCHAR(100)
);

INSERT INTO DonHang (MaDonHang, NgayDatHang, TongGiaTri, ThanhPhoGiaoHang) VALUES
(101, '2023-10-15', 1500000, 'Hà Nội'),
(102, '2023-10-18', 800000, 'Đà Nẵng'),
(103, '2023-10-20', 2200000, 'TP. Hồ Chí Minh'),
(104, '2023-10-22', 750000, 'Hà Nội'),
(105, '2023-10-25', 3100000, 'TP. Hồ Chí Minh');

----------------------------------------------------
-- 2. Các câu truy vấn theo yêu cầu
----------------------------------------------------

-- (1) Liệt kê tất cả các đơn hàng có tổng giá trị > 1,000,000
SELECT *
FROM DonHang
WHERE TongGiaTri > 1000000;

-- (2) Liệt kê tất cả các đơn hàng giao đến 'TP. Hồ Chí Minh'
SELECT *
FROM DonHang
WHERE ThanhPhoGiaoHang = 'TP. Hồ Chí Minh';

-- (3) Liệt kê tất cả đơn hàng, sắp xếp theo TongGiaTri từ cao xuống thấp
SELECT *
FROM DonHang
ORDER BY TongGiaTri DESC;

-- (4) Liệt kê danh sách các thành phố (duy nhất, không trùng lặp) đã có đơn hàng
SELECT DISTINCT ThanhPhoGiaoHang
FROM DonHang
ORDER BY ThanhPhoGiaoHang ASC;
