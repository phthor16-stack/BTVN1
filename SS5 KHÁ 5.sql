-- 1. Tạo bảng & dữ liệu mẫu 
CREATE TABLE KhachHangThanThiet (
    MaKH INT,
    HoTen VARCHAR(255),
    ThanhPho VARCHAR(100),
    TongChiTieu INT,
    SoDonHang INT,
    LanCuoiMuaHang DATE
);

INSERT INTO KhachHangThanThiet (MaKH, HoTen, ThanhPho, TongChiTieu, SoDonHang, LanCuoiMuaHang) VALUES
(1, 'Nguyễn Thị Mai',     'Hà Nội',            15000000, 12, '2023-10-28'),
(2, 'Trần Văn Nam',       'TP. Hồ Chí Minh',   25000000, 20, '2023-10-15'),
(3, 'Lê Minh Anh',        'Hà Nội',             3000000,  2, '2023-10-05'),
(4, 'Phạm Hồng Nhung',    'Đà Nẵng',            8000000,  8, '2023-05-20'),
(5, 'Hoàng Tuấn Kiệt',    'Hà Nội',            18000000, 15, '2023-09-30'),
(6, 'Vũ Bích Phương',     'TP. Hồ Chí Minh',    4500000,  3, '2023-04-11');

-- 2. Các truy vấn theo yêu cầu
-- (1) Khách hàng VIP:
-- TongChiTieu > 10,000,000 VÀ SoDonHang >= 10
-- Sắp xếp theo TongChiTieu giảm dần
SELECT *
FROM KhachHangThanThiet
WHERE TongChiTieu > 10000000
  AND SoDonHang >= 10
ORDER BY TongChiTieu DESC;

-- (2) Khách hàng mới tiềm năng ở Hà Nội:
-- SoDonHang < 5 VÀ TongChiTieu > 2,000,000
SELECT *
FROM KhachHangThanThiet
WHERE ThanhPho   = 'Hà Nội'
  AND SoDonHang  < 5
  AND TongChiTieu > 2000000;

-- (3) Khách hàng cần “hâm nóng”:
-- LanCuoiMuaHang trước ngày 2023-09-01
SELECT *
FROM KhachHangThanThiet
WHERE LanCuoiMuaHang < '2023-09-01';

-- (4) Cập nhật trạng thái cho nhóm (3):
-- Giả sử tái sử dụng cột ThanhPho để lưu trạng thái
UPDATE KhachHangThanThiet
SET ThanhPho = 'Khách hàng cũ'
WHERE LanCuoiMuaHang < '2023-09-01';




