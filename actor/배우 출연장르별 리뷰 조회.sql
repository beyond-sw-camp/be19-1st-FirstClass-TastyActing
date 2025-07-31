Delimiter //

CREATE or replace PROCEDURE ActorReviewByGenre(
    IN in_genre_code INTEGER,
    IN in_actor_code INTEGER
)
BEGIN
    SELECT
        g.name AS genre_name,
        a.name AS actor_name,
        m.name AS movie_name,
        ar.score AS review_score,
        ar.content AS review_content
    FROM
        actor_review ar
    JOIN
        actor a ON ar.actor_code = a.code
    JOIN
        movie m ON ar.movie_code = m.code
    JOIN
        genre g ON m.genre_code = g.code
    WHERE
        g.code = in_genre_code AND a.code = in_actor_code  -- 장르와 배우 코드를 모두 사용해 필터링
    ORDER BY
        m.name, ar.date DESC;
END //

DELIMITER ;

CALL ActorReviewByGenre(2,1);