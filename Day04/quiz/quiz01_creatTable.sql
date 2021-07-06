CREATE TABLE `booking` (
	`id` int NOT NULL AUTO_INCREMENT primary key,
    `name` varchar(4) NOT NULL,
    `headcount` int NOT NULL,
    `day` int NOT NULL,
    `date` date NOT NULL, -- date : 날짜는 포함하지만 시간은 포함하지 않을 때, datetime : 날짜, 시간 모두 포함할 때
    `phoneNumber` varchar(14) NOT NULL,
    `state` varchar(4) NOT NULL,
    `createdAt` timestamp DEFAULT current_timestamp,
    `updatedAt` timestamp DEFAULT current_timestamp
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;