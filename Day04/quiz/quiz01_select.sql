SELECT `name`, `date`, `state` FROM `booking` WHERE `date` > '2025-08-01';

SELECT `name`, `headcount`, `day`, `state` FROM `booking` WHERE `state` = '확정' AND (`headcount` >= 4 OR `day` >= 2);

SELECT count(1) FROM `booking` WHERE `day` = 1 AND `state` = '대기중';

UPDATE `booking` SET `state` = '취소' WHERE `name` = '마동석' OR `name` = '탁재훈';

DELETE FROM `booking` WHERE `state` = '취소';

SELECT * FROM `booking`;SELECT `name`, `date`, `state` FROM `booking` WHERE `date` > '2025-08-01';

SELECT * FROM `booking`;

SELECT `name`, `headcount`, `day`, `state` WHERE `state` = '확정' OR `day` > 2;