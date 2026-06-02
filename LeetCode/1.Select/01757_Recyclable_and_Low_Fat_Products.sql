/* =======================================================================================================================
- No: #1757
- Title: Recyclable and Low Fat Products
- Link: https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50
- Difficulty: Easy
======================================================================================================================= */

/* -----------------------------------------------------------------------------------------------------------------------
[Insight & Lession Learned]
1. Syntax Difference: Comparison Operators (Python vs. SQL)
    - [issue]: Used `==` for comparison (e.g., `WHERE low_fats == 'Y'`).
    - [Fix] : In SQL, the equality operator is always a single `=` sign

2. Logical Operators : Combining multiple conditions
    - [issue]: Used `,` to separate WHERE conditions.
    - [Fix]: Use the `AND` operator to filter records that must meet multiple conditions simultaneously. 

3. Handling ENUM Data Type (MySQL vs. SQL Server)
    - Leetcode's default schema often uses'ENUM'. which throws an error in SQL Server(SSMS).
    - Best Practice: Convert to `VARCHAR(20)` and add a `CHECK` constraint (e.g., `CHECK(column_name IN('Y','N'))`).
    - Quick Workaround for local testing: Simply define it as `VARCHAR(1)`.
----------------------------------------------------------------------------------------------------------------------- */
-- 1) Data Setup (for local testing in SSMS)

CREATE DATABASE LeetCodeSQL;
CREATE TABLE Products1757(
    product_id INT,
    low_fats VARCHAR(1),
    recyclable VARCHAR(1)
);
INSERT INTO Products1757(product_id, low_fats, recyclable) VALUES(0,'Y','N');
INSERT INTO Products1757(product_id, low_fats, recyclable) VALUES(1,'Y','Y');


-- 2) Final Solution
SELECT *
FROM Products1757
WHERE low_fats = 'Y' AND recyclable = 'Y';

