-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 
-- サーバのバージョン： 5.7.24
-- PHP のバージョン: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_bm`
--
CREATE DATABASE IF NOT EXISTS `gs_bm` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `gs_bm`;

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `text`, `indate`) VALUES
(1, '嫌われる勇気', 'https://www.amazon.co.jp/%E5%AB%8C%E3%82%8F%E3%82%8C%E3%82%8B%E5%8B%87%E6%B0%97%E2%80%95%E2%80%95%E2%80%95%E8%87%AA%E5%B7%B1%E5%95%93%E7%99%BA%E3%81%AE%E6%BA%90%E6%B5%81%E3%80%8C%E3%82%A2%E3%83%89%E3%83%A9%E3%83%BC%E3%80%8D%E3%81%AE%E6%95%99%E3%81%88-%E5%B2%B8%E8%A6%8B-%E4%B8%80%E9%83%8E/dp/4478025819/ref=sr_1_1?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&dchild=1&keywords=%E5%AB%8C%E3%82%8F%E3%82%8C%E3%82%8B%E5%8B%87%E6%B0%97&qid=1602999644&sr=8-1', 'testmemo', '2020-10-18 13:18:36'),
(2, '幸せになる勇気', 'https://www.amazon.co.jp/%E5%B9%B8%E3%81%9B%E3%81%AB%E3%81%AA%E3%82%8B%E5%8B%87%E6%B0%97%E2%80%95%E2%80%95%E8%87%AA%E5%B7%B1%E5%95%93%E7%99%BA%E3%81%AE%E6%BA%90%E6%B5%81%E3%80%8C%E3%82%A2%E3%83%89%E3%83%A9%E3%83%BC%E3%80%8D%E3%81%AE%E6%95%99%E3%81%88II-%E5%B2%B8%E8%A6%8B-%E4%B8%80%E9%83%8E/dp/4478066116/ref=pd_bxgy_img_2/356-8972940-2749602?_encoding=UTF8&pd_rd_i=4478066116&pd_rd_r=71712459-54b2-4fdd-92a4-bbc7b187d5eb&pd_rd_w=KWhiy&pd_rd_wg=dSvy3&pf_rd_p=e64b0a81-ca1b-4802-bd2c-a4b65bccc76e&pf_rd_r=BJXTJQZMG4868HZ647BX&psc=1&refRID=BJXTJQZMG4868HZ647BX', 'testmemo', '2020-10-18 13:20:07'),
(3, '日本医療クライシス「2025年問題」へのカウントダウンが始まった', 'https://www.amazon.co.jp/%E6%97%A5%E6%9C%AC%E5%8C%BB%E7%99%82%E3%82%AF%E3%83%A9%E3%82%A4%E3%82%B7%E3%82%B9%E3%80%8C2025%E5%B9%B4%E5%95%8F%E9%A1%8C%E3%80%8D%E3%81%B8%E3%81%AE%E3%82%AB%E3%82%A6%E3%83%B3%E3%83%88%E3%83%80%E3%82%A6%E3%83%B3%E3%81%8C%E5%A7%8B%E3%81%BE%E3%81%A3%E3%81%9F-%E6%B8%A1%E8%BE%BA-%E3%81%95%E3%81%A1%E3%81%93/dp/4344972473/ref=sr_1_2?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&dchild=1&keywords=%E5%8C%BB%E7%99%82+%E3%82%AF%E3%83%A9%E3%82%A4%E3%82%B7%E3%82%B9&qid=1603372642&sr=8-2', 'ちょうど5年前の書籍ですが、5年前に警笛を鳴らされていた一部が、確かに表面化しており、残り5年のカウントダウンを我々はどのように選択し、行動すべきなのか、考える機会を与えてくれる。', '2020-10-22 22:19:17'),
(4, 'まだ、肉を食べているのですか―あなたの「健康」と「地球環境」の未来を救う唯一の方法', 'https://www.amazon.co.jp/%E3%81%BE%E3%81%A0%E3%80%81%E8%82%89%E3%82%92%E9%A3%9F%E3%81%B9%E3%81%A6%E3%81%84%E3%82%8B%E3%81%AE%E3%81%A7%E3%81%99%E3%81%8B%E2%80%95%E3%81%82%E3%81%AA%E3%81%9F%E3%81%AE%E3%80%8C%E5%81%A5%E5%BA%B7%E3%80%8D%E3%81%A8%E3%80%8C%E5%9C%B0%E7%90%83%E7%92%B0%E5%A2%83%E3%80%8D%E3%81%AE%E6%9C%AA%E6%9D%A5%E3%82%92%E6%95%91%E3%81%86%E5%94%AF%E4%B8%80%E3%81%AE%E6%96%B9%E6%B3%95-%E3%83%8F%E3%83%AF%E3%83%BC%E3%83%89%E3%83%BBF-%E3%83%A9%E3%82%A4%E3%83%9E%E3%83%B3/dp/4879191523/ref=sr_1_1?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&dchild=1&keywords=%E3%81%BE%E3%81%A0%E8%82%89%E3%82%92&qid=1603372839&sr=8-1', '生きるために食べるのか？食べるために生きるのか？本気で考えなければ、我々は地球そのものを破壊する直前にまで来ていることを教えてくれる良書！肉を食べる人には必ず読んで欲しい本。', '2020-10-22 22:21:51'),
(5, '成長の限界 人類の選択', 'https://www.amazon.co.jp/%E6%88%90%E9%95%B7%E3%81%AE%E9%99%90%E7%95%8C-%E4%BA%BA%E9%A1%9E%E3%81%AE%E9%81%B8%E6%8A%9E-%E3%83%87%E3%83%8B%E3%82%B9%E3%83%BB%EF%BC%AC%E3%83%BB%E3%83%A1%E3%83%89%E3%82%A6%E3%82%BA-ebook/dp/B01N1EWJBI/ref=sr_1_2?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=395GGKDP1HQN7&dchild=1&keywords=%E6%88%90%E9%95%B7%E3%81%AE%E9%99%90%E7%95%8C+%E3%83%AD%E3%83%BC%E3%83%9E%E3%82%AF%E3%83%A9%E3%83%96&qid=1603373000&sprefix=%E6%88%90%E9%95%B7%E3%81%AE%E9%99%90%E7%95%8C%2Caps%2C268&sr=8-2', '最近ようやくサステナビリティという言葉が世間に定着しつつあるが、既に人類は多くの危機に直面しており、既に遅すぎた感がある。それでも我々は生きるために選択し、行動していかなければならない。何が正しい選択か？それはこの書を読んでから決めることだと思う。', '2020-10-22 22:25:21');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- データベース: `gs_db`
--
CREATE DATABASE IF NOT EXISTS `gs_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `gs_db`;

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE `gs_an_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `email`, `text`, `indate`) VALUES
(1, 'aaa', 'aaa@aaa', 'aaa', '2020-10-18 01:10:48');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_an_table`
--
ALTER TABLE `gs_an_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `gs_an_table`
--
ALTER TABLE `gs_an_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- データベース: `user`
--
CREATE DATABASE IF NOT EXISTS `user` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `user`;

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'テストネーム', 'test@test.com', '$2y$10$CXYEqY/DMvBg3vqZaX1IcO4UKU1TACcxVYuMUJ88ICPR49HIhUAoW'),
(2, 'a@a.com', 'a@a.com', '$2y$10$cnLALnzlhL64sJTdM28WcOZvBIC14ql.6AeTjOS2L0IyqLZ7RRidK'),
(3, 'a@a', 'a@a', '$2y$10$aEucVM4Y7UrrySOVOQck9OVmL5Uj0ItfZ5YWqFe9oZ1BDdKgYC1nS'),
(5, 'aiu', 'b@b', '$2y$10$eK9cFNSM1CoVP9YiXrnWCOl./5tc01ReywDOoCFhOYe85/IQq/Fwu');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
