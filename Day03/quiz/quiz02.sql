SELECT * FROM `review`;

SELECT * FROM `review` WHERE `point` <= 3.0;

SELECT `menu`, `review`, `point` FROM `review` WHERE `storeName` = '교촌 치킨' AND `review` IS NOT NULL;

SELECT count(1) FROM `review` WHERE `userName` = '전지현' AND `storeName` = 'BHC';

SELECT * FROM `review` WHERE `userName` = '강동원' AND `createdAt` >= '2025-03-11 00:00:00';

SELECT * FROM `review` WHERE `userName` = '이정재' AND (`review` IS NOT NULL OR `point` >= 4.5);