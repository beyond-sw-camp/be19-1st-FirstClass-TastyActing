delimiter //

CREATE or replace PROCEDURE actorReviewByGenre(
    IN in_genre_code INTEGER,
    IN in_actor_code INTEGER
)
BEGIN
    SELECT
        a.name AS '장르명',
        b.name AS '배우명',
        c.name AS '영화명',
        d.score AS '평점',
        d.content AS '내용'
    FROM
        actor_review d
    JOIN
        actor b ON d.actor_code = b.code
    JOIN
        movie c ON d.movie_code = c.code
    JOIN
        genre a ON c.genre_code = a.code
    WHERE
        a.code = in_genre_code AND b.code = in_actor_code  -- 장르와 배우 코드를 모두 사용해 필터링
    ORDER BY
        c.name, d.date DESC;
END //

delimiter ;

CALL actorReviewByGenre(2,1);