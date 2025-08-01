DELIMITER //

CREATE TRIGGER updateLikeCount
AFTER INSERT ON likes
FOR EACH ROW
BEGIN
  -- 영화 리뷰
  IF NEW.category_code = 1 THEN
    UPDATE movie_review
    SET like_count = like_count + 1
    WHERE code = NEW.movie_review_code;

  -- 배우 리뷰
  ELSEIF NEW.category_code = 2 THEN
    UPDATE actor_review
    SET like_count = like_count + 1
    WHERE code = NEW.actor_review_code;
  END IF;
END //

DELIMITER ;