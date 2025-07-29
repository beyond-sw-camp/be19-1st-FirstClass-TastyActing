CREATE TABLE genre (
    code INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE user (
    code INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id VARCHAR(50) NOT NULL,
    pw VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    status VARCHAR(50) NOT NULL DEFAULT 'normal',
    expires_at DATE NULL,
    report_count INTEGER NOT NULL DEFAULT 0,
    role_code INTEGER NOT NULL,
    level_code INTEGER NOT NULL
);

CREATE TABLE movie (
    code INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    release_date DATE NULL,
    score DOUBLE NULL,
    rating VARCHAR(50) NULL,
    is_released BOOLEAN NOT NULL,
    filename VARCHAR(255) NULL,
    re_name VARCHAR(255) NULL,
    path VARCHAR(255) NULL,
    date DATETIME NULL,
    director_code INTEGER NOT NULL,
    genre_code INTEGER NOT NULL
);

CREATE TABLE movie_review (
    code INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    score DOUBLE NOT NULL,
    date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    content VARCHAR(255) NULL,
    report_count INTEGER NOT NULL DEFAULT 0,
    number INTEGER NOT NULL DEFAULT 0,
    user_code INTEGER NOT NULL,
    movie_code INTEGER NOT NULL,
    actor_code INTEGER NOT NULL
);

CREATE TABLE actor (
    code INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    information VARCHAR(255) NOT NULL,
    is_foreigner BOOLEAN NOT NULL,
    filename VARCHAR(255) NULL,
    re_name VARCHAR(255) NULL,
    path VARCHAR(255) NULL,
    date DATETIME NULL
);

CREATE TABLE likes (
    code INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    is_liked BOOLEAN NOT NULL DEFAULT FALSE,
    date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    movie_review_code INTEGER NOT NULL,
    actor_review_code INTEGER NOT NULL,
    comment_code INTEGER NOT NULL
);

CREATE TABLE movie_actors (
    movie_code INTEGER NOT NULL,
    actor_code INTEGER NOT NULL,
    role_name VARCHAR(50) NULL,
    PRIMARY KEY (movie_code, actor_code),
    FOREIGN KEY (movie_code) REFERENCES movie(code),
    FOREIGN KEY (actor_code) REFERENCES actor(code)
);

CREATE TABLE comment (
    code INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    content VARCHAR(255) NOT NULL,
    date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    report_count INTEGER NOT NULL DEFAULT 0,
    user_code INTEGER NOT NULL,
    actor_review_code INTEGER NOT NULL,
    movie_review_code INTEGER NULL
);

CREATE TABLE director (
    code INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    filename VARCHAR(255) NULL,
    re_name VARCHAR(255) NULL,
    path VARCHAR(255) NULL,
    date DATETIME NULL
);

CREATE TABLE level (
    code INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE role (
    code INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_role VARCHAR(50) NOT NULL
);

CREATE TABLE actor_review (
    code INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    score DOUBLE NOT NULL,
    content VARCHAR(255) NULL,
    date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    report_count INTEGER NOT NULL,
    number INTEGER NOT NULL,
    movie_code INTEGER NOT NULL,
    actor_code INTEGER NOT NULL,
    user_code INTEGER NOT NULL
);

CREATE TABLE report (
    code INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    reason VARCHAR(255) NULL,
    date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    is_processed BOOLEAN NOT NULL,
    reporter_code INTEGER NOT NULL,
    actor_review_code INTEGER NOT NULL,
    movie_review_code INTEGER NOT NULL
);
r_code 
);