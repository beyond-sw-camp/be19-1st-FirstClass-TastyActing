delimiter //

CREATE OR REPLACE FUNCTION calculateExpectedMovieScore(
    in_movie_code INTEGER
)
RETURNS DOUBLE
READS SQL DATA
BEGIN
    DECLARE expected_score DOUBLE;
    DECLARE target_genre_code INT;

    SELECT genre_code              -- 영화의 장르 코드 조회
	   INTO target_genre_code
      FROM movie
    WHERE code = in_movie_code;

    SELECT                         -- 해당 영화 출연 배우들의 해당 장르 평균 평점들의 최종 평균을 계산
           AVG(actor_genre_avg_score)
      INTO
           expected_score
      FROM (
           SELECT AVG(ar.score) AS actor_genre_avg_score
             FROM actor_review ar
             JOIN movie m ON ar.movie_code = m.code
           WHERE
                  ar.actor_code IN (SELECT actor_code FROM movie_actors WHERE movie_code = in_movie_code)
              AND m.genre_code = target_genre_code
            GROUP BY ar.actor_code
    ) AS actor_scores;

    RETURN expected_score;
END //

delimiter ;

SELECT 
    name AS '영화 제목',
    release_date AS '개봉 예정일',
    ROUND(calculateExpectedMovieScore(code), 1) AS '출연진 기반 예상 평점'
FROM 
    movie
WHERE 
    is_released = FALSE;