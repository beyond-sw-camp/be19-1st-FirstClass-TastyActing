-- 회원 탈퇴

SELECT * FROM user;   -- 회원 코드 확인

DELIMITER //

CREATE OR REPLACE PROCEDURE delete_user(IN in_user_code INT)
BEGIN
    -- 1. 사용자가 작성한 리뷰 코드들을 참조하는 좋아요 먼저 삭제
    DELETE FROM likes
    WHERE movie_review_code IN (
        SELECT code 
		    FROM movie_review 
			WHERE user_code = in_user_code
    );

    -- 2. 사용자가 작성한 댓글 삭제
    DELETE FROM comment
    WHERE user_code = in_user_code
       OR movie_review_code IN (
            SELECT code 
				  FROM movie_review 
				 WHERE user_code = in_user_code
         )
       OR actor_review_code IN (
            SELECT code 
				  FROM actor_review 
				 WHERE user_code = in_user_code
         );

    -- 3. 사용자가 직접 작성한 좋아요 삭제
    DELETE FROM likes WHERE user_code = in_user_code;

    -- 4. 사용자가 작성한 리뷰 삭제
    DELETE FROM movie_review WHERE user_code = in_user_code;
    DELETE FROM actor_review WHERE user_code = in_user_code;

    -- 5. 사용자가 작성한 신고 삭제
    DELETE FROM report WHERE reporter_code = in_user_code;

    -- 6. 사용자 정보 삭제
    DELETE FROM user WHERE code = in_user_code;
END //

DELIMITER ;


CALL delete_user(4);
