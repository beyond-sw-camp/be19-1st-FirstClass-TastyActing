delimiter //

CREATE OR replace TRIGGER after_report_movie_review
  AFTER UPDATE ON movie_review
  FOR EACH ROW
BEGIN
    IF NEW.report_count > OLD.report_count THEN
        UPDATE user 
        SET report_count = report_count + 1 
        WHERE code = NEW.user_code;
    END IF;
END //

delimiter ;

delimiter //

CREATE OR replace TRIGGER after_report_actor_review
  AFTER UPDATE ON actor_review
  FOR EACH ROW
BEGIN
    IF NEW.report_count > OLD.report_count THEN
        UPDATE user 
        SET report_count = report_count + 1 
        WHERE code = NEW.user_code;
    END IF;
END //

delimiter ;

delimiter //

CREATE OR replace TRIGGER after_report_comment
  AFTER UPDATE ON comment
  FOR EACH ROW
BEGIN
    IF NEW.report_count > OLD.report_count THEN
        UPDATE user 
        SET report_count = report_count + 1 
        WHERE code = NEW.user_code;
    END IF;
END //

delimiter ;