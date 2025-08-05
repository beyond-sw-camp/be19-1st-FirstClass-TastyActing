# 연기맛집 - 영화 평점 사이트

<img width="1322" alt="Image" src="./image/banner.png" />

<br>

---

## <span id="1"> 🖼️ First Class 팀원 소개</span>

<div align="center">

|   |   |   |   |   |
| :--------------------------------------------------------------: | :--------------------------------------------------------------: | :--------------------------------------------------------------------------: | :-----------------------------------------------------------: | :--------------------------------------------------------------: |
|      <img src="./image/jeong.jpg" width="120px;" alt=""/>      |      <img src="./image/paik.jpeg" width="120px;" alt=""/>      |            <img src="./image/lee.jpeg" width="120px;" alt=""/>            |    <img src="./image/byun.jpeg" width="120px;" alt=""/>     |      <img src="./image/nam.jpg" width="120px;" alt=""/>      |
|      [정유진](https://github.com/YujinJeong1006)      |      [백준승](https://github.com/seoguhoe2)      |      [이순우](https://github.com/SoonWooLee1)      |      [변민철](https://github.com/bynmch)      |      [남우경](https://github.com/woo-kyoung-nam)      |

</div>


<br>

## 🗂️ 프로젝트 기획
## 1-1. 개요
<br />

> **영화 평점만으로는 부족하셨나요?**  
> - 훌륭한 영화 속 아쉬운 연기
>
> 
> - 아쉬운 영화 속 빛나는 명연기
> <br />
>   
> 작품의 평점은 배우의 모든 것을 말해주지 않습니다.  
> <br />
> 
> **저희는 ‘배우’에 집중합니다.**
> 
> 이제, 배우의 진짜 가치를 평가하고 발견하세요.
> <br />
> 
<br />


**연기맛집**는 기존 영화 중심의 평점 시스템에서 벗어나, 배우 개개인의 연기력과 기여도에 집중한 **영화 리뷰 플랫폼**입니다.  
<br />

사용자는 영화에 대한 전반적인 평점뿐만 아니라, 배우 개개인에 대한 정량적 평가와 자유로운 의견을 남길 수 있으며,  

이 데이터를 기반으로 신작 배우 라인업에 따른 **상영 예정작의 예상 평점**까지 제공하는 것이 본 프로젝트의 핵심 차별점입니다.

<br />

저희는 평점과 리뷰를 단순히 소비하는 것을 넘어, 사용자가 직접 **배우의 진짜 가치를 평가하고 발견**할 수 있도록 해,

사용자, 팬덤, 업계 모두에게 가치 있는 배우 중심의 정보 생태계를 제공하는 것을 지향합니다.

---
<br />

## 1-2. 배경



### 기존 영화 리뷰 사이트들의 문제점

현대의 영화 정보 플랫폼들은 대부분 영화 단위의 평점과 리뷰를 중심으로 운영되고 있으며, 사용자가 남기는 평가는 작품 전체에 대한 종합적인 인상을 담고 있습니다. 

그러나 영화의 완성도에 있어 **배우의 연기력, 존재감, 캐릭터 해석 능력**은 매우 중요한 요소입니다.

<br />

많은 관객들은 “연기는 좋았지만 영화는 별로였다”, “이 배우 덕분에 끝까지 봤다”는 식으로 **작품과 배우를 구분해서 평가**하고 싶어 하지만, 

기존 플랫폼은 **개별 배우의 기여도나 연기력에 대한 체계적인 평가 수단을 제공하지 못하는 한계**가 있습니다.

<br />

또한, 일부 훌륭한 배우들이 출연했음에도 불구하고 **낯선 장르, 시기적 요인, 마케팅 부족** 등으로 인해 흥행에 실패한 영화들이 있습니다. 

이러한 작품들은 단지 ‘낮은 영화 평점’만으로 평가되기 쉬워, **배우의 진짜 연기력이나 작품성**이 왜곡되거나 묻히는 문제가 발생합니다.  
> 출처: [네이버 블로그 – 흥행 실패한 명작 영화들](https://blog.naver.com/dynamis89/222227879393)

---

### 배우 평가 사이트의 필요성 및 본 프로젝트의 목적

본 프로젝트는 이러한 문제의식에서 출발하여, 영화 속 **배우 개개인에 대한 정량적이고 정성적인 평가 시스템**을 제공합니다.  

사용자는 각 배우에 대해 연기력, 캐릭터 몰입도, 감정 전달력, 스크린 장악력 등을 기준으로 평점을 남길 수 있으며, 짧은 감상 코멘트를 추가할 수도 있습니다.

이를 통해 사용자들은 단순히 영화 자체가 아닌, **‘배우 중심’의 콘텐츠 탐색과 소비**가 가능해지며 다음과 같은 효과를 기대할 수 있습니다.

<br />

- 🔍 **명연기를 펼친 배우를 기준으로 다른 작품을 찾는 사용자가 원하는 영화 선택 지원**

- 🌟 **흥행에는 실패했지만 배우 연기는 탁월한 숨겨진 명작을 발견할 수 있는 기회 제공**

- 📊 **데이터를 기반으로 정량화된 배우의 인기 및 영향력 분석**

- 🧩 **업계에서의 배우 평가, 응원, 비교 기반 콘텐츠 확장 가능**

- 🎬 **상영예정작에 대한 배우 기반 예상 평점 제공**

---

## 1-3. 주요기능

### 배우 평점 등록 및 조회

- 배우별 평점 입력 (연기력, 몰입도, 캐릭터 해석력 등)
  
- 다른 사용자가 남긴 배우 평점 및 댓글 확인 가능
  
- 배우별 종합 평점 순위 확인

<br />

### 영화 평점 등록 및 조회

- 기존 영화 플랫폼처럼 영화 단위의 평점도 등록 가능

- 사용자 자신이 평가한 영화/배우 리스트 조회

<br />

### 개봉 예정작 예상 평점 제공 ⭐

> **“개봉 전이라고? 우리는 이미 점수를 알고있다.”**
> 
> - 과거 배우들의 해당 장르 연기력 평가 데이터를 기반
>   
> - 상영 예정작에 대한 **배우 기반 평점 예측 기능**
>   
> - 작품이 개봉되기 전부터 기대 수준을 정량화하여 제시

---

## 1-4. WBS

<img src = "./image/wbs.png" width = "1000"> </img> <br>
---

## 1-5. 요구사항 명세서 

<img src = "./image/요구사항1.png" width = "1000"> </img>
<img src = "./image/요구사항2.png" width = "1000"> </img> <br>
---
## 1-6. UML

<img src = "./image/UML.png" width = "1000"> </img> <br>
---

## 2. DB 모델링

### 2-1. 시나리오

<img src = "./image/scenario.png" width = "1000"> </img> <br>
---
### 2-2. 논리 모델링

<img src = "./image/논리erd.png" width = "1000"> </img> <br>
---
### 2-3. 물리 모델링

<img src = "./image/물리erd.png" width = "1000"> </img> <br>
---
## 3. 서버 구축

<img src = "./image/리눅스ddl.png" width = "1000"> </img>
<img src = "./image/리눅스insert.png" width = "1000"> </img>
<img src = "./image/리눅스slave1.png" width = "1000"> </img>
<img src = "./image/리눅스slave2.png" width = "1000"> </img> <br>

---
## 4. DDL

<details>
<summary>DB DDL</summary>
<div markdown="1">
  
```sql
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
    information VARCHAR(255) NOT NULL,
    is_deleted BOOLEAN NOT NULL DEFAULT FALSE,
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
    is_deleted BOOLEAN NOT NULL DEFAULT FALSE,
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
	date DATETIME DEFAULT CURRENT_TIMESTAMP,
   is_deleted BOOLEAN NOT NULL DEFAULT FALSE
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
    is_deleted BOOLEAN NOT NULL DEFAULT FALSE,
    user_code INTEGER NOT NULL,
    movie_code INTEGER NOT NULL,
    FOREIGN KEY (user_code) REFERENCES user(CODE),
    FOREIGN KEY (movie_code) REFERENCES movie(CODE)
);

CREATE TABLE actor_review (
    code INTEGER PRIMARY KEY AUTO_INCREMENT,
    score DOUBLE NOT NULL,
    content VARCHAR(255) NULL,
    date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    report_count INTEGER NOT NULL DEFAULT 0,
    like_count INTEGER NOT NULL DEFAULT 0,
    is_deleted BOOLEAN NOT NULL DEFAULT FALSE,
    movie_code INTEGER NOT NULL,
    actor_code INTEGER NOT NULL,
    user_code INTEGER NOT NULL,
    FOREIGN KEY (user_code) REFERENCES user(CODE),
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
    is_deleted BOOLEAN NOT NULL DEFAULT FALSE,
    user_code INTEGER NOT NULL,
    category_code INTEGER NOT NULL,
    actor_review_code INTEGER NULL,
    movie_review_code INTEGER NULL,
    FOREIGN KEY (category_code) REFERENCES category(CODE),
    FOREIGN KEY (user_code) REFERENCES user(CODE),
    FOREIGN KEY (movie_review_code) REFERENCES movie_review(CODE),
    FOREIGN KEY (actor_review_code) REFERENCES actor_review(CODE)
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
    FOREIGN KEY (reporter_code) REFERENCES user(CODE),
    FOREIGN KEY (category_code) REFERENCES category(CODE),
    FOREIGN KEY (movie_review_code) REFERENCES movie_review(CODE),
    FOREIGN KEY (actor_review_code) REFERENCES actor_review(CODE),
    FOREIGN KEY (comment_code) REFERENCES comment(CODE) 
);

CREATE TABLE likes (
    code INTEGER PRIMARY KEY AUTO_INCREMENT,
    date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    category_code INTEGER NOT NULL,
    movie_review_code INTEGER NULL,
    actor_review_code INTEGER NULL,
    user_code INTEGER NOT NULL,
    FOREIGN KEY (category_code) REFERENCES category(CODE),
    FOREIGN KEY (movie_review_code) REFERENCES movie_review(CODE),
    FOREIGN KEY (actor_review_code) REFERENCES actor_review(CODE),
    FOREIGN KEY (user_code) REFERENCES user(CODE)
);


CREATE TABLE blacklist (
    code INTEGER,         
    name VARCHAR(50) NOT NULL,
    id_number VARCHAR(50) NOT NULL,
    banned_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (code),
    FOREIGN KEY (code) REFERENCES user(code)
);

-- 인덱스
CREATE INDEX idx_movie_name ON movie(name);
CREATE INDEX idx_actor_name ON actor(name);
```

</div>
</details>

<br>

---

## 5. 테스트 케이스

  <details>
    <summary> 회원가입 </summary>
    <img src = "./gif/회원가입.gif" width="800"> </img> 
  </details>

  <details>
    <summary> 사용자삭제 </summary>
    <img src = "./gif/사용자삭제.gif" width="800"> </img> 
  </details>

  <details>
    <summary> 사용자 활동 정지 및 영구 정지 </summary>
    <img src = "./gif/정지.gif" width="800"> </img> 
  </details>

  <details>
    <summary> 리뷰 및 댓글 신고 </summary>
    <img src = "./gif/신고개수계산.gif" width="800"> </img> 
  </details>

  <details>
    <summary> 배우 출연 장르별 리뷰 조회 </summary>
    <img src = "./gif/배우장르별리뷰.gif" width="800"> </img> 
  </details>

  <details>
    <summary> 배우 출연 장르별 평점 조회 </summary>
    <img src = "./gif/배우장르별평점.gif" width="800"> </img> 
  </details>

  <details>
    <summary> 배우 출연 장르별 영화 조회 </summary>
    <img src = "./gif/배우장르별출연.gif" width="800"> </img> 
  </details>

  <details>
    <summary> 영화/배우 리뷰 좋아요 계산 </summary>
    <img src = "./gif/좋아요계산.gif" width="800"> </img> 
  </details>

  <details>
    <summary> 좋아요 갯수에 따른 등급 부여(프로시저) </summary>
    <img src = "./gif/좋아요개수등급.gif" width="800"> </img> 
  </details>

  <details>
    <summary> 좋아요 갯수에 따른 등급 부여(트리거) </summary>
    <img src = "./gif/좋아요개수등급갱신.gif" width="800"> </img> 
  </details>

  <details>
    <summary> 영화 평점 계산 </summary>
    <img src = "./gif/평점계산.gif" width="800"> </img> 
  </details>

  <details>
    <summary> 상영예정작 </summary>
    <img src = "./gif/상영예정작예상평점.gif" width="800"> </img> 
  </details>

<br>

## 6. 기술 스택
<div align=center><h1>STACKS</h1></div>

<div align=center> 
  <img src="https://img.shields.io/badge/mariaDB-003545?style=for-the-badge&logo=mariaDB&logoColor=white"> 
  <img src="https://img.shields.io/badge/linux-FCC624?style=for-the-badge&logo=linux&logoColor=black"> 
  <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">
  <img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white">
  <br>
</div>


## 7. 동료 평가

### 백준승
| Team Member | Peer Review |
|----------|----------|
| 변민철    | 프로젝트를 진행하는 동안 옆자리에서 코드나 SQL 문법에 대한 내용을 함께 고민해주셔서 감사했습니다. 그리고 발표를 너무나 완벽하게 해주셔서 프로젝트 결과가 더 좋았던 것 같습니다. |
| 남우경    | 프로젝트 주제에 대해 좋은 아이디어 뿐만 아니라 그에 맞는 근거까지 확실하게 제시해주셔서 프로젝트가 수월하게 진행되었습니다. 맡은 바 확실하게 수행해주셨고, 프로젝트 발표는 PL급 실력이였습니다. |
| 정유진    | 창의적인 아이디어를 제시해주어 프로젝트의 주제와 세부 기능을 구체화할 수 있었고, 문제 상황에서도 끝까지 해결하려는 자세가 감명깊었습니다. 또한 발표 덕분에 완성된 결과물이 더 돋보였고, 프로젝트의 완성도를 한층 끌어올릴 수 있었던 것 같습니다. |
| 이순우    | 백준승 팀원님은 먼저 주제를 선정하는 과정에서부터 논리적으로 팀원들을 설득하는 과정이 굉장히 인상깊었는데, 프로젝트를 진행하면서 번뜩이는 아이디어를 제시하고, 쿼리를 끝까지 완성하려고 노력하는 모습이 본받을만 하다고 생각했습니다. 완벽한 발표로 화룡점정을 완성해주셔서 프로젝트의 결과물이 완성도 있었던 것 같습니다. |


### 변민철
| Team Member | Peer Review |
|----------|----------|
| 백준승    | 변민철 팀원님은 사소하게 넘어갈 수 있는 문제들을 잘 짚어주셨습니다. 이런 점들 덕분에 저희 프로젝트가 기반부터 탄탄하고 빈틈없이 진행될 수 있도록 도와주셨습니다. |
| 남우경    | 항상 꾸준히 열심히 해주시고, 프로젝트 도중 쿼리나 시나리오에 관해 문제점을 잘 짚어주셔서 저희 프로젝트가 고도화될 수 있던 것 같습니다. 스스로 미완료한 업무를 찾아서 수행해주셔서 프로젝트 일정 관리에 관해 수월했습니다. |
| 정유진    | 맡은 역할을 성실하게 해주셔서 팀원으로서 정말 든든했습니다. 중요한 순간마다 던져주신 질문들이 문제를 다시 생각해보는 데 큰 도움이 되었고, 팀이 안정적으로 나아갈 수 있도록 묵묵히 큰 역할을 해주셨다고 생각합니다. |
| 이순우    | 변민철 팀원님은 erd설계부터 쿼리작성까지 저희가 놓치는 부분들을 꼼꼼히 짚어주시며 팀의 나침반 역할을 잘 해주신 것 같습니다. 프로젝트의 완성도를 높혀주신 일등 공신이라고 생각합니다. |

### 남우경
| Team Member | Peer Review |
|----------|----------|
| 백준승    | 남우경 팀원님은 다른 직종에서의 경험을 살려 프로젝트 진행에 많은 도움을 주셨습니다. 남우경 팀원님과 프로젝트 회의를 하게 되면 실제 현장에서 진행되는 다양한 자료나 경험을 공유해주셔서 현업과 비슷한 환경을 구축하도록 노력할 수 있었습니다. 또 위트 있는 분위기메이커 역할도 수행해주셔서 긍정적 분위기에서 협업할 수 있었습니다. |
| 변민철    | 현업에서 보시거나 느끼신 부분들을 적절히 설명해주셔서 ERD 작성 시 엔터티를 구성하거나 요구 사항 명세서 같은 내용들을 작성하는데 수월하게 진행할 수 있었습니다. 그리고 진행 상황에 대한 인지를 할 수 있도록 도와주셔서 쿼리 작성에 집중할 수 있었습니다. |
| 정유진    | 명확하지 않았던 기능들을 고민할 때 적극적으로 질문하고 정의되지 않았던 부분을 정할 수 있게 해주셔서 프로젝트가 잘못된 방향으로 가지 않고 올바른 방향으로 나아갈 수 있었습니다. 또한 어려운 쿼리 문제를 다양한 방법으로 해결해 나가는 모습이 인상깊었습니다. |
| 이순우    | 남우경 팀원님은 현업 경험을 바탕으로 프로젝트의 방향을 잡아주셨고, wbs, erd작성, 요구사항 명세서 및 쿼리 작성에 큰 힘이 되어주셨습니다. 또한, 다양한 현업에서의 자료들을 공유해주셔서 실제 현장에서 어떤 방식으로 업무에 접근하고, 수행하는지 옆에서 보고 배울 수 있었습니다. |

### 정유진
| Team Member | Peer Review |
|----------|----------|
| 백준승    | 정유진 팀원님은 저희 프로젝트에 있어서 가장 큰 역할을 해주셨다고 생각합니다. 데이터베이스에 관한 지식이 뛰어나셨고 이를 통해 저희 팀원들이 어려움을 느끼는 시기를 잘 지나가도록 도와주셨습니다. 더불어 테스트케이스 시험 등 다양한 역할을 성실하게 수행해주셔서 저희 프로젝트가 잘 마무리 되도록 이끌어주셨습니다. |
| 변민철    | 우리 팀이 어려움이 있을 때 적절한 해결법을 제시해주셨습니다. 또한 사소한 것부터, 쿼리 작성, 기능 구현, 테스트 케이스 등 프로젝트 진행 중 중요한 결정 사항들을 책임감 있게 맡고, 이를 문제 없이 수행해 주셨습니다. 사실상의 팀장을 맡아서 팀이 돌아갈 수 있도록 해주셨습니다. |
| 남우경    | 이번 프로젝트에서 없어서는 안될 존재였습니다. DB와 관련하여 충분한 지식과 자기 주도적으로 부족한 파트에 관해 고도화 시키고, 테스트 케이스 대략 80개를 혼자 진행하면서도 다른 업무도 수행해 주셨고, 존경스러운 팀원이었습니다. 팀원들 간 쿼리에 관해 어려움이 있으면 올바르고 알맞는 방향으로 제시해 주셨습니다. |
| 이순우    | 정유진 팀원님은 프로젝트 설계부터 테스트 케이스 작성까지 선장 역할을 하시며, 뭐 하나라도 부족함 없이 팀을 이끌어주셨습니다. 또한, 프로시저의 남발로 깔끔하지 못한 쿼리들을 깔끔하게 압축하여, 프로젝트의 안정성에 큰 기여를 해주셨습니다. 성공적인 팀 프로젝트 결과물의 주역이시라고 생각합니다. |

### 이순우
| Team Member | Peer Review |
|----------|----------|
| 백준승    | 이순우 팀원님은 다재다능하다는 표현이 어울리는 팀원이라고 생각합니다. 리드미 작성을 비롯해 회원 관련 쿼리까지 협업 과정에서 함께 결과를 맞추면 어느새 다양한 기능 구현과 작업들을 수행해주셔서 주위 구성원들에게 동기 부여를 주시는 팀원이셨습니다. |
| 변민철    | README 작성 같은 중요한 문서작업을 선제적으로 도맡아 해주셔서 감사했습니다. 다른 팀원들이 기능이나 모델링 작업에 집중할 수 있게 해주셨습니다. |
| 남우경    | 프로젝트 진행 시 꼭 필요한 팀원이라고 생각합니다. 팀원들 간 의견 조율, 본인 스스로 나서서 업무 수행 등 정말 감사한 팀원이었습니다. 모든지 항상 열심히 해주셔서 든든한 팀원이었습니다. |
| 정유진    | 다른 팀원들의 의견을 경청하며 맡은 일을 너무 잘해주셔서 믿고 함께할 수 있었습니다. 또한 README파일 작성을 혼자 도맡아 충실히 잘 작성해주셔서 깃허브 리포지토리의 마무리를 성공적으로 할 수 있게된 것 같습니다. |


