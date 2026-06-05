/* =======================================================================================================================
- No: #1684
- Title: Invalid Tweets
- Link: https://leetcode.com/problems/invalid-tweets/description/?envType=study-plan-v2&envId=top-sql-50
- Difficulty: Easy
======================================================================================================================= */

/* -----------------------------------------------------------------------------------------------------------------------
[Insight & Lession Learned]
1. Syntax Difference: Calculating string Length (Python/OOP vs SQL)
    - [issue]: Used object-oriented syntax (`contain.len > 15`) to find the length of the string.
    - [Fix] : In SQL, It must be used built-in. string functions and pass the column name as an argument, such as `LENGTH(content) > 15`.

2. DBMS Variations: MySQL vs. SQL Server (SSMS)
    - LeetCode (MySQL/PostgreSQL) uses `LENGTH(column_name)`.
    - Local Environment (SQL server / T-SQL) uses `LEN(column_name)`.
    - Good to know the difference when migrating queries between difference database engines.

----------------------------------------------------------------------------------------------------------------------- */
-- 1) Data Setup (for local testing in SSMS)
-- Note: Use LEN( instead of LENGTH() in SSMS)


CREATE TABLE Tweets1683(
    tweet_id INT PRIMARY KEY,
    content VARCHAR(50)
);

INSERT INTO Tweets1683 (tweet_id, content) VALUES
(1,'Vote for Biden'),
(2,'Let us make America great again!');



-- 2) Final Solution
SELECT tweet_id 
FROM Tweets1683
WHERE LEN(content) > 15; 
