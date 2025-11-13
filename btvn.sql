/* =========================
   BÀI 1: Tạo CSDL và bảng Employees (cơ bản)
   ========================= */

-- Tạo CSDL
CREATE DATABASE IF NOT EXISTS CompanyDB;

-- Sử dụng CSDL
USE CompanyDB;

-- Tạo bảng Employees với các cột cơ bản
CREATE TABLE IF NOT EXISTS Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName  VARCHAR(50),
    LastName   VARCHAR(50)
);


/* =========================
   BÀI 2: Thêm cột HireDate và Salary
   ========================= */

ALTER TABLE Employees
    ADD COLUMN HireDate DATE,
    ADD COLUMN Salary   INT;


/* =========================
   BÀI 3: Thêm 3 bản ghi nhân viên ban đầu
   ========================= */
-- Chú ý: dữ liệu ví dụ, bạn có thể đổi theo ý muốn

INSERT INTO Employees (FirstName, LastName, HireDate, Salary)
VALUES
('John',  'Smith',   '2020-03-15', 4000),
('David', 'Johnson', '2019-07-10', 4700),
('Anna',  'Lee',     '2022-01-05', 8000);


/* =========================
   BÀI 4: Cập nhật lương & ngày tuyển dụng
   ========================= */

-- 1. Cập nhật lương nhân viên có EmployeeID = 2 thành 4800
UPDATE Employees
SET Salary = 4800
WHERE EmployeeID = 2;

-- 2. Cập nhật HireDate của nhân viên có FirstName = 'David' thành 2021-08-01
UPDATE Employees
SET HireDate = '2021-08-01'
WHERE FirstName = 'David';


/* =========================
   BÀI 5: Xóa nhân viên
   ========================= */

-- 1. Xóa nhân viên có EmployeeID = 1
DELETE FROM Employees
WHERE EmployeeID = 1;

-- 2. Xóa tất cả nhân viên có lương < 5000
DELETE FROM Employees
WHERE Salary < 5000;


/* =========================
   BÀI 6: Truy vấn danh sách nhân viên
   ========================= */

-- 1. Hiển thị toàn bộ nhân viên
SELECT *
FROM Employees;

-- 2. Hiển thị nhân viên có Salary > 5000
SELECT *
FROM Employees
WHERE Salary > 5000;

-- 3. Hiển thị nhân viên sắp xếp theo HireDate giảm dần (mới nhất trước)
SELECT *
FROM Employees
ORDER BY HireDate DESC;


/* =========================
   BÀI 7: Thống kê theo bộ phận (GROUP BY)
   ========================= */
-- Giả sử trong CSDL trước đó đã có cột Department trong bảng Employees
-- Nếu CHƯA có, bạn có thể thêm như sau (chỉ cần chạy một lần):

-- ALTER TABLE Employees
--     ADD COLUMN Department VARCHAR(100);

-- Và tự UPDATE dữ liệu Department cho từng nhân viên, ví dụ:
-- UPDATE Employees SET Department = 'IT' WHERE EmployeeID = 3;
-- (Các nhân viên khác tuỳ bạn thêm vào, ở đây minh hoạ là chính)

-- 1. Hiển thị tên bộ phận, số lượng nhân viên trong bộ phận đó
SELECT Department,
       COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY Department;

-- 2. Hiển thị tên bộ phận, lương trung bình của bộ phận
SELECT Department,
       AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department;

-- 3. Chỉ hiển thị các bộ phận có lương trung bình > 5000
SELECT Department,
       AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 5000;
