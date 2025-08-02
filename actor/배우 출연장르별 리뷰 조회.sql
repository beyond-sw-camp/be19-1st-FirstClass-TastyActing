-- 배우 출연장르별 리뷰 조회 
SELECT
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
	    a.name = '드라마' AND b.name = '송강호'
 ORDER BY c.name, d.date DESC;

