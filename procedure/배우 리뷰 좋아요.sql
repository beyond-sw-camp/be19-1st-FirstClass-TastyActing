-- 배우 리뷰 좋아요 기능
delimiter //

CREATE OR REPLACE PROCEDURE toggleLike(
    IN in_user_code INTEGER,
    IN in_category_code INTEGER,
    IN in_review_code INTEGER
)
BEGIN
    DECLARE like_history INT;

        SELECT code INTO like_history
        FROM likes
        WHERE user_code = in_user_code AND actor_review_code = in_review_code;

    -- 좋아요 기록이 없는 경우: 좋아요 추가 + 리뷰 카운트 증가
    IF like_history IS NULL THEN
      
            INSERT INTO likes(user_code, category_code, actor_review_code)
            VALUES (in_user_code, in_category_code, in_review_code);
            -- actor_review의 like_count 증가
            UPDATE actor_review SET like_count = like_count + 1 WHERE code = in_review_code;
     
    ELSE
        -- 좋아요 기록이 있는 경우: 좋아요 삭제 + 리뷰 카운트 감소
        DELETE FROM likes WHERE code = like_history;
        UPDATE actor_review SET like_count = like_count - 1 WHERE code = in_review_code;
    END IF;
END //

delimiter ;

CALL toggleLike(2,1,2); 