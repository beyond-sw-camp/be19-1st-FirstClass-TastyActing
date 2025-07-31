-- 영화 리뷰 좋아요 설정

DELIMITER //

CREATE OR REPLACE PROCEDURE set_like_on_movie_review(
  IN p_user_code INT,
  IN p_movie_review_code INT,
  IN p_is_liked BOOLEAN   -- 1=좋아요, 0=해제
)
BEGIN
  -- 없으면 INSERT, 있으면 상태만 갱신 (시간 갱신)
  INSERT INTO likes (user_code, movie_review_code, actor_review_code, is_liked)
  VALUES (p_user_code, p_movie_review_code, NULL, p_is_liked)
  ON DUPLICATE KEY UPDATE
    is_liked = VALUES(is_liked),
    date     = CURRENT_TIMESTAMP;

  -- 현재 상태 반환
  SELECT code AS like_id, is_liked, date
  FROM likes
  WHERE user_code = p_user_code AND movie_review_code = p_movie_review_code;
END//

DELIMITER ;

-- 배우 리뷰 좋아요 설정

DELIMITER //

CREATE OR REPLACE PROCEDURE set_like_on_actor_review(
  IN p_user_code INT,
  IN p_actor_review_code INT,
  IN p_is_liked BOOLEAN
)
BEGIN
  INSERT INTO likes (user_code, movie_review_code, actor_review_code, is_liked)
  VALUES (p_user_code, NULL, p_actor_review_code, p_is_liked)
  ON DUPLICATE KEY UPDATE
    is_liked = VALUES(is_liked),
    date     = CURRENT_TIMESTAMP;

  SELECT code AS like_id, is_liked, date
  FROM likes
  WHERE user_code = p_user_code AND actor_review_code = p_actor_review_code;
END//

DELIMITER ;