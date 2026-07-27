-- ===========================================
-- Stored Procedures
-- Library Management System
-- ===========================================

USE library_management;

-- ===========================================
-- Procedure: Get Books by Category
-- ===========================================

DELIMITER //

CREATE PROCEDURE GetBooksByCategory
(
    IN CategoryName VARCHAR(50)
)

BEGIN

    SELECT
        Book_ID,
        Title,
        Category,
        Price,
        Copies
    FROM Books
    WHERE Category = CategoryName;

END //

DELIMITER ;

-- ===========================================
-- Execute Procedure
-- ===========================================

CALL GetBooksByCategory('Mystery');