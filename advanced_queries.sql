-- ===========================================
-- Advanced SQL Queries
-- Library Management System
-- ===========================================

USE library_management;

-- ===========================================
-- Query 1
-- Books Priced Above Average
-- ===========================================

SELECT
    Title,
    Price
FROM Books
WHERE Price >
(
    SELECT AVG(Price)
    FROM Books
);

-- ===========================================
-- Query 2
-- Categorize Books Using CASE
-- ===========================================

SELECT
    Title,
    Price,
    CASE
        WHEN Price > 500 THEN 'Expensive'
        WHEN Price BETWEEN 300 AND 500 THEN 'Moderate'
        ELSE 'Budget'
    END AS Price_Category
FROM Books;

-- ===========================================
-- Query 3
-- Rank Books by Price
-- ===========================================

SELECT
    Title,
    Price,
    DENSE_RANK() OVER (ORDER BY Price DESC) AS Price_Rank
FROM Books;

-- ===========================================
-- Query 4
-- Most Borrowed Books
-- ===========================================

SELECT
    b.Title,
    COUNT(br.Borrow_ID) AS Times_Borrowed
FROM Books b
JOIN BorrowRecords br
    ON b.Book_ID = br.Book_ID
GROUP BY b.Title
ORDER BY Times_Borrowed DESC;