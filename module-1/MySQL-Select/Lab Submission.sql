-- Challenge #1
SELECT authors.au_id AS 'AUTHOR ID',
	authors.au_lname AS 'LAST NAME',
    authors.au_fname AS 'FIRST NAME',
    titles.title AS 'TITLE',
    publishers.pub_name AS 'PUBLISHER'
FROM publications.authors
	JOIN publications.titleauthor 
		ON authors.au_id = titleauthor.au_id
	JOIN publications.titles 
		ON titleauthor.title_id = titles.title_id
	JOIN publications.publishers
		ON titles.pub_id = publishers.pub_id;
        
-- Challenge #2
SELECT authors.au_id AS 'AUTHOR ID',
	authors.au_lname AS 'LAST NAME',
    authors.au_fname AS 'FIRST NAME',
    publishers.pub_name AS 'PUBLISHER',
    COUNT(*) AS 'TITLE COUNT'
FROM publications.authors
	JOIN publications.titleauthor 
		ON authors.au_id = titleauthor.au_id
	JOIN publications.titles 
		ON titleauthor.title_id = titles.title_id
	JOIN publications.publishers
		ON titles.pub_id = publishers.pub_id
	GROUP BY authors.au_id, publishers.pub_name;
    
    -- Challenge #3
SELECT authors.au_id AS 'AUTHOR ID',
	authors.au_lname AS 'LAST NAME',
    authors.au_fname AS 'FIRST NAME',
    COUNT(*) AS 'TOTAL'
FROM publications.authors
	JOIN publications.titleauthor 
		ON authors.au_id = titleauthor.au_id
GROUP BY authors.au_id
ORDER BY 4 DESC
LIMIT 3;

-- Challenge 4

SELECT authors.au_id AS 'AUTHOR ID',
	authors.au_lname AS 'LAST NAME',
    authors.au_fname AS 'FIRST NAME',
    COUNT(titleauthor.title_id) AS 'TOTAL'
FROM publications.authors
	LEFT JOIN publications.titleauthor 
		ON authors.au_id = titleauthor.au_id
GROUP BY authors.au_id
ORDER BY 4 DESC;