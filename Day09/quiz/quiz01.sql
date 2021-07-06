CREATE TABLE `hire` (
	`id` int NOT NULL  auto_increment primary key,
    `name` varchar(20) NOT NULL,
    `business` varchar(20) NOT NULL,
    `scale` enum ('대기업', '중견기업') NOT NULL,
    `headcount` int NOT NULL,
    `region` varchar(20) NOT NULL,
    `createdAt` timestamp default current_timestamp,
    `updatedAt` timestamp default current_timestamp
) ENGINE=InnoDB Default charset=utf8mb4;

CREATE TABLE `position` (
	`id` int NOT NULL auto_increment primary key,
    `hireId` int NOT NULL,
    `position` varchar(50) NOT NULL,
    `responsibilities` varchar(30) NOT NULL,
    `qualification` varchar(50) NOT NULL,
    `type` enum ('정규직', '계약직') NOT NULL,
    `salary` int NOT NULL,
    `deadline` date NOT NULL,
    `createdAt` timestamp default current_timestamp,
    `updatedAt` timestamp default current_timestamp
) ENGINE=InnoDB Default charset=utf8mb4;

INSERT INTO `hire` (`name`, `business`, `scale`, `headcount`, `region`)
VAlUES
('Cacao', '인터넷 포털', '대기업', 2848, '성남시 분당구'),
('Rine', '모바일 무선', '대기업', 1138, '성남시 분당구'),
('NG소프트', '컨텐츠 게임', '중견기업', 4430, '성남시 분당구'),
('쿠퐁', '쇼핑몰', '중견기업', 5350, '서울시 송파구'),
('Naber', '인터넷 포털', '대기업', 4048, '성남시 분당구'),
('우와한형제들', '소프트웨어 솔루션', '중견기업', 926, '서울시 송파구');

INSERT INTO `position` (`hireId`, `position`, `responsibilities`, `qualification`, `type`, `salary`, `deadline`)
VALUES 
(1, '안드로이드 개발자', '메신저 앱 개발', 'kotlin 경력 3년 이상', '정규직', 7300, '2026-02-13'),
(1, '안드로이드 개발자', '쇼핑 서비스 개발', 'kotlin 경력 3년 이상', '정규직', 6300, '2026-04-04'),
(1, '웹 back-end 개발자', '이모티콘 샵 API 서버 개발', 'spring 경력 3년 이상', '정규직', 7000, '2026-03-28'),
(2, '아이폰 앱 개발자', '메신져 앱 개발', 'RxSwift 개발 경력 3년 이상', '정규직', 7600, '2026-04-01'),
(2, '웹 back-end 개발자', 'Rine 포스팅 기능 API 개발', 'spring 개발 경력 3년 이상', '정규직', 6600, '2026-03-29'),
(3, '게임 개발자', '게임 개발', 'Unreal Engine 개발 5년 이상', '정규직', 8400, '2026-04-20'),
(3, '모바일 게임 개발자', '리뉘쥐 모바일 게임 개발', 'Unreal Engine 개발 가능자', '계약직', 8500, '2026-04-05'),
(4, '웹 back-end 개발자', 'Naber 메일 기능 개발', 'spring 개발 경력 5년 이상', '계약직', 9800, '2026-04-20'),
(4, '동영상 플레이어 개발자', '네이버TV 플레이어 개발', '동영상 코덱 기술 개발가능자', '정규직', 7800, '2026-05-01'),
(4, '웹 front-end 개발자', 'Now 웹 개발', 'Vue.js 개발 가능자', '정규직', 7000, '2026-04-15'),
(5, '웹 back-end 개발자', '사내 인트라넷 개발', 'spring 개발경력 3년이상', '계약직', 8800, '2026-04-15'),
(5, '웹 back-end 개발자', '쇼핑 라이브 API 개발', 'spring 개발경력 3년이상', '정규직', 8200, '2026-05-12');

SELECT A.`name`, B.`position`, B.`qualification`, B.`type`, B.`salary`
FROM `hire` AS A
JOIN `position` AS B
ON A.`id` = B.`hireId`
ORDER BY B.`salary` DESC;

SELECT A.`name`, A.`scale`, B.`position`, B.`qualification`, B.`type`, B.`salary` 
FROM `hire` AS A
JOIN `position` AS B
ON A.`id` = B.`hireId`
WHERE A.`scale` = '대기업' AND B.`salary` >= 7000
ORDER BY b.`salary` DESC LIMIT 3;

SELECT A.`name`, count(1) AS count, A.`business`, A.`headcount`
FROM `hire` AS A
JOIN `position` AS B
ON A.`id` = B.`hireId`
WHERE B.`deadline` < '2026-05-01' AND B.`type` = '정규직'
GROUP BY A.`name`
ORDER BY count(1) DESC;

SELECT B.`type`, avg(B.`salary`) AS salary
FROM `hire` AS A
JOIN `position` AS B
ON A.`id` = B.`hireId`
WHERE A.`scale` = '중견기업'
GROUP BY B.`type`;

SELECT A.`name`, avg(B.`salary`) AS salery, A.`scale`, A.`headcount`
FROM `hire` AS A
JOIN `position` AS B
ON A.`id` = B.`hireId`
WHERE A.`region` = '성남시 분당구'
GROUP BY A.`name` HAVING `salery` >= 7300
ORDER BY A.`headcount`;
