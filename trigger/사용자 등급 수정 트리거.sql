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
