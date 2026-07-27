-- ===========================================
-- JOIN Queries
-- Library Management System
-- ===========================================

USE library_management;

-- ===========================================
-- Query 1
-- Display Which Member Borrowed Which Book
-- ===========================================

SELECT
    m.Member_Name,
    b.Title,
    br.Borrow_Date,
    br.Return_Date
FROM BorrowRecords br
JOIN Members m
    ON br.Member_ID = m.Member_ID
JOIN Books b
    ON br.Book_ID = b.Book_ID;

-- ===========================================
-- Query 2
-- Display Books with Their Authors
-- ===========================================

SELECT
    b.Title,
    a.Author_Name,
    b.Category,
    b.Price
FROM Books b
JOIN Authors a
    ON b.Author_ID = a.Author_ID;

-- ===========================================
-- Query 3
-- Members Who Borrowed Dan Brown Books
-- ===========================================

SELECT
    m.Member_Name,
    b.Title
FROM BorrowRecords br
JOIN Members m
    ON br.Member_ID = m.Member_ID
JOIN Books b
    ON br.Book_ID = b.Book_ID
JOIN Authors a
    ON b.Author_ID = a.Author_ID
WHERE a.Author_Name = 'Dan Brown';