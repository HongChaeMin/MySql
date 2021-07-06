SELECT * FROM `review` WHERE`userName` = '맛있으면짖는개' AND `review` LIKE '왈왈%';

SELECT * FROM `review` ORDER BY `createdAt` DESC LIMIT 10;

SELECT * FROM `review` WHERE `storeName` = '교촌 치킨' ORDER BY `point`;

SELECT `userName`, `storeName` FROM `review` ORDER BY `point` DESC LIMIT 1;
