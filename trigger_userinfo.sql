--Prevent update of userinfo ID 
DELIMITER //
CREATE TRIGGER userinfo_update_id 
BEFORE UPDATE ON db_astromnia.userinfo 
FOR EACH ROW 
SET NEW.use_id = OLD.use_id;//
DELIMITER ;

--Prevent the modification of user status (admin or not) (a simple user can't become admin and an admin can't be fired)
DELIMITER //
CREATE TRIGGER userinfo_update_admin 
BEFORE UPDATE ON db_astromnia.userinfo 
FOR EACH ROW 
SET NEW.use_admin = OLD.use_admin;//
DELIMITER ;
