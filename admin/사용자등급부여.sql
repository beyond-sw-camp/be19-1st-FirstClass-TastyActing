-- 등급 부여
-- 좋아요 개수에 따라 50, 100, 500 / 아이언(기본 등급), 브론즈, 실버, 골드
-- like_count를 계산하는 stored function
DELIMITER //

CREATE OR REPLACE FUNCTION total_like_count(
    IN t_code INTEGER
)
RETURNS INTEGER
DETERMINISTIC
BEGIN
   DECLARE total_likes_movie INTEGER;
   DECLARE total_likes_actor INTEGER;
   DECLARE total_likes INTEGER;

   -- 영화 리뷰 좋아요 수 합산
   SELECT IFNULL(SUM(like_count), 0)
     INTO total_likes_movie
     FROM movie_review
    WHERE user_code = t_code;

   -- 배우 리뷰 좋아요 수 합산
   SELECT IFNULL(SUM(like_count), 0)
     INTO total_likes_actor
     FROM actor_review
    WHERE user_code = t_code;

   -- 총합
   SET total_likes = total_likes_movie + total_likes_actor;

   RETURN total_likes;
END;
//

DELIMITER ;


-- like_count와 level_code를 업데이트하는 procedure
delimiter //

CREATE OR REPLACE PROCEDURE user_like_level(
    IN u_code INTEGER
)
BEGIN
DECLARE total_likes INTEGER;
DECLARE new_level_code INTEGER DEFAULT 1;

    SET total_likes = total_like_count(u_code);

   case
        when total_likes >= 500 then
         SET new_level_code = 4;
        when total_likes >= 100 then
         SET new_level_code = 3;
        when total_likes >= 50 then
         SET new_level_code = 2;
        ELSE
         SET new_level_code = 1;	    
   END case;

   UPDATE user
      SET like_count = total_likes
        , level_code = new_level_code
    WHERE code = u_code;
END //

delimiter ;

-- movie_review와 actor_review테이블에서 좋아요가 바뀔 때마다 
-- 반영되도록 트리거 작성. like_count의 합 구하는 procedure 호출.
delimiter //

CREATE OR REPLACE TRIGGER trg_movie_review
    AFTER UPDATE
    ON movie_review
    FOR EACH ROW
BEGIN
   CALL user_like_level(NEW.user_code);
END //

CREATE OR REPLACE TRIGGER trg_actor_review
    AFTER UPDATE 
    ON actor_review
    FOR EACH ROW
BEGIN
   CALL user_like_level(NEW.user_code);
END //

delimiter ;
