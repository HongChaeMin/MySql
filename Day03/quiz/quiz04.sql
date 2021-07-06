SELECT * FROM `review` WHERE `id` = 1;
DELETE FROM `review` WHERE `id` = 1;

SELECT * FROM `review` WHERE `userName` = '이정재' AND `point` <= 2.0;
DELETE FROM `review` WHERE `userName` = '이정재' AND `point` <= 2.0;