#userテーブル
CREATE table app_db.users (
    id INT unsigned AUTO_INCREMENT NOT NULL,
    user_id VARCHAR(20) NOT NULL,
    name VARCHAR(30) NOT NULL,
    create_timestamp INT unsigned NOT NULL,
    update_timestamp INT unsigned NOT NULL,
    PRIMARY KEY (id)
); 

#サンプルデータ
INSERT INTO app_db.users (user_id,name,create_timestamp,update_timestamp) 
    VALUES 
    ('Taro', '太郎', unix_timestamp(), unix_timestamp()),
    ('Jiro', '二郎', unix_timestamp(), unix_timestamp()),
    ('hanako', '花子', unix_timestamp(), unix_timestamp());
