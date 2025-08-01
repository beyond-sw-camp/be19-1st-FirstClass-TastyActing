-- 배우 리뷰 댓글 작성

delimiter //

CREATE OR REPLACE PROCEDURE actorReviewComment
  ( IN in_content VARCHAR(255),
    IN in_user_code INTEGER,
    IN in_category_code INTEGER,
    IN review_code integer
  )
BEGIN
    INSERT INTO comment (content, user_code, category_code, actor_review_code)
    VALUES (in_content, in_user_code, in_category_code, review_code);
END //

delimiter ;

CALL actorReviewComment('정말 엄청난 리뷰에요!',1,2,1);

SELECT 
       content
	  , user_code
	  , category_code
	  , actor_review_code
  FROM COMMENT
 WHERE user_code = 1 AND actor_review_code = 1;