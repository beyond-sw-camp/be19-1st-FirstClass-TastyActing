delimiter //

CREATE OR replace PROCEDURE SearchActor(IN p_search VARCHAR(255))
BEGIN
		SELECT * FROM actor
		WHERE NAME LIKE CONCAT('%', p_search, '%');
END //

DELIMITER ;
