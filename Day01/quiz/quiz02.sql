CREATE TABLE `review` (
	`id` int NOT NULL AUTO_INCREMENT primary key,
    `store` varchar(8) NOT NULL,
    `menu` varchar(8) NOT NULL,
    `point` DECIMAL(2, 1) DEFAULT 3.5,
    `review` varchar(256) NOT NULL, -- NULL을 안 붙이면 기본 값은 NULL 허용
    `createdAt` timestamp DEFAULT current_timestamp,
    `updatedAt` timestamp DEFAULT current_timestamp
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `review` ADD COLUMN `userName` varchar(32) not null after `menu`;

-- modify column : 컬럼 타입만 변경
-- ↓ 컬럼 타입, 이름 변경
ALTER TABLE `review` CHANGE COLUMN `store` `storeName` varchar(32) not null;

desc `review`;