# 조인 방식 : LEFT JOIN(OUTER), RIGTH JOIN, INNER JOIN

# join 하지 않는 경우
SELECT * FROM `seller` WHERE `nickname` = '마로비'; -- id : 1
SELECT * FROM `used_goods` WHERE `sellerId` = 1;

# join
-- 마로비의 판매 물품 리스트
SELECT `seller`.*, `used_goods`.* 
FROM `seller` JOIN `used_goods` 
ON `seller`.id = `used_goods`.sellerId
WHERE `seller`.`nickname` = '마로비';

-- 테이블 별명 붙이기
select A.*, B.* from seller as A
join used_goods as B
on A.id = B.sellerId
where A.nickname = '마로비';

-- 하구루의 판매 물품 리스트 가져오기
-- join은 inner join으로 동작하며 used_goods
select A.*, b.* from seller AS A
join used_goods as B
on A.id = B.sellerId
where A.nickname = '하구루';

# inner join : 테이블들의 교집합
-- 마로비의 판매 물품 리스트 가져오기
select A.*, B.* from seller as A
inner join used_goods as B
on A.id = B.sellerId
WHERE A.nickname = '마로비';

-- 하구루의 판매 물품 리스트 가져오기
select A.*, B.* from seller as A
inner join used_goods as B
on A.id = B.sellerId
where A.nickname = '하구루';

# LEFT (outer) join : 좌측 테이블 전체 - 우측 테이블은 NULL 허용
SELECt A.*, b.*
from seller as A
left join used_goods as b
on a.id = b.sellerId
where a.nickname = '마로비';

SELECt A.*, b.*
from seller as A
left join used_goods as b
on a.id = b.sellerId
where a.nickname = '하구루';

# Right (outer) join : 좌측 테이블 null 허용 - 우측 테이블 전체
select a.*, b.*
from used_goods as a
right join seller as b
on a.sellerId = b.id
where b.nickname = '하구루';

-- 제목이 바퀴벌레로 시작하는 글을 올린 사람의 닉네임과 매너온도 확인하기
select a.nickname, a.temparature
from seller as a
left join used_goods as b
on a.id = b.sellerId
where b.title like '바퀴벌레%';

select * from realtor, real_estate -- 옛날 방식 / 권장 X
