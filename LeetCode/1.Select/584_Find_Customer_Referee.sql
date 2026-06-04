/* =======================================================================================================================
- No: #584
- Title: Find Customer Referee
- Link: https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50
- Difficulty: Easy
======================================================================================================================= */

/* -----------------------------------------------------------------------------------------------------------------------
[Insight & Lession Learned]
1. Handling NULL value (Equality & Identity)
    - [issue]: Intially wrote `referee_id = NULL` to find customer without a referee.
    - [Fix] : In SQL, `NULL` represents an unknown or missing value, not a standard string or number. 
              Therefore, Always use the `IS NULL` or `IS NOT NULL` operators.


----------------------------------------------------------------------------------------------------------------------- */
-- 1) Data Setup (for local testing in SSMS)

CREATE DATABASE LeetCodeSQL;
CREATE TABLE Customer584(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    referee_id INT
);
INSERT INTO Customer584 (id, name, referee_id) VALUES 
(1, 'Will', NULL),
(2, 'Jane', NULL),
(3, 'Alex', 2),
(4, 'Bill', NULL),
(5, 'Zack', 1),
(6, 'Mark', 2);


-- 2) Final Solution
SELECT name
FROM Customer584
WHERE referee_id != 2 OR referee_id IS NULL;

