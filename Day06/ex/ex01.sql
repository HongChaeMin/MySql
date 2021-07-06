-- 테이블 생성하며 인덱스 등록하기
# 이름, 주소, 과, 소개, 학번
CREATE TABLE `student` (
	`id` int NOT NULL auto_increment primary key,
    `name` char(4) NOT NULL,
    `address` varchar(50) NOT NULL,
    `department` enum('국문과', '영문과', '컴퓨터공학과', '전자공학과', '물리과') NOT NULL,
    `introduction`  text NOT NULL,
    `studentId` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- unique key 추가 : studentId 컬럼에는 중복값이 들어갈 수 없다
ALTER TABLE `student` ADD UNIQUE INDEX `idx_studentId` (`studentId`) using btree; -- using btree 는 안써도 됨 프로그램이 알아서 자기가 맞춤

-- 일반 인덱스 추가
ALTER TABLE `student` ADD INDEX `idx_department` (`department`);

-- 일반 복합 인덱스 추가
ALTER TABLE `student` ADD INDEX `idx_department_address` (`department`, `address`);