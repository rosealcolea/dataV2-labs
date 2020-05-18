-- Step #1
SELECT s.title_id AS 'Title ID',
	tau.au_id AS 'Author ID',
    t.advance * tau.royaltyper / 100 AS 'Advance',
    t.price * s.qty * t.royalty / 100 * tau.royaltyper / 100 AS 'Royalty'
FROM publications.sales s
JOIN publications.titleauthor tau
	ON s.title_id = tau.title_id
JOIN publications.titles t
	ON s.title_id = t.title_id;
    
-- Step #2
SELECT s.title_id AS 'Title ID',
	tau.au_id AS 'Author ID',
    SUM(t.price * s.qty * t.royalty / 100 * tau.royaltyper / 100) AS 'Royalty'
FROM publications.sales s
JOIN publications.titleauthor tau
	ON s.title_id = tau.title_id
JOIN publications.titles t
	ON s.title_id = t.title_id
GROUP BY 1, 2;

-- Step #3
SELECT tau.au_id AS 'Author ID',
    ROUND(SUM(t.price * s.qty * t.royalty / 100 * tau.royaltyper / 100) 
		+ SUM(t.advance * tau.royaltyper / 100)) AS 'Profit'
FROM publications.sales s
JOIN publications.titleauthor tau
	ON s.title_id = tau.title_id
JOIN publications.titles t
	ON s.title_id = t.title_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 3;

-- Challenge #2 -- unsuccessful, here is my attempt:

CREATE TABLE #rose_profit
(
	au_id INT,
    profit INT
)
INSERT INTO #rose_profit
SELECT tau.au_id AS 'Author ID',
    ROUND(SUM(t.price * s.qty * t.royalty / 100 * tau.royaltyper / 100) 
		+ SUM(t.advance * tau.royaltyper / 100)) AS 'Profit'
FROM publications.sales s
JOIN publications.titleauthor tau
	ON s.title_id = tau.title_id
JOIN publications.titles t
	ON s.title_id = t.title_id;

SELECT rp.au_id AS 'Author ID', rp.profit AS 'Profit'
FROM #rose_profit rp
GROUP BY 1
ORDER BY 2 DESC
LIMIT 3;

-- Challenge #3 -- unsuccessful, here is my attempt:

CREATE TABLE rose_profit
WITH -- or empty
(
	au_id INT PRIMARY KEY,
    profit INT
)
AS -- or INSERT INTO rose_profit
SELECT tau.au_id AS 'Author ID',
    ROUND(SUM(t.price * s.qty * t.royalty / 100 * tau.royaltyper / 100) 
		+ SUM(t.advance * tau.royaltyper / 100)) AS 'Profit'
FROM publications.sales s
JOIN publications.titleauthor tau
	ON s.title_id = tau.title_id
JOIN publications.titles t
	ON s.title_id = t.title_id;