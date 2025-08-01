-- 리뷰 및 댓글 신고 횟수 업데이트 트리거
DESC report;

DELIMITER //

CREATE TRIGGER updateReportCount
AFTER INSERT ON report
FOR EACH ROW
BEGIN
  -- 영화 리뷰
  IF NEW.category_code = 1 THEN
    UPDATE movie_review
    SET report_count = report_count + 1
    WHERE code = NEW.movie_review_code;

  -- 배우 리뷰
  ELSEIF NEW.category_code = 2 THEN
    UPDATE actor_review
    SET report_count = report_count + 1
    WHERE code = NEW.actor_review_code;

  -- 댓글
  ELSEIF NEW.category_code = 3 THEN
    UPDATE comment
    SET report_count = report_count + 1
    WHERE code = NEW.comment_code;
  END IF;
END //

DELIMITER ;


