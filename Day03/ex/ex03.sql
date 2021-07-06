# id가 1인 데이터 삭제하기 (user 테이블)
SELECT * FROM `user` WHERE `id` = 1;

DELETE FROM `user` WHERE `id` = 1;

# 데이블 내용 전체 삭제
-- id 값이 남아 있어서 삭제된 값 다음으로 id값이 들어간다
-- 내용만 삭제하는 것
DELETE FROM `user`; -- safe mode 를 꺼야 됨

# 테이블 전체 삭제
-- 테이블 전체 내용을 삭제하면서 초기화를 하고 싶을 때
-- 내부적으로 drop 테이블을 한 후 다시 생성
TRUNCATE TABLE `user`;