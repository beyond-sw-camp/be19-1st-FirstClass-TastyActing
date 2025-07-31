-- 신고 철회
DELIMITER //

CREATE PROCEDURE delete_reports(
  IN reporter_id INT
)
BEGIN
    DELETE FROM report
    WHERE reporter_code = reporter_id;
END //

DELIMITER ;

CALL delete_reports(1);


