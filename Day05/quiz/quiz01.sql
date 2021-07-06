SELECT `userName`, count(1) FROM `review` GROUP BY `userName`;

SELECT `storeName`, avg(`point`) AS average FROM `review` GROUP BY `storeName`;

SELECT `userName` FROM `review` HAVING count(`point`) >= 4;

SELECT `name`, avg(`score`) AS average FROM `student`
WHERE `year` = 2020 AND `semester` = 1
GROUP BY `name`;

SELECT `subject`, avg(`score`) AS average FROM `student`
WHERE `year` = 2020
GROUP BY `subject`;

SELECT `name`, avg(`score`) AS average FROM `student` GROUP BY `name` ORDER BY avg(`score`) DESC;

