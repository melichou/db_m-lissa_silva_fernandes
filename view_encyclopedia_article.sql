--View to see informations for encyclopedia articles
DELIMITER //
CREATE VIEW v_encyclopedia_article_info AS 
	SELECT a.art_title as title, a.art_description as description, a.art_author as author, e.art_source as source
    FROM article a
    INNER JOIN encyclopediaarticle e ON a.art_id = e.art_id
    GROUP BY e.art_id
//
DELIMITER ;