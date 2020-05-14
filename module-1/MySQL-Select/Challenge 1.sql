SELECT au_id, au_lname, au_fname, title_id, title, pub_id, pub_name
FROM publications.authors au
	JOIN publications.titleauthor tau
		USING (au_id)
	JOIN publications.titles tt
		USING (title_id)
	JOIN publications.publishers pub
		USING (pub_id);
