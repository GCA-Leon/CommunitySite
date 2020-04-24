
CREATE TABLE USERTB(
	id VARCHAR(100) PRIMARY KEY,
	pw VARCHAR(100) NOT NULL,
	nickname VARCHAR(100) NOT NULL unique,
	email VARCHAR(100) NOT NULL UNIQUE

);


DROP TABLE BOARD_ride;

CREATE TABLE BOARD_best(
idx int PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100),
writer VARCHAR(100),
contents longtext,
wdate DATEtime,
VIEW INT,
up INT,
down INT,
comments VARCHAR(100),
comnum INT,
upList longtext
);


CREATE TABLE BOARD_normal(
idx int PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100),
writer VARCHAR(100),
contents longtext,
wdate DATEtime,
VIEW INT,
up INT,
down INT,
comments VARCHAR(100),
comnum INT,
upList longtext
);


CREATE TABLE BOARD_read(
idx int PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100),
writer VARCHAR(100),
contents longtext,
wdate DATEtime,
VIEW INT,
up INT,
down INT,
comments VARCHAR(100),
comnum INT,
upList longtext
);

CREATE TABLE BOARD_game(
idx int PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100),
writer VARCHAR(100),
contents longtext,
wdate DATEtime,
VIEW INT,
up INT,
down INT,
comments VARCHAR(100),
comnum INT,
upList longtext
);

CREATE TABLE BOARD_ride(
idx int PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100),
writer VARCHAR(100),
contents longtext,
wdate DATEtime,
VIEW INT,
up INT,
down INT,
comments VARCHAR(100),
comnum INT,
upList longtext
);

INSERT INTO BOARD_best VALUES (null,'베스트','알타리맨','ㅊㅊㅊ',NOW(),40,30,20,'ㅊㅊㅊ',10,NULL);


INSERT INTO BOARD_normal VALUES (null,'노말','광림맨','ㅊㅊㅊ',NOW(),40,30,20,'ㅊㅊㅊ',10,Null);

INSERT INTO BOARD_read VALUES (null,'리드','영진맨','ㅊㅊㅊ',NOW(),40,30,20,'ㅊㅊㅊ',10,Null);

INSERT INTO BOARD_game VALUES (null,'게임','원홍맨','ㅊㅊㅊ',NOW(),40,30,20,'ㅊㅊㅊ',10,Null);

INSERT INTO BOARD_ride VALUES (null,'라이드','정연맨','ㅊㅊㅊ',NOW(),40,30,20,'ㅊㅊㅊ',10,Null);


INSERT INTO BOARD_ride VALUES (null,'ㅊㅊㅊ','ㅊㅊㅊ','ㅊㅊㅊ',now(),0,0,0,'ㅊㅊㅊ',0,Null);

UPDATE board_best SET `upList`=null WHERE `idx`=1;

select email from usertb where id= 'fff';