CREATE TABLE `score` (
	`id` int NOT NULL auto_increment primary key,
    `name` char(5) NOT NULL,
    `phoneNumber` varchar(20) NOT NULL,
    `email` varchar(20) NOT NULL,
    `dreamJob` varchar(10) NOT NULL,
    `createdAt` timestamp default current_timestamp,
    `updatedAt` timestamp default current_timestamp
) ENGINE=InnoDB Default charset=utf8mb4;

INSERT INTO `score` (`name`, `phoneNumber`, `email`, `dreamJob`)
VALUES
('유재석', '01000001111', 'mc_u@naver.com', '래퍼'),
('조세호', '01011110000', 'josep@gmail.com', '변호사');

CREATE TABLE `student_name` (
	`id` int NOT NULL auto_increment primary key,
    `studentId` int NOT NULL,
	`year` year NOT NULL,
    `semester` int NOT NULL,
    `term` char(10) NOT NULL,
    `subject` char(10) NOT NULL,
    `score` int NOT NULL,
    `createdAt` timestamp default current_timestamp,
    `updatedAt` timestamp default current_timestamp
) ENGINE=InnoDB Default charset=utf8mb4;

INSERT INTO `student_name` (`studentId`, `year`, `semester`, `term`, `subject`, `score`)
VALUES 
(1, '2020', 1, '중간고사', '국어', 80),
(1, '2020', 1, '중간고사', '영어', 95),
(1, '2020', 1, '중간고사', '수학', 90),
(2, '2020', 1, '중간고사', '국어', 85),
(2, '2020', 1, '중간고사', '영어', 90),
(2, '2020', 1, '중간고사', '수학', 70);

SELECT * FROM `student_name` WHERE `studentId` = 2;