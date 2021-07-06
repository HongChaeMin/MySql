/* 
	통째로 주석
	사람의 정보를 저장하는 테이블
    id (행 번호) | 이름 | 생년월일 | 취미 | 자기소개 (없을 수도 있음) | 작성 시간 | 수정 시간     
*/

CREATE TABLE `person` (
	`id` int NOT NULL AUTO_INCREMENT primary key,
    `name` varchar(10) NOT NULL,
    `birth` int NOT NULL,
    `hobby` varchar(100) NOT NULL,
    `introduce` text, -- NULL을 안 붙이면 기본 값은 NULL 허용
    `createdAt` timestamp DEFAULT current_timestamp,
    `updatedAt` timestamp DEFAULT current_timestamp
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

# 스키마 정보 보기
desc `person`;

# 테이블 삭제하기
-- drop table `person`;

# 테이블 수정하기 
-- 1) 테이블 이름 변경하기
ALTER TABLE `person` RENAME `user`;

-- 2) email 컬럼 추가 ( 나중에 추가되는 컬럼은 null 허용이 되어야 한다)
ALTER TABLE `user` ADD COLUMN `email` varchar(16) NULL AFTER `introduce`;

-- 3) email 컬럼 수정 : 16 -> 32로 수정하기
ALTER TABLE `user` MODIFY COLUMN `email` varchar(32);

-- 4 ) 컬럼 이름 / 자료형 수정 ( birth(int) -> yyyymmdd(varcher(16));
ALTER TABLE `user` CHANGE COLUMN `birth` `yyyymmdd` varchar(16);

# 한 줄 주석
-- # 한 줄 주석