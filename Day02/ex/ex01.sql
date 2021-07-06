-- 한 행 추가
INSERT INTO `user` (
	/* id 값은 auto increment 이므로 추가하지 않는다 */
    `name`
    ,`yyyymmdd`
    , `hobby`
    , `introduce`
    , `email`
    , `createdAt`
    , `updatedAt`
)
VALUE (
	'홍채민'
    , '20030329'
    , '음악'
    , '안녕하세요 ^^'
    , 'coals0329@naver.com'
    , now()
    , now()
);

-- 한 번에 여러행 추가
INSERT INTO `user` (
	`name`
    ,`yyyymmdd`
    , `hobby`
    , `introduce`
    , `email`
    , `createdAt`
    , `updatedAt`
)
VALUES ('민채홍', '92303002', '악음', '^^ 요녕안', 'com.rvan@9230slaoc', now(), now()),
	   ('민홍채', '92303032', '뀨뀨', '^^ 요세하녕안', 'com.rev923slaoc', now(), now()),
       ('채홍민', '92303022', '뽀뽀', '^^ 요하녕안', 'com.revan@9230sl', now(), now());