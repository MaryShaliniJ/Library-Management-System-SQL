-- ===========================================
-- Aggregate Reports
-- Library Management System
-- ===========================================

USE library_management;

-- ===========================================
-- Report 1
-- Number of Books by Each Author
-- ===========================================

SELECT
    a.Author_Name,
    COUNT(b.Book_ID) AS Total_Books
FROM Authors a
JOIN Books b
    ON a.Author_ID = b.Author_ID
GROUP BY a.Author_Name;

-- ===========================================
-- Report 2
-- Number of Books in Each Category
-- ===========================================

SELECT
    Category,
    COUNT(*) AS Total_Books
FROM Books
GROUP BY Category;

-- ===========================================
-- Report 3
-- Most Active Member
-- ===========================================

SELECT
    m.Member_Name,
    COUNT(br.Borrow_ID) AS Books_Borrowed
FROM Members m
JOIN BorrowRecords br
    ON m.Member_ID = br.Member_ID
GROUP BY m.Member_Name
ORDER BY Books_Borrowed DESC;

-- ===========================================
-- Report 4
-- Average Book Price by Category
-- ===========================================

SELECT
    Category,
    AVG(Price) AS Average_Price
FROM Books
GROUP BY Category;