CREATE TABLE `new_review` (
	`id` int NOT NULL auto_increment primary key,
    `store` char(20) NOT NULL,
    `phoneNumber` varchar(20) NOT NULL,
    `address` varchar(20) NOT NULL,
    `businessNumber` varchar(20) NOT NULL,
    `introduce` varchar(30) NOT NULL,
    `createdAt` timestamp default current_timestamp,
    `updatedAt` timestamp default current_timestamp
) ENGINE=InnoDB Default charset=utf8mb4;

CREATE TABLE `new_store` (
    `id` int NOT NULL auto_increment primary key,
    `reviewId` int NOT NULL,
    `menu` varchar(10) NOT NULL,
    `userName` char(10) NOT NULL,
	`point` decimal(2, 1) NOT NULL,
    `review` text,
    `createdAt` timestamp default current_timestamp,
    `updatedAt` timestamp default current_timestamp
) ENGINE=InnoDB Default charset=utf8mb4;

INSERT INTO `new_review` (`store`, `phoneNumber`, `address`, `businessNumber`, `introduce`)
VALUES
    ('교촌치킨', '02-000-0000', '서울시 서초구', '111-111-1111', '항상 맛있는 닭을 선사 합니다.'),
    ('BHC', '02-111-0000', '서울시 서초구',	'111-222-1111', '전지현씨 BHC'),
    ('버거킹', '02-222-1111', '서울시 서초구', '333-222-12222', '맥도날드 가지말고 여기로와요');
    
INSERT INTO `new_store` (`reviewId`, `menu`, `userName`, `point`, `review`)
VALUES
    (1, '오리지날 콤보', '이병헌', 4.5, '콤보는 항상 진리입니다.'),
    (2, '핫후라이드', '전지현', 5.0, null),
    (2, '뿌링클', '이정재', 3.5, '내가 뿌링끌 상인가?'),
    (3, '와퍼세트','이병헌', 4.0, '패티 너무 좋아요'),
    (1, '오리지날 콤보', '맛있으면짖는개', 4.5, '왈왈왈!! 왈왈!'),
    (2, '뿌링클', '전지현', 5.0, null);
    
SELECT `menu`, `userName`, `point`, `review` FROM `new_store` WHERE `reviewId` = 1;