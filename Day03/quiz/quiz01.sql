SELECT * FROM `student`;

SELECT `name` AS `이름`, `subject` AS `과목`, `score` AS `성적` FROM `student`;

SELECT `year`, `semester`, `term`, `subject`, `score` FROM `student` WHERE `name` = '유재석';

SELECT * FROM `student` WHERE `year` >= '2020';

SELECT * FROM `student` WHERE `year` = '2020' AND `semester` = 1;

SELECT * FROM `student` WHERE `name` = '유재석' AND `score` >= 90;