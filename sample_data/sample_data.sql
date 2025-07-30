
-- 장르 데이터
 INSERT INTO genre (name) VALUES
 ('드라마'),
 ('액션'),
 ('코미디'),
 ('스릴러'),
 ('SF'),
 ('판타지'),
 ('로맨스'),
 ('공포'),
 ('다큐멘터리'),
 ('뮤지컬'),
 ('미스터리');

-- 감독 데이터 
INSERT INTO director (name, filename, re_name, path)
VALUES
('봉준호', 'bong_joonho.jpg', 'bong_joonho.jpg', '/uploads/directors/'), 
('강윤성', 'kang_yoonseong.jpg', 'kang_yoonseong.jpg', '/uploads/directors/'),  
('이병헌', 'lee_byunghun.jpg', 'lee_byunghun.jpg', '/uploads/directors/'), 
('최동훈', 'choi_donghoon.jpg', 'choi_donghoon.jpg', '/uploads/directors/'),  
('연상호', 'yeon_sangho.jpg', 'yeon_sangho.jpg', '/uploads/directors/'), 
('윤제균', 'yoon_je_kyoon.jpg', 'yoon_je_kyoon.jpg', '/uploads/directors/'),  
('장훈', 'jang_hoon.jpg', 'jang_hoon.jpg', '/uploads/directors/'), 
('Christopher Nolan', 'nolan.jpg', 'nolan.jpg', '/uploads/directors/'),
('박찬욱', 'park_chanwook.jpg', 'park_chanwook.jpg', '/uploads/directors/'),
('우민호', 'woo_minho.jpg', 'woo_minho.jpg', '/uploads/directors/'),
('Denis Villeneuve', 'villeneuve.jpg', 'villeneuve.jpg', '/uploads/directors/');


-- 배우 데이터 
INSERT INTO actor (name, information, is_foreigner, filename, re_name, path)
VALUES
('송강호', '한국의 대표 배우로 봉준호 감독과 여러 작품에서 협업했고, 사회파 영화에서 독보적인 존재입니다.', FALSE, 'song_kangho.jpg', 'song_kangho.jpg', '/uploads/actors/'),
('박소담', '영화 \'기생충\'으로 국제적으로 알려졌으며, 세련된 연기로 사랑받고 있습니다.', FALSE, 'park_sodam.jpg', 'park_sodam.jpg', '/uploads/actors/'),
('최우식', '젊고 유망한 배우로, 다양한 장르에서 활발하게 활동 중입니다.', FALSE, 'choi_woosik.jpg', 'choi_woosik.jpg', '/uploads/actors/'),
('정지소', '어린 나이에 출연해 주목받았고, 다수의 드라마와 영화 경험이 있습니다.', FALSE, 'jung_jiso.jpg', 'jung_jiso.jpg', '/uploads/actors/'),
('장혜진', '다양한 조연 역할로 정평이 있으며, 현실감 있는 연기로 주목받습니다.', FALSE, 'jang_hyejin.jpg', 'jang_hyejin.jpg', '/uploads/actors/'),
('Matthew McConaughey', '미국 배우로, NASA 파일럿 역할로 인상적인 연기를 보여줍니다.', TRUE, 'matthew_m.jpg', 'matthew_m.jpg', '/uploads/actors/'),
('Anne Hathaway', '할리우드 톱 여배우로, 다양한 작품에서 감정 연기의 폭이 넓은 배우입니다.', TRUE, 'anne_h.jpg', 'anne_h.jpg', '/uploads/actors/'),
('Jessica Chastain', '미국 배우로, 성숙한 과학자 역할을 자연스럽게 소화합니다.', TRUE, 'jessica_c.jpg', 'jessica_c.jpg', '/uploads/actors/'),
('Michael Caine', '영국의 전설적인 배우로 엄숙하고 신뢰성 있는 캐릭터를 맡습니다.', TRUE, 'michael_caine.jpg', 'michael_caine.jpg', '/uploads/actors/'),
('David Gyasi', '영국 가나계 배우로, Interstellar에서 연구원 역으로 출연했습니다.', TRUE, 'david_gyasi.jpg', 'david_gyasi.jpg', '/uploads/actors/'),
('마동석', '강력한 이미지로 범죄 액션 장르에서 독보적인 배우입니다.', FALSE, 'ma_dongseok.jpg', 'ma_dongseok.jpg', '/uploads/actors/'),
('윤계상', '아이돌 출신 배우로, 강렬한 악역 연기로 호평받았습니다.', FALSE, 'yoon_kyesang.jpg', 'yoon_kyesang.jpg', '/uploads/actors/'),
('조재윤', '조연으로서 안정된 연기를 보여주는 베테랑 배우입니다.', FALSE, 'jo_jaeyoon.jpg', 'jo_jaeyoon.jpg', '/uploads/actors/'),
('최귀화', '영화와 드라마에서 다양한 형사 역할을 소화했습니다.', FALSE, 'choi_guihwa.jpg', 'choi_guihwa.jpg', '/uploads/actors/'),
('류승룡', '코미디와 드라마를 넘나드는 다재다능한 배우입니다.', FALSE, 'ryu_seungryong.jpg', 'ryu_seungryong.jpg', '/uploads/actors/'),
('이하늬', '미스코리아 출신으로 영화, 드라마, 예능에서 활약 중입니다.', FALSE, 'lee_hanee.jpg', 'lee_hanee.jpg', '/uploads/actors/'),
('진선규', '강한 인상과 개성 있는 연기로 주목받는 배우입니다.', FALSE, 'jin_seonkyu.jpg', 'jin_seonkyu.jpg', '/uploads/actors/'),
('이동휘', '독특한 캐릭터 연기에 강점이 있는 배우입니다.', FALSE, 'lee_donghwi.jpg', 'lee_donghwi.jpg', '/uploads/actors/'),
('공명', '훈훈한 외모와 안정적인 연기로 주목받고 있는 배우입니다.', FALSE, 'gong_myung.jpg', 'gong_myung.jpg', '/uploads/actors/'),
('전지현', '한국을 대표하는 여배우로, 액션과 감정 연기에 강합니다.', FALSE, 'jun_jihyun.jpg', 'jun_jihyun.jpg', '/uploads/actors/'),
('이정재', '스크린과 OTT에서 모두 활약 중인 한국 대표 배우입니다.', FALSE, 'lee_jungjae.jpg', 'lee_jungjae.jpg', '/uploads/actors/'),
('하정우', '다양한 장르에서 주연으로 활약하는 연기파 배우입니다.', FALSE, 'ha_jungwoo.jpg', 'ha_jungwoo.jpg', '/uploads/actors/'),
('오달수', '다수의 흥행작에서 감초 역할을 해온 배우입니다.', FALSE, 'oh_dalsu.jpg', 'oh_dalsu.jpg', '/uploads/actors/'), 
('조진웅', '형사, 정치인 등 다양한 캐릭터를 자연스럽게 소화합니다.', FALSE, 'jo_jinwoong.jpg', 'jo_jinwoong.jpg', '/uploads/actors/'),
('공유', '다양한 드라마와 영화에서 폭넓은 연기를 보여주는 배우입니다.', FALSE, 'gong_yoo.jpg', 'gong_yoo.jpg', '/uploads/actors/'),
('정유미', '섬세한 감정 연기로 사랑받는 배우입니다.', FALSE, 'jung_yumi.jpg', 'jung_yumi.jpg', '/uploads/actors/'),
('최우식', '다양한 장르에서 활약 중인 젊은 연기파 배우입니다.', FALSE, 'choi_wooshik.jpg', 'choi_wooshik.jpg', '/uploads/actors/'),
('안소희', '아이돌 출신으로 연기 활동을 이어가고 있는 배우입니다.', FALSE, 'ahn_sohee.jpg', 'ahn_sohee.jpg', '/uploads/actors/'),
('이병헌', '한국 영화계의 대표 배우 중 한 명으로 다수의 흥행작 출연.', FALSE, 'lee_byunheon.jpg', 'lee_byunheon.jpg', '/uploads/actors/'),
('조승우', '뛰어난 연기력으로 다양한 장르를 소화하는 배우.', FALSE, 'jo_seungwoo.jpg', 'jo_seungwoo.jpg', '/uploads/actors/'),
('백윤식', '연기 내공이 깊은 중견 배우.', FALSE, 'baek_yoonsik.jpg', 'baek_yoonsik.jpg', '/uploads/actors/'),
('황정민', '강렬한 카리스마와 연기로 인정받는 배우.', FALSE, 'hwang_jungmin.jpg', 'hwang_jungmin.jpg', '/uploads/actors/'), 
('한효주', '다양한 감성 연기로 사랑받는 배우.', FALSE, 'han_hyojoo.jpg', 'han_hyojoo.jpg', '/uploads/actors/'),
('김윤진', '한국계 미국 배우로 활발히 활동.', FALSE, 'kim_yunjin.jpg', 'kim_yunjin.jpg', '/uploads/actors/'),
('최민식', '한국을 대표하는 베테랑 배우로 강렬한 연기력 보유.', FALSE, 'choi_minsik.jpg', 'choi_minsik.jpg', '/uploads/actors/'),
('유지태', '다양한 작품에서 깊이 있는 연기를 선보이는 배우.', FALSE, 'yu_ji-tae.jpg', 'yu_ji-tae.jpg', '/uploads/actors/'),
('강혜정', '감성적인 연기로 주목받는 배우.', FALSE, 'kang_hyejung.jpg', 'kang_hyejung.jpg', '/uploads/actors/'),
('Leonardo DiCaprio', '세계적인 헐리우드 배우로 인셉션 주연.', TRUE, 'leonardo_dicaprio.jpg', 'leonardo_dicaprio.jpg', '/uploads/actors/'),
('Joseph Gordon-Levitt ', '미국 배우로 다양한 장르에서 활약.', TRUE, 'joseph_gordon_levitt.jpg', 'joseph_gordon_levitt.jpg', '/uploads/actors/'),
('Elliot Page', '캐나다 배우로 인상적인 연기를 보여줌.', TRUE, 'ellen_page.jpg', 'ellen_page.jpg', '/uploads/actors/'), 
('남우경', '최고의 신인배우',FALSE, 'picture1.jpg', 'rename_picture1.jpg', '/uploads/actors/'),
('백준승', '최고의 신인배우',FALSE, 'picture2.jpg', 'rename_picture2.jpg', '/uploads/actors/'),
('변민철', '최고의 신인배우',FALSE, 'picture3.jpg', 'rename_picture3.jpg', '/uploads/actors/'),
('이순우', '최고의 신인배우',FALSE, 'picture4.jpg', 'rename_picture4.jpg', '/uploads/actors/'),
('정유진', '최고의 신인배우',FALSE, 'picture5.jpg', 'rename_picture5.jpg', '/uploads/actors/');



-- 영화 데이터 
INSERT INTO movie (name, release_date, score, rating, is_released, filename, re_name, path, director_code, genre_code)
VALUES
('기생충', '2019-05-30', 0, '15세', TRUE, 'parasite.jpg', 'parasite_2019.jpg', '/uploads/movies/', 1, 1),  
('범죄도시', '2017-10-03', 0, '청불', TRUE, 'outlaws.jpg', 'outlaws_2017.jpg', '/uploads/movies/', 2, 2),  
('극한직업', '2019-01-23', 0, '15세', TRUE, 'extreme_job.jpg', 'extreme_job_2019.jpg', '/uploads/movies/', 3, 3),  
('암살', '2015-07-22', 0, '15세', TRUE, 'assassination.jpg', 'assassination_2015.jpg', '/uploads/movies/', 4, 4),  
('부산행', '2016-07-20', 0, '15세', TRUE, 'train_to_busan.jpg', 'train_to_busan_2016.jpg', '/uploads/movies/', 5, 5),  
('스물', '2015-03-25', 0, '15세', TRUE, 'twenty.jpg', 'twenty_2015.jpg', '/uploads/movies/', 3, 1),  -- 드라마
('기생충2: 또 다른 침입자', '2025-12-15', 0, '15세', FALSE, 'parasite2.jpg', 'parasite2_2025.jpg', '/uploads/movies/', 1, 1), 
('Interstellar: Beyond Time', '2026-03-01', 0, 'PG-13', FALSE, 'interstellar2.jpg', 'interstellar2_2026.jpg', '/uploads/movies/', 11, 5), 
('내부자들', '2015-11-19', 0, '청불', TRUE, 'inside_men.jpg', 'inside_men_2015.jpg', '/uploads/movies/', 10, 4),  
('광해, 왕이 된 남자', '2012-09-13', 0, '12세', TRUE, 'masquerade.jpg', 'masquerade_2012.jpg', '/uploads/movies/', 7, 1), 
('국제시장', '2014-12-17', 0, '12세', TRUE, 'ode_to_my_father.jpg', 'ode_2014.jpg', '/uploads/movies/', 6, 1),  
('올드보이', '2003-11-21', 0, '청불', TRUE, 'oldboy.jpg', 'oldboy_2003.jpg', '/uploads/movies/', 9, 4), 
('인셉션', '2010-07-16', 0, '12세', TRUE, 'inception.jpg', 'inception_2010.jpg', '/uploads/movies/', 8, 5),  
('인터스텔라', '2014-11-07', 0, '12세', TRUE, 'interstellar.jpg', 'interstellar_2014.jpg', '/uploads/movies/', 8, 5), 
('퍼스트클래스', '2014-11-07', 0, '12세', TRUE, 'firstclass.jpg', 'firstclass.jpg', '/uploads/movies/', 8, 6); 


-- 영화출연배우 데이터
INSERT INTO movie_actors (movie_code, actor_code, role_name)
VALUES
(1, 1, '김기택'),        
(1, 2, '기정'),          
(1, 3, '기우'),       
(1, 4, '다혜'),          
(1, 5, '충숙'),
(2, 11, '마석도'),       
(2, 12, '장첸'),          
(2, 13, '조 형사'),        
(2, 14, '최 형사'),
(3, 15, '고반장'),         
(3, 16, '장 형사'),         
(3, 17, '마 형사'),        
(3, 18, '영호'),          
(3, 19, '재훈'),
(4, 20, '안옥윤'),          
(4, 21, '염석진'),          
(4, 22, '속사포'),          
(4, 23, '하와이피스톨'),
(5, 24, '석우'),           
(5, 25, '성경'),           
(5, 26, '상화'),          
(5, 27, '진희'),           
(5, 28, '영국'),
(6, 29, '치호'),          
(6, 30, '경재'),          
(6, 31, '동우'),
(7, 1, '김기택'),         
(7, 2, '기정'),          
(7, 3, '기우'),          
(8, 6, 'Cooper'),            
(8, 8, 'Murph'),            
(8, 7, 'Brand'),
(9, 29, '안상구'),           
(9, 30, '우장훈'),           
(9, 31, '이강희'),          
(10, 29, '광해 / 하선'),      
(10, 30, '허균'),          
(10, 31, '조내관'),
(10, 32, '도부장'),         
(10, 33, '중전'),            
(10, 34, '사임당'),
(11, 32, '덕수'),        
(11, 34, '영자'),        
(11, 23, '달구'),     
(12, 35, '오대수'),   
(12, 36, '이우진'),   
(12, 37, '미도'),   
(13, 38, 'Dom Cobb'),        
(13, 39, 'Arthur'),         
(13, 40, 'Ariadne'),
(14, 6, 'Cooper'),
(14, 7, 'Brand'),
(14, 8, 'Murphy'),
(15, 41, '남우경'),
(15, 42, '백준승'),
(15, 43, '변민철'),
(15, 44, '이순우'),
(15, 45, '정유진');






