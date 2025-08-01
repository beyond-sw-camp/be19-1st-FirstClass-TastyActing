-- 배우 리뷰 삭제
DELIMITER //

CREATE OR REPLACE PROCEDURE deleteactorReview(
    IN user INTEGER,
    IN movie INTEGER,
    IN actor INTEGER 
)
BEGIN
    IF EXISTS (
        SELECT 1 FROM actor_review 
        WHERE user_code = user AND movie_code = movie AND actor_code = actor
    ) THEN
        DELETE FROM actor_review
        WHERE user_code = user AND movie_code = movie AND actor_code = actor;
    END IF;
END //

DELIMITER ;

CALL deleteMovieReview(1,15,8);