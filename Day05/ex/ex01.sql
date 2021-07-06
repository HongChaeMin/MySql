-- 테이블 생성
CREATE TABLE `entrant` (
	`id` int NOT NULL auto_increment primary key,
    `name` varchar(10) NOT NULL,
    `license` varchar(20) NOT NULL,
    `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `entrant` (
	`name`
    , `license`
    , `score`
)
VALUES
('신보람', '정보처리기사', 87),
('김바다', '컴퓨터활용능력', 95),
('김태형', '정보처리기사', 99),
('박지민', '컴퓨터활용능력', 68),
('신보람', '컴퓨터활용능력', 78),
('김남준', '정보처리산업기사', 40),
('정호석', '컴퓨터활용능력', 99),
('민윤기', '컴퓨터활용능력', 100),
('김바다', '정보처리산업기사', 78),
('김바다', '정보처리기사', 82);

SELECT * FROM `entrant`;

# Group by - 그룹화
-- 동명이인들을 그룹으로 묶는다 (중복 제거된 효과)
SELECT `name` FROM `entrant` GROUP BY `name`;

# EISTINCT - 중복제거
-- 동명이인이 있을 경우 한 사람만 남기고 제거한다 (진짜 중복 제거)
SELECT DISTINCT `name` FROM `entrant`;

# 자격증 종류 (중복 제거)
SELECT `license` FROM `entrant` GROUP BY `license`;

-- 사람 별 응시 시험 개수 구하기
SELECT `name`, count(1) FROM `entrant` GROUP BY `name`;

-- 자격증 별 점수 합계 구하기
SELECT `license`, sum(`score`) FROM `entrant` GROUP BY `license`;

-- 자격증 별 점수 평균 구하기
SELECT `license`, avg(`score`) AS average FROM `entrant` GROUP BY `license`;

# HAVING - GROUP BY 된 결과에 조건 붙이기 (그룹화 된 결과 안에서만 쓸 수 있음)
-- 자격증 시험을 두 개 이상 응시한 사람의 이름 출력
-- 1단계 : 사람(name) 별로 그룹핑
-- 2단계 : 그 중 개수가 2개 이상인 조건 구하기
SELECT `name`, count(*) as count FROM `entrant` GROUP BY `name`
HAVING count(1) >= 2;

-- 자격증 종류별 평균 점수가 80점이 넘는 자격증을 출력
SELECT `license`, avg(`score`) AS avgScore FROM `entrant` GROUP BY `license`
HAVING avg(`score`) >= 80;