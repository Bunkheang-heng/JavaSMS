-- Create the database (if not already created)
CREATE DATABASE IF NOT EXISTS student_management_system;

-- Use the database
USE student_management_system;

-- Create Students table
CREATE TABLE IF NOT EXISTS students (
    student_id VARCHAR(10) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    major VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Create Teachers table
CREATE TABLE IF NOT EXISTS teachers (
    teacher_id VARCHAR(10) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Create Admins table for login
CREATE TABLE IF NOT EXISTS admins (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Insert sample data into Students table
INSERT INTO students (student_id, first_name, last_name, major, email) VALUES
('S001', 'John', 'Doe', 'Computer Science', 'john@example.com'),
('S002', 'Jane', 'Smith', 'Engineering', 'jane@example.com'),
('S003', 'Alice', 'Johnson', 'Mathematics', 'alice@example.com'),
('S004', 'Bob', 'Brown', 'Physics', 'bob@example.com'),
('S005', 'Emily', 'Davis', 'Chemistry', 'emily@example.com');

-- Insert sample data into Teachers table
INSERT INTO teachers (teacher_id, first_name, last_name, department, email) VALUES
('T001', 'Alice', 'Johnson', 'Computer Science', 'alice.j@example.com'),
('T002', 'Bob', 'Smith', 'Mathematics', 'bob.s@example.com'),
('T003', 'Carol', 'Williams', 'Physics', 'carol.w@example.com'),
('T004', 'David', 'Brown', 'Chemistry', 'david.b@example.com'),
('T005', 'Eve', 'Davis', 'Engineering', 'eve.d@example.com');

-- Insert a sample admin (password should be hashed in a real application)
INSERT INTO admins (username, password, email) VALUES
('admin', 'password123', 'admin@example.com');

