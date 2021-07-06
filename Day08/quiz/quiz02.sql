SELECT A.`office`, A.`phoneNumber`, B.`address`, B.`area`, B.`price`
FROM `realtor` AS A
JOIN `real_estate` B
ON A.`id` = B.`realtorId`
WHERE B.`price` < 130000 ORDER BY `area` DESC;

SELECT A.`office`, A.`phoneNumber`, B.`address`, B.`price`, B.`rentPrice`, B.`area`
FROM `realtor` AS A
JOIN `real_estate` AS B
ON A.`id` = B.`realtorId`
WHERE A.`grade` = '안심중개사' AND B.`type` = '월세' ORDER BY B.`rentPrice`;

SELECT A.`office`, A.`phoneNumber`, B.`address`, B.`price`, B.`area`
FROM `realtor` AS A
JOIN `real_estate` AS B
ON A.`id` = B.`realtorId`
WHERE A.`address` = '서울시 서초구' AND B.`type` = '전세' AND B.`price` <= 70000 ORDER BY B.`price`;

SELECT A.`office`, count(1) 
FROM `realtor` AS A
JOIN `real_estate` AS B
ON A.`id` = B.`realtorId`
GROUP BY `office` ORDER BY count(1) DESC;

SELECT A.`office`, A.`phoneNumber`, B.`address`, B.`price`, B.`area`
FROM `realtor` AS A
JOIN `real_estate` AS B
ON A.`id` = B.`realtorId`
WHERE A.`office` = '대박공인중개사' AND B.`type` IN('매매', '전세') AND B.`area` >= 100
ORDER BY B.`price`;
