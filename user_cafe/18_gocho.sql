-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2020 年 10 月 29 日 23:10
-- サーバのバージョン： 5.7.26
-- PHP のバージョン: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- データベース: `cafe`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `cafe_user_table`
--

CREATE TABLE `cafe_user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `lid` varchar(128) NOT NULL,
  `lpw` varchar(64) NOT NULL,
  `kanri_flg` varchar(10) NOT NULL,
  `life_flg` int(1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `cafe_user_table`
--

INSERT INTO `cafe_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`, `date`) VALUES
(17, 'たなか', 'yyyyyy', '09090', '管理者', 0, '2020-10-29 23:08:58'),
(18, 'スティーブ', 'aaaaa', '0000000', 'ユーザー', 0, '2020-10-29 23:09:25'),
(19, 'スミス', 'bbbbbb', '888888', '管理者', 0, '2020-10-29 23:10:06');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `cafe_user_table`
--
ALTER TABLE `cafe_user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `cafe_user_table`
--
ALTER TABLE `cafe_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;