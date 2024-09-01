-- 指定した列を出力
SELECT shohin_id, shohin_mei, shiire_tanka FROM Shohin;

-- 全ての列を出力 *の時は順番指定はできない（CREATE文の定義順に表示される）
SELECT * FROM Shohin;

-- 列に別名をつける
SELECT shohin_id AS id, shohin_mei AS namae, shiire_tanka AS tanka
FROM Shohin;

-- 列に日本語で別名をつける
SELECT shohin_id AS "商品ID", shohin_mei AS "商品名", shiire_tanka AS "仕入単価"
FROM Shohin;

-- 定数の出力
SELECT '商品' AS mojiretsu, 38 AS kazu, '2009-02-24' AS hizuke, shohin_id, shohin_mei
FROM Shohin;

-- 重複を省く
SELECT DISTINCT shohin_bunrui FROM Shohin;

SELECT DISTINCT shiire_tanka FROM Shohin;

SELECT DISTINCT shohin_bunrui, torokubi FROM Shohin;

-- WHERE句による行の選択
SELECT shohin_mei, shohin_bunrui
FROM Shohin
WHERE shohin_bunrui = '衣服';

-- 算術演算子
SELECT shohin_mei, hanbai_tanka, hanbai_tanka * 2 AS "hanbai_tanka * 2"
FROM Shohin;

-- WHERE句の条件式に計算式かける
SELECT shohin_mei, hanbai_tanka ,shiire_tanka
FROM Shohin
WHERE hanbai_tanka - shiire_tanka >= 500;