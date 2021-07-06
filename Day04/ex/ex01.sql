# Limit
-- 처음부터 50개만 가져오기
SELECT * FROM `city` LIMIT 50;

-- 처음부터 50개만 가져오기
SELECT * FROM city LIMIT 0, 50;

-- 101번 째 부터 50개 가져오기
SELECT * FROM city LIMIT 100, 50;

# Like(데소문자 구별 없음)
-- C로 시작하는 도시명 찾기
SELECT * FROM city WHERE city LIKE 'C%';

-- C로 끝나는 도시명 찾기 (권장 안 함 : table full scan)
SELECT * FROM city WHERE city LIKE '%C';

-- C가 들어가는 도시명 찾기 (권장 안 함 : table full scan)
SELECT * FROM city WHERE city LIKE '%C%';

# Like(대소문자 구별)
-- C가 들어가는 도시명 찾기
SELECT * FROM city WHERE city LIKE BINARY('%C%');

# 정렬하기
-- 오름차순 정렬
SELECT * FROM city ORDER BY country_id;

-- 내림차순 정렬
SELECT * FROM city ORDER BY country_id DESC;

# 내림차순으로 정렬하고 10개만 가져오기
SELECT * FROM city ORDER BY country_id DESC LIMIT 10;

# CONCAT 함수
SELECT concat('hello', 'world!!!');
SELECT concat('hello', 'world!!!') AS str;

SELECT * FROM `film` ;

-- 제목 : 000, 설명 : 0000 구성
SELECT concat('제목 : ', `title`, ', 설명 : ', `description`) AS result FROM `film`;