-- ===========================================
-- Library Management System Database Schema
-- ===========================================

-- Create Database
CREATE DATABASE library_management;

-- Use Database
USE library_management;

-- ===========================================
-- Authors Table
-- ===========================================

CREATE TABLE Authors
(
    Author_ID INT PRIMARY KEY,
    Author_Name VARCHAR(100) NOT NULL
);

-- ===========================================
-- Books Table
-- ===========================================

CREATE TABLE Books
(
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author_ID INT,
    Category VARCHAR(50),
    Price DECIMAL(8,2),
    Copies INT,

    FOREIGN KEY (Author_ID)
    REFERENCES Authors(Author_ID)
);

-- ===========================================
-- Members Table
-- ===========================================

CREATE TABLE Members
(
    Member_ID INT PRIMARY KEY,
    Member_Name VARCHAR(100),
    City VARCHAR(50),
    Phone VARCHAR(15)
);

-- ===========================================
-- Borrow Records Table
-- ===========================================

CREATE TABLE BorrowRecords
(
    Borrow_ID INT PRIMARY KEY,
    Book_ID INT,
    Member_ID INT,
    Borrow_Date DATE,
    Return_Date DATE,

    FOREIGN KEY (Book_ID)
    REFERENCES Books(Book_ID),

    FOREIGN KEY (Member_ID)
    REFERENCES Members(Member_ID)
);