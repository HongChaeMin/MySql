EXPLAIN SELECT * FROM `review` WHERE `userName` = '이정재';
EXPLAIN SELECT * FROM `review` WHERE `point` <= 3.0 AND `userName` = '이병헌';
EXPLAIN SELECT * FROM `review` WHERE `storeName` = '교촌 치킨' AND `point` >= 4.0;
EXPLAIN SELECT `storeName`, avg(`point`) AS `평균 별점` FROM `review` GROUP BY `storeName`;

ALTER TABLE `review` ADD INDEX `idx_review` (`review`);
ALTER TABLE `review` ADD INDEX `idx_userName` (`userName`);
ALTER TABLE `review` ADD INDEX `idx_storeName` (`storeName`);

EXPLAIN SELECT * FROM `review` WHERE `userName` = '이정재'; -- ref
EXPLAIN SELECT * FROM `review` WHERE `point` <= 3.0 AND `userName` = '이병헌'; -- ref
EXPLAIN SELECT * FROM `review` WHERE `storeName` = '교촌 치킨' AND `point` >= 4.0; -- ref
EXPLAIN SELECT `storeName`, avg(`point`) AS `평균 별점` FROM `review` GROUP BY `storeName`; -- index