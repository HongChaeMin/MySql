# id가 4인 데이터의 email 주소를 'test@test.com'으로 변경하기
SELECT * FROM `user` WHERE `id` = 4;

UPDATE `user` SET `email` = 'test@test.com' WHERE `id` = 4;

# id가 2인 데이터의 취미를 '맛집탐방'으로 변경, 자기소개는 '강남 맛집 전문가'로 바꾸기
SELECT * FROM `user` WHERE `id` = 2;

UPDATE `user` SET `hobby` = '맛집탐방', `introduce` = '강남 맛집 전문가', `updatedAt` = now() WHERE `id` = 2;