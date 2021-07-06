CREATE TABLE `weatherhistory` (
	`id` int NOT NULL auto_increment primary key,
    `date` date NOT NULL,
    `weather` varchar(5) NOT NULL,
    `temperatures` decimal(3, 1) NOT NULL,
    `precipitation` decimal(3, 1) NOT NULL,
    `microDust` varchar(3) NOT NULL,
    `windSpeed` decimal(3, 1) NOT NULL,
    `createdAt` timestamp DEFAULT current_timestamp,
    `updatedAt` timestamp DEFAULT current_timestamp
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `weatherhistory` (
	`date`
    , `weather`
    , `temperatures`
    , `precipitation`
    , `microDust`
    , `windSpeed`
    , `createdAt`
    , `updatedAt`
)
VALUES('2015-07-01', '비', 21.9, 83.5, '보통', 2.9, now(), now()),
	   ('2015-07-02', '비', 22.6, 59.5, '보통', 2.5, now(), now()),
       ('2015-07-03', '흐림', 27.4, 0.0, '보통', 2.9, now(), now()),
       ('2015-07-04', '맑음', 27.3, 0.0, '보통', 6.1, now(), now()),
       ('2015-07-05', '구름조금', 25.3, 0.0, '나쁨', 4.3, now(), now()),
       ('2015-07-06', '맑음', 23.9, 0.0, '나쁨', 6.5, now(), now()),
       ('2015-07-07', '맑음', 23.7, 0.0, '좋음', 5.8, now(), now()),
       ('2015-07-08', '흐림', 23.3, 0.0, '좋음', 5.4, now(), now()),
       ('2015-07-09', '비', 20.8, 14.0, '보통', 4.0, now(), now()),
       ('2015-07-10', '비', 23.7, 16.5, '보통', 2.5, now(), now()),
       ('2015-07-11', '비', 26.8, 3.0, '좋음', 4.7, now(), now()),
       ('2015-07-12', '비', 26.6, 1.0, '나쁨', 5.4, now(), now()),
       ('2015-07-13', '구름조금', 27.3, 0.0, '최악', 6.5, now(), now()),
       ('2015-07-14', '맑음', 27.9, 0.0, '보통', 6.8, now(), now());

SELECT * FROM `weatherhistory`;

SELECT `date`, `weather`, `temperatures` FROM `weatherhistory` ORDER BY `temperatures` DESC LIMIT 0, 1;

SELECT `weather`, count(1) AS count FROM `weatherhistory` GROUP BY `weather` ORDER BY count(1) DESC;

SELECT `microDust`, avg(`precipitation`) AS precipitation FROM `weatherhistory` GROUP BY `microDust` HAVING `precipitation` > 0;

SELECT `microDust`, avg(`windSpeed`) AS windSpeed FROM `weatherhistory` GROUP BY `microDust` HAVING `windSpeed` > 4;

