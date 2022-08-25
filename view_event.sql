--View to see the users registered to events, grouped by userinfo id
DELIMITER //
CREATE VIEW v_event_registered AS 
	SELECT u.use_name as name, u.email as email, e.event_title as event, e.event_date_start as start_date, e.event_link as link
    FROM sign_in s
    INNER JOIN userinfo u ON u.use_id = s.use_id
    INNER JOIN event e ON e.event_id = s.event_id
    GROUP BY s.use_id
//
DELIMITER ;

--View to see which are the users registered for an event
DELIMITER //
CREATE VIEW v_event_registered_users AS 
	SELECT e.event_title as event, e.event_date_start as start_date, e.event_link as link, u.use_name as name, u.email as email
    FROM sign_in s
    INNER JOIN userinfo u ON u.use_id = s.use_id
    INNER JOIN event e ON e.event_id = s.event_id
    GROUP BY s.event_id
//
DELIMITER ;