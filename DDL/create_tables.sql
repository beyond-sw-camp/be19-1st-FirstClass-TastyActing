DROP TABLE if EXISTS likes;
DROP TABLE if EXISTS report;
DROP TABLE if EXISTS comment;
DROP TABLE if EXISTS movie_review;
DROP TABLE if EXISTS actor_review;
DROP TABLE if EXISTS movie_actors;
DROP TABLE if EXISTS blacklist;
DROP TABLE if EXISTS user;
DROP TABLE if EXISTS movie;
DROP TABLE if EXISTS actor;
DROP TABLE if EXISTS role;
DROP TABLE if EXISTS level;
DROP TABLE if EXISTS director;
DROP TABLE if EXISTS genre;
DROP TABLE if EXISTS category;

CREATE TABLE genre (
    code INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE director (
    code INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    filename VARCHAR(255) NULL,
    re_name VARCHAR(255) NULL,
    path VARCHAR(255) NULL,
    date DATETIME NULL
);


CREATE TABLE role (
    code INTEGER PRIMARY KEY AUTO_INCREMENT,
    user_role VARCHAR(50) NOT NULL
);

CREATE TABLE level (
    code INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE movie (
    code INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    release_date DATE NULL,
    score DOUBLE NULL,
    rating VARCHAR(50) NULL,
    is_released BOOLEAN NOT NULL,
    filename VARCHAR(255) NULL,
    re_name VARCHAR(255) NULL,
    path VARCHAR(255) NULL,
    date DATETIME NULL,
    director_code INT NOT NULL,
    genre_code INT NOT null,
    FOREIGN KEY (director_code) REFERENCES director(CODE),
    FOREIGN KEY (genre_code) REFERENCES genre(CODE)
);

CREATE TABLE actor (
    code INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    information VARCHAR(255) NOT NULL,
    is_foreigner BOOLEAN NOT NULL,
    filename VARCHAR(255) NULL,
    re_name VARCHAR(255) NULL,
    path VARCHAR(255) NULL,
    date DATETIME NULL
);

CREATE TABLE movie_actors (
    movie_code INTEGER NOT NULL,
    actor_code INTEGER NOT NULL,
    role_name VARCHAR(50) NULL,
    PRIMARY KEY (movie_code, actor_code),
    FOREIGN KEY (movie_code) REFERENCES movie(code),
    FOREIGN KEY (actor_code) REFERENCES actor(code)
);

CREATE TABLE user (
    code INTEGER PRIMARY KEY AUTO_INCREMENT,
    id VARCHAR(50) NOT NULL unique,
    pw VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    id_number VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL DEFAULT 'normal',
    expires_at DATE NULL,
    report_count INTEGER NOT NULL DEFAULT 0,
    like_count INTEGER NOT NULL DEFAULT 0,
    role_code INTEGER NOT NULL,
    level_code INTEGER NOT NULL,
    FOREIGN KEY (role_code) REFERENCES role(CODE),
    FOREIGN KEY (level_code) REFERENCES level(CODE)
);

CREATE TABLE movie_review (
    code INTEGER PRIMARY KEY AUTO_INCREMENT,
    score DOUBLE NOT NULL,
    date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    content VARCHAR(255) NULL,
    report_count INTEGER NOT NULL DEFAULT 0,
    like_count INTEGER NOT NULL DEFAULT 0,
    user_code INTEGER NOT NULL,
    movie_code INTEGER NOT NULL,
    FOREIGN KEY (user_code) REFERENCES user(CODE) ON DELETE CASCADE,
    FOREIGN KEY (movie_code) REFERENCES movie(CODE)
);

CREATE TABLE actor_review (
    code INTEGER PRIMARY KEY AUTO_INCREMENT,
    score DOUBLE NOT NULL,
    content VARCHAR(255) NULL,
    date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    report_count INTEGER NOT NULL,
    like_count INTEGER NOT NULL,
    movie_code INTEGER NOT NULL,
    actor_code INTEGER NOT NULL,
    user_code INTEGER NOT NULL,
    FOREIGN KEY (user_code) REFERENCES user(CODE) ON DELETE CASCADE,
    FOREIGN KEY (movie_code) REFERENCES movie(CODE),
    FOREIGN KEY (actor_code) REFERENCES actor(CODE)
);

CREATE TABLE category (
	code INTEGER PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE comment (
    code INTEGER PRIMARY KEY AUTO_INCREMENT,
    content VARCHAR(255) NOT NULL,
    date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    report_count INTEGER NOT NULL DEFAULT 0,
    user_code INTEGER NOT NULL,
    category_code INTEGER NOT NULL,
    actor_review_code INTEGER NULL,
    movie_review_code INTEGER NULL,
    FOREIGN KEY (category_code) REFERENCES category(CODE),
    FOREIGN KEY (user_code) REFERENCES user(CODE) ON DELETE CASCADE,
    FOREIGN KEY (movie_review_code) REFERENCES movie_review(CODE) ON DELETE CASCADE,
    FOREIGN KEY (actor_review_code) REFERENCES actor_review(CODE) ON DELETE CASCADE
);

CREATE TABLE report (
    code INTEGER PRIMARY KEY AUTO_INCREMENT,
    reason VARCHAR(255) NULL,
    date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    is_processed BOOLEAN NOT NULL DEFAULT FALSE,
    reporter_code INTEGER NOT NULL,
    category_code INTEGER NOT NULL,
    actor_review_code INTEGER,
    movie_review_code INTEGER,
    comment_code INTEGER,
    FOREIGN KEY (reporter_code) REFERENCES user(CODE) ON DELETE CASCADE,
    FOREIGN KEY (category_code) REFERENCES category(CODE),
    FOREIGN KEY (movie_review_code) REFERENCES movie_review(CODE) ON DELETE CASCADE,
    FOREIGN KEY (actor_review_code) REFERENCES actor_review(CODE) ON DELETE CASCADE,
    FOREIGN KEY (comment_code) REFERENCES comment(CODE) ON DELETE CASCADE
);

CREATE TABLE likes (
    code INTEGER PRIMARY KEY AUTO_INCREMENT,
    date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    category_code INTEGER NOT NULL,
    movie_review_code INTEGER NULL,
    actor_review_code INTEGER NULL,
    user_code INTEGER NOT NULL,
    FOREIGN KEY (category_code) REFERENCES category(CODE),
    FOREIGN KEY (movie_review_code) REFERENCES movie_review(CODE) ON DELETE CASCADE,
    FOREIGN KEY (actor_review_code) REFERENCES actor_review(CODE) ON DELETE CASCADE,
    FOREIGN KEY (user_code) REFERENCES user(CODE) ON DELETE CASCADE
);


CREATE TABLE blacklist (
    code INTEGER,         
    name VARCHAR(50) NOT NULL,
    id_number VARCHAR(50) NOT NULL,
    banned_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (code),
    FOREIGN KEY (code) REFERENCES user(code)
);

