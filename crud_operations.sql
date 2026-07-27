-- ===========================================
-- CRUD Operations
-- Library Management System
-- ===========================================

USE library_management;

-- ===========================================
-- CREATE (Insert a New Member)
-- ===========================================

INSERT INTO Members
VALUES
(207, 'Alex', 'Coimbatore', '9876543216');

-- ===========================================
-- READ (Display All Books)
-- ===========================================

SELECT *
FROM Books;

-- Display Fiction Books

SELECT *
FROM Books
WHERE Category = 'Fiction';

-- Display Books Costing More Than ₹500

SELECT *
FROM Books
WHERE Price > 500;

-- ===========================================
-- UPDATE
-- ===========================================

UPDATE Books
SET Copies = 10
WHERE Book_ID = 101;

-- Verify Update

SELECT *
FROM Books
WHERE Book_ID = 101;

-- ===========================================
-- DELETE
-- ===========================================

DELETE FROM BorrowRecords
WHERE Borrow_ID = 307;

-- Verify Deletion

SELECT *
FROM BorrowRecords;