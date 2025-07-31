-- 배우 장르별 평균 평점 조회
delimiter //

CREATE OR REPLACE procedure avgScore(IN in_actor_code INTEGER, IN in_genre_code INTEGER)

BEGIN
SELECT
       a.name AS '배우명',
       b.name AS '장르명',
       AVG(c.score) AS '평균 평점'
  FROM
       actor_review c
  JOIN
       actor a ON c.actor_code = a.code
  JOIN
       movie d ON c.movie_code = d.code
  JOIN
       genre b ON d.genre_code = b.code
 WHERE a.code = in_actor_code AND b.code = in_genre_code  
 GROUP BY a.name, b.name;
 
END //

delimiter ;

CALL avgScore(1,1);
CALL avgScore(2,2);