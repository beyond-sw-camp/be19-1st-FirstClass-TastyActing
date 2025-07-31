-- 신고 철회
DELIMITER //

CREATE PROCEDURE deleteReports(
  IN reporterId INT
)
BEGIN
    DELETE FROM report
    WHERE reporter_code = reporterId;
END //

DELIMITER ;

CALL deleteReports(1);

-- SELECT * FROM report
-- WHERE reporter_CODE = 1;

