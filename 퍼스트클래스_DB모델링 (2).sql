CREATE TABLE `genre` (
	`code`	integer	NOT NULL,
	`name`	varchar	NOT NULL
);

CREATE TABLE `user` (
	`code`	integer	NOT NULL,
	`id`	varchar	NULL,
	`pw`	integer	NULL,
	`name`	varchar	NULL,
	`birth_date`	date	NULL,
	`status`	varchar	NULL,
	`expires_at`	date	NULL,
	`report_count`	boolean	NULL,
	`role_code`	integer	NOT NULL,
	`level_code`	integer	NOT NULL
);

CREATE TABLE `movie` (
	`code`	integer	NOT NULL,
	`name`	varchar	NOT NULL,
	`release_date`	date	NULL,
	`score`	integer	NULL,
	`rating`	varchar	NULL,
	`is_released`	boolean	NOT NULL,
	`filename`	varchar	NULL,
	`rename`	varchar	NULL,
	`path`	varchar	NULL,
	`date`	datetime	NULL,
	`director_code`	integer	NOT NULL,
	`genre_code`	integer	NOT NULL
);

CREATE TABLE `movie_review` (
	`code`	integer	NOT NULL,
	`score`	integer	NULL,
	`date`	datetime	NULL,
	`content`	varchar	NOT NULL,
	`report_count`	integer	NULL,
	`user_code`	integer	NOT NULL,
	`movie_code`	integer	NOT NULL,
	`actor_code`	integer	NOT NULL
);

CREATE TABLE `actor` (
	`code`	integer	NOT NULL,
	`name`	varchar	NOT NULL,
	`information`	varchar	NOT NULL,
	`is_foreigner`	boolean	NOT NULL,
	`filename`	varchar	NULL,
	`rename`	varchar	NULL,
	`path`	varchar	NULL,
	`date`	datetime	NULL
);

CREATE TABLE `like` (
	`code`	integer	NOT NULL,
	`status`	integer	NULL,
	`date`	datetime	NULL,
	`user_code`	integer	NOT NULL,
	`comment_code`	integer	NOT NULL
);

CREATE TABLE `movie_actors` (
	`movie_code`	integer	NOT NULL,
	`actor_code`	integer	NOT NULL,
	`role_name`	varchar	NOT NULL
);

CREATE TABLE `comment` (
	`code`	integer	NOT NULL,
	`content`	varchar	NOT NULL,
	`date`	datetime	NULL,
	`report_count`	integer	NULL,
	`user_code`	integer	NOT NULL,
	`actor_review_code`	integer	NOT NULL,
	`movie_review_code`	integer	NULL
);

CREATE TABLE `director` (
	`code`	integer	NOT NULL,
	`name`	VARCHAR(255)	NULL,
	`filename`	varchar	NULL,
	`rename`	varchar	NULL,
	`path`	varchar	NULL,
	`date`	datetime	NULL
);

CREATE TABLE `level` (
	`code`	integer	NOT NULL,
	`name`	varchar	NULL
);

CREATE TABLE `role` (
	`code`	integer	NOT NULL,
	`user_role`	varchar	NULL
);

CREATE TABLE `actor_review` (
	`code`	integer	NOT NULL,
	`score`	integer	NULL,
	`content`	varchar	NOT NULL,
	`date`	datetime	NULL,
	`report_count`	integer	NULL,
	`movie_code`	integer	NOT NULL,
	`actor_code`	integer	NOT NULL,
	`user_code`	integer	NOT NULL
);

CREATE TABLE `report` (
	`code`	integer	NOT NULL,
	`reason`	varchar	NULL,
	`date`	datetime	NULL,
	`is_processed`	boolean	NULL,
	`reporter_code`	integer	NOT NULL,
	`actor_review_code`	integer	NOT NULL,
	`movie_review_code`	integer	NOT NULL
);

ALTER TABLE `genre` ADD CONSTRAINT `PK_GENRE` PRIMARY KEY (
	`code`
);

ALTER TABLE `user` ADD CONSTRAINT `PK_USER` PRIMARY KEY (
	`code`
);

ALTER TABLE `movie` ADD CONSTRAINT `PK_MOVIE` PRIMARY KEY (
	`code`
);

ALTER TABLE `movie_review` ADD CONSTRAINT `PK_MOVIE_REVIEW` PRIMARY KEY (
	`code`
);

ALTER TABLE `actor` ADD CONSTRAINT `PK_ACTOR` PRIMARY KEY (
	`code`
);

ALTER TABLE `like` ADD CONSTRAINT `PK_LIKE` PRIMARY KEY (
	`code`
);

ALTER TABLE `movie_actors` ADD CONSTRAINT `PK_MOVIE_ACTORS` PRIMARY KEY (
	`movie_code`,
	`actor_code`
);

ALTER TABLE `comment` ADD CONSTRAINT `PK_COMMENT` PRIMARY KEY (
	`code`
);

ALTER TABLE `director` ADD CONSTRAINT `PK_DIRECTOR` PRIMARY KEY (
	`code`
);

ALTER TABLE `level` ADD CONSTRAINT `PK_LEVEL` PRIMARY KEY (
	`code`
);

ALTER TABLE `role` ADD CONSTRAINT `PK_ROLE` PRIMARY KEY (
	`code`
);

ALTER TABLE `actor_review` ADD CONSTRAINT `PK_ACTOR_REVIEW` PRIMARY KEY (
	`code`
);

ALTER TABLE `report` ADD CONSTRAINT `PK_REPORT` PRIMARY KEY (
	`code`
);

ALTER TABLE `movie_actors` ADD CONSTRAINT `FK_movie_TO_movie_actors_1` FOREIGN KEY (
	`movie_code`
)
REFERENCES `movie` (
	`code`
);

ALTER TABLE `movie_actors` ADD CONSTRAINT `FK_actor_TO_movie_actors_1` FOREIGN KEY (
	`actor_code`
)
REFERENCES `actor` (
	`code`
);

