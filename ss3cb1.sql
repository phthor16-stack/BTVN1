/* ========================================
   1. Tạo cơ sở dữ liệu
======================================== */
CREATE DATABASE IF NOT EXISTS SalesDB;
USE SalesDB;


/* ========================================
   2. Tạo bảng Customer
======================================== */
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(200)
);


/* ========================================
   3. Tạo bảng Product
======================================== */
CREATE TABLE Product (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Price DECIMAL(12,2),
    Category VARCHAR(100)
);


/* ========================================
   4. Tạo bảng Order (đặt hàng)
======================================== */
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    OrderDate DATE,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);


/* ========================================
   5. Tạo bảng OrderDetail (chi tiết đơn hàng)
      - PK: OrderID + ProductID (khóa ghép)
      - FK: OrderI
