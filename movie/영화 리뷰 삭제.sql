-- 영화 리뷰 삭제 
DELIMITER //

CREATE OR REPLACE PROCEDURE deleteMovieReview(
    IN user INTEGER,
    IN movie INTEGER
)
BEGIN
    IF EXISTS (
        SELECT 1 FROM movie_review 
        WHERE user_code = user AND movie_code = movie
    ) THEN
        UPDATE movie_review
           SET is_deleted = TRUE
        WHERE user_code = user AND movie_code = movie;
    END IF;
END //

DELIMITER ;

CALL deleteMovieReview(4,15);
