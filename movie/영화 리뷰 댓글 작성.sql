-- 영화 리뷰에 대한 댓글 작성 
DELIMITER //

CREATE OR REPLACE PROCEDURE insertComment (
    IN content VARCHAR(500)
  , IN user_code INTEGER
  , IN review_code INTEGER
)
BEGIN
    INSERT INTO comment(content, user_code, movie_review_code)
    VALUES (content, user_code, review_code);
END //

DELIMITER ;

CALL insertComment('공감합니다!!!', 1, 1);
CALL insertComment('너무 멋있었어요', 2, 1);