-- ===========================================
-- Views
-- Library Management System
-- ===========================================

USE library_management;

-- ===========================================
-- View: Library Report
-- Displays borrowing details along with
-- member, book and author information
-- ===========================================

CREATE VIEW Library_Report AS

SELECT
    m.Member_Name,
    b.Title,
    a.Author_Name,
    b.Category,
    br.Borrow_Date,
    br.Return_Date

FROM BorrowRecords br

JOIN Members m
    ON br.Member_ID = m.Member_ID

JOIN Books b
    ON br.Book_ID = b.Book_ID

JOIN Authors a
    ON b.Author_ID = a.Author_ID;

-- ===========================================
-- Display View
-- ===========================================

SELECT *
FROM Library_Report;