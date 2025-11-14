CREATE TABLE Sach (

    MaSach VARCHAR(10),

    TenSach VARCHAR(255),

    TacGia VARCHAR(255),

    TheLoai VARCHAR(100),

    GiaBan INT

);

 

INSERT INTO Sach (MaSach, TenSach, TacGia, TheLoai, GiaBan) VALUES

('SGK01', 'Đắc Nhân Tâm', 'Dale Carnegie', 'Kỹ năng sống', 120000),

('SVK02', 'Nhà Giả Kim', 'Paulo Coelho', 'Văn học', 89000),

('STN03', 'Lược Sử Loài Người', 'Yuval Noah Harari', 'Lịch sử', 150000),

('SKD04', 'Tư Duy Nhanh và Chậm', 'Daniel Kahneman', 'Kinh doanh', 99000);

-- 1. Tạo bảng và dữ liệu mẫu (chỉ chạy 1 lần)
CREATE TABLE Sach (
    MaSach  VARCHAR(10),
    TenSach VARCHAR(255),
    TacGia  VARCHAR(255),
    TheLoai VARCHAR(100),
    GiaBan  INT
);

INSERT INTO Sach (MaSach, TenSach, TacGia, TheLoai, GiaBan) VALUES
('SGK01', 'Đắc Nhân Tâm', 'Dale Carnegie', 'Kỹ năng sống', 120000),
('SVK02', 'Nhà Giả Kim', 'Paulo Coelho', 'Văn học', 89000),
('STN03', 'Lược Sử Loài Người', 'Yuval Noah Harari', 'Lịch sử', 150000),
('SKD04', 'Tư Duy Nhanh và Chậm', 'Daniel Kahneman', 'Kinh doanh', 99000);

-- 2. Cập nhật giá bán sách SKD04 thành 180000
UPDATE Sach
SET GiaBan = 180000
WHERE MaSach = 'SKD04';

-- 3. Cập nhật lại tên tác giả sách SVK02
UPDATE Sach
SET TacGia = 'Paulo Coelho'
WHERE MaSach = 'SVK02';

-- 4. Xóa sách Đắc Nhân Tâm (mã SGK01)
DELETE FROM Sach
WHERE MaSach = 'SGK01';

-- 5. Hiển thị toàn bộ danh sách sách còn lại
SELECT * FROM Sach;
