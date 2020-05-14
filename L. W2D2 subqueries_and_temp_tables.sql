SELECT stores.stor_name AS Store, COUNT(DISTINCT(ord_num)) AS Orders, COUNT(title_id) AS Items, SUM(qty) AS Qty
FROM publications.sales sales
INNER JOIN publications.stores stores ON stores.stor_id = sales.stor_id
GROUP BY Store;

SELECT Store, Items/Orders AS AvgItems, Qty/Items AS AvgQty
FROM (
SELECT stores.stor_name AS Store, COUNT(DISTINCT(ord_num)) AS Orders, COUNT(title_id) AS Items, SUM(qty) AS Qty
FROM publications.sales sales
INNER JOIN publications.stores stores ON stores.stor_id = sales.stor_id
GROUP BY Store
) summary;

SELECT Store, ord_num AS OrderNumber, ord_date AS OrderDate, title AS Title, sales.qty AS Qty, price AS Price, type as Type
FROM (
	SELECT stores.stor_id AS StoreID, stores.stor_name AS Store, COUNT(DISTINCT(ord_num)) AS Orders, COUNT(title_id) AS Items, SUM(qty) AS Qty
	FROM publications.sales sales
	INNER JOIN publications.stores stores ON stores.stor_id = sales.stor_id
	GROUP BY StoreID, Store
) summary
INNER JOIN publications.sales sales ON summary.StoreID = sales.stor_id
INNER JOIN publications.titles ON sales.title_id = titles.title_id
WHERE Items / Orders > 1;



CREATE TEMPORARY TABLE publications.store_sales_summary
SELECT stores.stor_id AS StoreID, stores.stor_name AS Store, COUNT(DISTINCT(ord_num)) AS Orders, COUNT(title_id) AS Items, SUM(qty) AS Qty
FROM publications.sales sales
INNER JOIN publications.stores stores ON stores.stor_id = sales.stor_id
GROUP BY StoreID, Store;

select * from publications.store_sales_summary;

SELECT Store, ord_num AS OrderNumber, ord_date AS OrderDate, title AS Title, sales.qty AS Qty, price AS Price, type as Type
FROM publications.store_sales_summary summary
INNER JOIN publications.sales sales ON summary.StoreID = sales.stor_id
INNER JOIN publications.titles ON sales.title_id = titles.title_id
WHERE Items / Orders > 1;
