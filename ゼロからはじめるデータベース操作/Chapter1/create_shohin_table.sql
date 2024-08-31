-- データベースの作成
CREATE DATABASE shop;

-- テーブルの作成
CREATE TABLE Shohin
(
shohin_id     CHAR(4)      NOT NULL,
shohin_mei    VARCHAR(100) NOT NULL,
shohin_bunrui VARCHAR(32)  NOT NULL,
hanbai_tanka  INTEGER      ,
shiire_tanka  INTEGER      ,
torokubi      DATE         ,
PRIMARY KEY (shohin_id)
);

-- テーブルの削除
-- DROP TABLE Shohin;

-- テーブル定義の変更
ALTER TABLE Shohin ADD COLUMN shohin_mei_kana VARCHAR(100);

ALTER TABLE Shohin DROP COLUMN shohin_mei_kana;

