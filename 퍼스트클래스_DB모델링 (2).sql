SHOW columns from actor;

CREATE TABLE  genre  (
	 code 	integer	NOT NULL,
	 name 	varchar(50)	NOT NULL
);

CREATE TABLE  user  (
	 code 	integer	NOT NULL,
	 id 	varchar(50)	NOT NULL,
	 pw 	varchar(50)	NOT NULL,
	 name 	varchar(50)	NOT NULL,
	 birth_date 	date	NOT NULL,
	 status 	varchar(50)	NOT NULL,
	 expires_at 	date	NULL,
	 report_count 	integer	NOT NULL,
	 role_code 	integer	NOT NULL,
	 level_code 	integer	NOT NULL
);

CREATE TABLE  movie  (
	 code 	integer	NOT NULL,
	 name 	varchar(100)	NOT NULL	DEFAULT 100,
	 release_date 	date	NULL,
	 score 	double	NULL,
	 rating 	varchar(50)	NULL	DEFAULT 50,
	 is_released 	boolean	NOT NULL,
	 filename 	varchar(255)	NULL	DEFAULT 255,
	 re_name 	varchar(255)	NULL	DEFAULT 255,
	 path 	varchar(255)	NULL	DEFAULT 255,
	 date 	datetime	NULL,
	 director_code 	integer	NOT NULL,
	 genre_code 	integer	NOT NULL
);

CREATE TABLE  movie_review  (
	 code 	integer	NOT NULL,
	 score 	double	NOT NULL,
	 date 	datetime	NOT NULL,
	 content 	varchar(255)	NULL,
	 report_count 	integer	NOT NULL,
	 number 	integer	NOT NULL,
	 user_code 	integer	NOT NULL,
	 movie_code 	integer	NOT NULL,
	 actor_code 	integer	NOT NULL
);

CREATE TABLE  actor  (
	 code 	integer	NOT NULL,
	 name 	varchar(50)	NOT NULL	DEFAULT 50,
	 information 	varchar(255)	NOT NULL	DEFAULT 255,
	 is_foreigner 	boolean	NOT NULL,
	 filename 	varchar(255)	NULL	DEFAULT 255,
	 re_name 	varchar(255)	NULL	DEFAULT 255,
	 path 	varchar(255)	NULL	DEFAULT 255,
	 date 	datetime	NULL
);

CREATE TABLE  likes  (
	 code 	integer	NOT NULL,
	 is_liked 	boolean	NOT NULL,
	 date 	datetime	NOT NULL,
	 movie_review_code 	integer	NOT NULL,
	 actor_review_code 	integer	NOT NULL,
	 comment_code 	integer	NOT NULL
);

CREATE TABLE  movie_actors  (
	 movie_code 	integer	NOT NULL,
	 actor_code 	integer	NOT NULL,
	 role_name 	varchar(50)	NULL
);

CREATE TABLE  comment  (
	 code 	integer	NOT NULL,
	 content 	varchar(255)	NOT NULL,
	 date 	datetime	NOT NULL,
	 report_count 	integer	NOT NULL,
	 user_code 	integer	NOT NULL,
	 actor_review_code 	integer	NOT NULL,
	 movie_review_code 	integer	NULL
);

CREATE TABLE  director  (
	 code 	integer	NOT NULL,
	 name 	varchar(50)	NOT NULL	DEFAULT 50,
	 filename 	varchar(255)	NULL	DEFAULT 255,
	 re_name 	varchar(255)	NULL	DEFAULT 100,
	 path 	varchar(255)	NULL	DEFAULT 255,
	 date 	datetime	NULL
);

CREATE TABLE  level  (
	 code 	integer	NOT NULL,
	 name 	varchar(50)	NOT NULL
);

CREATE TABLE  role  (
	 code 	integer	NOT NULL,
	 user_role 	varchar(50)	NOT NULL
);

CREATE TABLE  actor_review  (
	 code 	integer	NOT NULL,
	 score 	double	NOT NULL,
	 content 	varchar(255)	NULL,
	 date 	datetime	NOT NULL,
	 report_count 	integer	NOT NULL,
	 number 	integer	NOT NULL,
	 movie_code 	integer	NOT NULL,
	 actor_code 	integer	NOT NULL,
	 user_code 	integer	NOT NULL
);

CREATE TABLE  report  (
	 code 	integer	NOT NULL,
	 reason 	varchar(255)	NULL,
	 date 	datetime	NOT NULL,
	 is_processed 	boolean	NOT NULL,
	 reporter_code 	integer	NOT NULL,
	 actor_review_code 	integer	NOT NULL,
	 movie_review_code 	integer	NOT NULL
);

ALTER TABLE  genre  ADD CONSTRAINT  PK_GENRE  PRIMARY KEY (
	 code 
);

ALTER TABLE  user  ADD CONSTRAINT  PK_USER  PRIMARY KEY (
	 code 
);

ALTER TABLE  movie  ADD CONSTRAINT  PK_MOVIE  PRIMARY KEY (
	 code 
);

ALTER TABLE  movie_review  ADD CONSTRAINT  PK_MOVIE_REVIEW  PRIMARY KEY (
	 code 
);

ALTER TABLE  actor  ADD CONSTRAINT  PK_ACTOR  PRIMARY KEY (
	 code 
);

ALTER TABLE  likes  ADD CONSTRAINT  PK_LIKE  PRIMARY KEY (
	 code 
);

ALTER TABLE  movie_actors  ADD CONSTRAINT  PK_MOVIE_ACTORS  PRIMARY KEY (
	 movie_code ,
	 actor_code 
);

ALTER TABLE  comment  ADD CONSTRAINT  PK_COMMENT  PRIMARY KEY (
	 code 
);

ALTER TABLE  director  ADD CONSTRAINT  PK_DIRECTOR  PRIMARY KEY (
	 code 
);

ALTER TABLE  level  ADD CONSTRAINT  PK_LEVEL  PRIMARY KEY (
	 code 
);

ALTER TABLE  role  ADD CONSTRAINT  PK_ROLE  PRIMARY KEY (
	 code 
);

ALTER TABLE  actor_review  ADD CONSTRAINT  PK_ACTOR_REVIEW  PRIMARY KEY (
	 code 
);

ALTER TABLE  report  ADD CONSTRAINT  PK_REPORT  PRIMARY KEY (
	 code 
);

ALTER TABLE  movie_actors  ADD CONSTRAINT  FK_movie_TO_movie_actors_1  FOREIGN KEY (
	 movie_code 
)
REFERENCES  movie  (
	 code 
);

ALTER TABLE  movie_actors  ADD CONSTRAINT  FK_actor_TO_movie_actors_1  FOREIGN KEY (
	 actor_code 
)
REFERENCES  actor  (
	 code 
);


