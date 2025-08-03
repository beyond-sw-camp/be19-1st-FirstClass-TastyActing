-- 영화 리뷰에 좋아요 작성 

delimiter //

CREATE OR REPLACE procedure toggleLike(
    IN in_user_code INTEGER,
    IN review_code INTEGER
)
BEGIN
DECLARE like_history INT;
     -- 기존 좋아요 기록 조회
	SELECT 
           code
	  INTO like_history
      FROM likes
     WHERE user_code = in_user_code AND movie_review_code = review_code;

    IF like_history IS NULL THEN                   -- 처음 좋아요는 insert
	    INSERT 
			  INTO likes(user_code, category_code, movie_review_code)
	    VALUES (in_user_code, 1, review_code);
    
  	ELSE
    	DELETE 
	      FROM likes 
		 WHERE code = like_history;                -- 이미 누른 사용자는 좋아요 삭제
	END IF; 

END //

delimiter ;


CALL toggleLike(2,1);     -- 기존에 좋아요를 한 사용자는 likes에 insert 안되고 삭제
CALL toggleLike(1,1);     -- 새로운 좋아요는 likes에 insert됨