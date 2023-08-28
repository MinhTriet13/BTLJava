-- Tạo schema cho cơ sở dữ liệu Expense Tracker
CREATE SCHEMA thuchidb;

-- Sử dụng schema vừa tạo
USE thuchidb;

-- Tạo bảng cho các loại chi phí
CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name NVARCHAR(255) NOT NULL
);

-- Tạo bảng cho các giao dịch chi tiêu
CREATE TABLE expenses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    description NVARCHAR(255) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    user_id INT,
    category_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

-- Tạo bảng cho người dùng (kết hợp người dùng và quản trị viên)
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    role ENUM('user', 'admin') NOT NULL
);

