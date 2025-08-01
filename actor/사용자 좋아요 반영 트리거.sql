delimiter //

CREATE OR replace TRIGGER after_like_movie_review
  AFTER UPDATE ON movie_review
  FOR EACH ROW
BEGIN
    IF NEW.like_count > OLD.like_count THEN
        UPDATE user 
        SET like_count = like_count + 1 
        WHERE code = NEW.user_code;
      ELSE if
           NEW.like_count < OLD.like_count THEN
           UPDATE user 
           SET like_count = like_count - 1 
           WHERE code = NEW.user_code;
      END if;
    END IF;
END //

delimiter ;

delimiter //

CREATE OR replace TRIGGER after_like_actor_review
  AFTER UPDATE ON actor_review
  FOR EACH ROW
BEGIN
    IF NEW.like_count > OLD.like_count THEN
        UPDATE user 
        SET like_count = like_count + 1 
        WHERE code = NEW.user_code;
      ELSE if
           NEW.like_count < OLD.like_count THEN
           UPDATE user 
           SET like_count = like_count - 1 
           WHERE code = NEW.user_code;
      END if;
    END IF;
END //

delimiter ;