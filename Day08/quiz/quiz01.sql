SELECT A.`name`, A.`phoneNumber`, B.`menu`, B.`userName`, B.`point`, B.`review`
FROM `store` AS A
JOIN `new_review` AS B
ON A.id = B.storeId;

SELECT A.`name`, A.`phoneNumber`, B.`menu`, B.`userName`, B.`point`, B.`review`
FROM `store` AS A
LEFT JOIN `new_review` AS B
ON A.id = B.storeId;

SELECT B.`menu`, B.`userName`, B.`point`, B.`review`
FROM `store` AS A
JOIN `new_review` AS b
ON A.id = B.storeId
WHERE A.`name` = '배달삼겹' AND B.`point` < 3 ORDER BY B.`point`;

SELECT B.`menu`, B.`userName`, B.`point`, B.`review`
FROM `store` AS A
JOIN `new_review` AS B
ON A.id = B.storeId
WHERE B.`userName` = '이병헌' AND B.`point` >= 4.5 AND B.`review` IS NOT NULL;

SELECT A.`name`, A.`phoneNumber`, avg(B.`point`) AS `averagePoint`
FROM `store` AS A
JOIN `new_review` AS B
ON A.id = B.storeId 
GROUP BY A.id ORDER BY `averagePoint` DESC LIMIT 5;