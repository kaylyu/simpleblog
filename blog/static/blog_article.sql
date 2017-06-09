-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-06-09 06:07:52
-- 服务器版本： 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- 表的结构 `blog_article`
--

CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `content` longtext,
  `pub_time` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `blog_article`
--

INSERT INTO `blog_article` (`id`, `title`, `content`, `pub_time`) VALUES
(1, '回眸一笑百媚生，晚饭吃得有点撑！哈哈', '有一对小情侣准备上酒店开房，到了酒店万事聚背，女孩说：慢，要想上床可以，我出一副对子你要是对上了我就与你上床，不然拜拜！男孩说：好你出吧。女孩说：阴山背后块一块田，荒了整整十八年，田中已长鹅卵石，四周毛草都长延。男孩忧郁一下说：………………。最后他两上床了', '2017-05-08 06:01:12.885000'),
(2, '笑话', '昨天晚上十一二点钟的时候，躺在床上都快睡着了，忽然看见旁边的室友拿着耳机压着身子，悄悄地进了厕所，嘿嘿，我忍不住就开心的不行了，我也悄悄地下床，偷偷地走到厕所门口，正准备开门给他个惊喜，忽然听见细微的声音Please listen to the fifth unit words', '2017-05-08 06:01:12.885000'),
(3, '笑话', '昨天晚上十一二点钟的时候，躺在床上都快睡着了，忽然看见旁边的室友拿着耳机压着身子，悄悄地进了厕所，嘿嘿，我忍不住就开心的不行了，我也悄悄地下床，偷偷地走到厕所门口，正准备开门给他个惊喜，忽然听见细微的声音Please listen to the fifth unit words', '2017-05-08 06:01:12.885000'),
(4, '笑话122', '一天，我正在捡罐子，突然听到几个小孩在聊天，小孩1：你们猜猜牛和鸡哪个贵？其他小孩都异口同声的回答：“牛贵！”小孩1说“不对”其余小孩问“为什么？”小孩1：“九牛才一毛”其余小孩问：“那鸡呢？”小孩1说：“鸡……”', '2017-05-08 06:01:12.885000'),
(5, '124', '2563', '2017-05-08 06:01:12.885000'),
(6, '698', '896', '2017-05-08 06:01:12.885000'),
(7, '112121', '121212fwefewfewfewf', '2017-05-08 06:01:12.885000'),
(8, 'title23', 'fwfew121', '2017-05-08 06:04:00.833000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_article`
--
ALTER TABLE `blog_article`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `blog_article`
--
ALTER TABLE `blog_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
