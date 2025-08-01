 -- 리뷰 댓글 신고 작성
 -- 하나의 리뷰나 댓글에 신고는 한 번만 할 수 있다.
DELIMITER //

CREATE OR REPLACE PROCEDURE reportUser (
    IN reason VARCHAR(500),
    IN reporter INTEGER,
    IN category_code INTEGER,
    IN post_code INTEGER
)
BEGIN
    DECLARE existing_count INT DEFAULT 0;


    IF category_code = 1 THEN
        SELECT COUNT(*) INTO existing_count
        FROM report
        WHERE reporter_code = reporter AND category_code = 1 AND movie_review_code = post_code;
        
        IF existing_count = 0 THEN
            INSERT INTO report (
                reason, reporter_code, category_code,
                movie_review_code, actor_review_code, comment_code
            )
            VALUES (
                reason, reporter, category_code,
                post_code, NULL, NULL
            );
        END IF;

    ELSEIF category_code = 2 THEN
        SELECT COUNT(*) INTO existing_count
        FROM report
        WHERE reporter_code = reporter AND category_code = 2 AND actor_review_code = post_code;
        
        IF existing_count = 0 THEN
            INSERT INTO report (
                reason, reporter_code, category_code,
                movie_review_code, actor_review_code, comment_code
            )
            VALUES (
                reason, reporter, category_code,
                NULL, post_code, NULL
            );
        END IF;

    ELSEIF category_code = 3 THEN
        SELECT COUNT(*) INTO existing_count
        FROM report
        WHERE reporter_code = reporter AND category_code = 3 AND comment_code = post_code;
        
        IF existing_count = 0 THEN
            INSERT INTO report (
                reason, reporter_code, category_code,
                movie_review_code, actor_review_code, comment_code
            )
            VALUES (
                reason, reporter, category_code,
                NULL, NULL, post_code
            );
        END IF;

    END IF;
END //

DELIMITER ;

call reportUser('불쾌한 단어가 포함되어 있습니다',1, 1, 1);
