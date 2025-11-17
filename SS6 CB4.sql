use quanlythuvien;
insert into tacgia (tentacgia, quoctich)
value ('Nguyễn Nhật Ánh', 'Việt Nam'),
('J.K. Rowling', 'Anh'),
('Haruki Murakami', 'Nhật Bản'),
('Dale Carnegie', 'Mỹ');
insert into DocGia (TenDocGia, DiaChi, SoDienThoai)
value('Nguyễn Văn A', '123 Đường ABC, Hà Nội', '0901234567'),
('Trần Thị B', '456 Đường XYZ, TP.HCM', '0912345678'),
('Lê Văn C', '789 Đường LMN, Đà Nẵng', '0923456789'),
('Phạm Thị D', '101 Đường QRS, Hà Nội', '0934567890'),
('Hoàng Văn E', '202 Đường UVW, Cần Thơ', '0945678901');
SELECT *
FROM TacGia
WHERE QuocTich = 'Việt Nam';
SELECT *
FROM DocGia
WHERE DiaChi LIKE '%Hà Nội%';
SELECT TenDocGia, SoDienThoai
FROM DocGia;
UPDATE DocGia
SET DiaChi = '200 Đường XYZ, TP. Thủ Đức'
WHERE MaDocGia = 2;
DELETE FROM TacGia
WHERE MaTacGia = 3;




