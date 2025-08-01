delimiter //

CREATE OR replace TRIGGER after_like_insert
AFTER INSERT ON likes
FOR EACH ROW
BEGIN
    IF NEW.movie_review_code IS NOT NULL THEN               -- 영화 리뷰에 대한 좋아요인 경우
        UPDATE user
        SET like_count = like_count + 1
        WHERE code = (SELECT user_code FROM movie_review WHERE code = NEW.movie_review_code);

    ELSEIF NEW.actor_review_code IS NOT NULL THEN           -- 배우 리뷰에 대한 좋아요인 경우
        UPDATE user
        SET like_count = like_count + 1
        WHERE code = (SELECT user_code FROM actor_review WHERE code = NEW.actor_review_code);
    END IF;
END //

delimiter ;

delimiter //

CREATE OR replace TRIGGER after_like_delete
AFTER DELETE ON likes
FOR EACH ROW
BEGIN
    IF OLD.movie_review_code IS NOT NULL THEN            -- 영화 리뷰 좋아요 취소인 경우
        UPDATE user
        SET like_count = like_count - 1
        WHERE code = (SELECT user_code FROM movie_review WHERE code = OLD.movie_review_code);

    ELSEIF OLD.actor_review_code IS NOT NULL THEN        -- 배우 리뷰 좋아요 취소인 경우
        UPDATE user
        SET like_count = like_count - 1
        WHERE code = (SELECT user_code FROM actor_review WHERE code = OLD.actor_review_code);
    END IF;
END //

delimiter ;

-- 김민준 카운터 확인
SELECT name, like_count FROM user WHERE code = 1;

-- 좋아요 취소 실행 , 1번째 리뷰의 like_count 줄어듦을 확인
CALL toggleLike(2, 1, 1);
SELECT * FROM movie_review;

-- 김민준 카운트 다시 확인
SELECT name, like_count FROM user WHERE code = 1;