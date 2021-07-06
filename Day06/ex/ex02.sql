SELECT * FROM `customer`;

-- index가 없는 컬럼 like : idx 가 없으므로 full scan
EXPLAIN SELECT * FROM `customer` WHERE `first_name` LIKE 'A%';
EXPLAIN SELECT * FROM `customer` WHERE `first_name` LIKE '%A';
EXPLAIN SELECT * FROM `customer` WHERE `first_name` LIKE '%A%';

-- index가 있는 컬럼 like
EXPLAIN SELECT * FROM `customer` WHERE `last_name` like 'A%'; -- range scan
EXPLAIN SELECT * FROM `customer` WHERE `last_name` like '%A'; -- full scan
EXPLAIN SELECT * FROM `customer` WHERE `last_name` like '%A%'; -- full scan

-- pk로 값 조회 : const
EXPLAIN SELECT * FROM `customer` WHERE `customer_id` = 3;

-- index 없는 컬럼 값 조회 
EXPLAIN SELECT * FROM `film` WHERE `length` = 100; -- full scan

-- index로 값 조회
EXPLAIN SELECT * FROM `customer` WHERE `store_id` = 2; -- ref scan

-- pk로 범위 조회
EXPLAIN SELECT * FROM `film` WHERE `film_id` < 10; -- range scan
EXPLAIN SELECT * FROM `film` WHERE `film_id` < 1000; -- range scan

-- index가 없는 컬럼 범위 조회
EXPLAIN SELECT * FROM `film` WHERE `length` < 50; -- full scan

-- length 컬럼 index 추가하기
ALTER TABLE `film` ADD INDEX `idx_length` (`length`);
EXPLAIN SELECT * FROM `film` WHERE `length` < 50; -- range scan
EXPLAIN SELECT * FROM `film` WHERE `length` < 100;
# 옵티마이저가 인덱스를 참조하는 것 보다 더 낫다고 판단을 해서 full scan을 함

-- index 삭제하기
ALTER TABLE `film` DROP INDEX `idx_length`;