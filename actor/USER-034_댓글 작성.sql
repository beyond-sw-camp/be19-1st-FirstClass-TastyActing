-- 배우 리뷰에 댓글 달기
INSERT 
  INTO comment (content, user_code, actor_review_code, movie_review_code)
VALUES (:content, :userCode, :actor_review_code, NULL);

-- 영화 리뷰에 댓글 달기
INSERT 
  INTO comment (content, user_code, actor_review_code, movie_review_code)
VALUES (:content, :userCode, NULL, :movieReviewCode);