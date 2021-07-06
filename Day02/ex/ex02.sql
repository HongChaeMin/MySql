-- 테이블 전체 조회 : 데이터가 많을 때 위험
SELECT * FROM `user`;

SELECT `id`, `name`, `yyyymmdd`, `hobby`, `introduce`, `email`, `createdAt`, `updatedAt`
FROM `user`;

-- 테이블 명에 별칭 붙이기
SELECT * FROM `user` AS `person`;

-- 컬럼 명에 별칭 붙이기
SELECT `id`, `name`, `yyyymmdd` AS `birth`, `hobby`, `introduce`, `email`, `createdAt`, `updatedAt`
FROM `user`;

-- 특정 컬럼 중복값 제거 ex) 동명이인 제거
SELECT DISTINCT `name` FROM `user`;

-- 데이터의 개수 조회
SELECT count(1) FROM `user`;
SELECT count(*) FROM `user`; -- 오래된 개발자들은 꺼려할 수도 있음

-- 조건에 일치하는 데이터 조회
# id가 3번인 데이터를 조회
SELECT * FROM `user`
WHERE `id` = 3;

# 이름이 민채홍인 사용자의 생년월일 조회
SELECT `yyyymmdd` FROM `user` 
WHERE `name` = '민채홍';

# 이름이 민채홍이 아닌 사용자의 모든 데이터 조회
SELECT * FROM `user` WHERE `name` != '민채홍';

# 데이터의 생성일이 특정일 이후인 데이터들을 조회
SELECT * FROM `user` WHERE `createdAt` >= '2021-06-08 16:00:00';

# 자기 소개가 없는 데이터 조회
SELECT * FROM `user` WHERE `introduce` IS NULL;

# 자기 소개가 있는 데이터 조회
SELECT * FROM `user` WHERE `introduce` IS NOT NULL;

# id가 3, 4번인 데이터 조회
SELECT * FROM `user` WHERE `id` in (3, 4);

-- 조건이 여러가지인 경우 : 논리 연산자 사용
# id가 3번이거나 4번인 데이터 조회
SELECT * FROM `user` WHERE `id` = 3 OR `id` = 4;

# 이름이 민채홍이면서 취미에 ^^ 요하녕안이 들어있는 데이터 조회
SELECT * FROM `user` WHERE `name` = '민채홍' AND `hobby` = '^^ 요하녕안';

-- 정렬하기
# id 오름차순 정렬
SELECT * FROM `user` ORDER BY `id`;