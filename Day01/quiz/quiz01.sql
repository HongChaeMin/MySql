CREATE TABLE `student` (
	`id` int NOT NULL auto_increment primary key,
    `name` varchar(8) NOT NULL,
    `year` year(4) NOT NULL,
    `term` char(4) NOT NULL,
    `title` varchar(4) NOT NULL,
    `score` int NOT NULL,
    `createdAt` timestamp DEFAULT current_timestamp,
    `updatedAt` timestamp DEFAULT current_timestamp
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `student` ADD COLUMN `semester` int NOT NULL after `year`;

-- not null을 누락하면 null 허용으롤 바뀌어 버리므로 주의 !
ALTER TABLE `student` MODIFY COLUMN `name` varchar(32) NOT NULL;

ALTER TABLE `student` CHANGE COLUMN `title` `subject` varchar(9);

desc `student`;