SELECT * FROM `user`;

-- 취미가 노래인 사람들의 목록 정보를 모두 출력하세요
SELECT * FROM `user` WHERE `hobby` LIKE '%노래%';

-- 1 정규화 : 한 컬럼에 여러 값이 들어가는 경우, 한 행에 하나의 값만 들어가도록 한다
-- INSERT INTO `user` (`name`, `yyyymmdd`, `hobby`, `introduce`, `email`)
-- VALUES
-- ('신보람', '19991108', '독서', '안녕하세요\n저는 누구일까요 ?', 'coals0329@naver.com'),
-- ('신보람', '19991108', '노래', '안녕하세요\n저는 누구일까요 ?', 'coals0329@naver.com'),
-- ('신보람', '19991108', '영화', '안녕하세요\n저는 누구일까요 ?', 'coals0329@naver.com');

CREATE TABLE `new_user` (
	`id` int NOT NULL auto_increment primary key,
    `name` varchar(10) NOT NULL,
    `yyyymmdd` varchar(16) NOT NULL,
    `introduce` text,
    `email` varchar(32),
    `createdAt` timestamp default current_timestamp,
    `updatedAt` timestamp default current_timestamp
) ENGINE=InnoDB Default charset=utf8mb4;

##############################################################

create table `hobby` (
	`id` int not null auto_increment primary key,
    `userId` int not null, -- new_user 테이블의 id 값(fk)
    `hobby` varchar(50),
    `createdAt` timestamp default current_timestamp,
    `updatedAt` timestamp default current_timestamp
) ENGINE=InnoDB Default charset=utf8mb4;

insert into `new_user` (`name`, `yyyymmdd`, `introduce`, `email`)
values
('홍채민', '20030329', 'coals0329@naver.com', '안녕하세요 저는 누구일까요?'),
('남상호', '19970211', 'cnaver.com', '안녕하세요 뭘 봐 이시키야');

select * from `new_user`;
select * from `hobby`;

-- dummy date : 관계 테이블
insert into `hobby` (`userId`, `hobby`)
values
(1, '독서'),
(1, '노래'),
(1, '영화보기'),
(2, '사냥하기'),
(2, '그루밍'),
(2, '스크래치');
