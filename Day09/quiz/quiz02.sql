CREATE TABLE `singer`(
	`id` int NOT NULL  auto_increment primary key,
    `name` char(5) NOT NULL,
    `debut` int NOT NULL,
    `agency` varchar(15) NOT NULL,
	`createdAt` timestamp default current_timestamp,
    `updatedAt` timestamp default current_timestamp
) ENGINE=InnoDB Default charset=utf8mb4;

CREATE TABLE `album`(
	`id` int NOT NULL  auto_increment primary key,
    `singerId` int NOT NULL,
    `title` varchar(30) NOT NULL,
    `releaseDate` date NOT NULL,
    `tracks` int NOT NULL,
	`createdAt` timestamp default current_timestamp,
    `updatedAt` timestamp default current_timestamp
) ENGINE=InnoDB Default charset=utf8mb4;

CREATE TABLE `music`(
	`id` int NOT NULL  auto_increment primary key,
    `albumId` int NOT NULL,
    `title` varchar(50) NOT NULL,
    `playTime` int NOT NULL,
    `lyricisst` varchar(20) NOT NULL,
    `composer` varchar(20) NOT NULL,
	`createdAt` timestamp default current_timestamp,
    `updatedAt` timestamp default current_timestamp
) ENGINE=InnoDB Default charset=utf8mb4;

INSERT INTO `singer` (`name`, `debut`, `agency`)
VALUES
('성시경', 2000, '에스케이재원'),
('AKMU', 2014, 'YG엔터테인먼트'),
('아이유', 2008, '이담엔터테인먼트');

INSERT INTO `album` (`singerId`, `title`, `releaseDate`, `tracks`)
VALUES
(1, 'The Ballads', '2006-10-10', 16),
(1, '여기, 내 맘속에...', '2008-06-12', 11),
(2, '항해', '2019-09-25', 10),
(2, 'SUMMER EPISODE', '2017-07-20', 4),
(3, 'Love poem', '2019-11-18', 6),
(3, 'Palette', '2017-04-21', 6);

INSERT INTO `music` (`albumId`, `title`, `playTime`, `lyricisst`, `composer`)
VALUES
(1, '거리에서', 279, '윤종신', '윤종신'),
(1, '그리운 날엔', 250, '심재희', '김형석'),
(1, '바람, 그대', 250, '이미나', '하림'),
(2, '여기 내 맘속에', 250, '이미나', '유희열'),
(2, '안녕 나의 사랑', 257, '유희열', '성시경'),
(3, '어떻게 이별까지 사랑하겠어, 널 사랑하는 거지', 290, '이찬혁', '이찬혁'),
(4, 'DINOSAUR', 240, '이찬혁', '이찬혁'),
(4, 'MY DARLING', 225, '이찬혁', '이찬혁'),
(5, 'Blueming', 217, '아이유', '이종훈'),
(5, 'Love poem', 258, '아이유', '이종훈'),
(6, '밤편지', 253, '아이유', '김희원'),
(6, '팔레트', 217, '아이유', '아이유');

SELECT A.`title`, A.`composer`, B.`title`
FROM `music` AS A
JOIN `album` AS B
ON A.`albumId` = B.`id`
WHERE '2020-01-01' > B.`releaseDate` AND B.`releaseDate` > '2010-01-01';

SELECT A.`name`, A.`debut`, count(1) AS count
FROM `singer` AS A
JOIN `album` AS B
ON A.`id` = B.`singerId`
JOIN `music` AS C
ON B.`id` = C.`albumId`
WHERE A.`debut` > '2005-01-01' 
GROUP BY A.`name`
ORDER BY count DESC;

SELECT A.`name`, C.`title`, C.`playTime`, B.`title` AS `album title`
FROM `singer` AS A
JOIN `album` AS B
ON A.`id` = B.`singerId`
JOIN `music` AS C
ON B.`id` = C.`albumId`
WHERE A.`name` = 'AKMU';

SELECT C.`title`, A.`name`, C.`playTime`, B.`title` AS `album title`
FROM `singer` AS A
JOIN `album` AS B
ON A.`id` = B.`singerId`
JOIN `music` AS C
ON B.`id` = C.`albumId`
WHERE C.`playTime` >= 240 AND ('2018-01-01' > B.`releaseDate` AND B.`releaseDate` > '2008-01-01');

SELECT A.`name`, B.`title`, B.`tracks`, sum(C.`playTime`) AS playTime
FROM `singer` AS A
JOIN `album` AS B
ON A.`id` = B.`singerId`
JOIN `music` AS C
ON B.`id` = C.`albumId`
GROUP BY B.`title` HAVING playTime > 470
ORDER BY playTime;

