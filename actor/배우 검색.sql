delimiter //

CREATE OR replace PROCEDURE searchActor(IN p_search VARCHAR(255))
BEGIN
		SELECT 
		       name
           , information
           , filename
           , re_name
           , path
           , date 
		  FROM actor
		 WHERE NAME LIKE CONCAT('%', p_search, '%');
END //

DELIMITER ;

CALL searchActor('송');
