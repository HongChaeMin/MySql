SELECT * FROM `student` WHERE `id` = 5;
UPDATE `student` SET `score` = 100, `updatedAt` = now() WHERE `id` = 5;

SELECT * FROM `student` WHERE `name` = '이광수' AND `year` = 2019 AND `subject` = '수학' AND `semester` = 2;
UPDATE `student` 
SET `score` = 85, `updatedAt` = now() 
WHERE `name` = '이광수' AND `year` = 2019 AND `subject` = '수학' AND `semester` = 2;

SELECT * FROM `review` WHERE `id` = 4;
UPDATE `review` SET `review` = '역시 치킨은 BBQ 인정!' WHERE `id` = 4;

SELECT * FROM `review` WHERE `id` = 56;
UPDATE `review` SET `review` = '식어도 맛있어요 !!', `point` = 4.8 WHERE `id` = 56;