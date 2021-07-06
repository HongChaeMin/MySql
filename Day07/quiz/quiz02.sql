CREATE TABLE `realtor` (
	`id` int NOT NULL auto_increment primary key,
    `office` char(10) NOT NULL,
    `phoneNumber` varchar(20) NOT NULL,
    `address` varchar(20) NOT NULL,
    `grad` ENUM('프리미엄중개사', '안심중개사', '일반중개사') NOT NULL,
    `createdAt` timestamp default current_timestamp,
    `updatedAt` timestamp default current_timestamp
) ENGINE=InnoDB Default charset=utf8mb4;

CREATE TABLE `real_estate` (
	`id` int NOT NULL auto_increment primary key,
    `realtorId` int NOT NULL,
    `address` varchar(50) NOT NULL,
    `area` int NOT NULL,
    `type` enum('매매', '전세', '월세'),
    `price` int NOT NULL,
    `rentPrice` int,
    `createdAt` timestamp default current_timestamp,
    `updatedAt` timestamp default current_timestamp
) ENGINE=InnoDB Default charset=utf8mb4;

INSERT INTO `realtor` (`office`, `phoneNumber`, `address`, `grad`)
VALUES 
    ('황금 부동산', '02-300-2000', '서울시 동작구', '안심중개사'),
    ('대박 공인 중개사', '02-000-7777', '서울시 서초구', '일반중개사');
    
INSERT INTO `real_estate` (`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`)
VALUES 
	(1, '레미얀 레이크 아파트 301동 905호', 84, '전세', 40000, NULL),
    (2, '레알편한세상 시티 505동 101호', 110, '매매', 120000, NULL),
    (1, '롱데캐슬 101동 402호', 87, '월세', 20000, 200),
    (1, '슼뷰 오피스텔 1210호', 55, '월세', 10000, 100),
    (2, '푸르지용 리버 203동 804호', 123, '매매', 170000, NULL);
    
SELECT * FROM `realtor` WHERE `office` = '황금 부동산';
SELECT `address`, `price`, `rentPrice` FROM `real_estate` WHERE `realtorId` = 1;

CREATE TABLE `option` (
	`id` int NOT NULL auto_increment primary key,
    `real_estate_id` int NOT NULL,
    `air_conditioner` tinyint NOT NULL,
    `washer` tinyint NOT NULL,
    `Refrigerator` tinyint NOT NULL,
    `closet` tinyint NOT NULL,
    `createdAt` timestamp default current_timestamp,
    `updatedAt` timestamp default current_timestamp
) ENGINE=InnoDB Default charset=utf8mb4;
    
    