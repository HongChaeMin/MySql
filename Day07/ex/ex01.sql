# 홍당무 마켓
/*
물품 : 제목, 가격, 물품설명, 사진, (판매자닉네임, 판매자 매너 온도) - 판매자 id
판매자 : id, 닉네임, 프사, 매너온도, (판매물품들 제외)
*/

CREATE TABLE `used_goods`(
    `id` int NOT NULL auto_increment primary key,
    `sellerId` int NOT NULL,
    `title` varchar(64) NOT NULL,
    `price` int NOT NULL,
    `description` text NOT NULL,
    `picture` varchar(255), -- nullble (null 가능)
    `createdAt` timestamp default current_timestamp,
    `updatedAt` timestamp default current_timestamp
) ENGINE=InnoDB Default charset=utf8mb4;

CREATE TABLE `seller`(
    `id` int NOT NULL auto_increment primary key,
    `nickname` varchar(20) NOT NULL,
    `profileImageUrl` varchar(255),
    `temparature` decimal(3, 1) NOT NULL,
    `createdAt` timestamp default current_timestamp,
    `updatedAt` timestamp default current_timestamp
) ENGINE=InnoDB Default charset=utf8mb4;

-- dummy date 추가
INSERT INTO `seller` (`nickname`, `profileImageUrl`, `temparature`)
VALUES 
    ('마로비', 'https://cdn.pixabay.com/photo/2020/08/29/09/26/beach-5526592__340.jpg', 36.5),
    ('아메리카노', null, 48.2),
    ('최준', 'https://cdn.pixabay.com/photo/2015/08/29/13/23/night-913046__340.jpg', 29.2),
    ('빠다', null, 36.5),
    ('하구루', 'https://cdn.pixabay.com/photo/2021/05/31/03/53/sea-6297625__340.jpg', 36.5);
    
INSERT INTO `used_goods` (`sellerId`, `title`, `price`, `description`, `picture`)
VALUES
    (1, '플스4 팝니다', 100000, '쿨거래 하실 분들 연락주세요', 'https://cdn.pixabay.com/photo/2021/03/30/01/11/fife-6135609__340.jpg'),
    (1, '원피스 팝니다', 20000, '살이 빠져서 사이즈가 커져서 못 입습니다', 'https://cdn.pixabay.com/photo/2021/06/06/21/55/rapeseeds-6316445__340.jpg'),
    (3, '후라다 여성지갑 팝니다', 200000, '오늘 선물하려 했는데 헤어졌어요', null),
    (2, '바퀴벌레 좀 잡아주세요', 5000, '제발 잡아주세요. 못들어가고 있어요...', null);

-- 마로비의 판매 물품 리스트 가져오기
SELECT * FROM `seller` WHERE `nickname` = '마로비'; # id : 1
select * from `used_goods` where `sellerId` = 1;

-- 바퀴 벌레를 잡아달라는 사람의 닉네임과 매너온도 확인하기
SELECT * FROM `used_goods` WHERE `title` LIKE '바퀴벌레%';
select `nickname`, `temparature` from `seller` where `id` = 2;
