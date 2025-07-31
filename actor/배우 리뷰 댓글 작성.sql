-- 배우 리뷰 댓글 작성

delimiter //

CREATE OR REPLACE PROCEDURE actorReviewComment
  ( IN in_content VARCHAR(255),
    IN in_user_code INTEGER,
    IN in_actor_review_code INTEGER
  )
BEGIN
    INSERT INTO comment (content, user_code, actor_review_code, movie_review_code)
    VALUES (in_content, in_user_code, in_actor_review_code, NULL);
END //

delimiter ;

CALL actorReviewComment('정말 엄청난 리뷰에요!',1,1);
