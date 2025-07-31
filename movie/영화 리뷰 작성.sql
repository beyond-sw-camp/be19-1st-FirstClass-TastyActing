-- 영화 리뷰 작성
-- 사용자가 동일 영화에 작성한 리뷰가 있는지 확인 후 없다면 삽입

INSERT INTO movie_review (score, content, user_code, 
						  movie_code)
SELECT 
	   4	
	 , '최고의 배우들이 만들어낸 올해 최고의 영화!'
	 , 4
	 , 15
WHERE NOT EXISTS (
    SELECT 1 FROM movie_review
    WHERE user_code = 4 AND movie_code = 15
);



