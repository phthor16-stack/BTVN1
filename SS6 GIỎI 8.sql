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
CREATE TABLE Sach (
    MaSach INT AUTO_INCREMENT PRIMARY KEY,
    TenSach VARCHAR(200) NOT NULL,
    NamXuatBan INT,
    MaTacGia INT,
    FOREIGN KEY (MaTacGia) REFERENCES TacGia(MaTacGia)
);
INSERT INTO Sach (TenSach, NamXuatBan, MaTacGia)
VALUES
('Cho tôi xin một vé đi tuổi thơ', 2008, 1),
('Mắt biếc', 1990, 1),
('Harry Potter và Hòn đá Phù thủy', 1997, 2),
('Harry Potter và Phòng chứa Bí mật', 1998, 2),
('Đắc nhân tâm', 1936, 4);
SELECT *
FROM Sach
WHERE NamXuatBan >= 1990 AND NamXuatBan <= 2000;
SELECT *
FROM Sach
WHERE TenSach = 'Harry Potter và Hòn đá Phù thủy'
OR TenSach = 'Harry Potter và Phòng chứa Bí mật';
SELECT *
FROM Sach
WHERE MaTacGia = 1 AND NamXuatBan > 2000;
SELECT *
FROM Sach
ORDER BY NamXuatBan DESC;
SELECT *
FROM DocGia
ORDER BY TenDocGia ASC;
CREATE TABLE PhieuMuon (
    MaPhieuMuon INT AUTO_INCREMENT PRIMARY KEY,
    NgayMuon DATE NOT NULL,
    NgayTra DATE,
    MaDocGia INT NOT NULL,
    MaSach INT NOT NULL,
    FOREIGN KEY (MaDocGia) REFERENCES DocGia(MaDocGia),
    FOREIGN KEY (MaSach) REFERENCES Sach(MaSach)
);
ALTER TABLE Sach
ADD COLUMN TrangThai VARCHAR(50);
UPDATE Sach
SET TrangThai = 'Còn hàng'
WHERE NamXuatBan < 2000;
UPDATE Sach
SET TrangThai = 'Mới nhập'
WHERE NamXuatBan >= 2000;
















