-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-11-27 14:15:11
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `happy`
--

-- --------------------------------------------------------

--
-- 表的结构 `v9_admin`
--

CREATE TABLE `v9_admin` (
  `userid` mediumint(6) UNSIGNED NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `roleid` smallint(5) DEFAULT '0',
  `encrypt` varchar(6) DEFAULT NULL,
  `lastloginip` varchar(15) DEFAULT NULL,
  `lastlogintime` int(10) UNSIGNED DEFAULT '0',
  `email` varchar(40) DEFAULT NULL,
  `realname` varchar(50) NOT NULL DEFAULT '',
  `card` varchar(255) NOT NULL,
  `lang` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_admin`
--

INSERT INTO `v9_admin` (`userid`, `username`, `password`, `roleid`, `encrypt`, `lastloginip`, `lastlogintime`, `email`, `realname`, `card`, `lang`) VALUES
(1, 'baile', '8c5af5b05684d87234cffa7742055ff6', 1, 'aCHeGy', '', 1511787912, '601144080@qq.com', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_admin_panel`
--

CREATE TABLE `v9_admin_panel` (
  `menuid` mediumint(8) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `name` char(32) DEFAULT NULL,
  `url` char(255) DEFAULT NULL,
  `datetime` int(10) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_admin_role`
--

CREATE TABLE `v9_admin_role` (
  `roleid` tinyint(3) UNSIGNED NOT NULL,
  `rolename` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_admin_role`
--

INSERT INTO `v9_admin_role` (`roleid`, `rolename`, `description`, `listorder`, `disabled`) VALUES
(1, '超级管理员', '超级管理员', 0, 0),
(2, '站点管理员', '站点管理员', 0, 0),
(3, '运营总监', '运营总监', 1, 0),
(4, '总编', '总编', 5, 0),
(5, '编辑', '编辑', 1, 0),
(7, '发布人员', '发布人员', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_admin_role_priv`
--

CREATE TABLE `v9_admin_role_priv` (
  `roleid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL,
  `c` char(20) NOT NULL,
  `a` char(20) NOT NULL,
  `data` char(30) NOT NULL DEFAULT '',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_announce`
--

CREATE TABLE `v9_announce` (
  `aid` smallint(4) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` char(80) NOT NULL,
  `content` text NOT NULL,
  `starttime` date NOT NULL DEFAULT '0000-00-00',
  `endtime` date NOT NULL DEFAULT '0000-00-00',
  `username` varchar(40) NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `passed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `style` char(15) NOT NULL,
  `show_template` char(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_attachment`
--

CREATE TABLE `v9_attachment` (
  `aid` int(10) UNSIGNED NOT NULL,
  `module` char(15) NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `filename` char(50) NOT NULL,
  `filepath` char(200) NOT NULL,
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fileext` char(10) NOT NULL,
  `isimage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `isthumb` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `downloads` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `uploadtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uploadip` char(15) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `authcode` char(32) NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_attachment`
--

INSERT INTO `v9_attachment` (`aid`, `module`, `catid`, `filename`, `filepath`, `filesize`, `fileext`, `isimage`, `isthumb`, `downloads`, `userid`, `uploadtime`, `uploadip`, `status`, `authcode`, `siteid`) VALUES
(4, 'content', 11, 'zls.jpg', '2017/1126/20171126125314437.jpg', 31600, 'jpg', 1, 0, 0, 1, 1511671994, '', 1, '39719189ad03e3f8c1aaab5a78381d31', 1),
(6, 'content', 11, 'qls.jpg', '2017/1126/20171126125817643.jpg', 33946, 'jpg', 1, 0, 0, 1, 1511672297, '', 1, '9c0e90b5ed379d945d8eae037f3a4d40', 1),
(5, 'content', 11, 'zhangls.jpg', '2017/1126/20171126125633449.jpg', 36293, 'jpg', 1, 0, 0, 1, 1511672193, '', 1, 'cc552f8f8a80486007d084ef10977fa2', 1),
(10, 'content', 12, 'zhangls.jpg', '2017/1126/20171126013406905.jpg', 36293, 'jpg', 1, 0, 0, 1, 1511674446, '', 1, '5d934b670f8c0ad45b14010190db2396', 1),
(9, 'content', 12, 'qls.jpg', '2017/1126/20171126013406590.jpg', 33946, 'jpg', 1, 0, 0, 1, 1511674446, '', 1, '6d82f7dd1d320dd43066b36e40b01090', 1),
(11, 'content', 13, '00010.jpg', '2017/1126/20171126020514860.jpg', 52544, 'jpg', 1, 0, 0, 1, 1511676314, '', 1, 'aacb6873ff4520e5dc9336dcae6fdc56', 1),
(12, 'content', 13, '00009.jpg', '2017/1126/20171126020732328.jpg', 42898, 'jpg', 1, 0, 0, 1, 1511676452, '', 1, '8a3c4538f6f630a5479fefdfef756a02', 1),
(13, 'content', 13, '0008.png', '2017/1126/20171126021008488.png', 673931, 'png', 1, 0, 0, 1, 1511676608, '', 1, '1b560d75305f4569da216f0a9ec27c02', 1),
(14, 'content', 13, '00007.jpg', '2017/1126/20171126021103730.jpg', 131619, 'jpg', 1, 0, 0, 1, 1511676663, '', 1, '1223fe091b91edb413543224cf0531b5', 1),
(15, 'content', 13, '00006.jpg', '2017/1126/20171126021307920.jpg', 15802, 'jpg', 1, 0, 0, 1, 1511676787, '', 1, 'a8b744bb023bb945054c1a71aa64ca87', 1),
(16, 'content', 13, '0006.jpg', '2017/1126/20171126021308489.jpg', 58751, 'jpg', 1, 0, 0, 1, 1511676788, '', 1, 'eb108d50e449545b41afa07cee191b3c', 1),
(17, 'content', 13, '00005.jpg', '2017/1126/20171126021501676.jpg', 16351, 'jpg', 1, 0, 0, 1, 1511676901, '', 1, 'a232db075f73b880ec63db1f8d4d9fbe', 1),
(18, 'content', 13, '00004.jpg', '2017/1126/20171126021711596.jpg', 47759, 'jpg', 1, 0, 0, 1, 1511677030, '', 1, '9fc76eec181bbec0a6365e5293fca596', 1),
(19, 'content', 13, '00003.jpg', '2017/1126/20171126021758623.jpg', 32267, 'jpg', 1, 0, 0, 1, 1511677078, '', 1, '0d4bbc03e7678a785f700ef78ba4e64d', 1),
(20, 'content', 13, '00002.jpg', '2017/1126/20171126021828902.jpg', 42476, 'jpg', 1, 0, 0, 1, 1511677108, '', 1, 'f8e11681a8df2923a1dd7deceb8f0dcc', 1),
(21, 'content', 13, '00001.jpg', '2017/1126/20171126021856347.jpg', 60823, 'jpg', 1, 0, 0, 1, 1511677136, '', 1, '92e7e9a04ea137d44745a8247d39795a', 1),
(22, 'content', 0, '20171126025349592.gif', '2017/1126/20171126025349592.gif', 49, 'gif', 1, 0, 0, 0, 1511679229, '', 1, '8d34f162007196a328c417910dbdb81f', 1),
(23, 'content', 0, '20171126030232252.png', '2017/1126/20171126030232252.png', 2496, 'png', 1, 0, 0, 0, 1511679752, '', 1, 'def6be5681912893e4589b534f4075cf', 1),
(24, 'content', 0, '20171126030232211.jpg', '2017/1126/20171126030232211.jpg', 1834, 'jpg', 1, 0, 0, 0, 1511679752, '', 1, '91bb18d3d0d0d494fdc4f27c9447c46e', 1),
(25, 'content', 0, '20171126031301423.jpg', '2017/1126/20171126031301423.jpg', 1834, 'jpg', 1, 0, 0, 0, 1511680381, '', 1, '8f6a99ce6f434ed7f0512c760616858a', 1),
(26, 'content', 0, '20171126031301619.jpg', '2017/1126/20171126031301619.jpg', 2024, 'jpg', 1, 0, 0, 0, 1511680381, '', 1, '0c554c09454f2828ad8ffbb16eb62cab', 1),
(27, 'content', 0, '20171126031301661.jpg', '2017/1126/20171126031301661.jpg', 1983, 'jpg', 1, 0, 0, 0, 1511680381, '', 1, 'a3ca16a6fc4fb03aa106924a34c9774e', 1),
(28, 'content', 11, 'qls.jpg', '2017/1126/20171126031403905.jpg', 33946, 'jpg', 1, 0, 0, 1, 1511680443, '', 1, '1c198df581611b180bed85069dd53c38', 1),
(29, 'content', 11, 'qls.jpg', '2017/1126/20171126031528709.jpg', 33946, 'jpg', 1, 0, 0, 1, 1511680528, '', 1, '042bf4358fc644dc909220ad1233a00c', 1),
(30, 'content', 11, 'zhangls.jpg', '2017/1126/20171126031830487.jpg', 36293, 'jpg', 1, 0, 0, 1, 1511680710, '', 1, 'b1d2bbbd78625fe363cfefc6c146c9f5', 1),
(31, 'content', 11, 'zhangls.jpg', '2017/1126/20171126031939191.jpg', 36293, 'jpg', 1, 0, 0, 1, 1511680779, '', 1, '462cf74a0790470a62bf3456cf60446e', 1),
(32, 'content', 11, 'zhangls.jpg', '2017/1126/20171126032031299.jpg', 36293, 'jpg', 1, 0, 0, 1, 1511680831, '', 1, '0d33cbc9cf66c9d50b1463ef1f904e2c', 1),
(33, 'content', 0, '20171126040214484.jpg', '2017/1126/20171126040214484.jpg', 109084, 'jpg', 1, 0, 0, 0, 1511683334, '', 1, '7b44d58abbe11307ee37abb35adc5a0d', 1),
(34, 'content', 0, '20171126040214771.jpg', '2017/1126/20171126040214771.jpg', 133052, 'jpg', 1, 0, 0, 0, 1511683334, '', 1, 'c1cecfa2abd651a8424c9bc64448f031', 1),
(35, 'content', 0, '20171126040214965.jpg', '2017/1126/20171126040214965.jpg', 139985, 'jpg', 1, 0, 0, 0, 1511683334, '', 1, '0a2e853ef88d037f570b24c5618df24f', 1),
(36, 'content', 0, '20171126040215321.jpg', '2017/1126/20171126040215321.jpg', 36058, 'jpg', 1, 0, 0, 0, 1511683334, '', 1, 'd8e76dcd712b5f6a080f35477a42917c', 1),
(37, 'content', 0, '20171126040215223.jpg', '2017/1126/20171126040215223.jpg', 34057, 'jpg', 1, 0, 0, 0, 1511683334, '', 1, '9680366d3e7731699a16e74ef05279d7', 1),
(38, 'content', 0, '20171126040215985.jpg', '2017/1126/20171126040215985.jpg', 44531, 'jpg', 1, 0, 0, 0, 1511683334, '', 1, '82abf40db3531dddca9f93125dec3000', 1),
(39, 'content', 0, '20171126040215534.jpg', '2017/1126/20171126040215534.jpg', 36058, 'jpg', 1, 0, 0, 0, 1511683334, '', 1, '305fa7dcb0aaade5acabc5786a6220d2', 1),
(40, 'content', 0, '20171126040215496.jpg', '2017/1126/20171126040215496.jpg', 44678, 'jpg', 1, 0, 0, 0, 1511683334, '', 1, 'e4ee1f50eb61396d701e5013e3404528', 1),
(41, 'content', 0, '20171126040215432.jpg', '2017/1126/20171126040215432.jpg', 41535, 'jpg', 1, 0, 0, 0, 1511683334, '', 1, 'c36c1232eed8c27861fac2c13b1ba4dc', 1),
(42, 'content', 0, '20171126040215157.jpg', '2017/1126/20171126040215157.jpg', 32282, 'jpg', 1, 0, 0, 0, 1511683334, '', 1, '54c1c18acebc77be37972c50f4058fab', 1),
(43, 'content', 0, '20171126040216784.jpg', '2017/1126/20171126040216784.jpg', 35050, 'jpg', 1, 0, 0, 0, 1511683334, '', 1, '3c8cbcbbb1fdfff90d60222cc786c4b6', 1),
(44, 'content', 0, '20171126040216120.jpg', '2017/1126/20171126040216120.jpg', 41580, 'jpg', 1, 0, 0, 0, 1511683334, '', 1, '37775604ec659167dd450629db38349c', 1),
(45, 'content', 0, '20171126040216969.jpg', '2017/1126/20171126040216969.jpg', 38169, 'jpg', 1, 0, 0, 0, 1511683334, '', 1, 'd4239b951b32a4dd0dfd1d001ce30e1e', 1),
(46, 'content', 0, '20171126040216958.jpg', '2017/1126/20171126040216958.jpg', 37450, 'jpg', 1, 0, 0, 0, 1511683334, '', 1, 'aba758580c97e3238a2d96321768d73b', 1),
(47, 'content', 0, '20171126040216449.jpg', '2017/1126/20171126040216449.jpg', 37394, 'jpg', 1, 0, 0, 0, 1511683334, '', 1, '48916fddaf35d91b45fdd8f1f5c9a355', 1),
(48, 'content', 12, 'wz.jpg', '2017/1126/20171126041623114.jpg', 35591, 'jpg', 1, 0, 0, 1, 1511684183, '', 1, 'c7e1928b8b522d9b9590e4ee7233557f', 1),
(49, 'content', 12, 'l.jpg', '2017/1126/20171126041954278.jpg', 59367, 'jpg', 1, 0, 0, 1, 1511684394, '', 1, 'f8ecd04f225e884ec3ec3a652444d06a', 1),
(50, 'content', 12, 'time.jpg', '2017/1126/20171126044523333.jpg', 115644, 'jpg', 1, 0, 0, 1, 1511685923, '', 1, 'b62fcfa9a10bbbb56eec5d33d0b03695', 1),
(51, 'content', 12, '01.png', '2017/1126/20171126090430995.png', 1931, 'png', 1, 0, 0, 1, 1511701469, '', 1, 'a99e506c427d224cccf75408cb7e954f', 1),
(52, 'content', 12, '02.png', '2017/1126/20171126090459566.png', 2595, 'png', 1, 0, 0, 1, 1511701499, '', 1, 'e70b5493ddb723c27fe4480405b4845c', 1),
(53, 'content', 12, '03.png', '2017/1126/20171126090513199.png', 2423, 'png', 1, 0, 0, 1, 1511701513, '', 1, 'e2566f76640fd3d9e4fe59fcd6c8dffd', 1),
(54, 'content', 12, '04.png', '2017/1126/20171126090627489.png', 1851, 'png', 1, 0, 0, 1, 1511701587, '', 1, 'b8827d9c86a825eed843dfc242ed9d20', 1),
(55, 'content', 12, '05.png', '2017/1126/20171126090653711.png', 2510, 'png', 1, 0, 0, 1, 1511701613, '', 1, '870390683bddae9068e3de7a94809582', 1),
(56, 'content', 13, '00009.jpg', '2017/1126/20171126093344354.jpg', 42898, 'jpg', 1, 0, 0, 1, 1511703224, '', 1, '303d6d7ad917c129a3d8b975075981d3', 1),
(57, 'content', 0, '20171126100018176.png', '2017/1126/20171126100018176.png', 28749, 'png', 1, 0, 0, 0, 1511704818, '', 1, '14e074254485db2e2a3814351e8280d0', 1),
(58, 'content', 0, '20171126100019946.png', '2017/1126/20171126100019946.png', 30381, 'png', 1, 0, 0, 0, 1511704818, '', 1, '26452993173503646a8af58f7fb4a7eb', 1),
(59, 'content', 0, '20171126100019908.png', '2017/1126/20171126100019908.png', 82557, 'png', 1, 0, 0, 0, 1511704818, '', 1, '2aa078ae807e8f373c807b9119835825', 1),
(60, 'content', 0, '20171126100019350.png', '2017/1126/20171126100019350.png', 92305, 'png', 1, 0, 0, 0, 1511704818, '', 1, '0991f61f5f5b503acf12486d3735377c', 1),
(61, 'content', 0, '20171126100019817.png', '2017/1126/20171126100019817.png', 23397, 'png', 1, 0, 0, 0, 1511704818, '', 1, 'a742e22107b3cf346646891cb61dcccd', 1),
(62, 'content', 0, '20171126100019452.png', '2017/1126/20171126100019452.png', 37444, 'png', 1, 0, 0, 0, 1511704818, '', 1, 'cbd0675c8f87c78530f39a7472e5d1ea', 1),
(63, 'content', 0, '20171126100020662.png', '2017/1126/20171126100020662.png', 23924, 'png', 1, 0, 0, 0, 1511704818, '', 1, '053e6d94328e17f7bb1bcce125d59f50', 1),
(64, 'content', 0, '20171126100020842.png', '2017/1126/20171126100020842.png', 28888, 'png', 1, 0, 0, 0, 1511704818, '', 1, 'cbfa6aa844868972d98e6483701d07eb', 1),
(65, 'content', 0, '20171126100109606.png', '2017/1126/20171126100109606.png', 7173, 'png', 1, 0, 0, 0, 1511704869, '', 1, '6ecf17f44edf65078c777aecfd4221d7', 1),
(66, 'content', 0, '20171126100751943.png', '2017/1126/20171126100751943.png', 3877, 'png', 1, 0, 0, 0, 1511705270, '', 1, '184737afd78d1f116432e5126ea57ee8', 1),
(67, 'content', 0, '20171126100751119.png', '2017/1126/20171126100751119.png', 3773, 'png', 1, 0, 0, 0, 1511705270, '', 1, '0111c153e63a9530ad4ef2f66952cb01', 1),
(68, 'content', 0, '20171126100751138.png', '2017/1126/20171126100751138.png', 3655, 'png', 1, 0, 0, 0, 1511705270, '', 1, '336523a26db909f6f60bd4fa0a91d459', 1),
(69, 'content', 0, '20171126100925864.png', '2017/1126/20171126100925864.png', 5305, 'png', 1, 0, 0, 0, 1511705365, '', 1, '23f3c21a4f923c1761ae20f405c57c7e', 1),
(70, 'content', 0, '20171126100925402.png', '2017/1126/20171126100925402.png', 4248, 'png', 1, 0, 0, 0, 1511705365, '', 1, 'd3243cd2dd3c3584abd8934aa0620cbc', 1),
(71, 'content', 0, '20171126100925874.png', '2017/1126/20171126100925874.png', 3906, 'png', 1, 0, 0, 0, 1511705365, '', 1, 'b371c1e6d2de02cb4012b82625d65910', 1),
(72, 'content', 0, '20171126100925803.png', '2017/1126/20171126100925803.png', 3864, 'png', 1, 0, 0, 0, 1511705365, '', 1, '0e2d8eaa72823e0f8c9b23743911dc5f', 1),
(77, 'content', 0, '20171126101938631.png', '2017/1126/20171126101938631.png', 7173, 'png', 1, 0, 0, 0, 1511705978, '', 1, '7ba249243d22a106d89a88d7b250833d', 1),
(78, 'content', 0, '20171126102023732.png', '2017/1126/20171126102023732.png', 5305, 'png', 1, 0, 0, 0, 1511706023, '', 1, '8601db8afd6ab46a397ce00a6095aa35', 1),
(79, 'content', 0, '20171126102023407.png', '2017/1126/20171126102023407.png', 4248, 'png', 1, 0, 0, 0, 1511706023, '', 1, '1fcb92e078a62847dcb802c0ee6dd586', 1),
(80, 'content', 0, '20171126102023789.png', '2017/1126/20171126102023789.png', 3906, 'png', 1, 0, 0, 0, 1511706023, '', 1, '445ad50c116f9d0840b328280e2b8159', 1),
(81, 'content', 0, '20171126102023758.png', '2017/1126/20171126102023758.png', 3864, 'png', 1, 0, 0, 0, 1511706023, '', 1, '56657675d2af7a256c4951d2ebd5b8f4', 1),
(89, 'content', 12, 'c.png', '2017/1127/20171127051217504.png', 29440, 'png', 1, 0, 0, 1, 1511773937, '', 1, 'd07f29718e1f0e12efebfb8a608dd673', 1),
(88, 'content', 12, 'b.png', '2017/1127/20171127051139545.png', 107950, 'png', 1, 0, 0, 1, 1511773899, '', 1, 'c8bc1d70fbc9971f5699b2be0a3b24d1', 1),
(87, 'content', 12, 'a.png', '2017/1127/20171127051120766.png', 21446, 'png', 1, 0, 0, 1, 1511773880, '', 1, 'eb8b52f0ec3f29aae1b31096db8e1c7a', 1),
(86, 'content', 0, '20171126103207358.png', '2017/1126/20171126103207358.png', 97370, 'png', 1, 0, 0, 0, 1511706727, '', 1, 'aa05ac66806da71a36fa5506afa356b1', 1),
(90, 'content', 12, 'd.png', '2017/1127/20171127051238425.png', 112314, 'png', 1, 0, 0, 1, 1511773958, '', 1, '60aeb3b83d6306f103ff662bc4024f23', 1),
(91, 'content', 12, 'e.png', '2017/1127/20171127051254724.png', 51914, 'png', 1, 0, 0, 1, 1511773974, '', 1, '09962eb195a7ff511cc22a26bcd2325d', 1),
(92, 'content', 14, '01.jpg', '2017/1127/20171127095224214.jpg', 39784, 'jpg', 1, 0, 0, 1, 1511790744, '', 1, '9b69403a5e9b2e5f4e580f24b14a959e', 1),
(93, 'content', 14, '02.jpg', '2017/1127/20171127095332524.jpg', 31487, 'jpg', 1, 0, 0, 1, 1511790812, '', 1, 'efbb365235fdeba3fe483e24ea347009', 1),
(94, 'content', 14, '03.jpg', '2017/1127/20171127095342464.jpg', 33888, 'jpg', 1, 0, 0, 1, 1511790822, '', 1, '44bd41df5c6125a895bb158b68bc83d0', 1),
(95, 'content', 14, '04.jpg', '2017/1127/20171127095356215.jpg', 22355, 'jpg', 1, 0, 0, 1, 1511790836, '', 1, '75ec123ba3825380aca1905e7c0a7b96', 1),
(96, 'content', 14, '05.jpg', '2017/1127/20171127095406640.jpg', 19820, 'jpg', 1, 0, 0, 1, 1511790846, '', 1, '2779f1a430aea9054652d63befcc1cc0', 1),
(97, 'content', 0, '20171127100055463.png', '2017/1127/20171127100055463.png', 10103, 'png', 1, 0, 0, 0, 1511791255, '', 1, '29457fd7748a9897b2f8fd1a0711d25d', 1),
(98, 'content', 0, '20171127100157792.png', '2017/1127/20171127100157792.png', 10103, 'png', 1, 0, 0, 0, 1511791317, '', 1, '0601a21450742239e4ae250e8ce60a08', 1),
(99, 'content', 0, '20171127100610414.png', '2017/1127/20171127100610414.png', 10103, 'png', 1, 0, 0, 0, 1511791570, '', 1, '436f5d65e273bd34222d20ab57a40f25', 1);

-- --------------------------------------------------------

--
-- 表的结构 `v9_attachment_index`
--

CREATE TABLE `v9_attachment_index` (
  `keyid` char(30) NOT NULL,
  `aid` char(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_attachment_index`
--

INSERT INTO `v9_attachment_index` (`keyid`, `aid`) VALUES
('c-11-13', '25'),
('c-11-15', '22'),
('c-11-14', '23'),
('c-12-4', '34'),
('c-12-4', '33'),
('c-13-23', '11'),
('c-13-22', '12'),
('c-13-21', '13'),
('c-13-20', '14'),
('c-13-19', '15'),
('c-13-19', '16'),
('c-13-18', '17'),
('c-13-17', '18'),
('c-13-16', '19'),
('c-13-7', '20'),
('c-13-6', '21'),
('c-11-14', '24'),
('c-11-13', '26'),
('c-11-13', '27'),
('c-11-15', '28'),
('c-11-15', '29'),
('c-11-14', '30'),
('c-11-14', '31'),
('c-11-14', '32'),
('c-12-4', '35'),
('c-12-4', '36'),
('c-12-4', '37'),
('c-12-4', '38'),
('c-12-4', '39'),
('c-12-4', '40'),
('c-12-4', '41'),
('c-12-4', '42'),
('c-12-4', '43'),
('c-12-4', '44'),
('c-12-4', '45'),
('c-12-4', '46'),
('c-12-4', '47'),
('c-12-4', '48'),
('c-12-4', '49'),
('c-12-4', '50'),
('c-12-4', '51'),
('c-12-4', '52'),
('c-12-4', '53'),
('c-12-4', '54'),
('c-12-4', '55'),
('c-12-4', '54'),
('c-13-22', '56'),
('c-13-22', '56'),
('c-13-22', '56'),
('c-14-26', '72'),
('c-14-26', '71'),
('c-14-26', '70'),
('c-14-26', '69'),
('c-14-29', '77'),
('c-14-28', '66'),
('c-14-28', '67'),
('c-14-28', '68'),
('c-12-33', '89'),
('c-12-34', '88'),
('c-12-35', '87'),
('c-12-32', '86'),
('c-12-32', '90'),
('c-12-4', '91'),
('c-14-24', '81'),
('c-14-26', '80'),
('c-14-30', '99'),
('c-14-29', '93'),
('c-14-28', '94'),
('c-14-26', '95'),
('c-14-24', '96');

-- --------------------------------------------------------

--
-- 表的结构 `v9_badword`
--

CREATE TABLE `v9_badword` (
  `badid` smallint(5) UNSIGNED NOT NULL,
  `badword` char(20) NOT NULL,
  `level` tinyint(5) NOT NULL DEFAULT '1',
  `replaceword` char(20) NOT NULL DEFAULT '0',
  `lastusetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `listorder` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_block`
--

CREATE TABLE `v9_block` (
  `id` int(10) NOT NULL,
  `siteid` smallint(5) UNSIGNED DEFAULT '0',
  `name` char(50) DEFAULT NULL,
  `pos` char(30) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0',
  `data` text,
  `template` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_block_history`
--

CREATE TABLE `v9_block_history` (
  `id` int(10) NOT NULL,
  `blockid` int(10) UNSIGNED DEFAULT '0',
  `data` text,
  `creat_at` int(10) UNSIGNED DEFAULT '0',
  `userid` mediumint(8) UNSIGNED DEFAULT '0',
  `username` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_block_priv`
--

CREATE TABLE `v9_block_priv` (
  `id` int(10) UNSIGNED NOT NULL,
  `roleid` tinyint(3) UNSIGNED DEFAULT '0',
  `siteid` smallint(5) UNSIGNED DEFAULT '0',
  `blockid` int(10) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_cache`
--

CREATE TABLE `v9_cache` (
  `filename` char(50) NOT NULL,
  `path` char(50) NOT NULL,
  `data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_cache`
--

INSERT INTO `v9_cache` (`filename`, `path`, `data`) VALUES
('category_content.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  11 => \'1\',\n  12 => \'1\',\n  13 => \'1\',\n  14 => \'1\',\n  16 => \'1\',\n);\n?>'),
('category_content_1.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  11 => \n  array (\n    \'catid\' => \'11\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'11\',\n    \'catname\' => \'导师团队\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'导师团队\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'team\',\n    \'url\' => \'http://localhost/happy/index.php?m=content&c=index&a=lists&catid=11\',\n    \'items\' => \'3\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"happy","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'11\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'daoshituandui\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  12 => \n  array (\n    \'catid\' => \'12\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'12\',\n    \'catname\' => \'课程体系\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'课程体系\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'kecheng\',\n    \'url\' => \'http://localhost/happy/index.php?m=content&c=index&a=lists&catid=12\',\n    \'items\' => \'1\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"happy","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'12\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'kechengtixi\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  13 => \n  array (\n    \'catid\' => \'13\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'13\',\n    \'catname\' => \'新闻中心\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'新闻中心\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'news\',\n    \'url\' => \'http://localhost/happy/index.php?m=content&c=index&a=lists&catid=13\',\n    \'items\' => \'10\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"happy","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'13\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'xinwenzhongxin\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  14 => \n  array (\n    \'catid\' => \'14\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'14\',\n    \'catname\' => \'专业知识\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'zhuanye\',\n    \'url\' => \'http://localhost/happy/index.php?m=content&c=index&a=lists&catid=14\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"happy","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'14\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zhuanyezhishi\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  16 => \n  array (\n    \'catid\' => \'16\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'16\',\n    \'catname\' => \'关于我们\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'guanyuus\',\n    \'url\' => \'http://localhost/happy/index.php?m=content&c=index&a=lists&catid=16\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"ishtml":"0","template_list":"happy","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}\',\n    \'listorder\' => \'16\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'guanyuwomen\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n);\n?>'),
('type_content.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('vote.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('link.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => \n  array (\n    \'is_post\' => \'1\',\n    \'enablecheckcode\' => \'0\',\n  ),\n);\n?>'),
('type_content_1.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('sitelist.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => \n  array (\n    \'siteid\' => \'1\',\n    \'name\' => \'默认站点\',\n    \'dirname\' => \'\',\n    \'domain\' => \'http://localhost/happy/\',\n    \'site_title\' => \'乐课堂\',\n    \'keywords\' => \'乐课堂 web前端 课堂 学堂\',\n    \'description\' => \'乐课堂 快乐学习的课堂\',\n    \'release_point\' => \'\',\n    \'default_style\' => \'happy\',\n    \'template\' => \'happy\',\n    \'setting\' => \'{"upload_maxsize":"2048","upload_allowext":"jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf","watermark_enable":"1","watermark_minwidth":"300","watermark_minheight":"300","watermark_img":"statics\\\\/images\\\\/water\\\\/\\\\/mark.png","watermark_pct":"85","watermark_quality":"80","watermark_pos":"9"}\',\n    \'uuid\' => \'259fae30-d1aa-11e7-bc7f-c85b7670b42a\',\n    \'url\' => \'http://localhost/happy/\',\n  ),\n);\n?>'),
('downservers.cache.php', 'caches_commons/caches_data/', '<?php\nreturn NULL;\n?>'),
('badword.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('ipbanned.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('keylink.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('position.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  2 => \n  array (\n    \'posid\' => \'2\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'首页头条推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'4\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  1 => \n  array (\n    \'posid\' => \'1\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'首页焦点图推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'1\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  13 => \n  array (\n    \'posid\' => \'13\',\n    \'modelid\' => \'82\',\n    \'catid\' => \'0\',\n    \'name\' => \'栏目页焦点图\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  5 => \n  array (\n    \'posid\' => \'5\',\n    \'modelid\' => \'69\',\n    \'catid\' => \'0\',\n    \'name\' => \'推荐下载\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  8 => \n  array (\n    \'posid\' => \'8\',\n    \'modelid\' => \'30\',\n    \'catid\' => \'54\',\n    \'name\' => \'图片频道首页焦点图\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  9 => \n  array (\n    \'posid\' => \'9\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'网站顶部推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  10 => \n  array (\n    \'posid\' => \'10\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'栏目首页推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  12 => \n  array (\n    \'posid\' => \'12\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'首页图片推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  14 => \n  array (\n    \'posid\' => \'14\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'视频首页焦点图\',\n    \'maxnum\' => \'20\',\n    \'extention\' => \'\',\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  15 => \n  array (\n    \'posid\' => \'15\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'视频首页头条推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => \'\',\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  16 => \n  array (\n    \'posid\' => \'16\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'视频首页每日热点\',\n    \'maxnum\' => \'20\',\n    \'extention\' => \'\',\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  17 => \n  array (\n    \'posid\' => \'17\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'视频栏目精彩推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => \'\',\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n);\n?>'),
('role_siteid.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('role.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => \'超级管理员\',\n  2 => \'站点管理员\',\n  3 => \'运营总监\',\n  4 => \'总编\',\n  5 => \'编辑\',\n  7 => \'发布人员\',\n);\n?>'),
('urlrules_detail.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => \n  array (\n    \'urlruleid\' => \'1\',\n    \'module\' => \'content\',\n    \'file\' => \'category\',\n    \'ishtml\' => \'1\',\n    \'urlrule\' => \'{$categorydir}{$catdir}/index.html|{$categorydir}{$catdir}/{$page}.html\',\n    \'example\' => \'news/china/1000.html\',\n  ),\n  6 => \n  array (\n    \'urlruleid\' => \'6\',\n    \'module\' => \'content\',\n    \'file\' => \'category\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'index.php?m=content&c=index&a=lists&catid={$catid}|index.php?m=content&c=index&a=lists&catid={$catid}&page={$page}\',\n    \'example\' => \'index.php?m=content&c=index&a=lists&catid=1&page=1\',\n  ),\n  11 => \n  array (\n    \'urlruleid\' => \'11\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'1\',\n    \'urlrule\' => \'{$year}/{$catdir}_{$month}{$day}/{$id}.html|{$year}/{$catdir}_{$month}{$day}/{$id}_{$page}.html\',\n    \'example\' => \'2010/catdir_0720/1_2.html\',\n  ),\n  12 => \n  array (\n    \'urlruleid\' => \'12\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'1\',\n    \'urlrule\' => \'{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}.html|{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}_{$page}.html\',\n    \'example\' => \'it/product/2010/0720/1_2.html\',\n  ),\n  16 => \n  array (\n    \'urlruleid\' => \'16\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'index.php?m=content&c=index&a=show&catid={$catid}&id={$id}|index.php?m=content&c=index&a=show&catid={$catid}&id={$id}&page={$page}\',\n    \'example\' => \'index.php?m=content&c=index&a=show&catid=1&id=1\',\n  ),\n  17 => \n  array (\n    \'urlruleid\' => \'17\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'show-{$catid}-{$id}-{$page}.html\',\n    \'example\' => \'show-1-2-1.html\',\n  ),\n  18 => \n  array (\n    \'urlruleid\' => \'18\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'content-{$catid}-{$id}-{$page}.html\',\n    \'example\' => \'content-1-2-1.html\',\n  ),\n  30 => \n  array (\n    \'urlruleid\' => \'30\',\n    \'module\' => \'content\',\n    \'file\' => \'category\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'list-{$catid}-{$page}.html\',\n    \'example\' => \'list-1-1.html\',\n  ),\n);\n?>'),
('urlrules.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => \'{$categorydir}{$catdir}/index.html|{$categorydir}{$catdir}/{$page}.html\',\n  6 => \'index.php?m=content&c=index&a=lists&catid={$catid}|index.php?m=content&c=index&a=lists&catid={$catid}&page={$page}\',\n  11 => \'{$year}/{$catdir}_{$month}{$day}/{$id}.html|{$year}/{$catdir}_{$month}{$day}/{$id}_{$page}.html\',\n  12 => \'{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}.html|{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}_{$page}.html\',\n  16 => \'index.php?m=content&c=index&a=show&catid={$catid}&id={$id}|index.php?m=content&c=index&a=show&catid={$catid}&id={$id}&page={$page}\',\n  17 => \'show-{$catid}-{$id}-{$page}.html\',\n  18 => \'content-{$catid}-{$id}-{$page}.html\',\n  30 => \'list-{$catid}-{$page}.html\',\n);\n?>'),
('modules.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  \'admin\' => \n  array (\n    \'module\' => \'admin\',\n    \'name\' => \'admin\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'array (\n  \\\'admin_email\\\' => \\\'phpcms@phpcms.cn\\\',\n  \\\'adminaccessip\\\' => \\\'0\\\',\n  \\\'maxloginfailedtimes\\\' => \\\'8\\\',\n  \\\'maxiplockedtime\\\' => \\\'15\\\',\n  \\\'minrefreshtime\\\' => \\\'2\\\',\n  \\\'mail_type\\\' => \\\'1\\\',\n  \\\'mail_server\\\' => \\\'smtp.qq.com\\\',\n  \\\'mail_port\\\' => \\\'25\\\',\n  \\\'mail_user\\\' => \\\'phpcms.cn@foxmail.com\\\',\n  \\\'mail_auth\\\' => \\\'1\\\',\n  \\\'mail_from\\\' => \\\'phpcms.cn@foxmail.com\\\',\n  \\\'mail_password\\\' => \\\'\\\',\n  \\\'errorlog_size\\\' => \\\'20\\\',\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-10-18\',\n    \'updatedate\' => \'2010-10-18\',\n  ),\n  \'member\' => \n  array (\n    \'module\' => \'member\',\n    \'name\' => \'会员\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'array (\n  \\\'allowregister\\\' => \\\'1\\\',\n  \\\'choosemodel\\\' => \\\'1\\\',\n  \\\'enablemailcheck\\\' => \\\'0\\\',\n  \\\'registerverify\\\' => \\\'0\\\',\n  \\\'showapppoint\\\' => \\\'0\\\',\n  \\\'rmb_point_rate\\\' => \\\'10\\\',\n  \\\'defualtpoint\\\' => \\\'0\\\',\n  \\\'defualtamount\\\' => \\\'0\\\',\n  \\\'showregprotocol\\\' => \\\'0\\\',\n  \\\'regprotocol\\\' => \\\'		 欢迎您注册成为phpcms用户\r\n请仔细阅读下面的协议，只有接受协议才能继续进行注册。 \r\n1．服务条款的确认和接纳\r\n　　phpcms用户服务的所有权和运作权归phpcms拥有。phpcms所提供的服务将按照有关章程、服务条款和操作规则严格执行。用户通过注册程序点击“我同意” 按钮，即表示用户与phpcms达成协议并接受所有的服务条款。\r\n2． phpcms服务简介\r\n　　phpcms通过国际互联网为用户提供新闻及文章浏览、图片浏览、软件下载、网上留言和BBS论坛等服务。\r\n　　用户必须： \r\n　　1)购置设备，包括个人电脑一台、调制解调器一个及配备上网装置。 \r\n　　2)个人上网和支付与此服务有关的电话费用、网络费用。\r\n　　用户同意： \r\n　　1)提供及时、详尽及准确的个人资料。 \r\n　　2)不断更新注册资料，符合及时、详尽、准确的要求。所有原始键入的资料将引用为注册资料。 \r\n　　3)用户同意遵守《中华人民共和国保守国家秘密法》、《中华人民共和国计算机信息系统安全保护条例》、《计算机软件保护条例》等有关计算机及互联网规定的法律和法规、实施办法。在任何情况下，phpcms合理地认为用户的行为可能违反上述法律、法规，phpcms可以在任何时候，不经事先通知终止向该用户提供服务。用户应了解国际互联网的无国界性，应特别注意遵守当地所有有关的法律和法规。\r\n3． 服务条款的修改\r\n　　phpcms会不定时地修改服务条款，服务条款一旦发生变动，将会在相关页面上提示修改内容。如果您同意改动，则再一次点击“我同意”按钮。 如果您不接受，则及时取消您的用户使用服务资格。\r\n4． 服务修订\r\n　　phpcms保留随时修改或中断服务而不需知照用户的权利。phpcms行使修改或中断服务的权利，不需对用户或第三方负责。\r\n5． 用户隐私制度\r\n　　尊重用户个人隐私是phpcms的 基本政策。phpcms不会公开、编辑或透露用户的注册信息，除非有法律许可要求，或phpcms在诚信的基础上认为透露这些信息在以下三种情况是必要的： \r\n　　1)遵守有关法律规定，遵从合法服务程序。 \r\n　　2)保持维护phpcms的商标所有权。 \r\n　　3)在紧急情况下竭力维护用户个人和社会大众的隐私安全。 \r\n　　4)符合其他相关的要求。 \r\n6．用户的帐号，密码和安全性\r\n　　一旦注册成功成为phpcms用户，您将得到一个密码和帐号。如果您不保管好自己的帐号和密码安全，将对因此产生的后果负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。您可随时根据指示改变您的密码，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，立即通知phpcms。\r\n7． 免责条款\r\n　　用户明确同意网站服务的使用由用户个人承担风险。 　　 \r\n　　phpcms不作任何类型的担保，不担保服务一定能满足用户的要求，也不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保。用户理解并接受：任何通过phpcms服务取得的信息资料的可靠性取决于用户自己，用户自己承担所有风险和责任。 \r\n8．有限责任\r\n　　phpcms对任何直接、间接、偶然、特殊及继起的损害不负责任。\r\n9． 不提供零售和商业性服务 \r\n　　用户使用网站服务的权利是个人的。用户只能是一个单独的个体而不能是一个公司或实体商业性组织。用户承诺不经phpcms同意，不能利用网站服务进行销售或其他商业用途。\r\n10．用户责任 \r\n　　用户单独承担传输内容的责任。用户必须遵循： \r\n　　1)从中国境内向外传输技术性资料时必须符合中国有关法规。 \r\n　　2)使用网站服务不作非法用途。 \r\n　　3)不干扰或混乱网络服务。 \r\n　　4)不在论坛BBS或留言簿发表任何与政治相关的信息。 \r\n　　5)遵守所有使用网站服务的网络协议、规定、程序和惯例。\r\n　　6)不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益。\r\n　　7)不得利用本站制作、复制和传播下列信息： \r\n　　　1、煽动抗拒、破坏宪法和法律、行政法规实施的；\r\n　　　2、煽动颠覆国家政权，推翻社会主义制度的；\r\n　　　3、煽动分裂国家、破坏国家统一的；\r\n　　　4、煽动民族仇恨、民族歧视，破坏民族团结的；\r\n　　　5、捏造或者歪曲事实，散布谣言，扰乱社会秩序的；\r\n　　　6、宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；\r\n　　　7、公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；\r\n　　　8、损害国家机关信誉的；\r\n　　　9、其他违反宪法和法律行政法规的；\r\n　　　10、进行商业广告行为的。\r\n　　用户不能传输任何教唆他人构成犯罪行为的资料；不能传输长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法 律的资料。未经许可而非法进入其它电脑系统是禁止的。若用户的行为不符合以上的条款，phpcms将取消用户服务帐号。\r\n11．网站内容的所有权\r\n　　phpcms定义的内容包括：文字、软件、声音、相片、录象、图表；在广告中全部内容；电子邮件的全部内容；phpcms为用户提供的商业信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在phpcms和广告商授权下才能使用这些内容，而不能擅自复制、篡改这些内容、或创造与内容有关的派生产品。\r\n12．附加信息服务\r\n　　用户在享用phpcms提供的免费服务的同时，同意接受phpcms提供的各类附加信息服务。\r\n13．解释权\r\n　　本注册协议的解释权归phpcms所有。如果其中有任何条款与国家的有关法律相抵触，则以国家法律的明文规定为准。 \\\',\n  \\\'registerverifymessage\\\' => \\\' 欢迎您注册成为phpcms用户，您的账号需要邮箱认证，点击下面链接进行认证：{click}\r\n或者将网址复制到浏览器：{url}\\\',\n  \\\'forgetpassword\\\' => \\\' phpcms密码找回，请在一小时内点击下面链接进行操作：{click}\r\n或者将网址复制到浏览器：{url}\\\',\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'pay\' => \n  array (\n    \'module\' => \'pay\',\n    \'name\' => \'支付\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'digg\' => \n  array (\n    \'module\' => \'digg\',\n    \'name\' => \'顶一下\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'special\' => \n  array (\n    \'module\' => \'special\',\n    \'name\' => \'专题\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'content\' => \n  array (\n    \'module\' => \'content\',\n    \'name\' => \'内容模块\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'search\' => \n  array (\n    \'module\' => \'search\',\n    \'name\' => \'全站搜索\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'array (\n  \\\'fulltextenble\\\' => \\\'1\\\',\n  \\\'relationenble\\\' => \\\'1\\\',\n  \\\'suggestenable\\\' => \\\'1\\\',\n  \\\'sphinxenable\\\' => \\\'0\\\',\n  \\\'sphinxhost\\\' => \\\'10.228.134.102\\\',\n  \\\'sphinxport\\\' => \\\'9312\\\',\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'scan\' => \n  array (\n    \'module\' => \'scan\',\n    \'name\' => \'木马扫描\',\n    \'url\' => \'scan\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'attachment\' => \n  array (\n    \'module\' => \'attachment\',\n    \'name\' => \'附件\',\n    \'url\' => \'attachment\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'block\' => \n  array (\n    \'module\' => \'block\',\n    \'name\' => \'碎片\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'collection\' => \n  array (\n    \'module\' => \'collection\',\n    \'name\' => \'采集模块\',\n    \'url\' => \'collection\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'dbsource\' => \n  array (\n    \'module\' => \'dbsource\',\n    \'name\' => \'数据源\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'template\' => \n  array (\n    \'module\' => \'template\',\n    \'name\' => \'模板风格\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'release\' => \n  array (\n    \'module\' => \'release\',\n    \'name\' => \'发布点\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'video\' => \n  array (\n    \'module\' => \'video\',\n    \'name\' => \'视频库\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2012-09-28\',\n    \'updatedate\' => \'2012-09-28\',\n  ),\n  \'announce\' => \n  array (\n    \'module\' => \'announce\',\n    \'name\' => \'公告\',\n    \'url\' => \'announce/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'公告\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2017-11-25\',\n    \'updatedate\' => \'2017-11-25\',\n  ),\n  \'link\' => \n  array (\n    \'module\' => \'link\',\n    \'name\' => \'友情链接\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'array (\n  1 => \n  array (\n    \\\'is_post\\\' => \\\'1\\\',\n    \\\'enablecheckcode\\\' => \\\'0\\\',\n  ),\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'formguide\' => \n  array (\n    \'module\' => \'formguide\',\n    \'name\' => \'表单向导\',\n    \'url\' => \'formguide/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'formguide\',\n    \'setting\' => \'array (\n  \\\'allowmultisubmit\\\' => \\\'1\\\',\n  \\\'interval\\\' => \\\'30\\\',\n  \\\'allowunreg\\\' => \\\'0\\\',\n  \\\'mailmessage\\\' => \\\'用户向我们提交了表单数据，赶快去看看吧。\\\',\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-10-20\',\n    \'updatedate\' => \'2010-10-20\',\n  ),\n  \'wap\' => \n  array (\n    \'module\' => \'wap\',\n    \'name\' => \'手机门户\',\n    \'url\' => \'wap/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'手机门户\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2017-11-25\',\n    \'updatedate\' => \'2017-11-25\',\n  ),\n  \'tag\' => \n  array (\n    \'module\' => \'tag\',\n    \'name\' => \'标签向导\',\n    \'url\' => \'tag/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'标签向导\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2017-11-25\',\n    \'updatedate\' => \'2017-11-25\',\n  ),\n);\n?>'),
('model.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => \n  array (\n    \'modelid\' => \'1\',\n    \'siteid\' => \'1\',\n    \'name\' => \'文章模型\',\n    \'description\' => \'\',\n    \'tablename\' => \'news\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category\',\n    \'list_template\' => \'list\',\n    \'show_template\' => \'show\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n  2 => \n  array (\n    \'modelid\' => \'2\',\n    \'siteid\' => \'1\',\n    \'name\' => \'下载模型\',\n    \'description\' => \'\',\n    \'tablename\' => \'download\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category_download\',\n    \'list_template\' => \'list_download\',\n    \'show_template\' => \'show_download\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n  3 => \n  array (\n    \'modelid\' => \'3\',\n    \'siteid\' => \'1\',\n    \'name\' => \'图片模型\',\n    \'description\' => \'\',\n    \'tablename\' => \'picture\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category_picture\',\n    \'list_template\' => \'list_picture\',\n    \'show_template\' => \'show_picture\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n  11 => \n  array (\n    \'modelid\' => \'11\',\n    \'siteid\' => \'1\',\n    \'name\' => \'视频模型\',\n    \'description\' => \'\',\n    \'tablename\' => \'video\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category_video\',\n    \'list_template\' => \'list_video\',\n    \'show_template\' => \'show_video\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n);\n?>'),
('workflow_1.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => \n  array (\n    \'workflowid\' => \'1\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'1\',\n    \'workname\' => \'一级审核\',\n    \'description\' => \'审核一次\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n  2 => \n  array (\n    \'workflowid\' => \'2\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'2\',\n    \'workname\' => \'二级审核\',\n    \'description\' => \'审核两次\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n  3 => \n  array (\n    \'workflowid\' => \'3\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'3\',\n    \'workname\' => \'三级审核\',\n    \'description\' => \'审核三次\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n  4 => \n  array (\n    \'workflowid\' => \'4\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'4\',\n    \'workname\' => \'四级审核\',\n    \'description\' => \'四级审核\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n);\n?>'),
('member_model.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  10 => \n  array (\n    \'modelid\' => \'10\',\n    \'siteid\' => \'1\',\n    \'name\' => \'普通会员\',\n    \'description\' => \'普通会员\',\n    \'tablename\' => \'member_detail\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'\',\n    \'category_template\' => \'\',\n    \'list_template\' => \'\',\n    \'show_template\' => \'\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'2\',\n  ),\n);\n?>'),
('special.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('common.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  \'admin_email\' => \'phpcms@phpcms.cn\',\n  \'adminaccessip\' => \'0\',\n  \'maxloginfailedtimes\' => \'8\',\n  \'maxiplockedtime\' => \'15\',\n  \'minrefreshtime\' => \'2\',\n  \'mail_type\' => \'1\',\n  \'mail_server\' => \'smtp.qq.com\',\n  \'mail_port\' => \'25\',\n  \'mail_user\' => \'phpcms.cn@foxmail.com\',\n  \'mail_auth\' => \'1\',\n  \'mail_from\' => \'phpcms.cn@foxmail.com\',\n  \'mail_password\' => \'\',\n  \'errorlog_size\' => \'20\',\n);\n?>'),
('category_items_1.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  12 => \'5\',\n  13 => \'10\',\n  14 => \'5\',\n  11 => \'3\',\n);\n?>'),
('category_items_2.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('category_items_3.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('category_items_11.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>');

-- --------------------------------------------------------

--
-- 表的结构 `v9_category`
--

CREATE TABLE `v9_category` (
  `catid` smallint(5) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `module` varchar(15) NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `modelid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `arrparentid` varchar(255) NOT NULL,
  `child` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `arrchildid` mediumtext NOT NULL,
  `catname` varchar(30) NOT NULL,
  `style` varchar(5) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `parentdir` varchar(100) NOT NULL,
  `catdir` varchar(30) NOT NULL,
  `url` varchar(100) NOT NULL,
  `items` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `setting` mediumtext NOT NULL,
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `sethtml` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `letter` varchar(30) NOT NULL,
  `usable_type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_category`
--

INSERT INTO `v9_category` (`catid`, `siteid`, `module`, `type`, `modelid`, `parentid`, `arrparentid`, `child`, `arrchildid`, `catname`, `style`, `image`, `description`, `parentdir`, `catdir`, `url`, `items`, `hits`, `setting`, `listorder`, `ismenu`, `sethtml`, `letter`, `usable_type`) VALUES
(12, 1, 'content', 0, 1, 0, '0', 0, '12', '课程体系', '', '', '课程体系', '', 'kecheng', 'http://localhost/happy/index.php?m=content&c=index&a=lists&catid=12', 5, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"happy","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 12, 1, 0, 'kechengtixi', ''),
(13, 1, 'content', 0, 1, 0, '0', 0, '13', '新闻中心', '', '', '新闻中心', '', 'news', 'http://localhost/happy/index.php?m=content&c=index&a=lists&catid=13', 10, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"happy","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 13, 1, 0, 'xinwenzhongxin', ''),
(14, 1, 'content', 0, 1, 0, '0', 0, '14', '专业知识', '', '', '', '', 'zhuanye', 'http://localhost/happy/index.php?m=content&c=index&a=lists&catid=14', 5, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"happy","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 14, 1, 0, 'zhuanyezhishi', ''),
(16, 1, 'content', 1, 0, 0, '0', 0, '16', '关于我们', '', '', '', '', 'guanyuus', 'http://localhost/happy/index.php?m=content&c=index&a=lists&catid=16', 0, 0, '{"ishtml":"0","template_list":"happy","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}', 16, 1, 0, 'guanyuwomen', ''),
(11, 1, 'content', 0, 1, 0, '0', 0, '11', '导师团队', '', '', '导师团队', '', 'team', 'http://localhost/happy/index.php?m=content&c=index&a=lists&catid=11', 3, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"happy","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 11, 1, 0, 'daoshituandui', '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_category_priv`
--

CREATE TABLE `v9_category_priv` (
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `roleid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `action` char(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_collection_content`
--

CREATE TABLE `v9_collection_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `nodeid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` mediumint(5) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `url` char(255) NOT NULL,
  `title` char(100) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_collection_history`
--

CREATE TABLE `v9_collection_history` (
  `md5` char(32) NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_collection_node`
--

CREATE TABLE `v9_collection_node` (
  `nodeid` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `lastdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sourcecharset` varchar(8) NOT NULL,
  `sourcetype` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `urlpage` text NOT NULL,
  `pagesize_start` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `pagesize_end` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `page_base` char(255) NOT NULL,
  `par_num` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `url_contain` char(100) NOT NULL,
  `url_except` char(100) NOT NULL,
  `url_start` char(100) NOT NULL DEFAULT '',
  `url_end` char(100) NOT NULL DEFAULT '',
  `title_rule` char(100) NOT NULL,
  `title_html_rule` text NOT NULL,
  `author_rule` char(100) NOT NULL,
  `author_html_rule` text NOT NULL,
  `comeform_rule` char(100) NOT NULL,
  `comeform_html_rule` text NOT NULL,
  `time_rule` char(100) NOT NULL,
  `time_html_rule` text NOT NULL,
  `content_rule` char(100) NOT NULL,
  `content_html_rule` text NOT NULL,
  `content_page_start` char(100) NOT NULL,
  `content_page_end` char(100) NOT NULL,
  `content_page_rule` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `content_page` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `content_nextpage` char(100) NOT NULL,
  `down_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `watermark` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `coll_order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `customize_config` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_collection_program`
--

CREATE TABLE `v9_collection_program` (
  `id` int(10) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `nodeid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modelid` mediumint(6) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `config` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_content_check`
--

CREATE TABLE `v9_content_check` (
  `checkid` char(15) NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` char(80) NOT NULL,
  `username` char(20) NOT NULL,
  `inputtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_copyfrom`
--

CREATE TABLE `v9_copyfrom` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sitename` varchar(30) NOT NULL,
  `siteurl` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_datacall`
--

CREATE TABLE `v9_datacall` (
  `id` int(10) NOT NULL,
  `name` char(40) DEFAULT NULL,
  `dis_type` tinyint(1) UNSIGNED DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `module` char(20) DEFAULT NULL,
  `action` char(20) DEFAULT NULL,
  `data` text,
  `template` text,
  `cache` mediumint(8) DEFAULT NULL,
  `num` smallint(6) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_dbsource`
--

CREATE TABLE `v9_dbsource` (
  `id` int(10) NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `host` varchar(20) NOT NULL,
  `port` int(5) NOT NULL DEFAULT '3306',
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `dbname` varchar(50) NOT NULL,
  `dbtablepre` varchar(30) NOT NULL,
  `charset` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_download`
--

CREATE TABLE `v9_download` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `typeid` smallint(5) UNSIGNED NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `islink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `systems` varchar(100) NOT NULL DEFAULT 'Win2000/WinXP/Win2003',
  `copytype` varchar(15) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `classtype` varchar(20) NOT NULL DEFAULT '',
  `version` varchar(20) NOT NULL DEFAULT '',
  `filesize` varchar(10) NOT NULL DEFAULT 'Unkown',
  `stars` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_download_data`
--

CREATE TABLE `v9_download_data` (
  `id` mediumint(8) UNSIGNED DEFAULT '0',
  `content` text NOT NULL,
  `readpoint` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `allow_comment` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `downfiles` mediumtext NOT NULL,
  `downfile` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_downservers`
--

CREATE TABLE `v9_downservers` (
  `id` mediumint(8) NOT NULL,
  `sitename` varchar(100) DEFAULT NULL,
  `siteurl` varchar(255) DEFAULT NULL,
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_extend_setting`
--

CREATE TABLE `v9_extend_setting` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `key` char(30) NOT NULL,
  `data` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_favorite`
--

CREATE TABLE `v9_favorite` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `url` char(100) NOT NULL,
  `adddate` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_hits`
--

CREATE TABLE `v9_hits` (
  `hitsid` char(30) NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `yesterdayviews` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dayviews` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `weekviews` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `monthviews` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_hits`
--

INSERT INTO `v9_hits` (`hitsid`, `catid`, `views`, `yesterdayviews`, `dayviews`, `weekviews`, `monthviews`, `updatetime`) VALUES
('c-1-1', 9, 1, 0, 1, 1, 1, 1511592048),
('c-1-2', 9, 1, 0, 1, 1, 1, 1511592043),
('c-1-3', 9, 1, 0, 1, 1, 1, 1511592129),
('c-1-4', 12, 0, 0, 0, 0, 0, 1511595632),
('c-1-16', 13, 0, 0, 0, 0, 0, 1511674977),
('c-1-6', 13, 0, 0, 0, 0, 0, 1511596724),
('c-1-7', 13, 0, 0, 0, 0, 0, 1511596801),
('c-1-13', 11, 0, 0, 0, 0, 0, 1511672008),
('c-1-15', 11, 0, 0, 0, 0, 0, 1511672451),
('c-1-14', 11, 0, 0, 0, 0, 0, 1511672174),
('c-1-17', 13, 0, 0, 0, 0, 0, 1511675063),
('c-1-18', 13, 0, 0, 0, 0, 0, 1511675113),
('c-1-19', 13, 0, 0, 0, 0, 0, 1511675160),
('c-1-20', 13, 0, 0, 0, 0, 0, 1511675216),
('c-1-21', 13, 0, 0, 0, 0, 0, 1511675253),
('c-1-22', 13, 0, 0, 0, 0, 0, 1511675285),
('c-1-23', 13, 0, 0, 0, 0, 0, 1511675351),
('c-1-24', 14, 0, 0, 0, 0, 0, 1511704590),
('c-1-28', 14, 0, 0, 0, 0, 0, 1511705270),
('c-1-26', 14, 0, 0, 0, 0, 0, 1511704818),
('c-1-29', 14, 0, 0, 0, 0, 0, 1511705978),
('c-1-30', 14, 0, 0, 0, 0, 0, 1511706023),
('c-1-32', 12, 0, 0, 0, 0, 0, 1511706727),
('c-1-33', 12, 0, 0, 0, 0, 0, 1511773690),
('c-1-34', 12, 0, 0, 0, 0, 0, 1511773739),
('c-1-35', 12, 0, 0, 0, 0, 0, 1511773758);

-- --------------------------------------------------------

--
-- 表的结构 `v9_ipbanned`
--

CREATE TABLE `v9_ipbanned` (
  `ipbannedid` smallint(5) NOT NULL,
  `ip` char(15) NOT NULL,
  `expires` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_keylink`
--

CREATE TABLE `v9_keylink` (
  `keylinkid` smallint(5) UNSIGNED NOT NULL,
  `word` char(40) NOT NULL,
  `url` char(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_keyword`
--

CREATE TABLE `v9_keyword` (
  `id` int(10) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `keyword` char(100) NOT NULL,
  `pinyin` char(100) NOT NULL,
  `videonum` int(11) NOT NULL DEFAULT '0',
  `searchnums` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_keyword`
--

INSERT INTO `v9_keyword` (`id`, `siteid`, `keyword`, `pinyin`, `videonum`, `searchnums`) VALUES
(1, 1, '关于我们', 'guanyuwomen', 2, 0),
(2, 1, '你好你好', 'nihaonihao', 1, 0),
(3, 1, 'node', 'node', 12, 0),
(4, 1, '讲解', 'jiangjie', 12, 0),
(5, 1, '反反复复', 'fanfanfufu', 1, 0),
(6, 1, '新闻', 'xinwen', 1, 0),
(7, 1, '你好', 'nihao', 5, 0),
(8, 1, '老师', 'laoshi', 46, 0),
(9, 1, '', '', 131, 0),
(10, 1, '计算机发明、创始人', 'jisuanjifamingchuangshiren', 1, 0),
(11, 1, '就业前景', 'jiuyeqianjing', 4, 0),
(12, 1, '行业', 'xingye', 20, 0),
(13, 1, '趋势', 'qushi', 3, 0),
(14, 1, '阶段', 'jieduan', 3, 0),
(15, 1, '计算机', 'jisuanji', 3, 0),
(16, 1, '网络游戏', 'wangluoyouxi', 7, 0),
(17, 1, '点此处展开', 'diancichuzhankai', 8, 0),
(18, 1, '想不到', 'xiangbudao', 1, 0),
(19, 1, '企业', 'qiye', 1, 0),
(20, 1, '氛围', 'fenwei', 7, 0),
(21, 1, '核心', 'hexin', 8, 0),
(22, 1, '前景', 'qianjing', 3, 0),
(23, 1, '分配', 'fenpei', 2, 0),
(24, 1, '新发', 'xinfa', 9, 0),
(25, 1, '语言', 'yuyan', 9, 0),
(26, 1, '大话', 'dahua', 3, 0),
(27, 1, '前端', 'qianduan', 1, 0),
(28, 1, '事儿', 'shier', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_keyword_data`
--

CREATE TABLE `v9_keyword_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `tagid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `contentid` char(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_keyword_data`
--

INSERT INTO `v9_keyword_data` (`id`, `tagid`, `siteid`, `contentid`) VALUES
(1, 1, 1, '1-1'),
(2, 1, 1, '2-1'),
(3, 2, 1, '3-1'),
(4, 3, 1, '4-1'),
(5, 4, 1, '4-1'),
(6, 5, 1, '5-1'),
(7, 6, 1, '6-1'),
(8, 7, 1, '7-1'),
(9, 8, 1, '8-1'),
(10, 8, 1, '9-1'),
(11, 8, 1, '10-1'),
(12, 8, 1, '11-1'),
(13, 8, 1, '12-1'),
(14, 9, 1, '12-1'),
(15, 8, 1, '13-1'),
(16, 8, 1, '14-1'),
(17, 8, 1, '15-1'),
(18, 10, 1, '5-1'),
(19, 9, 1, '5-1'),
(20, 9, 1, '7-1'),
(21, 9, 1, '6-1'),
(22, 11, 1, '6-1'),
(23, 12, 1, '6-1'),
(24, 13, 1, '16-1'),
(25, 14, 1, '17-1'),
(26, 15, 1, '17-1'),
(27, 9, 1, '18-1'),
(28, 9, 1, '19-1'),
(29, 9, 1, '20-1'),
(30, 9, 1, '21-1'),
(31, 9, 1, '22-1'),
(32, 9, 1, '23-1'),
(33, 9, 1, '17-1'),
(34, 16, 1, '23-1'),
(35, 9, 1, '16-1'),
(36, 9, 1, '4-1'),
(37, 17, 1, '4-1'),
(38, 18, 1, '24-1'),
(39, 9, 1, '24-1'),
(40, 19, 1, '25-1'),
(41, 20, 1, '26-1'),
(42, 21, 1, '27-1'),
(43, 22, 1, '28-1'),
(44, 12, 1, '28-1'),
(45, 21, 1, '29-1'),
(46, 12, 1, '30-1'),
(47, 7, 1, '31-1'),
(48, 23, 1, '32-1'),
(49, 9, 1, '32-1'),
(50, 24, 1, '4-1'),
(51, 25, 1, '4-1'),
(52, 26, 1, '32-1'),
(53, 27, 1, '33-1'),
(54, 28, 1, '33-1'),
(55, 26, 1, '34-1'),
(56, 24, 1, '35-1'),
(57, 25, 1, '35-1'),
(58, 9, 1, '34-1'),
(59, 9, 1, '33-1');

-- --------------------------------------------------------

--
-- 表的结构 `v9_link`
--

CREATE TABLE `v9_link` (
  `linkid` smallint(5) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED DEFAULT '0',
  `typeid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `linktype` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `introduce` text NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `elite` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `passed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_link`
--

INSERT INTO `v9_link` (`linkid`, `siteid`, `typeid`, `linktype`, `name`, `url`, `logo`, `introduce`, `username`, `listorder`, `elite`, `passed`, `addtime`) VALUES
(1, 1, 0, 1, 'PHPCMS', 'http://www.phpcms.cn', 'http://www.phpcms.cn/images/logo_88_31.gif', '', '', 0, 0, 1, 1511591351),
(2, 1, 0, 1, '盛大在线', 'http://www.sdo.com', 'http://www.snda.com/cn/logo/comp_logo_sdo.gif', '', '', 0, 0, 1, 1511591351);

-- --------------------------------------------------------

--
-- 表的结构 `v9_linkage`
--

CREATE TABLE `v9_linkage` (
  `linkageid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `style` varchar(35) NOT NULL,
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `child` tinyint(1) NOT NULL,
  `arrchildid` mediumtext NOT NULL,
  `keyid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `setting` varchar(255) DEFAULT NULL,
  `siteid` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_linkage`
--

INSERT INTO `v9_linkage` (`linkageid`, `name`, `style`, `parentid`, `child`, `arrchildid`, `keyid`, `listorder`, `description`, `setting`, `siteid`) VALUES
(1, '中国', '1', 0, 0, '', 0, 0, '', NULL, 0),
(2, '北京市', '0', 0, 0, '', 1, 0, '', NULL, 0),
(3, '上海市', '0', 0, 0, '', 1, 0, '', NULL, 0),
(4, '天津市', '0', 0, 0, '', 1, 0, '', NULL, 0),
(5, '重庆市', '0', 0, 0, '', 1, 0, '', NULL, 0),
(6, '河北省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(7, '山西省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(8, '内蒙古', '0', 0, 0, '', 1, 0, '', NULL, 0),
(9, '辽宁省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(10, '吉林省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(11, '黑龙江省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(12, '江苏省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(13, '浙江省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(14, '安徽省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(15, '福建省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(16, '江西省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(17, '山东省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(18, '河南省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(19, '湖北省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(20, '湖南省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(21, '广东省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(22, '广西', '0', 0, 0, '', 1, 0, '', NULL, 0),
(23, '海南省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(24, '四川省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(25, '贵州省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(26, '云南省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(27, '西藏', '0', 0, 0, '', 1, 0, '', NULL, 0),
(28, '陕西省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(29, '甘肃省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(30, '青海省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(31, '宁夏', '0', 0, 0, '', 1, 0, '', NULL, 0),
(32, '新疆', '0', 0, 0, '', 1, 0, '', NULL, 0),
(33, '台湾省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(34, '香港', '0', 0, 0, '', 1, 0, '', NULL, 0),
(35, '澳门', '0', 0, 0, '', 1, 0, '', NULL, 0),
(36, '东城区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(37, '西城区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(38, '崇文区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(39, '宣武区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(40, '朝阳区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(41, '石景山区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(42, '海淀区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(43, '门头沟区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(44, '房山区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(45, '通州区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(46, '顺义区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(47, '昌平区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(48, '大兴区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(49, '怀柔区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(50, '平谷区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(51, '密云县', '0', 2, 0, '', 1, 0, '', NULL, 0),
(52, '延庆县', '0', 2, 0, '', 1, 0, '', NULL, 0),
(53, '黄浦区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(54, '卢湾区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(55, '徐汇区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(56, '长宁区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(57, '静安区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(58, '普陀区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(59, '闸北区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(60, '虹口区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(61, '杨浦区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(62, '闵行区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(63, '宝山区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(64, '嘉定区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(65, '浦东新区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(66, '金山区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(67, '松江区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(68, '青浦区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(69, '南汇区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(70, '奉贤区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(71, '崇明县', '0', 3, 0, '', 1, 0, '', NULL, 0),
(72, '和平区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(73, '河东区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(74, '河西区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(75, '南开区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(76, '河北区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(77, '红桥区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(78, '塘沽区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(79, '汉沽区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(80, '大港区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(81, '东丽区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(82, '西青区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(83, '津南区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(84, '北辰区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(85, '武清区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(86, '宝坻区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(87, '宁河县', '0', 4, 0, '', 1, 0, '', NULL, 0),
(88, '静海县', '0', 4, 0, '', 1, 0, '', NULL, 0),
(89, '蓟县', '0', 4, 0, '', 1, 0, '', NULL, 0),
(90, '万州区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(91, '涪陵区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(92, '渝中区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(93, '大渡口区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(94, '江北区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(95, '沙坪坝区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(96, '九龙坡区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(97, '南岸区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(98, '北碚区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(99, '万盛区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(100, '双桥区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(101, '渝北区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(102, '巴南区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(103, '黔江区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(104, '长寿区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(105, '綦江县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(106, '潼南县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(107, '铜梁县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(108, '大足县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(109, '荣昌县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(110, '璧山县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(111, '梁平县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(112, '城口县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(113, '丰都县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(114, '垫江县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(115, '武隆县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(116, '忠县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(117, '开县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(118, '云阳县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(119, '奉节县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(120, '巫山县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(121, '巫溪县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(122, '石柱县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(123, '秀山县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(124, '酉阳县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(125, '彭水县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(126, '江津区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(127, '合川区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(128, '永川区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(129, '南川区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(130, '石家庄市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(131, '唐山市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(132, '秦皇岛市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(133, '邯郸市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(134, '邢台市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(135, '保定市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(136, '张家口市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(137, '承德市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(138, '沧州市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(139, '廊坊市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(140, '衡水市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(141, '太原市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(142, '大同市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(143, '阳泉市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(144, '长治市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(145, '晋城市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(146, '朔州市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(147, '晋中市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(148, '运城市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(149, '忻州市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(150, '临汾市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(151, '吕梁市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(152, '呼和浩特市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(153, '包头市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(154, '乌海市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(155, '赤峰市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(156, '通辽市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(157, '鄂尔多斯市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(158, '呼伦贝尔市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(159, '巴彦淖尔市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(160, '乌兰察布市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(161, '兴安盟', '0', 8, 0, '', 1, 0, '', NULL, 0),
(162, '锡林郭勒盟', '0', 8, 0, '', 1, 0, '', NULL, 0),
(163, '阿拉善盟', '0', 8, 0, '', 1, 0, '', NULL, 0),
(164, '沈阳市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(165, '大连市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(166, '鞍山市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(167, '抚顺市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(168, '本溪市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(169, '丹东市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(170, '锦州市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(171, '营口市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(172, '阜新市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(173, '辽阳市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(174, '盘锦市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(175, '铁岭市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(176, '朝阳市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(177, '葫芦岛市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(178, '长春市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(179, '吉林市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(180, '四平市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(181, '辽源市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(182, '通化市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(183, '白山市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(184, '松原市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(185, '白城市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(186, '延边', '0', 10, 0, '', 1, 0, '', NULL, 0),
(187, '哈尔滨市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(188, '齐齐哈尔市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(189, '鸡西市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(190, '鹤岗市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(191, '双鸭山市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(192, '大庆市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(193, '伊春市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(194, '佳木斯市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(195, '七台河市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(196, '牡丹江市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(197, '黑河市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(198, '绥化市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(199, '大兴安岭地区', '0', 11, 0, '', 1, 0, '', NULL, 0),
(200, '南京市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(201, '无锡市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(202, '徐州市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(203, '常州市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(204, '苏州市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(205, '南通市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(206, '连云港市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(207, '淮安市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(208, '盐城市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(209, '扬州市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(210, '镇江市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(211, '泰州市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(212, '宿迁市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(213, '杭州市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(214, '宁波市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(215, '温州市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(216, '嘉兴市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(217, '湖州市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(218, '绍兴市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(219, '金华市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(220, '衢州市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(221, '舟山市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(222, '台州市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(223, '丽水市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(224, '合肥市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(225, '芜湖市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(226, '蚌埠市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(227, '淮南市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(228, '马鞍山市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(229, '淮北市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(230, '铜陵市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(231, '安庆市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(232, '黄山市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(233, '滁州市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(234, '阜阳市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(235, '宿州市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(236, '巢湖市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(237, '六安市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(238, '亳州市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(239, '池州市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(240, '宣城市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(241, '福州市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(242, '厦门市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(243, '莆田市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(244, '三明市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(245, '泉州市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(246, '漳州市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(247, '南平市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(248, '龙岩市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(249, '宁德市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(250, '南昌市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(251, '景德镇市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(252, '萍乡市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(253, '九江市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(254, '新余市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(255, '鹰潭市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(256, '赣州市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(257, '吉安市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(258, '宜春市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(259, '抚州市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(260, '上饶市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(261, '济南市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(262, '青岛市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(263, '淄博市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(264, '枣庄市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(265, '东营市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(266, '烟台市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(267, '潍坊市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(268, '济宁市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(269, '泰安市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(270, '威海市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(271, '日照市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(272, '莱芜市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(273, '临沂市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(274, '德州市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(275, '聊城市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(276, '滨州市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(277, '荷泽市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(278, '郑州市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(279, '开封市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(280, '洛阳市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(281, '平顶山市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(282, '安阳市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(283, '鹤壁市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(284, '新乡市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(285, '焦作市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(286, '濮阳市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(287, '许昌市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(288, '漯河市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(289, '三门峡市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(290, '南阳市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(291, '商丘市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(292, '信阳市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(293, '周口市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(294, '驻马店市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(295, '武汉市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(296, '黄石市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(297, '十堰市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(298, '宜昌市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(299, '襄樊市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(300, '鄂州市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(301, '荆门市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(302, '孝感市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(303, '荆州市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(304, '黄冈市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(305, '咸宁市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(306, '随州市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(307, '恩施土家族苗族自治州', '0', 19, 0, '', 1, 0, '', NULL, 0),
(308, '仙桃市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(309, '潜江市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(310, '天门市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(311, '神农架林区', '0', 19, 0, '', 1, 0, '', NULL, 0),
(312, '长沙市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(313, '株洲市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(314, '湘潭市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(315, '衡阳市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(316, '邵阳市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(317, '岳阳市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(318, '常德市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(319, '张家界市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(320, '益阳市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(321, '郴州市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(322, '永州市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(323, '怀化市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(324, '娄底市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(325, '湘西土家族苗族自治州', '0', 20, 0, '', 1, 0, '', NULL, 0),
(326, '广州市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(327, '韶关市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(328, '深圳市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(329, '珠海市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(330, '汕头市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(331, '佛山市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(332, '江门市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(333, '湛江市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(334, '茂名市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(335, '肇庆市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(336, '惠州市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(337, '梅州市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(338, '汕尾市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(339, '河源市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(340, '阳江市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(341, '清远市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(342, '东莞市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(343, '中山市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(344, '潮州市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(345, '揭阳市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(346, '云浮市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(347, '南宁市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(348, '柳州市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(349, '桂林市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(350, '梧州市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(351, '北海市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(352, '防城港市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(353, '钦州市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(354, '贵港市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(355, '玉林市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(356, '百色市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(357, '贺州市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(358, '河池市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(359, '来宾市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(360, '崇左市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(361, '海口市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(362, '三亚市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(363, '五指山市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(364, '琼海市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(365, '儋州市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(366, '文昌市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(367, '万宁市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(368, '东方市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(369, '定安县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(370, '屯昌县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(371, '澄迈县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(372, '临高县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(373, '白沙黎族自治县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(374, '昌江黎族自治县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(375, '乐东黎族自治县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(376, '陵水黎族自治县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(377, '保亭黎族苗族自治县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(378, '琼中黎族苗族自治县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(379, '西沙群岛', '0', 23, 0, '', 1, 0, '', NULL, 0),
(380, '南沙群岛', '0', 23, 0, '', 1, 0, '', NULL, 0),
(381, '中沙群岛的岛礁及其海域', '0', 23, 0, '', 1, 0, '', NULL, 0),
(382, '成都市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(383, '自贡市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(384, '攀枝花市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(385, '泸州市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(386, '德阳市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(387, '绵阳市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(388, '广元市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(389, '遂宁市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(390, '内江市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(391, '乐山市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(392, '南充市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(393, '眉山市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(394, '宜宾市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(395, '广安市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(396, '达州市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(397, '雅安市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(398, '巴中市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(399, '资阳市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(400, '阿坝州', '0', 24, 0, '', 1, 0, '', NULL, 0),
(401, '甘孜州', '0', 24, 0, '', 1, 0, '', NULL, 0),
(402, '凉山州', '0', 24, 0, '', 1, 0, '', NULL, 0),
(403, '贵阳市', '0', 25, 0, '', 1, 0, '', NULL, 0),
(404, '六盘水市', '0', 25, 0, '', 1, 0, '', NULL, 0),
(405, '遵义市', '0', 25, 0, '', 1, 0, '', NULL, 0),
(406, '安顺市', '0', 25, 0, '', 1, 0, '', NULL, 0),
(407, '铜仁地区', '0', 25, 0, '', 1, 0, '', NULL, 0),
(408, '黔西南州', '0', 25, 0, '', 1, 0, '', NULL, 0),
(409, '毕节地区', '0', 25, 0, '', 1, 0, '', NULL, 0),
(410, '黔东南州', '0', 25, 0, '', 1, 0, '', NULL, 0),
(411, '黔南州', '0', 25, 0, '', 1, 0, '', NULL, 0),
(412, '昆明市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(413, '曲靖市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(414, '玉溪市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(415, '保山市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(416, '昭通市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(417, '丽江市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(418, '思茅市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(419, '临沧市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(420, '楚雄州', '0', 26, 0, '', 1, 0, '', NULL, 0),
(421, '红河州', '0', 26, 0, '', 1, 0, '', NULL, 0),
(422, '文山州', '0', 26, 0, '', 1, 0, '', NULL, 0),
(423, '西双版纳', '0', 26, 0, '', 1, 0, '', NULL, 0),
(424, '大理', '0', 26, 0, '', 1, 0, '', NULL, 0),
(425, '德宏', '0', 26, 0, '', 1, 0, '', NULL, 0),
(426, '怒江', '0', 26, 0, '', 1, 0, '', NULL, 0),
(427, '迪庆', '0', 26, 0, '', 1, 0, '', NULL, 0),
(428, '拉萨市', '0', 27, 0, '', 1, 0, '', NULL, 0),
(429, '昌都', '0', 27, 0, '', 1, 0, '', NULL, 0),
(430, '山南', '0', 27, 0, '', 1, 0, '', NULL, 0),
(431, '日喀则', '0', 27, 0, '', 1, 0, '', NULL, 0),
(432, '那曲', '0', 27, 0, '', 1, 0, '', NULL, 0),
(433, '阿里', '0', 27, 0, '', 1, 0, '', NULL, 0),
(434, '林芝', '0', 27, 0, '', 1, 0, '', NULL, 0),
(435, '西安市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(436, '铜川市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(437, '宝鸡市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(438, '咸阳市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(439, '渭南市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(440, '延安市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(441, '汉中市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(442, '榆林市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(443, '安康市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(444, '商洛市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(445, '兰州市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(446, '嘉峪关市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(447, '金昌市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(448, '白银市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(449, '天水市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(450, '武威市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(451, '张掖市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(452, '平凉市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(453, '酒泉市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(454, '庆阳市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(455, '定西市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(456, '陇南市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(457, '临夏州', '0', 29, 0, '', 1, 0, '', NULL, 0),
(458, '甘州', '0', 29, 0, '', 1, 0, '', NULL, 0),
(459, '西宁市', '0', 30, 0, '', 1, 0, '', NULL, 0),
(460, '海东地区', '0', 30, 0, '', 1, 0, '', NULL, 0),
(461, '海州', '0', 30, 0, '', 1, 0, '', NULL, 0),
(462, '黄南州', '0', 30, 0, '', 1, 0, '', NULL, 0),
(463, '海南州', '0', 30, 0, '', 1, 0, '', NULL, 0),
(464, '果洛州', '0', 30, 0, '', 1, 0, '', NULL, 0),
(465, '玉树州', '0', 30, 0, '', 1, 0, '', NULL, 0),
(466, '海西州', '0', 30, 0, '', 1, 0, '', NULL, 0),
(467, '银川市', '0', 31, 0, '', 1, 0, '', NULL, 0),
(468, '石嘴山市', '0', 31, 0, '', 1, 0, '', NULL, 0),
(469, '吴忠市', '0', 31, 0, '', 1, 0, '', NULL, 0),
(470, '固原市', '0', 31, 0, '', 1, 0, '', NULL, 0),
(471, '中卫市', '0', 31, 0, '', 1, 0, '', NULL, 0),
(472, '乌鲁木齐市', '0', 32, 0, '', 1, 0, '', NULL, 0),
(473, '克拉玛依市', '0', 32, 0, '', 1, 0, '', NULL, 0),
(474, '吐鲁番地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(475, '哈密地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(476, '昌吉州', '0', 32, 0, '', 1, 0, '', NULL, 0),
(477, '博尔州', '0', 32, 0, '', 1, 0, '', NULL, 0),
(478, '巴音郭楞州', '0', 32, 0, '', 1, 0, '', NULL, 0),
(479, '阿克苏地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(480, '克孜勒苏柯尔克孜自治州', '0', 32, 0, '', 1, 0, '', NULL, 0),
(481, '喀什地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(482, '和田地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(483, '伊犁州', '0', 32, 0, '', 1, 0, '', NULL, 0),
(484, '塔城地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(485, '阿勒泰地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(486, '石河子市', '0', 32, 0, '', 1, 0, '', NULL, 0),
(487, '阿拉尔市', '0', 32, 0, '', 1, 0, '', NULL, 0),
(488, '图木舒克市', '0', 32, 0, '', 1, 0, '', NULL, 0),
(489, '五家渠市', '0', 32, 0, '', 1, 0, '', NULL, 0),
(490, '台北市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(491, '高雄市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(492, '基隆市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(493, '新竹市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(494, '台中市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(495, '嘉义市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(496, '台南市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(497, '台北县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(498, '桃园县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(499, '新竹县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(500, '苗栗县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(501, '台中县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(502, '彰化县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(503, '南投县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(504, '云林县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(505, '嘉义县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(506, '台南县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(507, '高雄县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(508, '屏东县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(509, '宜兰县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(510, '花莲县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(511, '台东县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(512, '澎湖县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(513, '金门县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(514, '连江县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(515, '中西区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(516, '东区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(517, '南区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(518, '湾仔区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(519, '九龙城区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(520, '观塘区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(521, '深水埗区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(522, '黄大仙区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(523, '油尖旺区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(524, '离岛区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(525, '葵青区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(526, '北区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(527, '西贡区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(528, '沙田区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(529, '大埔区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(530, '荃湾区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(531, '屯门区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(532, '元朗区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(533, '花地玛堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(534, '市圣安多尼堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(535, '大堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(536, '望德堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(537, '风顺堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(538, '嘉模堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(539, '圣方济各堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(540, '长安区', '0', 130, 0, '', 1, 0, '', NULL, 0),
(541, '桥东区', '0', 130, 0, '', 1, 0, '', NULL, 0),
(542, '桥西区', '0', 130, 0, '', 1, 0, '', NULL, 0),
(543, '新华区', '0', 130, 0, '', 1, 0, '', NULL, 0),
(544, '井陉矿区', '0', 130, 0, '', 1, 0, '', NULL, 0),
(545, '裕华区', '0', 130, 0, '', 1, 0, '', NULL, 0),
(546, '井陉县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(547, '正定县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(548, '栾城县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(549, '行唐县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(550, '灵寿县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(551, '高邑县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(552, '深泽县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(553, '赞皇县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(554, '无极县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(555, '平山县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(556, '元氏县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(557, '赵县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(558, '辛集市', '0', 130, 0, '', 1, 0, '', NULL, 0),
(559, '藁城市', '0', 130, 0, '', 1, 0, '', NULL, 0),
(560, '晋州市', '0', 130, 0, '', 1, 0, '', NULL, 0),
(561, '新乐市', '0', 130, 0, '', 1, 0, '', NULL, 0),
(562, '鹿泉市', '0', 130, 0, '', 1, 0, '', NULL, 0),
(563, '路南区', '0', 131, 0, '', 1, 0, '', NULL, 0),
(564, '路北区', '0', 131, 0, '', 1, 0, '', NULL, 0),
(565, '古冶区', '0', 131, 0, '', 1, 0, '', NULL, 0),
(566, '开平区', '0', 131, 0, '', 1, 0, '', NULL, 0),
(567, '丰南区', '0', 131, 0, '', 1, 0, '', NULL, 0),
(568, '丰润区', '0', 131, 0, '', 1, 0, '', NULL, 0),
(569, '滦县', '0', 131, 0, '', 1, 0, '', NULL, 0),
(570, '滦南县', '0', 131, 0, '', 1, 0, '', NULL, 0),
(571, '乐亭县', '0', 131, 0, '', 1, 0, '', NULL, 0),
(572, '迁西县', '0', 131, 0, '', 1, 0, '', NULL, 0),
(573, '玉田县', '0', 131, 0, '', 1, 0, '', NULL, 0),
(574, '唐海县', '0', 131, 0, '', 1, 0, '', NULL, 0),
(575, '遵化市', '0', 131, 0, '', 1, 0, '', NULL, 0),
(576, '迁安市', '0', 131, 0, '', 1, 0, '', NULL, 0),
(577, '海港区', '0', 132, 0, '', 1, 0, '', NULL, 0),
(578, '山海关区', '0', 132, 0, '', 1, 0, '', NULL, 0),
(579, '北戴河区', '0', 132, 0, '', 1, 0, '', NULL, 0),
(580, '青龙县', '0', 132, 0, '', 1, 0, '', NULL, 0),
(581, '昌黎县', '0', 132, 0, '', 1, 0, '', NULL, 0),
(582, '抚宁县', '0', 132, 0, '', 1, 0, '', NULL, 0),
(583, '卢龙县', '0', 132, 0, '', 1, 0, '', NULL, 0),
(584, '邯山区', '0', 133, 0, '', 1, 0, '', NULL, 0),
(585, '丛台区', '0', 133, 0, '', 1, 0, '', NULL, 0),
(586, '复兴区', '0', 133, 0, '', 1, 0, '', NULL, 0),
(587, '峰峰矿区', '0', 133, 0, '', 1, 0, '', NULL, 0),
(588, '邯郸县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(589, '临漳县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(590, '成安县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(591, '大名县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(592, '涉县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(593, '磁县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(594, '肥乡县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(595, '永年县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(596, '邱县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(597, '鸡泽县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(598, '广平县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(599, '馆陶县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(600, '魏县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(601, '曲周县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(602, '武安市', '0', 133, 0, '', 1, 0, '', NULL, 0),
(603, '桥东区', '0', 134, 0, '', 1, 0, '', NULL, 0),
(604, '桥西区', '0', 134, 0, '', 1, 0, '', NULL, 0),
(605, '邢台县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(606, '临城县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(607, '内丘县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(608, '柏乡县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(609, '隆尧县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(610, '任县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(611, '南和县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(612, '宁晋县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(613, '巨鹿县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(614, '新河县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(615, '广宗县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(616, '平乡县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(617, '威县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(618, '清河县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(619, '临西县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(620, '南宫市', '0', 134, 0, '', 1, 0, '', NULL, 0),
(621, '沙河市', '0', 134, 0, '', 1, 0, '', NULL, 0),
(622, '新市区', '0', 135, 0, '', 1, 0, '', NULL, 0),
(623, '北市区', '0', 135, 0, '', 1, 0, '', NULL, 0),
(624, '南市区', '0', 135, 0, '', 1, 0, '', NULL, 0),
(625, '满城县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(626, '清苑县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(627, '涞水县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(628, '阜平县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(629, '徐水县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(630, '定兴县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(631, '唐县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(632, '高阳县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(633, '容城县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(634, '涞源县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(635, '望都县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(636, '安新县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(637, '易县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(638, '曲阳县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(639, '蠡县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(640, '顺平县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(641, '博野县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(642, '雄县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(643, '涿州市', '0', 135, 0, '', 1, 0, '', NULL, 0),
(644, '定州市', '0', 135, 0, '', 1, 0, '', NULL, 0),
(645, '安国市', '0', 135, 0, '', 1, 0, '', NULL, 0),
(646, '高碑店市', '0', 135, 0, '', 1, 0, '', NULL, 0),
(647, '桥东区', '0', 136, 0, '', 1, 0, '', NULL, 0),
(648, '桥西区', '0', 136, 0, '', 1, 0, '', NULL, 0),
(649, '宣化区', '0', 136, 0, '', 1, 0, '', NULL, 0),
(650, '下花园区', '0', 136, 0, '', 1, 0, '', NULL, 0),
(651, '宣化县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(652, '张北县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(653, '康保县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(654, '沽源县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(655, '尚义县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(656, '蔚县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(657, '阳原县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(658, '怀安县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(659, '万全县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(660, '怀来县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(661, '涿鹿县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(662, '赤城县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(663, '崇礼县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(664, '双桥区', '0', 137, 0, '', 1, 0, '', NULL, 0),
(665, '双滦区', '0', 137, 0, '', 1, 0, '', NULL, 0),
(666, '鹰手营子矿区', '0', 137, 0, '', 1, 0, '', NULL, 0),
(667, '承德县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(668, '兴隆县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(669, '平泉县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(670, '滦平县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(671, '隆化县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(672, '丰宁县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(673, '宽城县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(674, '围场县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(675, '新华区', '0', 138, 0, '', 1, 0, '', NULL, 0),
(676, '运河区', '0', 138, 0, '', 1, 0, '', NULL, 0),
(677, '沧县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(678, '青县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(679, '东光县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(680, '海兴县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(681, '盐山县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(682, '肃宁县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(683, '南皮县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(684, '吴桥县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(685, '献县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(686, '孟村县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(687, '泊头市', '0', 138, 0, '', 1, 0, '', NULL, 0),
(688, '任丘市', '0', 138, 0, '', 1, 0, '', NULL, 0),
(689, '黄骅市', '0', 138, 0, '', 1, 0, '', NULL, 0),
(690, '河间市', '0', 138, 0, '', 1, 0, '', NULL, 0),
(691, '安次区', '0', 139, 0, '', 1, 0, '', NULL, 0),
(692, '广阳区', '0', 139, 0, '', 1, 0, '', NULL, 0),
(693, '固安县', '0', 139, 0, '', 1, 0, '', NULL, 0),
(694, '永清县', '0', 139, 0, '', 1, 0, '', NULL, 0),
(695, '香河县', '0', 139, 0, '', 1, 0, '', NULL, 0),
(696, '大城县', '0', 139, 0, '', 1, 0, '', NULL, 0),
(697, '文安县', '0', 139, 0, '', 1, 0, '', NULL, 0),
(698, '大厂县', '0', 139, 0, '', 1, 0, '', NULL, 0),
(699, '霸州市', '0', 139, 0, '', 1, 0, '', NULL, 0),
(700, '三河市', '0', 139, 0, '', 1, 0, '', NULL, 0),
(701, '桃城区', '0', 140, 0, '', 1, 0, '', NULL, 0),
(702, '枣强县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(703, '武邑县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(704, '武强县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(705, '饶阳县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(706, '安平县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(707, '故城县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(708, '景县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(709, '阜城县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(710, '冀州市', '0', 140, 0, '', 1, 0, '', NULL, 0),
(711, '深州市', '0', 140, 0, '', 1, 0, '', NULL, 0),
(712, '小店区', '0', 141, 0, '', 1, 0, '', NULL, 0),
(713, '迎泽区', '0', 141, 0, '', 1, 0, '', NULL, 0),
(714, '杏花岭区', '0', 141, 0, '', 1, 0, '', NULL, 0),
(715, '尖草坪区', '0', 141, 0, '', 1, 0, '', NULL, 0),
(716, '万柏林区', '0', 141, 0, '', 1, 0, '', NULL, 0),
(717, '晋源区', '0', 141, 0, '', 1, 0, '', NULL, 0),
(718, '清徐县', '0', 141, 0, '', 1, 0, '', NULL, 0),
(719, '阳曲县', '0', 141, 0, '', 1, 0, '', NULL, 0),
(720, '娄烦县', '0', 141, 0, '', 1, 0, '', NULL, 0),
(721, '古交市', '0', 141, 0, '', 1, 0, '', NULL, 0),
(722, '城区', '0', 142, 0, '', 1, 0, '', NULL, 0),
(723, '矿区', '0', 142, 0, '', 1, 0, '', NULL, 0),
(724, '南郊区', '0', 142, 0, '', 1, 0, '', NULL, 0),
(725, '新荣区', '0', 142, 0, '', 1, 0, '', NULL, 0),
(726, '阳高县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(727, '天镇县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(728, '广灵县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(729, '灵丘县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(730, '浑源县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(731, '左云县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(732, '大同县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(733, '城区', '0', 143, 0, '', 1, 0, '', NULL, 0),
(734, '矿区', '0', 143, 0, '', 1, 0, '', NULL, 0),
(735, '郊区', '0', 143, 0, '', 1, 0, '', NULL, 0),
(736, '平定县', '0', 143, 0, '', 1, 0, '', NULL, 0),
(737, '盂县', '0', 143, 0, '', 1, 0, '', NULL, 0),
(738, '城区', '0', 144, 0, '', 1, 0, '', NULL, 0),
(739, '郊区', '0', 144, 0, '', 1, 0, '', NULL, 0),
(740, '长治县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(741, '襄垣县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(742, '屯留县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(743, '平顺县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(744, '黎城县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(745, '壶关县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(746, '长子县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(747, '武乡县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(748, '沁县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(749, '沁源县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(750, '潞城市', '0', 144, 0, '', 1, 0, '', NULL, 0),
(751, '城区', '0', 145, 0, '', 1, 0, '', NULL, 0),
(752, '沁水县', '0', 145, 0, '', 1, 0, '', NULL, 0),
(753, '阳城县', '0', 145, 0, '', 1, 0, '', NULL, 0),
(754, '陵川县', '0', 145, 0, '', 1, 0, '', NULL, 0),
(755, '泽州县', '0', 145, 0, '', 1, 0, '', NULL, 0),
(756, '高平市', '0', 145, 0, '', 1, 0, '', NULL, 0),
(757, '朔城区', '0', 146, 0, '', 1, 0, '', NULL, 0),
(758, '平鲁区', '0', 146, 0, '', 1, 0, '', NULL, 0),
(759, '山阴县', '0', 146, 0, '', 1, 0, '', NULL, 0),
(760, '应县', '0', 146, 0, '', 1, 0, '', NULL, 0),
(761, '右玉县', '0', 146, 0, '', 1, 0, '', NULL, 0),
(762, '怀仁县', '0', 146, 0, '', 1, 0, '', NULL, 0),
(763, '榆次区', '0', 147, 0, '', 1, 0, '', NULL, 0),
(764, '榆社县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(765, '左权县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(766, '和顺县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(767, '昔阳县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(768, '寿阳县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(769, '太谷县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(770, '祁县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(771, '平遥县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(772, '灵石县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(773, '介休市', '0', 147, 0, '', 1, 0, '', NULL, 0),
(774, '盐湖区', '0', 148, 0, '', 1, 0, '', NULL, 0),
(775, '临猗县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(776, '万荣县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(777, '闻喜县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(778, '稷山县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(779, '新绛县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(780, '绛县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(781, '垣曲县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(782, '夏县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(783, '平陆县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(784, '芮城县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(785, '永济市', '0', 148, 0, '', 1, 0, '', NULL, 0),
(786, '河津市', '0', 148, 0, '', 1, 0, '', NULL, 0),
(787, '忻府区', '0', 149, 0, '', 1, 0, '', NULL, 0),
(788, '定襄县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(789, '五台县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(790, '代县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(791, '繁峙县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(792, '宁武县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(793, '静乐县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(794, '神池县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(795, '五寨县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(796, '岢岚县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(797, '河曲县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(798, '保德县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(799, '偏关县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(800, '原平市', '0', 149, 0, '', 1, 0, '', NULL, 0),
(801, '尧都区', '0', 150, 0, '', 1, 0, '', NULL, 0),
(802, '曲沃县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(803, '翼城县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(804, '襄汾县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(805, '洪洞县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(806, '古县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(807, '安泽县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(808, '浮山县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(809, '吉县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(810, '乡宁县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(811, '大宁县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(812, '隰县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(813, '永和县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(814, '蒲县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(815, '汾西县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(816, '侯马市', '0', 150, 0, '', 1, 0, '', NULL, 0),
(817, '霍州市', '0', 150, 0, '', 1, 0, '', NULL, 0),
(818, '离石区', '0', 151, 0, '', 1, 0, '', NULL, 0),
(819, '文水县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(820, '交城县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(821, '兴县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(822, '临县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(823, '柳林县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(824, '石楼县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(825, '岚县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(826, '方山县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(827, '中阳县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(828, '交口县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(829, '孝义市', '0', 151, 0, '', 1, 0, '', NULL, 0),
(830, '汾阳市', '0', 151, 0, '', 1, 0, '', NULL, 0),
(831, '新城区', '0', 152, 0, '', 1, 0, '', NULL, 0),
(832, '回民区', '0', 152, 0, '', 1, 0, '', NULL, 0),
(833, '玉泉区', '0', 152, 0, '', 1, 0, '', NULL, 0),
(834, '赛罕区', '0', 152, 0, '', 1, 0, '', NULL, 0),
(835, '土默特左旗', '0', 152, 0, '', 1, 0, '', NULL, 0),
(836, '托克托县', '0', 152, 0, '', 1, 0, '', NULL, 0),
(837, '和林格尔县', '0', 152, 0, '', 1, 0, '', NULL, 0),
(838, '清水河县', '0', 152, 0, '', 1, 0, '', NULL, 0),
(839, '武川县', '0', 152, 0, '', 1, 0, '', NULL, 0),
(840, '东河区', '0', 153, 0, '', 1, 0, '', NULL, 0),
(841, '昆都仑区', '0', 153, 0, '', 1, 0, '', NULL, 0),
(842, '青山区', '0', 153, 0, '', 1, 0, '', NULL, 0),
(843, '石拐区', '0', 153, 0, '', 1, 0, '', NULL, 0),
(844, '白云矿区', '0', 153, 0, '', 1, 0, '', NULL, 0),
(845, '九原区', '0', 153, 0, '', 1, 0, '', NULL, 0),
(846, '土默特右旗', '0', 153, 0, '', 1, 0, '', NULL, 0),
(847, '固阳县', '0', 153, 0, '', 1, 0, '', NULL, 0),
(848, '达尔罕茂明安联合旗', '0', 153, 0, '', 1, 0, '', NULL, 0),
(849, '海勃湾区', '0', 154, 0, '', 1, 0, '', NULL, 0),
(850, '海南区', '0', 154, 0, '', 1, 0, '', NULL, 0),
(851, '乌达区', '0', 154, 0, '', 1, 0, '', NULL, 0),
(852, '红山区', '0', 155, 0, '', 1, 0, '', NULL, 0),
(853, '元宝山区', '0', 155, 0, '', 1, 0, '', NULL, 0),
(854, '松山区', '0', 155, 0, '', 1, 0, '', NULL, 0),
(855, '阿鲁科尔沁旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(856, '巴林左旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(857, '巴林右旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(858, '林西县', '0', 155, 0, '', 1, 0, '', NULL, 0),
(859, '克什克腾旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(860, '翁牛特旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(861, '喀喇沁旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(862, '宁城县', '0', 155, 0, '', 1, 0, '', NULL, 0),
(863, '敖汉旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(864, '科尔沁区', '0', 156, 0, '', 1, 0, '', NULL, 0),
(865, '科尔沁左翼中旗', '0', 156, 0, '', 1, 0, '', NULL, 0),
(866, '科尔沁左翼后旗', '0', 156, 0, '', 1, 0, '', NULL, 0),
(867, '开鲁县', '0', 156, 0, '', 1, 0, '', NULL, 0),
(868, '库伦旗', '0', 156, 0, '', 1, 0, '', NULL, 0),
(869, '奈曼旗', '0', 156, 0, '', 1, 0, '', NULL, 0),
(870, '扎鲁特旗', '0', 156, 0, '', 1, 0, '', NULL, 0),
(871, '霍林郭勒市', '0', 156, 0, '', 1, 0, '', NULL, 0),
(872, '东胜区', '0', 157, 0, '', 1, 0, '', NULL, 0),
(873, '达拉特旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(874, '准格尔旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(875, '鄂托克前旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(876, '鄂托克旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(877, '杭锦旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(878, '乌审旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(879, '伊金霍洛旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(880, '海拉尔区', '0', 158, 0, '', 1, 0, '', NULL, 0),
(881, '阿荣旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(882, '莫力达瓦达斡尔族自治旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(883, '鄂伦春自治旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(884, '鄂温克族自治旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(885, '陈巴尔虎旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(886, '新巴尔虎左旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(887, '新巴尔虎右旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(888, '满洲里市', '0', 158, 0, '', 1, 0, '', NULL, 0),
(889, '牙克石市', '0', 158, 0, '', 1, 0, '', NULL, 0),
(890, '扎兰屯市', '0', 158, 0, '', 1, 0, '', NULL, 0),
(891, '额尔古纳市', '0', 158, 0, '', 1, 0, '', NULL, 0),
(892, '根河市', '0', 158, 0, '', 1, 0, '', NULL, 0),
(893, '临河区', '0', 159, 0, '', 1, 0, '', NULL, 0),
(894, '五原县', '0', 159, 0, '', 1, 0, '', NULL, 0),
(895, '磴口县', '0', 159, 0, '', 1, 0, '', NULL, 0),
(896, '乌拉特前旗', '0', 159, 0, '', 1, 0, '', NULL, 0),
(897, '乌拉特中旗', '0', 159, 0, '', 1, 0, '', NULL, 0),
(898, '乌拉特后旗', '0', 159, 0, '', 1, 0, '', NULL, 0),
(899, '杭锦后旗', '0', 159, 0, '', 1, 0, '', NULL, 0),
(900, '集宁区', '0', 160, 0, '', 1, 0, '', NULL, 0),
(901, '卓资县', '0', 160, 0, '', 1, 0, '', NULL, 0),
(902, '化德县', '0', 160, 0, '', 1, 0, '', NULL, 0),
(903, '商都县', '0', 160, 0, '', 1, 0, '', NULL, 0),
(904, '兴和县', '0', 160, 0, '', 1, 0, '', NULL, 0),
(905, '凉城县', '0', 160, 0, '', 1, 0, '', NULL, 0),
(906, '察哈尔右翼前旗', '0', 160, 0, '', 1, 0, '', NULL, 0),
(907, '察哈尔右翼中旗', '0', 160, 0, '', 1, 0, '', NULL, 0),
(908, '察哈尔右翼后旗', '0', 160, 0, '', 1, 0, '', NULL, 0),
(909, '四子王旗', '0', 160, 0, '', 1, 0, '', NULL, 0),
(910, '丰镇市', '0', 160, 0, '', 1, 0, '', NULL, 0),
(911, '乌兰浩特市', '0', 161, 0, '', 1, 0, '', NULL, 0),
(912, '阿尔山市', '0', 161, 0, '', 1, 0, '', NULL, 0),
(913, '科尔沁右翼前旗', '0', 161, 0, '', 1, 0, '', NULL, 0),
(914, '科尔沁右翼中旗', '0', 161, 0, '', 1, 0, '', NULL, 0),
(915, '扎赉特旗', '0', 161, 0, '', 1, 0, '', NULL, 0),
(916, '突泉县', '0', 161, 0, '', 1, 0, '', NULL, 0),
(917, '二连浩特市', '0', 162, 0, '', 1, 0, '', NULL, 0),
(918, '锡林浩特市', '0', 162, 0, '', 1, 0, '', NULL, 0),
(919, '阿巴嘎旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(920, '苏尼特左旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(921, '苏尼特右旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(922, '东乌珠穆沁旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(923, '西乌珠穆沁旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(924, '太仆寺旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(925, '镶黄旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(926, '正镶白旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(927, '正蓝旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(928, '多伦县', '0', 162, 0, '', 1, 0, '', NULL, 0),
(929, '阿拉善左旗', '0', 163, 0, '', 1, 0, '', NULL, 0),
(930, '阿拉善右旗', '0', 163, 0, '', 1, 0, '', NULL, 0),
(931, '额济纳旗', '0', 163, 0, '', 1, 0, '', NULL, 0),
(932, '和平区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(933, '沈河区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(934, '大东区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(935, '皇姑区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(936, '铁西区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(937, '苏家屯区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(938, '东陵区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(939, '新城子区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(940, '于洪区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(941, '辽中县', '0', 164, 0, '', 1, 0, '', NULL, 0),
(942, '康平县', '0', 164, 0, '', 1, 0, '', NULL, 0),
(943, '法库县', '0', 164, 0, '', 1, 0, '', NULL, 0),
(944, '新民市', '0', 164, 0, '', 1, 0, '', NULL, 0),
(945, '中山区', '0', 165, 0, '', 1, 0, '', NULL, 0),
(946, '西岗区', '0', 165, 0, '', 1, 0, '', NULL, 0),
(947, '沙河口区', '0', 165, 0, '', 1, 0, '', NULL, 0),
(948, '甘井子区', '0', 165, 0, '', 1, 0, '', NULL, 0),
(949, '旅顺口区', '0', 165, 0, '', 1, 0, '', NULL, 0),
(950, '金州区', '0', 165, 0, '', 1, 0, '', NULL, 0),
(951, '长海县', '0', 165, 0, '', 1, 0, '', NULL, 0),
(952, '瓦房店市', '0', 165, 0, '', 1, 0, '', NULL, 0),
(953, '普兰店市', '0', 165, 0, '', 1, 0, '', NULL, 0),
(954, '庄河市', '0', 165, 0, '', 1, 0, '', NULL, 0),
(955, '铁东区', '0', 166, 0, '', 1, 0, '', NULL, 0),
(956, '铁西区', '0', 166, 0, '', 1, 0, '', NULL, 0),
(957, '立山区', '0', 166, 0, '', 1, 0, '', NULL, 0),
(958, '千山区', '0', 166, 0, '', 1, 0, '', NULL, 0),
(959, '台安县', '0', 166, 0, '', 1, 0, '', NULL, 0),
(960, '岫岩满族自治县', '0', 166, 0, '', 1, 0, '', NULL, 0),
(961, '海城市', '0', 166, 0, '', 1, 0, '', NULL, 0),
(962, '新抚区', '0', 167, 0, '', 1, 0, '', NULL, 0),
(963, '东洲区', '0', 167, 0, '', 1, 0, '', NULL, 0),
(964, '望花区', '0', 167, 0, '', 1, 0, '', NULL, 0),
(965, '顺城区', '0', 167, 0, '', 1, 0, '', NULL, 0),
(966, '抚顺县', '0', 167, 0, '', 1, 0, '', NULL, 0),
(967, '新宾满族自治县', '0', 167, 0, '', 1, 0, '', NULL, 0),
(968, '清原满族自治县', '0', 167, 0, '', 1, 0, '', NULL, 0),
(969, '平山区', '0', 168, 0, '', 1, 0, '', NULL, 0),
(970, '溪湖区', '0', 168, 0, '', 1, 0, '', NULL, 0),
(971, '明山区', '0', 168, 0, '', 1, 0, '', NULL, 0),
(972, '南芬区', '0', 168, 0, '', 1, 0, '', NULL, 0),
(973, '本溪满族自治县', '0', 168, 0, '', 1, 0, '', NULL, 0),
(974, '桓仁满族自治县', '0', 168, 0, '', 1, 0, '', NULL, 0),
(975, '元宝区', '0', 169, 0, '', 1, 0, '', NULL, 0),
(976, '振兴区', '0', 169, 0, '', 1, 0, '', NULL, 0),
(977, '振安区', '0', 169, 0, '', 1, 0, '', NULL, 0),
(978, '宽甸满族自治县', '0', 169, 0, '', 1, 0, '', NULL, 0),
(979, '东港市', '0', 169, 0, '', 1, 0, '', NULL, 0),
(980, '凤城市', '0', 169, 0, '', 1, 0, '', NULL, 0),
(981, '古塔区', '0', 170, 0, '', 1, 0, '', NULL, 0),
(982, '凌河区', '0', 170, 0, '', 1, 0, '', NULL, 0),
(983, '太和区', '0', 170, 0, '', 1, 0, '', NULL, 0),
(984, '黑山县', '0', 170, 0, '', 1, 0, '', NULL, 0),
(985, '义县', '0', 170, 0, '', 1, 0, '', NULL, 0),
(986, '凌海市', '0', 170, 0, '', 1, 0, '', NULL, 0),
(987, '北镇市', '0', 170, 0, '', 1, 0, '', NULL, 0),
(988, '站前区', '0', 171, 0, '', 1, 0, '', NULL, 0),
(989, '西市区', '0', 171, 0, '', 1, 0, '', NULL, 0),
(990, '鲅鱼圈区', '0', 171, 0, '', 1, 0, '', NULL, 0),
(991, '老边区', '0', 171, 0, '', 1, 0, '', NULL, 0),
(992, '盖州市', '0', 171, 0, '', 1, 0, '', NULL, 0),
(993, '大石桥市', '0', 171, 0, '', 1, 0, '', NULL, 0),
(994, '海州区', '0', 172, 0, '', 1, 0, '', NULL, 0),
(995, '新邱区', '0', 172, 0, '', 1, 0, '', NULL, 0),
(996, '太平区', '0', 172, 0, '', 1, 0, '', NULL, 0),
(997, '清河门区', '0', 172, 0, '', 1, 0, '', NULL, 0),
(998, '细河区', '0', 172, 0, '', 1, 0, '', NULL, 0),
(999, '阜新蒙古族自治县', '0', 172, 0, '', 1, 0, '', NULL, 0),
(1000, '彰武县', '0', 172, 0, '', 1, 0, '', NULL, 0),
(1001, '白塔区', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1002, '文圣区', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1003, '宏伟区', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1004, '弓长岭区', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1005, '太子河区', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1006, '辽阳县', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1007, '灯塔市', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1008, '双台子区', '0', 174, 0, '', 1, 0, '', NULL, 0),
(1009, '兴隆台区', '0', 174, 0, '', 1, 0, '', NULL, 0),
(1010, '大洼县', '0', 174, 0, '', 1, 0, '', NULL, 0),
(1011, '盘山县', '0', 174, 0, '', 1, 0, '', NULL, 0),
(1012, '银州区', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1013, '清河区', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1014, '铁岭县', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1015, '西丰县', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1016, '昌图县', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1017, '调兵山市', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1018, '开原市', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1019, '双塔区', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1020, '龙城区', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1021, '朝阳县', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1022, '建平县', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1023, '喀喇沁左翼蒙古族自治县', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1024, '北票市', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1025, '凌源市', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1026, '连山区', '0', 177, 0, '', 1, 0, '', NULL, 0),
(1027, '龙港区', '0', 177, 0, '', 1, 0, '', NULL, 0),
(1028, '南票区', '0', 177, 0, '', 1, 0, '', NULL, 0),
(1029, '绥中县', '0', 177, 0, '', 1, 0, '', NULL, 0),
(1030, '建昌县', '0', 177, 0, '', 1, 0, '', NULL, 0),
(1031, '兴城市', '0', 177, 0, '', 1, 0, '', NULL, 0),
(1032, '南关区', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1033, '宽城区', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1034, '朝阳区', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1035, '二道区', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1036, '绿园区', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1037, '双阳区', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1038, '农安县', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1039, '九台市', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1040, '榆树市', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1041, '德惠市', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1042, '昌邑区', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1043, '龙潭区', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1044, '船营区', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1045, '丰满区', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1046, '永吉县', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1047, '蛟河市', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1048, '桦甸市', '0', 179, 0, '', 1, 0, '', NULL, 0);
INSERT INTO `v9_linkage` (`linkageid`, `name`, `style`, `parentid`, `child`, `arrchildid`, `keyid`, `listorder`, `description`, `setting`, `siteid`) VALUES
(1049, '舒兰市', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1050, '磐石市', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1051, '铁西区', '0', 180, 0, '', 1, 0, '', NULL, 0),
(1052, '铁东区', '0', 180, 0, '', 1, 0, '', NULL, 0),
(1053, '梨树县', '0', 180, 0, '', 1, 0, '', NULL, 0),
(1054, '伊通满族自治县', '0', 180, 0, '', 1, 0, '', NULL, 0),
(1055, '公主岭市', '0', 180, 0, '', 1, 0, '', NULL, 0),
(1056, '双辽市', '0', 180, 0, '', 1, 0, '', NULL, 0),
(1057, '龙山区', '0', 181, 0, '', 1, 0, '', NULL, 0),
(1058, '西安区', '0', 181, 0, '', 1, 0, '', NULL, 0),
(1059, '东丰县', '0', 181, 0, '', 1, 0, '', NULL, 0),
(1060, '东辽县', '0', 181, 0, '', 1, 0, '', NULL, 0),
(1061, '东昌区', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1062, '二道江区', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1063, '通化县', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1064, '辉南县', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1065, '柳河县', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1066, '梅河口市', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1067, '集安市', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1068, '八道江区', '0', 183, 0, '', 1, 0, '', NULL, 0),
(1069, '抚松县', '0', 183, 0, '', 1, 0, '', NULL, 0),
(1070, '靖宇县', '0', 183, 0, '', 1, 0, '', NULL, 0),
(1071, '长白朝鲜族自治县', '0', 183, 0, '', 1, 0, '', NULL, 0),
(1072, '江源县', '0', 183, 0, '', 1, 0, '', NULL, 0),
(1073, '临江市', '0', 183, 0, '', 1, 0, '', NULL, 0),
(1074, '宁江区', '0', 184, 0, '', 1, 0, '', NULL, 0),
(1075, '前郭尔罗斯蒙古族自治县', '0', 184, 0, '', 1, 0, '', NULL, 0),
(1076, '长岭县', '0', 184, 0, '', 1, 0, '', NULL, 0),
(1077, '乾安县', '0', 184, 0, '', 1, 0, '', NULL, 0),
(1078, '扶余县', '0', 184, 0, '', 1, 0, '', NULL, 0),
(1079, '洮北区', '0', 185, 0, '', 1, 0, '', NULL, 0),
(1080, '镇赉县', '0', 185, 0, '', 1, 0, '', NULL, 0),
(1081, '通榆县', '0', 185, 0, '', 1, 0, '', NULL, 0),
(1082, '洮南市', '0', 185, 0, '', 1, 0, '', NULL, 0),
(1083, '大安市', '0', 185, 0, '', 1, 0, '', NULL, 0),
(1084, '延吉市', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1085, '图们市', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1086, '敦化市', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1087, '珲春市', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1088, '龙井市', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1089, '和龙市', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1090, '汪清县', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1091, '安图县', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1092, '道里区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1093, '南岗区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1094, '道外区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1095, '香坊区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1096, '动力区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1097, '平房区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1098, '松北区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1099, '呼兰区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1100, '依兰县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1101, '方正县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1102, '宾县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1103, '巴彦县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1104, '木兰县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1105, '通河县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1106, '延寿县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1107, '阿城市', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1108, '双城市', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1109, '尚志市', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1110, '五常市', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1111, '龙沙区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1112, '建华区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1113, '铁锋区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1114, '昂昂溪区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1115, '富拉尔基区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1116, '碾子山区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1117, '梅里斯达斡尔族区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1118, '龙江县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1119, '依安县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1120, '泰来县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1121, '甘南县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1122, '富裕县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1123, '克山县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1124, '克东县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1125, '拜泉县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1126, '讷河市', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1127, '鸡冠区', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1128, '恒山区', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1129, '滴道区', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1130, '梨树区', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1131, '城子河区', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1132, '麻山区', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1133, '鸡东县', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1134, '虎林市', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1135, '密山市', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1136, '向阳区', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1137, '工农区', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1138, '南山区', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1139, '兴安区', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1140, '东山区', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1141, '兴山区', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1142, '萝北县', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1143, '绥滨县', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1144, '尖山区', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1145, '岭东区', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1146, '四方台区', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1147, '宝山区', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1148, '集贤县', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1149, '友谊县', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1150, '宝清县', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1151, '饶河县', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1152, '萨尔图区', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1153, '龙凤区', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1154, '让胡路区', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1155, '红岗区', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1156, '大同区', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1157, '肇州县', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1158, '肇源县', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1159, '林甸县', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1160, '杜尔伯特蒙古族自治县', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1161, '伊春区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1162, '南岔区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1163, '友好区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1164, '西林区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1165, '翠峦区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1166, '新青区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1167, '美溪区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1168, '金山屯区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1169, '五营区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1170, '乌马河区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1171, '汤旺河区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1172, '带岭区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1173, '乌伊岭区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1174, '红星区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1175, '上甘岭区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1176, '嘉荫县', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1177, '铁力市', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1178, '永红区', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1179, '向阳区', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1180, '前进区', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1181, '东风区', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1182, '郊区', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1183, '桦南县', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1184, '桦川县', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1185, '汤原县', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1186, '抚远县', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1187, '同江市', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1188, '富锦市', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1189, '新兴区', '0', 195, 0, '', 1, 0, '', NULL, 0),
(1190, '桃山区', '0', 195, 0, '', 1, 0, '', NULL, 0),
(1191, '茄子河区', '0', 195, 0, '', 1, 0, '', NULL, 0),
(1192, '勃利县', '0', 195, 0, '', 1, 0, '', NULL, 0),
(1193, '东安区', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1194, '阳明区', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1195, '爱民区', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1196, '西安区', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1197, '东宁县', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1198, '林口县', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1199, '绥芬河市', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1200, '海林市', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1201, '宁安市', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1202, '穆棱市', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1203, '爱辉区', '0', 197, 0, '', 1, 0, '', NULL, 0),
(1204, '嫩江县', '0', 197, 0, '', 1, 0, '', NULL, 0),
(1205, '逊克县', '0', 197, 0, '', 1, 0, '', NULL, 0),
(1206, '孙吴县', '0', 197, 0, '', 1, 0, '', NULL, 0),
(1207, '北安市', '0', 197, 0, '', 1, 0, '', NULL, 0),
(1208, '五大连池市', '0', 197, 0, '', 1, 0, '', NULL, 0),
(1209, '北林区', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1210, '望奎县', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1211, '兰西县', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1212, '青冈县', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1213, '庆安县', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1214, '明水县', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1215, '绥棱县', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1216, '安达市', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1217, '肇东市', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1218, '海伦市', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1219, '呼玛县', '0', 199, 0, '', 1, 0, '', NULL, 0),
(1220, '塔河县', '0', 199, 0, '', 1, 0, '', NULL, 0),
(1221, '漠河县', '0', 199, 0, '', 1, 0, '', NULL, 0),
(1222, '玄武区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1223, '白下区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1224, '秦淮区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1225, '建邺区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1226, '鼓楼区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1227, '下关区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1228, '浦口区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1229, '栖霞区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1230, '雨花台区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1231, '江宁区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1232, '六合区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1233, '溧水县', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1234, '高淳县', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1235, '崇安区', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1236, '南长区', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1237, '北塘区', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1238, '锡山区', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1239, '惠山区', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1240, '滨湖区', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1241, '江阴市', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1242, '宜兴市', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1243, '鼓楼区', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1244, '云龙区', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1245, '九里区', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1246, '贾汪区', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1247, '泉山区', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1248, '丰县', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1249, '沛县', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1250, '铜山县', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1251, '睢宁县', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1252, '新沂市', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1253, '邳州市', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1254, '天宁区', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1255, '钟楼区', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1256, '戚墅堰区', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1257, '新北区', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1258, '武进区', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1259, '溧阳市', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1260, '金坛市', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1261, '沧浪区', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1262, '平江区', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1263, '金阊区', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1264, '虎丘区', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1265, '吴中区', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1266, '相城区', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1267, '常熟市', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1268, '张家港市', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1269, '昆山市', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1270, '吴江市', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1271, '太仓市', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1272, '崇川区', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1273, '港闸区', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1274, '海安县', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1275, '如东县', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1276, '启东市', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1277, '如皋市', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1278, '通州市', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1279, '海门市', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1280, '连云区', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1281, '新浦区', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1282, '海州区', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1283, '赣榆县', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1284, '东海县', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1285, '灌云县', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1286, '灌南县', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1287, '清河区', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1288, '楚州区', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1289, '淮阴区', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1290, '清浦区', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1291, '涟水县', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1292, '洪泽县', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1293, '盱眙县', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1294, '金湖县', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1295, '亭湖区', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1296, '盐都区', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1297, '响水县', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1298, '滨海县', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1299, '阜宁县', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1300, '射阳县', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1301, '建湖县', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1302, '东台市', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1303, '大丰市', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1304, '广陵区', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1305, '邗江区', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1306, '维扬区', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1307, '宝应县', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1308, '仪征市', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1309, '高邮市', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1310, '江都市', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1311, '京口区', '0', 210, 0, '', 1, 0, '', NULL, 0),
(1312, '润州区', '0', 210, 0, '', 1, 0, '', NULL, 0),
(1313, '丹徒区', '0', 210, 0, '', 1, 0, '', NULL, 0),
(1314, '丹阳市', '0', 210, 0, '', 1, 0, '', NULL, 0),
(1315, '扬中市', '0', 210, 0, '', 1, 0, '', NULL, 0),
(1316, '句容市', '0', 210, 0, '', 1, 0, '', NULL, 0),
(1317, '海陵区', '0', 211, 0, '', 1, 0, '', NULL, 0),
(1318, '高港区', '0', 211, 0, '', 1, 0, '', NULL, 0),
(1319, '兴化市', '0', 211, 0, '', 1, 0, '', NULL, 0),
(1320, '靖江市', '0', 211, 0, '', 1, 0, '', NULL, 0),
(1321, '泰兴市', '0', 211, 0, '', 1, 0, '', NULL, 0),
(1322, '姜堰市', '0', 211, 0, '', 1, 0, '', NULL, 0),
(1323, '宿城区', '0', 212, 0, '', 1, 0, '', NULL, 0),
(1324, '宿豫区', '0', 212, 0, '', 1, 0, '', NULL, 0),
(1325, '沭阳县', '0', 212, 0, '', 1, 0, '', NULL, 0),
(1326, '泗阳县', '0', 212, 0, '', 1, 0, '', NULL, 0),
(1327, '泗洪县', '0', 212, 0, '', 1, 0, '', NULL, 0),
(1328, '上城区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1329, '下城区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1330, '江干区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1331, '拱墅区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1332, '西湖区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1333, '滨江区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1334, '萧山区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1335, '余杭区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1336, '桐庐县', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1337, '淳安县', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1338, '建德市', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1339, '富阳市', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1340, '临安市', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1341, '海曙区', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1342, '江东区', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1343, '江北区', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1344, '北仑区', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1345, '镇海区', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1346, '鄞州区', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1347, '象山县', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1348, '宁海县', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1349, '余姚市', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1350, '慈溪市', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1351, '奉化市', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1352, '鹿城区', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1353, '龙湾区', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1354, '瓯海区', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1355, '洞头县', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1356, '永嘉县', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1357, '平阳县', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1358, '苍南县', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1359, '文成县', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1360, '泰顺县', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1361, '瑞安市', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1362, '乐清市', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1363, '秀城区', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1364, '秀洲区', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1365, '嘉善县', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1366, '海盐县', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1367, '海宁市', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1368, '平湖市', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1369, '桐乡市', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1370, '吴兴区', '0', 217, 0, '', 1, 0, '', NULL, 0),
(1371, '南浔区', '0', 217, 0, '', 1, 0, '', NULL, 0),
(1372, '德清县', '0', 217, 0, '', 1, 0, '', NULL, 0),
(1373, '长兴县', '0', 217, 0, '', 1, 0, '', NULL, 0),
(1374, '安吉县', '0', 217, 0, '', 1, 0, '', NULL, 0),
(1375, '越城区', '0', 218, 0, '', 1, 0, '', NULL, 0),
(1376, '绍兴县', '0', 218, 0, '', 1, 0, '', NULL, 0),
(1377, '新昌县', '0', 218, 0, '', 1, 0, '', NULL, 0),
(1378, '诸暨市', '0', 218, 0, '', 1, 0, '', NULL, 0),
(1379, '上虞市', '0', 218, 0, '', 1, 0, '', NULL, 0),
(1380, '嵊州市', '0', 218, 0, '', 1, 0, '', NULL, 0),
(1381, '婺城区', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1382, '金东区', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1383, '武义县', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1384, '浦江县', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1385, '磐安县', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1386, '兰溪市', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1387, '义乌市', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1388, '东阳市', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1389, '永康市', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1390, '柯城区', '0', 220, 0, '', 1, 0, '', NULL, 0),
(1391, '衢江区', '0', 220, 0, '', 1, 0, '', NULL, 0),
(1392, '常山县', '0', 220, 0, '', 1, 0, '', NULL, 0),
(1393, '开化县', '0', 220, 0, '', 1, 0, '', NULL, 0),
(1394, '龙游县', '0', 220, 0, '', 1, 0, '', NULL, 0),
(1395, '江山市', '0', 220, 0, '', 1, 0, '', NULL, 0),
(1396, '定海区', '0', 221, 0, '', 1, 0, '', NULL, 0),
(1397, '普陀区', '0', 221, 0, '', 1, 0, '', NULL, 0),
(1398, '岱山县', '0', 221, 0, '', 1, 0, '', NULL, 0),
(1399, '嵊泗县', '0', 221, 0, '', 1, 0, '', NULL, 0),
(1400, '椒江区', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1401, '黄岩区', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1402, '路桥区', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1403, '玉环县', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1404, '三门县', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1405, '天台县', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1406, '仙居县', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1407, '温岭市', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1408, '临海市', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1409, '莲都区', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1410, '青田县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1411, '缙云县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1412, '遂昌县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1413, '松阳县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1414, '云和县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1415, '庆元县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1416, '景宁畲族自治县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1417, '龙泉市', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1418, '瑶海区', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1419, '庐阳区', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1420, '蜀山区', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1421, '包河区', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1422, '长丰县', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1423, '肥东县', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1424, '肥西县', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1425, '镜湖区', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1426, '弋江区', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1427, '鸠江区', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1428, '三山区', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1429, '芜湖县', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1430, '繁昌县', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1431, '南陵县', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1432, '龙子湖区', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1433, '蚌山区', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1434, '禹会区', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1435, '淮上区', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1436, '怀远县', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1437, '五河县', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1438, '固镇县', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1439, '大通区', '0', 227, 0, '', 1, 0, '', NULL, 0),
(1440, '田家庵区', '0', 227, 0, '', 1, 0, '', NULL, 0),
(1441, '谢家集区', '0', 227, 0, '', 1, 0, '', NULL, 0),
(1442, '八公山区', '0', 227, 0, '', 1, 0, '', NULL, 0),
(1443, '潘集区', '0', 227, 0, '', 1, 0, '', NULL, 0),
(1444, '凤台县', '0', 227, 0, '', 1, 0, '', NULL, 0),
(1445, '金家庄区', '0', 228, 0, '', 1, 0, '', NULL, 0),
(1446, '花山区', '0', 228, 0, '', 1, 0, '', NULL, 0),
(1447, '雨山区', '0', 228, 0, '', 1, 0, '', NULL, 0),
(1448, '当涂县', '0', 228, 0, '', 1, 0, '', NULL, 0),
(1449, '杜集区', '0', 229, 0, '', 1, 0, '', NULL, 0),
(1450, '相山区', '0', 229, 0, '', 1, 0, '', NULL, 0),
(1451, '烈山区', '0', 229, 0, '', 1, 0, '', NULL, 0),
(1452, '濉溪县', '0', 229, 0, '', 1, 0, '', NULL, 0),
(1453, '铜官山区', '0', 230, 0, '', 1, 0, '', NULL, 0),
(1454, '狮子山区', '0', 230, 0, '', 1, 0, '', NULL, 0),
(1455, '郊区', '0', 230, 0, '', 1, 0, '', NULL, 0),
(1456, '铜陵县', '0', 230, 0, '', 1, 0, '', NULL, 0),
(1457, '迎江区', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1458, '大观区', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1459, '宜秀区', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1460, '怀宁县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1461, '枞阳县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1462, '潜山县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1463, '太湖县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1464, '宿松县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1465, '望江县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1466, '岳西县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1467, '桐城市', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1468, '屯溪区', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1469, '黄山区', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1470, '徽州区', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1471, '歙县', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1472, '休宁县', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1473, '黟县', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1474, '祁门县', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1475, '琅琊区', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1476, '南谯区', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1477, '来安县', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1478, '全椒县', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1479, '定远县', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1480, '凤阳县', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1481, '天长市', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1482, '明光市', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1483, '颍州区', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1484, '颍东区', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1485, '颍泉区', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1486, '临泉县', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1487, '太和县', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1488, '阜南县', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1489, '颍上县', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1490, '界首市', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1491, '埇桥区', '0', 235, 0, '', 1, 0, '', NULL, 0),
(1492, '砀山县', '0', 235, 0, '', 1, 0, '', NULL, 0),
(1493, '萧县', '0', 235, 0, '', 1, 0, '', NULL, 0),
(1494, '灵璧县', '0', 235, 0, '', 1, 0, '', NULL, 0),
(1495, '泗县', '0', 235, 0, '', 1, 0, '', NULL, 0),
(1496, '居巢区', '0', 236, 0, '', 1, 0, '', NULL, 0),
(1497, '庐江县', '0', 236, 0, '', 1, 0, '', NULL, 0),
(1498, '无为县', '0', 236, 0, '', 1, 0, '', NULL, 0),
(1499, '含山县', '0', 236, 0, '', 1, 0, '', NULL, 0),
(1500, '和县', '0', 236, 0, '', 1, 0, '', NULL, 0),
(1501, '金安区', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1502, '裕安区', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1503, '寿县', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1504, '霍邱县', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1505, '舒城县', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1506, '金寨县', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1507, '霍山县', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1508, '谯城区', '0', 238, 0, '', 1, 0, '', NULL, 0),
(1509, '涡阳县', '0', 238, 0, '', 1, 0, '', NULL, 0),
(1510, '蒙城县', '0', 238, 0, '', 1, 0, '', NULL, 0),
(1511, '利辛县', '0', 238, 0, '', 1, 0, '', NULL, 0),
(1512, '贵池区', '0', 239, 0, '', 1, 0, '', NULL, 0),
(1513, '东至县', '0', 239, 0, '', 1, 0, '', NULL, 0),
(1514, '石台县', '0', 239, 0, '', 1, 0, '', NULL, 0),
(1515, '青阳县', '0', 239, 0, '', 1, 0, '', NULL, 0),
(1516, '宣州区', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1517, '郎溪县', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1518, '广德县', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1519, '泾县', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1520, '绩溪县', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1521, '旌德县', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1522, '宁国市', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1523, '鼓楼区', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1524, '台江区', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1525, '仓山区', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1526, '马尾区', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1527, '晋安区', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1528, '闽侯县', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1529, '连江县', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1530, '罗源县', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1531, '闽清县', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1532, '永泰县', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1533, '平潭县', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1534, '福清市', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1535, '长乐市', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1536, '思明区', '0', 242, 0, '', 1, 0, '', NULL, 0),
(1537, '海沧区', '0', 242, 0, '', 1, 0, '', NULL, 0),
(1538, '湖里区', '0', 242, 0, '', 1, 0, '', NULL, 0),
(1539, '集美区', '0', 242, 0, '', 1, 0, '', NULL, 0),
(1540, '同安区', '0', 242, 0, '', 1, 0, '', NULL, 0),
(1541, '翔安区', '0', 242, 0, '', 1, 0, '', NULL, 0),
(1542, '城厢区', '0', 243, 0, '', 1, 0, '', NULL, 0),
(1543, '涵江区', '0', 243, 0, '', 1, 0, '', NULL, 0),
(1544, '荔城区', '0', 243, 0, '', 1, 0, '', NULL, 0),
(1545, '秀屿区', '0', 243, 0, '', 1, 0, '', NULL, 0),
(1546, '仙游县', '0', 243, 0, '', 1, 0, '', NULL, 0),
(1547, '梅列区', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1548, '三元区', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1549, '明溪县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1550, '清流县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1551, '宁化县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1552, '大田县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1553, '尤溪县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1554, '沙县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1555, '将乐县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1556, '泰宁县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1557, '建宁县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1558, '永安市', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1559, '鲤城区', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1560, '丰泽区', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1561, '洛江区', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1562, '泉港区', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1563, '惠安县', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1564, '安溪县', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1565, '永春县', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1566, '德化县', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1567, '金门县', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1568, '石狮市', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1569, '晋江市', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1570, '南安市', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1571, '芗城区', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1572, '龙文区', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1573, '云霄县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1574, '漳浦县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1575, '诏安县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1576, '长泰县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1577, '东山县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1578, '南靖县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1579, '平和县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1580, '华安县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1581, '龙海市', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1582, '延平区', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1583, '顺昌县', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1584, '浦城县', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1585, '光泽县', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1586, '松溪县', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1587, '政和县', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1588, '邵武市', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1589, '武夷山市', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1590, '建瓯市', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1591, '建阳市', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1592, '新罗区', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1593, '长汀县', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1594, '永定县', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1595, '上杭县', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1596, '武平县', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1597, '连城县', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1598, '漳平市', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1599, '蕉城区', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1600, '霞浦县', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1601, '古田县', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1602, '屏南县', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1603, '寿宁县', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1604, '周宁县', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1605, '柘荣县', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1606, '福安市', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1607, '福鼎市', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1608, '东湖区', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1609, '西湖区', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1610, '青云谱区', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1611, '湾里区', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1612, '青山湖区', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1613, '南昌县', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1614, '新建县', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1615, '安义县', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1616, '进贤县', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1617, '昌江区', '0', 251, 0, '', 1, 0, '', NULL, 0),
(1618, '珠山区', '0', 251, 0, '', 1, 0, '', NULL, 0),
(1619, '浮梁县', '0', 251, 0, '', 1, 0, '', NULL, 0),
(1620, '乐平市', '0', 251, 0, '', 1, 0, '', NULL, 0),
(1621, '安源区', '0', 252, 0, '', 1, 0, '', NULL, 0),
(1622, '湘东区', '0', 252, 0, '', 1, 0, '', NULL, 0),
(1623, '莲花县', '0', 252, 0, '', 1, 0, '', NULL, 0),
(1624, '上栗县', '0', 252, 0, '', 1, 0, '', NULL, 0),
(1625, '芦溪县', '0', 252, 0, '', 1, 0, '', NULL, 0),
(1626, '庐山区', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1627, '浔阳区', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1628, '九江县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1629, '武宁县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1630, '修水县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1631, '永修县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1632, '德安县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1633, '星子县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1634, '都昌县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1635, '湖口县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1636, '彭泽县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1637, '瑞昌市', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1638, '渝水区', '0', 254, 0, '', 1, 0, '', NULL, 0),
(1639, '分宜县', '0', 254, 0, '', 1, 0, '', NULL, 0),
(1640, '月湖区', '0', 255, 0, '', 1, 0, '', NULL, 0),
(1641, '余江县', '0', 255, 0, '', 1, 0, '', NULL, 0),
(1642, '贵溪市', '0', 255, 0, '', 1, 0, '', NULL, 0),
(1643, '章贡区', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1644, '赣县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1645, '信丰县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1646, '大余县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1647, '上犹县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1648, '崇义县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1649, '安远县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1650, '龙南县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1651, '定南县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1652, '全南县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1653, '宁都县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1654, '于都县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1655, '兴国县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1656, '会昌县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1657, '寻乌县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1658, '石城县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1659, '瑞金市', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1660, '南康市', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1661, '吉州区', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1662, '青原区', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1663, '吉安县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1664, '吉水县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1665, '峡江县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1666, '新干县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1667, '永丰县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1668, '泰和县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1669, '遂川县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1670, '万安县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1671, '安福县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1672, '永新县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1673, '井冈山市', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1674, '袁州区', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1675, '奉新县', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1676, '万载县', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1677, '上高县', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1678, '宜丰县', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1679, '靖安县', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1680, '铜鼓县', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1681, '丰城市', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1682, '樟树市', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1683, '高安市', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1684, '临川区', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1685, '南城县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1686, '黎川县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1687, '南丰县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1688, '崇仁县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1689, '乐安县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1690, '宜黄县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1691, '金溪县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1692, '资溪县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1693, '东乡县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1694, '广昌县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1695, '信州区', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1696, '上饶县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1697, '广丰县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1698, '玉山县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1699, '铅山县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1700, '横峰县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1701, '弋阳县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1702, '余干县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1703, '鄱阳县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1704, '万年县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1705, '婺源县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1706, '德兴市', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1707, '历下区', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1708, '市中区', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1709, '槐荫区', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1710, '天桥区', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1711, '历城区', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1712, '长清区', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1713, '平阴县', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1714, '济阳县', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1715, '商河县', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1716, '章丘市', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1717, '市南区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1718, '市北区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1719, '四方区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1720, '黄岛区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1721, '崂山区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1722, '李沧区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1723, '城阳区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1724, '胶州市', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1725, '即墨市', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1726, '平度市', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1727, '胶南市', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1728, '莱西市', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1729, '淄川区', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1730, '张店区', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1731, '博山区', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1732, '临淄区', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1733, '周村区', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1734, '桓台县', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1735, '高青县', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1736, '沂源县', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1737, '市中区', '0', 264, 0, '', 1, 0, '', NULL, 0),
(1738, '薛城区', '0', 264, 0, '', 1, 0, '', NULL, 0),
(1739, '峄城区', '0', 264, 0, '', 1, 0, '', NULL, 0),
(1740, '台儿庄区', '0', 264, 0, '', 1, 0, '', NULL, 0),
(1741, '山亭区', '0', 264, 0, '', 1, 0, '', NULL, 0),
(1742, '滕州市', '0', 264, 0, '', 1, 0, '', NULL, 0),
(1743, '东营区', '0', 265, 0, '', 1, 0, '', NULL, 0),
(1744, '河口区', '0', 265, 0, '', 1, 0, '', NULL, 0),
(1745, '垦利县', '0', 265, 0, '', 1, 0, '', NULL, 0),
(1746, '利津县', '0', 265, 0, '', 1, 0, '', NULL, 0),
(1747, '广饶县', '0', 265, 0, '', 1, 0, '', NULL, 0),
(1748, '芝罘区', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1749, '福山区', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1750, '牟平区', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1751, '莱山区', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1752, '长岛县', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1753, '龙口市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1754, '莱阳市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1755, '莱州市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1756, '蓬莱市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1757, '招远市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1758, '栖霞市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1759, '海阳市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1760, '潍城区', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1761, '寒亭区', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1762, '坊子区', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1763, '奎文区', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1764, '临朐县', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1765, '昌乐县', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1766, '青州市', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1767, '诸城市', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1768, '寿光市', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1769, '安丘市', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1770, '高密市', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1771, '昌邑市', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1772, '市中区', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1773, '任城区', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1774, '微山县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1775, '鱼台县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1776, '金乡县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1777, '嘉祥县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1778, '汶上县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1779, '泗水县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1780, '梁山县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1781, '曲阜市', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1782, '兖州市', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1783, '邹城市', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1784, '泰山区', '0', 269, 0, '', 1, 0, '', NULL, 0),
(1785, '岱岳区', '0', 269, 0, '', 1, 0, '', NULL, 0),
(1786, '宁阳县', '0', 269, 0, '', 1, 0, '', NULL, 0),
(1787, '东平县', '0', 269, 0, '', 1, 0, '', NULL, 0),
(1788, '新泰市', '0', 269, 0, '', 1, 0, '', NULL, 0),
(1789, '肥城市', '0', 269, 0, '', 1, 0, '', NULL, 0),
(1790, '环翠区', '0', 270, 0, '', 1, 0, '', NULL, 0),
(1791, '文登市', '0', 270, 0, '', 1, 0, '', NULL, 0),
(1792, '荣成市', '0', 270, 0, '', 1, 0, '', NULL, 0),
(1793, '乳山市', '0', 270, 0, '', 1, 0, '', NULL, 0),
(1794, '东港区', '0', 271, 0, '', 1, 0, '', NULL, 0),
(1795, '岚山区', '0', 271, 0, '', 1, 0, '', NULL, 0),
(1796, '五莲县', '0', 271, 0, '', 1, 0, '', NULL, 0),
(1797, '莒县', '0', 271, 0, '', 1, 0, '', NULL, 0),
(1798, '莱城区', '0', 272, 0, '', 1, 0, '', NULL, 0),
(1799, '钢城区', '0', 272, 0, '', 1, 0, '', NULL, 0),
(1800, '兰山区', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1801, '罗庄区', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1802, '河东区', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1803, '沂南县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1804, '郯城县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1805, '沂水县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1806, '苍山县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1807, '费县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1808, '平邑县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1809, '莒南县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1810, '蒙阴县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1811, '临沭县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1812, '德城区', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1813, '陵县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1814, '宁津县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1815, '庆云县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1816, '临邑县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1817, '齐河县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1818, '平原县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1819, '夏津县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1820, '武城县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1821, '乐陵市', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1822, '禹城市', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1823, '东昌府区', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1824, '阳谷县', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1825, '莘县', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1826, '茌平县', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1827, '东阿县', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1828, '冠县', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1829, '高唐县', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1830, '临清市', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1831, '滨城区', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1832, '惠民县', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1833, '阳信县', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1834, '无棣县', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1835, '沾化县', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1836, '博兴县', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1837, '邹平县', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1838, '牡丹区', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1839, '曹县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1840, '单县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1841, '成武县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1842, '巨野县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1843, '郓城县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1844, '鄄城县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1845, '定陶县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1846, '东明县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1847, '中原区', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1848, '二七区', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1849, '管城回族区', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1850, '金水区', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1851, '上街区', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1852, '惠济区', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1853, '中牟县', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1854, '巩义市', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1855, '荥阳市', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1856, '新密市', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1857, '新郑市', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1858, '登封市', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1859, '龙亭区', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1860, '顺河回族区', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1861, '鼓楼区', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1862, '禹王台区', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1863, '金明区', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1864, '杞县', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1865, '通许县', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1866, '尉氏县', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1867, '开封县', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1868, '兰考县', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1869, '老城区', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1870, '西工区', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1871, '廛河回族区', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1872, '涧西区', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1873, '吉利区', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1874, '洛龙区', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1875, '孟津县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1876, '新安县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1877, '栾川县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1878, '嵩县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1879, '汝阳县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1880, '宜阳县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1881, '洛宁县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1882, '伊川县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1883, '偃师市', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1884, '新华区', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1885, '卫东区', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1886, '石龙区', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1887, '湛河区', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1888, '宝丰县', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1889, '叶县', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1890, '鲁山县', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1891, '郏县', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1892, '舞钢市', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1893, '汝州市', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1894, '文峰区', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1895, '北关区', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1896, '殷都区', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1897, '龙安区', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1898, '安阳县', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1899, '汤阴县', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1900, '滑县', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1901, '内黄县', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1902, '林州市', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1903, '鹤山区', '0', 283, 0, '', 1, 0, '', NULL, 0),
(1904, '山城区', '0', 283, 0, '', 1, 0, '', NULL, 0),
(1905, '淇滨区', '0', 283, 0, '', 1, 0, '', NULL, 0),
(1906, '浚县', '0', 283, 0, '', 1, 0, '', NULL, 0),
(1907, '淇县', '0', 283, 0, '', 1, 0, '', NULL, 0),
(1908, '红旗区', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1909, '卫滨区', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1910, '凤泉区', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1911, '牧野区', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1912, '新乡县', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1913, '获嘉县', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1914, '原阳县', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1915, '延津县', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1916, '封丘县', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1917, '长垣县', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1918, '卫辉市', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1919, '辉县市', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1920, '解放区', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1921, '中站区', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1922, '马村区', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1923, '山阳区', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1924, '修武县', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1925, '博爱县', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1926, '武陟县', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1927, '温县', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1928, '济源市', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1929, '沁阳市', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1930, '孟州市', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1931, '华龙区', '0', 286, 0, '', 1, 0, '', NULL, 0),
(1932, '清丰县', '0', 286, 0, '', 1, 0, '', NULL, 0),
(1933, '南乐县', '0', 286, 0, '', 1, 0, '', NULL, 0),
(1934, '范县', '0', 286, 0, '', 1, 0, '', NULL, 0),
(1935, '台前县', '0', 286, 0, '', 1, 0, '', NULL, 0),
(1936, '濮阳县', '0', 286, 0, '', 1, 0, '', NULL, 0),
(1937, '魏都区', '0', 287, 0, '', 1, 0, '', NULL, 0),
(1938, '许昌县', '0', 287, 0, '', 1, 0, '', NULL, 0),
(1939, '鄢陵县', '0', 287, 0, '', 1, 0, '', NULL, 0),
(1940, '襄城县', '0', 287, 0, '', 1, 0, '', NULL, 0),
(1941, '禹州市', '0', 287, 0, '', 1, 0, '', NULL, 0),
(1942, '长葛市', '0', 287, 0, '', 1, 0, '', NULL, 0),
(1943, '源汇区', '0', 288, 0, '', 1, 0, '', NULL, 0),
(1944, '郾城区', '0', 288, 0, '', 1, 0, '', NULL, 0),
(1945, '召陵区', '0', 288, 0, '', 1, 0, '', NULL, 0),
(1946, '舞阳县', '0', 288, 0, '', 1, 0, '', NULL, 0),
(1947, '临颍县', '0', 288, 0, '', 1, 0, '', NULL, 0),
(1948, '湖滨区', '0', 289, 0, '', 1, 0, '', NULL, 0),
(1949, '渑池县', '0', 289, 0, '', 1, 0, '', NULL, 0),
(1950, '陕县', '0', 289, 0, '', 1, 0, '', NULL, 0),
(1951, '卢氏县', '0', 289, 0, '', 1, 0, '', NULL, 0),
(1952, '义马市', '0', 289, 0, '', 1, 0, '', NULL, 0),
(1953, '灵宝市', '0', 289, 0, '', 1, 0, '', NULL, 0),
(1954, '宛城区', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1955, '卧龙区', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1956, '南召县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1957, '方城县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1958, '西峡县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1959, '镇平县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1960, '内乡县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1961, '淅川县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1962, '社旗县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1963, '唐河县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1964, '新野县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1965, '桐柏县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1966, '邓州市', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1967, '梁园区', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1968, '睢阳区', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1969, '民权县', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1970, '睢县', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1971, '宁陵县', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1972, '柘城县', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1973, '虞城县', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1974, '夏邑县', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1975, '永城市', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1976, '浉河区', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1977, '平桥区', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1978, '罗山县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1979, '光山县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1980, '新县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1981, '商城县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1982, '固始县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1983, '潢川县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1984, '淮滨县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1985, '息县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1986, '川汇区', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1987, '扶沟县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1988, '西华县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1989, '商水县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1990, '沈丘县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1991, '郸城县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1992, '淮阳县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1993, '太康县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1994, '鹿邑县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1995, '项城市', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1996, '驿城区', '0', 294, 0, '', 1, 0, '', NULL, 0),
(1997, '西平县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(1998, '上蔡县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(1999, '平舆县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2000, '正阳县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2001, '确山县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2002, '泌阳县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2003, '汝南县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2004, '遂平县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2005, '新蔡县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2006, '江岸区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2007, '江汉区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2008, '硚口区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2009, '汉阳区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2010, '武昌区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2011, '青山区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2012, '洪山区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2013, '东西湖区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2014, '汉南区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2015, '蔡甸区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2016, '江夏区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2017, '黄陂区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2018, '新洲区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2019, '黄石港区', '0', 296, 0, '', 1, 0, '', NULL, 0),
(2020, '西塞山区', '0', 296, 0, '', 1, 0, '', NULL, 0),
(2021, '下陆区', '0', 296, 0, '', 1, 0, '', NULL, 0),
(2022, '铁山区', '0', 296, 0, '', 1, 0, '', NULL, 0),
(2023, '阳新县', '0', 296, 0, '', 1, 0, '', NULL, 0),
(2024, '大冶市', '0', 296, 0, '', 1, 0, '', NULL, 0),
(2025, '茅箭区', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2026, '张湾区', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2027, '郧县', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2028, '郧西县', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2029, '竹山县', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2030, '竹溪县', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2031, '房县', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2032, '丹江口市', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2033, '西陵区', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2034, '伍家岗区', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2035, '点军区', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2036, '猇亭区', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2037, '夷陵区', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2038, '远安县', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2039, '兴山县', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2040, '秭归县', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2041, '长阳土家族自治县', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2042, '五峰土家族自治县', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2043, '宜都市', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2044, '当阳市', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2045, '枝江市', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2046, '襄城区', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2047, '樊城区', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2048, '襄阳区', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2049, '南漳县', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2050, '谷城县', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2051, '保康县', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2052, '老河口市', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2053, '枣阳市', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2054, '宜城市', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2055, '梁子湖区', '0', 300, 0, '', 1, 0, '', NULL, 0),
(2056, '华容区', '0', 300, 0, '', 1, 0, '', NULL, 0),
(2057, '鄂城区', '0', 300, 0, '', 1, 0, '', NULL, 0),
(2058, '东宝区', '0', 301, 0, '', 1, 0, '', NULL, 0),
(2059, '掇刀区', '0', 301, 0, '', 1, 0, '', NULL, 0),
(2060, '京山县', '0', 301, 0, '', 1, 0, '', NULL, 0),
(2061, '沙洋县', '0', 301, 0, '', 1, 0, '', NULL, 0),
(2062, '钟祥市', '0', 301, 0, '', 1, 0, '', NULL, 0),
(2063, '孝南区', '0', 302, 0, '', 1, 0, '', NULL, 0),
(2064, '孝昌县', '0', 302, 0, '', 1, 0, '', NULL, 0);
INSERT INTO `v9_linkage` (`linkageid`, `name`, `style`, `parentid`, `child`, `arrchildid`, `keyid`, `listorder`, `description`, `setting`, `siteid`) VALUES
(2065, '大悟县', '0', 302, 0, '', 1, 0, '', NULL, 0),
(2066, '云梦县', '0', 302, 0, '', 1, 0, '', NULL, 0),
(2067, '应城市', '0', 302, 0, '', 1, 0, '', NULL, 0),
(2068, '安陆市', '0', 302, 0, '', 1, 0, '', NULL, 0),
(2069, '汉川市', '0', 302, 0, '', 1, 0, '', NULL, 0),
(2070, '沙市区', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2071, '荆州区', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2072, '公安县', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2073, '监利县', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2074, '江陵县', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2075, '石首市', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2076, '洪湖市', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2077, '松滋市', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2078, '黄州区', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2079, '团风县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2080, '红安县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2081, '罗田县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2082, '英山县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2083, '浠水县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2084, '蕲春县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2085, '黄梅县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2086, '麻城市', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2087, '武穴市', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2088, '咸安区', '0', 305, 0, '', 1, 0, '', NULL, 0),
(2089, '嘉鱼县', '0', 305, 0, '', 1, 0, '', NULL, 0),
(2090, '通城县', '0', 305, 0, '', 1, 0, '', NULL, 0),
(2091, '崇阳县', '0', 305, 0, '', 1, 0, '', NULL, 0),
(2092, '通山县', '0', 305, 0, '', 1, 0, '', NULL, 0),
(2093, '赤壁市', '0', 305, 0, '', 1, 0, '', NULL, 0),
(2094, '曾都区', '0', 306, 0, '', 1, 0, '', NULL, 0),
(2095, '广水市', '0', 306, 0, '', 1, 0, '', NULL, 0),
(2096, '恩施市', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2097, '利川市', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2098, '建始县', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2099, '巴东县', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2100, '宣恩县', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2101, '咸丰县', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2102, '来凤县', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2103, '鹤峰县', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2104, '芙蓉区', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2105, '天心区', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2106, '岳麓区', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2107, '开福区', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2108, '雨花区', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2109, '长沙县', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2110, '望城县', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2111, '宁乡县', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2112, '浏阳市', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2113, '荷塘区', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2114, '芦淞区', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2115, '石峰区', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2116, '天元区', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2117, '株洲县', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2118, '攸县', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2119, '茶陵县', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2120, '炎陵县', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2121, '醴陵市', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2122, '雨湖区', '0', 314, 0, '', 1, 0, '', NULL, 0),
(2123, '岳塘区', '0', 314, 0, '', 1, 0, '', NULL, 0),
(2124, '湘潭县', '0', 314, 0, '', 1, 0, '', NULL, 0),
(2125, '湘乡市', '0', 314, 0, '', 1, 0, '', NULL, 0),
(2126, '韶山市', '0', 314, 0, '', 1, 0, '', NULL, 0),
(2127, '珠晖区', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2128, '雁峰区', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2129, '石鼓区', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2130, '蒸湘区', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2131, '南岳区', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2132, '衡阳县', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2133, '衡南县', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2134, '衡山县', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2135, '衡东县', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2136, '祁东县', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2137, '耒阳市', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2138, '常宁市', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2139, '双清区', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2140, '大祥区', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2141, '北塔区', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2142, '邵东县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2143, '新邵县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2144, '邵阳县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2145, '隆回县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2146, '洞口县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2147, '绥宁县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2148, '新宁县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2149, '城步苗族自治县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2150, '武冈市', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2151, '岳阳楼区', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2152, '云溪区', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2153, '君山区', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2154, '岳阳县', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2155, '华容县', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2156, '湘阴县', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2157, '平江县', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2158, '汨罗市', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2159, '临湘市', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2160, '武陵区', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2161, '鼎城区', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2162, '安乡县', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2163, '汉寿县', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2164, '澧县', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2165, '临澧县', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2166, '桃源县', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2167, '石门县', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2168, '津市市', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2169, '永定区', '0', 319, 0, '', 1, 0, '', NULL, 0),
(2170, '武陵源区', '0', 319, 0, '', 1, 0, '', NULL, 0),
(2171, '慈利县', '0', 319, 0, '', 1, 0, '', NULL, 0),
(2172, '桑植县', '0', 319, 0, '', 1, 0, '', NULL, 0),
(2173, '资阳区', '0', 320, 0, '', 1, 0, '', NULL, 0),
(2174, '赫山区', '0', 320, 0, '', 1, 0, '', NULL, 0),
(2175, '南县', '0', 320, 0, '', 1, 0, '', NULL, 0),
(2176, '桃江县', '0', 320, 0, '', 1, 0, '', NULL, 0),
(2177, '安化县', '0', 320, 0, '', 1, 0, '', NULL, 0),
(2178, '沅江市', '0', 320, 0, '', 1, 0, '', NULL, 0),
(2179, '北湖区', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2180, '苏仙区', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2181, '桂阳县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2182, '宜章县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2183, '永兴县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2184, '嘉禾县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2185, '临武县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2186, '汝城县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2187, '桂东县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2188, '安仁县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2189, '资兴市', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2190, '零陵区', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2191, '冷水滩区', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2192, '祁阳县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2193, '东安县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2194, '双牌县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2195, '道县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2196, '江永县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2197, '宁远县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2198, '蓝山县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2199, '新田县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2200, '江华瑶族自治县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2201, '鹤城区', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2202, '中方县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2203, '沅陵县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2204, '辰溪县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2205, '溆浦县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2206, '会同县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2207, '麻阳苗族自治县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2208, '新晃侗族自治县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2209, '芷江侗族自治县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2210, '靖州苗族侗族自治县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2211, '通道侗族自治县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2212, '洪江市', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2213, '娄星区', '0', 324, 0, '', 1, 0, '', NULL, 0),
(2214, '双峰县', '0', 324, 0, '', 1, 0, '', NULL, 0),
(2215, '新化县', '0', 324, 0, '', 1, 0, '', NULL, 0),
(2216, '冷水江市', '0', 324, 0, '', 1, 0, '', NULL, 0),
(2217, '涟源市', '0', 324, 0, '', 1, 0, '', NULL, 0),
(2218, '吉首市', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2219, '泸溪县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2220, '凤凰县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2221, '花垣县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2222, '保靖县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2223, '古丈县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2224, '永顺县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2225, '龙山县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2226, '荔湾区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2227, '越秀区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2228, '海珠区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2229, '天河区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2230, '白云区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2231, '黄埔区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2232, '番禺区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2233, '花都区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2234, '南沙区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2235, '萝岗区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2236, '增城市', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2237, '从化市', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2238, '武江区', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2239, '浈江区', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2240, '曲江区', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2241, '始兴县', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2242, '仁化县', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2243, '翁源县', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2244, '乳源瑶族自治县', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2245, '新丰县', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2246, '乐昌市', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2247, '南雄市', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2248, '罗湖区', '0', 328, 0, '', 1, 0, '', NULL, 0),
(2249, '福田区', '0', 328, 0, '', 1, 0, '', NULL, 0),
(2250, '南山区', '0', 328, 0, '', 1, 0, '', NULL, 0),
(2251, '宝安区', '0', 328, 0, '', 1, 0, '', NULL, 0),
(2252, '龙岗区', '0', 328, 0, '', 1, 0, '', NULL, 0),
(2253, '盐田区', '0', 328, 0, '', 1, 0, '', NULL, 0),
(2254, '香洲区', '0', 329, 0, '', 1, 0, '', NULL, 0),
(2255, '斗门区', '0', 329, 0, '', 1, 0, '', NULL, 0),
(2256, '金湾区', '0', 329, 0, '', 1, 0, '', NULL, 0),
(2257, '龙湖区', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2258, '金平区', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2259, '濠江区', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2260, '潮阳区', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2261, '潮南区', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2262, '澄海区', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2263, '南澳县', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2264, '禅城区', '0', 331, 0, '', 1, 0, '', NULL, 0),
(2265, '南海区', '0', 331, 0, '', 1, 0, '', NULL, 0),
(2266, '顺德区', '0', 331, 0, '', 1, 0, '', NULL, 0),
(2267, '三水区', '0', 331, 0, '', 1, 0, '', NULL, 0),
(2268, '高明区', '0', 331, 0, '', 1, 0, '', NULL, 0),
(2269, '蓬江区', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2270, '江海区', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2271, '新会区', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2272, '台山市', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2273, '开平市', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2274, '鹤山市', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2275, '恩平市', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2276, '赤坎区', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2277, '霞山区', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2278, '坡头区', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2279, '麻章区', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2280, '遂溪县', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2281, '徐闻县', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2282, '廉江市', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2283, '雷州市', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2284, '吴川市', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2285, '茂南区', '0', 334, 0, '', 1, 0, '', NULL, 0),
(2286, '茂港区', '0', 334, 0, '', 1, 0, '', NULL, 0),
(2287, '电白县', '0', 334, 0, '', 1, 0, '', NULL, 0),
(2288, '高州市', '0', 334, 0, '', 1, 0, '', NULL, 0),
(2289, '化州市', '0', 334, 0, '', 1, 0, '', NULL, 0),
(2290, '信宜市', '0', 334, 0, '', 1, 0, '', NULL, 0),
(2291, '端州区', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2292, '鼎湖区', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2293, '广宁县', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2294, '怀集县', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2295, '封开县', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2296, '德庆县', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2297, '高要市', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2298, '四会市', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2299, '惠城区', '0', 336, 0, '', 1, 0, '', NULL, 0),
(2300, '惠阳区', '0', 336, 0, '', 1, 0, '', NULL, 0),
(2301, '博罗县', '0', 336, 0, '', 1, 0, '', NULL, 0),
(2302, '惠东县', '0', 336, 0, '', 1, 0, '', NULL, 0),
(2303, '龙门县', '0', 336, 0, '', 1, 0, '', NULL, 0),
(2304, '梅江区', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2305, '梅县', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2306, '大埔县', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2307, '丰顺县', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2308, '五华县', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2309, '平远县', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2310, '蕉岭县', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2311, '兴宁市', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2312, '城区', '0', 338, 0, '', 1, 0, '', NULL, 0),
(2313, '海丰县', '0', 338, 0, '', 1, 0, '', NULL, 0),
(2314, '陆河县', '0', 338, 0, '', 1, 0, '', NULL, 0),
(2315, '陆丰市', '0', 338, 0, '', 1, 0, '', NULL, 0),
(2316, '源城区', '0', 339, 0, '', 1, 0, '', NULL, 0),
(2317, '紫金县', '0', 339, 0, '', 1, 0, '', NULL, 0),
(2318, '龙川县', '0', 339, 0, '', 1, 0, '', NULL, 0),
(2319, '连平县', '0', 339, 0, '', 1, 0, '', NULL, 0),
(2320, '和平县', '0', 339, 0, '', 1, 0, '', NULL, 0),
(2321, '东源县', '0', 339, 0, '', 1, 0, '', NULL, 0),
(2322, '江城区', '0', 340, 0, '', 1, 0, '', NULL, 0),
(2323, '阳西县', '0', 340, 0, '', 1, 0, '', NULL, 0),
(2324, '阳东县', '0', 340, 0, '', 1, 0, '', NULL, 0),
(2325, '阳春市', '0', 340, 0, '', 1, 0, '', NULL, 0),
(2326, '清城区', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2327, '佛冈县', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2328, '阳山县', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2329, '连山壮族瑶族自治县', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2330, '连南瑶族自治县', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2331, '清新县', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2332, '英德市', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2333, '连州市', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2334, '湘桥区', '0', 344, 0, '', 1, 0, '', NULL, 0),
(2335, '潮安县', '0', 344, 0, '', 1, 0, '', NULL, 0),
(2336, '饶平县', '0', 344, 0, '', 1, 0, '', NULL, 0),
(2337, '榕城区', '0', 345, 0, '', 1, 0, '', NULL, 0),
(2338, '揭东县', '0', 345, 0, '', 1, 0, '', NULL, 0),
(2339, '揭西县', '0', 345, 0, '', 1, 0, '', NULL, 0),
(2340, '惠来县', '0', 345, 0, '', 1, 0, '', NULL, 0),
(2341, '普宁市', '0', 345, 0, '', 1, 0, '', NULL, 0),
(2342, '云城区', '0', 346, 0, '', 1, 0, '', NULL, 0),
(2343, '新兴县', '0', 346, 0, '', 1, 0, '', NULL, 0),
(2344, '郁南县', '0', 346, 0, '', 1, 0, '', NULL, 0),
(2345, '云安县', '0', 346, 0, '', 1, 0, '', NULL, 0),
(2346, '罗定市', '0', 346, 0, '', 1, 0, '', NULL, 0),
(2347, '兴宁区', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2348, '青秀区', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2349, '江南区', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2350, '西乡塘区', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2351, '良庆区', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2352, '邕宁区', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2353, '武鸣县', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2354, '隆安县', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2355, '马山县', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2356, '上林县', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2357, '宾阳县', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2358, '横县', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2359, '城中区', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2360, '鱼峰区', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2361, '柳南区', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2362, '柳北区', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2363, '柳江县', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2364, '柳城县', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2365, '鹿寨县', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2366, '融安县', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2367, '融水苗族自治县', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2368, '三江侗族自治县', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2369, '秀峰区', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2370, '叠彩区', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2371, '象山区', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2372, '七星区', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2373, '雁山区', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2374, '阳朔县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2375, '临桂县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2376, '灵川县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2377, '全州县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2378, '兴安县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2379, '永福县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2380, '灌阳县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2381, '龙胜各族自治县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2382, '资源县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2383, '平乐县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2384, '荔蒲县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2385, '恭城瑶族自治县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2386, '万秀区', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2387, '蝶山区', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2388, '长洲区', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2389, '苍梧县', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2390, '藤县', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2391, '蒙山县', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2392, '岑溪市', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2393, '海城区', '0', 351, 0, '', 1, 0, '', NULL, 0),
(2394, '银海区', '0', 351, 0, '', 1, 0, '', NULL, 0),
(2395, '铁山港区', '0', 351, 0, '', 1, 0, '', NULL, 0),
(2396, '合浦县', '0', 351, 0, '', 1, 0, '', NULL, 0),
(2397, '港口区', '0', 352, 0, '', 1, 0, '', NULL, 0),
(2398, '防城区', '0', 352, 0, '', 1, 0, '', NULL, 0),
(2399, '上思县', '0', 352, 0, '', 1, 0, '', NULL, 0),
(2400, '东兴市', '0', 352, 0, '', 1, 0, '', NULL, 0),
(2401, '钦南区', '0', 353, 0, '', 1, 0, '', NULL, 0),
(2402, '钦北区', '0', 353, 0, '', 1, 0, '', NULL, 0),
(2403, '灵山县', '0', 353, 0, '', 1, 0, '', NULL, 0),
(2404, '浦北县', '0', 353, 0, '', 1, 0, '', NULL, 0),
(2405, '港北区', '0', 354, 0, '', 1, 0, '', NULL, 0),
(2406, '港南区', '0', 354, 0, '', 1, 0, '', NULL, 0),
(2407, '覃塘区', '0', 354, 0, '', 1, 0, '', NULL, 0),
(2408, '平南县', '0', 354, 0, '', 1, 0, '', NULL, 0),
(2409, '桂平市', '0', 354, 0, '', 1, 0, '', NULL, 0),
(2410, '玉州区', '0', 355, 0, '', 1, 0, '', NULL, 0),
(2411, '容县', '0', 355, 0, '', 1, 0, '', NULL, 0),
(2412, '陆川县', '0', 355, 0, '', 1, 0, '', NULL, 0),
(2413, '博白县', '0', 355, 0, '', 1, 0, '', NULL, 0),
(2414, '兴业县', '0', 355, 0, '', 1, 0, '', NULL, 0),
(2415, '北流市', '0', 355, 0, '', 1, 0, '', NULL, 0),
(2416, '右江区', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2417, '田阳县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2418, '田东县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2419, '平果县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2420, '德保县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2421, '靖西县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2422, '那坡县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2423, '凌云县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2424, '乐业县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2425, '田林县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2426, '西林县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2427, '隆林各族自治县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2428, '八步区', '0', 357, 0, '', 1, 0, '', NULL, 0),
(2429, '昭平县', '0', 357, 0, '', 1, 0, '', NULL, 0),
(2430, '钟山县', '0', 357, 0, '', 1, 0, '', NULL, 0),
(2431, '富川瑶族自治县', '0', 357, 0, '', 1, 0, '', NULL, 0),
(2432, '金城江区', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2433, '南丹县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2434, '天峨县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2435, '凤山县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2436, '东兰县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2437, '罗城仫佬族自治县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2438, '环江毛南族自治县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2439, '巴马瑶族自治县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2440, '都安瑶族自治县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2441, '大化瑶族自治县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2442, '宜州市', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2443, '兴宾区', '0', 359, 0, '', 1, 0, '', NULL, 0),
(2444, '忻城县', '0', 359, 0, '', 1, 0, '', NULL, 0),
(2445, '象州县', '0', 359, 0, '', 1, 0, '', NULL, 0),
(2446, '武宣县', '0', 359, 0, '', 1, 0, '', NULL, 0),
(2447, '金秀瑶族自治县', '0', 359, 0, '', 1, 0, '', NULL, 0),
(2448, '合山市', '0', 359, 0, '', 1, 0, '', NULL, 0),
(2449, '江洲区', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2450, '扶绥县', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2451, '宁明县', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2452, '龙州县', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2453, '大新县', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2454, '天等县', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2455, '凭祥市', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2456, '秀英区', '0', 361, 0, '', 1, 0, '', NULL, 0),
(2457, '龙华区', '0', 361, 0, '', 1, 0, '', NULL, 0),
(2458, '琼山区', '0', 361, 0, '', 1, 0, '', NULL, 0),
(2459, '美兰区', '0', 361, 0, '', 1, 0, '', NULL, 0),
(2460, '锦江区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2461, '青羊区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2462, '金牛区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2463, '武侯区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2464, '成华区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2465, '龙泉驿区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2466, '青白江区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2467, '新都区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2468, '温江区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2469, '金堂县', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2470, '双流县', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2471, '郫县', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2472, '大邑县', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2473, '蒲江县', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2474, '新津县', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2475, '都江堰市', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2476, '彭州市', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2477, '邛崃市', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2478, '崇州市', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2479, '自流井区', '0', 383, 0, '', 1, 0, '', NULL, 0),
(2480, '贡井区', '0', 383, 0, '', 1, 0, '', NULL, 0),
(2481, '大安区', '0', 383, 0, '', 1, 0, '', NULL, 0),
(2482, '沿滩区', '0', 383, 0, '', 1, 0, '', NULL, 0),
(2483, '荣县', '0', 383, 0, '', 1, 0, '', NULL, 0),
(2484, '富顺县', '0', 383, 0, '', 1, 0, '', NULL, 0),
(2485, '东区', '0', 384, 0, '', 1, 0, '', NULL, 0),
(2486, '西区', '0', 384, 0, '', 1, 0, '', NULL, 0),
(2487, '仁和区', '0', 384, 0, '', 1, 0, '', NULL, 0),
(2488, '米易县', '0', 384, 0, '', 1, 0, '', NULL, 0),
(2489, '盐边县', '0', 384, 0, '', 1, 0, '', NULL, 0),
(2490, '江阳区', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2491, '纳溪区', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2492, '龙马潭区', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2493, '泸县', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2494, '合江县', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2495, '叙永县', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2496, '古蔺县', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2497, '旌阳区', '0', 386, 0, '', 1, 0, '', NULL, 0),
(2498, '中江县', '0', 386, 0, '', 1, 0, '', NULL, 0),
(2499, '罗江县', '0', 386, 0, '', 1, 0, '', NULL, 0),
(2500, '广汉市', '0', 386, 0, '', 1, 0, '', NULL, 0),
(2501, '什邡市', '0', 386, 0, '', 1, 0, '', NULL, 0),
(2502, '绵竹市', '0', 386, 0, '', 1, 0, '', NULL, 0),
(2503, '涪城区', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2504, '游仙区', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2505, '三台县', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2506, '盐亭县', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2507, '安县', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2508, '梓潼县', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2509, '北川羌族自治县', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2510, '平武县', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2511, '江油市', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2512, '市中区', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2513, '元坝区', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2514, '朝天区', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2515, '旺苍县', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2516, '青川县', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2517, '剑阁县', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2518, '苍溪县', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2519, '船山区', '0', 389, 0, '', 1, 0, '', NULL, 0),
(2520, '安居区', '0', 389, 0, '', 1, 0, '', NULL, 0),
(2521, '蓬溪县', '0', 389, 0, '', 1, 0, '', NULL, 0),
(2522, '射洪县', '0', 389, 0, '', 1, 0, '', NULL, 0),
(2523, '大英县', '0', 389, 0, '', 1, 0, '', NULL, 0),
(2524, '市中区', '0', 390, 0, '', 1, 0, '', NULL, 0),
(2525, '东兴区', '0', 390, 0, '', 1, 0, '', NULL, 0),
(2526, '威远县', '0', 390, 0, '', 1, 0, '', NULL, 0),
(2527, '资中县', '0', 390, 0, '', 1, 0, '', NULL, 0),
(2528, '隆昌县', '0', 390, 0, '', 1, 0, '', NULL, 0),
(2529, '市中区', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2530, '沙湾区', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2531, '五通桥区', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2532, '金口河区', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2533, '犍为县', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2534, '井研县', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2535, '夹江县', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2536, '沐川县', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2537, '峨边彝族自治县', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2538, '马边彝族自治县', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2539, '峨眉山市', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2540, '顺庆区', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2541, '高坪区', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2542, '嘉陵区', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2543, '南部县', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2544, '营山县', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2545, '蓬安县', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2546, '仪陇县', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2547, '西充县', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2548, '阆中市', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2549, '东坡区', '0', 393, 0, '', 1, 0, '', NULL, 0),
(2550, '仁寿县', '0', 393, 0, '', 1, 0, '', NULL, 0),
(2551, '彭山县', '0', 393, 0, '', 1, 0, '', NULL, 0),
(2552, '洪雅县', '0', 393, 0, '', 1, 0, '', NULL, 0),
(2553, '丹棱县', '0', 393, 0, '', 1, 0, '', NULL, 0),
(2554, '青神县', '0', 393, 0, '', 1, 0, '', NULL, 0),
(2555, '翠屏区', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2556, '宜宾县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2557, '南溪县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2558, '江安县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2559, '长宁县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2560, '高县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2561, '珙县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2562, '筠连县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2563, '兴文县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2564, '屏山县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2565, '广安区', '0', 395, 0, '', 1, 0, '', NULL, 0),
(2566, '岳池县', '0', 395, 0, '', 1, 0, '', NULL, 0),
(2567, '武胜县', '0', 395, 0, '', 1, 0, '', NULL, 0),
(2568, '邻水县', '0', 395, 0, '', 1, 0, '', NULL, 0),
(2569, '华蓥市', '0', 395, 0, '', 1, 0, '', NULL, 0),
(2570, '通川区', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2571, '达县', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2572, '宣汉县', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2573, '开江县', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2574, '大竹县', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2575, '渠县', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2576, '万源市', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2577, '雨城区', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2578, '名山县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2579, '荥经县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2580, '汉源县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2581, '石棉县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2582, '天全县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2583, '芦山县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2584, '宝兴县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2585, '巴州区', '0', 398, 0, '', 1, 0, '', NULL, 0),
(2586, '通江县', '0', 398, 0, '', 1, 0, '', NULL, 0),
(2587, '南江县', '0', 398, 0, '', 1, 0, '', NULL, 0),
(2588, '平昌县', '0', 398, 0, '', 1, 0, '', NULL, 0),
(2589, '雁江区', '0', 399, 0, '', 1, 0, '', NULL, 0),
(2590, '安岳县', '0', 399, 0, '', 1, 0, '', NULL, 0),
(2591, '乐至县', '0', 399, 0, '', 1, 0, '', NULL, 0),
(2592, '简阳市', '0', 399, 0, '', 1, 0, '', NULL, 0),
(2593, '汶川县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2594, '理县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2595, '茂县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2596, '松潘县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2597, '九寨沟县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2598, '金川县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2599, '小金县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2600, '黑水县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2601, '马尔康县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2602, '壤塘县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2603, '阿坝县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2604, '若尔盖县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2605, '红原县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2606, '康定县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2607, '泸定县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2608, '丹巴县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2609, '九龙县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2610, '雅江县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2611, '道孚县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2612, '炉霍县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2613, '甘孜县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2614, '新龙县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2615, '德格县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2616, '白玉县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2617, '石渠县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2618, '色达县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2619, '理塘县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2620, '巴塘县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2621, '乡城县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2622, '稻城县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2623, '得荣县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2624, '西昌市', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2625, '木里藏族自治县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2626, '盐源县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2627, '德昌县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2628, '会理县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2629, '会东县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2630, '宁南县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2631, '普格县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2632, '布拖县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2633, '金阳县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2634, '昭觉县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2635, '喜德县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2636, '冕宁县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2637, '越西县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2638, '甘洛县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2639, '美姑县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2640, '雷波县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2641, '南明区', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2642, '云岩区', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2643, '花溪区', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2644, '乌当区', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2645, '白云区', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2646, '小河区', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2647, '开阳县', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2648, '息烽县', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2649, '修文县', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2650, '清镇市', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2651, '钟山区', '0', 404, 0, '', 1, 0, '', NULL, 0),
(2652, '六枝特区', '0', 404, 0, '', 1, 0, '', NULL, 0),
(2653, '水城县', '0', 404, 0, '', 1, 0, '', NULL, 0),
(2654, '盘县', '0', 404, 0, '', 1, 0, '', NULL, 0),
(2655, '红花岗区', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2656, '汇川区', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2657, '遵义县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2658, '桐梓县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2659, '绥阳县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2660, '正安县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2661, '道真仡佬族苗族自治县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2662, '务川仡佬族苗族自治县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2663, '凤冈县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2664, '湄潭县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2665, '余庆县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2666, '习水县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2667, '赤水市', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2668, '仁怀市', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2669, '西秀区', '0', 406, 0, '', 1, 0, '', NULL, 0),
(2670, '平坝县', '0', 406, 0, '', 1, 0, '', NULL, 0),
(2671, '普定县', '0', 406, 0, '', 1, 0, '', NULL, 0),
(2672, '镇宁布依族苗族自治县', '0', 406, 0, '', 1, 0, '', NULL, 0),
(2673, '关岭布依族苗族自治县', '0', 406, 0, '', 1, 0, '', NULL, 0),
(2674, '紫云苗族布依族自治县', '0', 406, 0, '', 1, 0, '', NULL, 0),
(2675, '铜仁市', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2676, '江口县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2677, '玉屏侗族自治县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2678, '石阡县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2679, '思南县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2680, '印江土家族苗族自治县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2681, '德江县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2682, '沿河土家族自治县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2683, '松桃苗族自治县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2684, '万山特区', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2685, '兴义市', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2686, '兴仁县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2687, '普安县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2688, '晴隆县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2689, '贞丰县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2690, '望谟县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2691, '册亨县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2692, '安龙县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2693, '毕节市', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2694, '大方县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2695, '黔西县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2696, '金沙县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2697, '织金县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2698, '纳雍县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2699, '威宁彝族回族苗族自治县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2700, '赫章县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2701, '凯里市', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2702, '黄平县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2703, '施秉县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2704, '三穗县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2705, '镇远县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2706, '岑巩县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2707, '天柱县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2708, '锦屏县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2709, '剑河县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2710, '台江县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2711, '黎平县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2712, '榕江县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2713, '从江县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2714, '雷山县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2715, '麻江县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2716, '丹寨县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2717, '都匀市', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2718, '福泉市', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2719, '荔波县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2720, '贵定县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2721, '瓮安县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2722, '独山县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2723, '平塘县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2724, '罗甸县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2725, '长顺县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2726, '龙里县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2727, '惠水县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2728, '三都水族自治县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2729, '五华区', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2730, '盘龙区', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2731, '官渡区', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2732, '西山区', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2733, '东川区', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2734, '呈贡县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2735, '晋宁县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2736, '富民县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2737, '宜良县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2738, '石林彝族自治县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2739, '嵩明县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2740, '禄劝彝族苗族自治县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2741, '寻甸回族彝族自治县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2742, '安宁市', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2743, '麒麟区', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2744, '马龙县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2745, '陆良县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2746, '师宗县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2747, '罗平县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2748, '富源县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2749, '会泽县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2750, '沾益县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2751, '宣威市', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2752, '红塔区', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2753, '江川县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2754, '澄江县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2755, '通海县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2756, '华宁县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2757, '易门县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2758, '峨山彝族自治县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2759, '新平彝族傣族自治县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2760, '元江哈尼族彝族傣族自治县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2761, '隆阳区', '0', 415, 0, '', 1, 0, '', NULL, 0),
(2762, '施甸县', '0', 415, 0, '', 1, 0, '', NULL, 0),
(2763, '腾冲县', '0', 415, 0, '', 1, 0, '', NULL, 0),
(2764, '龙陵县', '0', 415, 0, '', 1, 0, '', NULL, 0),
(2765, '昌宁县', '0', 415, 0, '', 1, 0, '', NULL, 0),
(2766, '昭阳区', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2767, '鲁甸县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2768, '巧家县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2769, '盐津县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2770, '大关县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2771, '永善县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2772, '绥江县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2773, '镇雄县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2774, '彝良县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2775, '威信县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2776, '水富县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2777, '古城区', '0', 417, 0, '', 1, 0, '', NULL, 0),
(2778, '玉龙纳西族自治县', '0', 417, 0, '', 1, 0, '', NULL, 0),
(2779, '永胜县', '0', 417, 0, '', 1, 0, '', NULL, 0),
(2780, '华坪县', '0', 417, 0, '', 1, 0, '', NULL, 0),
(2781, '宁蒗彝族自治县', '0', 417, 0, '', 1, 0, '', NULL, 0),
(2782, '翠云区', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2783, '普洱哈尼族彝族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2784, '墨江哈尼族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2785, '景东彝族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2786, '景谷傣族彝族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2787, '镇沅彝族哈尼族拉祜族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2788, '江城哈尼族彝族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2789, '孟连傣族拉祜族佤族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2790, '澜沧拉祜族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2791, '西盟佤族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2792, '临翔区', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2793, '凤庆县', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2794, '云县', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2795, '永德县', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2796, '镇康县', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2797, '双江拉祜族佤族布朗族傣族自治县', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2798, '耿马傣族佤族自治县', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2799, '沧源佤族自治县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2800, '楚雄市', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2801, '双柏县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2802, '牟定县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2803, '南华县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2804, '姚安县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2805, '大姚县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2806, '永仁县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2807, '元谋县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2808, '武定县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2809, '禄丰县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2810, '个旧市', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2811, '开远市', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2812, '蒙自县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2813, '屏边苗族自治县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2814, '建水县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2815, '石屏县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2816, '弥勒县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2817, '泸西县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2818, '元阳县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2819, '红河县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2820, '金平苗族瑶族傣族自治县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2821, '绿春县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2822, '河口瑶族自治县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2823, '文山县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2824, '砚山县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2825, '西畴县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2826, '麻栗坡县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2827, '马关县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2828, '丘北县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2829, '广南县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2830, '富宁县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2831, '景洪市', '0', 423, 0, '', 1, 0, '', NULL, 0),
(2832, '勐海县', '0', 423, 0, '', 1, 0, '', NULL, 0),
(2833, '勐腊县', '0', 423, 0, '', 1, 0, '', NULL, 0),
(2834, '大理市', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2835, '漾濞彝族自治县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2836, '祥云县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2837, '宾川县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2838, '弥渡县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2839, '南涧彝族自治县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2840, '巍山彝族回族自治县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2841, '永平县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2842, '云龙县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2843, '洱源县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2844, '剑川县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2845, '鹤庆县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2846, '瑞丽市', '0', 425, 0, '', 1, 0, '', NULL, 0),
(2847, '潞西市', '0', 425, 0, '', 1, 0, '', NULL, 0),
(2848, '梁河县', '0', 425, 0, '', 1, 0, '', NULL, 0),
(2849, '盈江县', '0', 425, 0, '', 1, 0, '', NULL, 0),
(2850, '陇川县', '0', 425, 0, '', 1, 0, '', NULL, 0),
(2851, '泸水县', '0', 426, 0, '', 1, 0, '', NULL, 0),
(2852, '福贡县', '0', 426, 0, '', 1, 0, '', NULL, 0),
(2853, '贡山独龙族怒族自治县', '0', 426, 0, '', 1, 0, '', NULL, 0),
(2854, '兰坪白族普米族自治县', '0', 426, 0, '', 1, 0, '', NULL, 0),
(2855, '香格里拉县', '0', 427, 0, '', 1, 0, '', NULL, 0),
(2856, '德钦县', '0', 427, 0, '', 1, 0, '', NULL, 0),
(2857, '维西傈僳族自治县', '0', 427, 0, '', 1, 0, '', NULL, 0),
(2858, '城关区', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2859, '林周县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2860, '当雄县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2861, '尼木县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2862, '曲水县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2863, '堆龙德庆县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2864, '达孜县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2865, '墨竹工卡县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2866, '昌都县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2867, '江达县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2868, '贡觉县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2869, '类乌齐县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2870, '丁青县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2871, '察雅县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2872, '八宿县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2873, '左贡县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2874, '芒康县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2875, '洛隆县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2876, '边坝县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2877, '乃东县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2878, '扎囊县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2879, '贡嘎县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2880, '桑日县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2881, '琼结县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2882, '曲松县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2883, '措美县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2884, '洛扎县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2885, '加查县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2886, '隆子县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2887, '错那县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2888, '浪卡子县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2889, '日喀则市', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2890, '南木林县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2891, '江孜县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2892, '定日县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2893, '萨迦县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2894, '拉孜县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2895, '昂仁县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2896, '谢通门县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2897, '白朗县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2898, '仁布县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2899, '康马县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2900, '定结县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2901, '仲巴县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2902, '亚东县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2903, '吉隆县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2904, '聂拉木县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2905, '萨嘎县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2906, '岗巴县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2907, '那曲县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2908, '嘉黎县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2909, '比如县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2910, '聂荣县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2911, '安多县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2912, '申扎县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2913, '索县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2914, '班戈县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2915, '巴青县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2916, '尼玛县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2917, '普兰县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2918, '札达县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2919, '噶尔县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2920, '日土县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2921, '革吉县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2922, '改则县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2923, '措勤县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2924, '林芝县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2925, '工布江达县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2926, '米林县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2927, '墨脱县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2928, '波密县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2929, '察隅县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2930, '朗县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2931, '新城区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2932, '碑林区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2933, '莲湖区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2934, '灞桥区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2935, '未央区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2936, '雁塔区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2937, '阎良区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2938, '临潼区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2939, '长安区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2940, '蓝田县', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2941, '周至县', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2942, '户县', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2943, '高陵县', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2944, '王益区', '0', 436, 0, '', 1, 0, '', NULL, 0),
(2945, '印台区', '0', 436, 0, '', 1, 0, '', NULL, 0),
(2946, '耀州区', '0', 436, 0, '', 1, 0, '', NULL, 0),
(2947, '宜君县', '0', 436, 0, '', 1, 0, '', NULL, 0),
(2948, '渭滨区', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2949, '金台区', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2950, '陈仓区', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2951, '凤翔县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2952, '岐山县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2953, '扶风县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2954, '眉县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2955, '陇县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2956, '千阳县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2957, '麟游县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2958, '凤县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2959, '太白县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2960, '秦都区', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2961, '杨凌区', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2962, '渭城区', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2963, '三原县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2964, '泾阳县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2965, '乾县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2966, '礼泉县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2967, '永寿县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2968, '彬县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2969, '长武县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2970, '旬邑县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2971, '淳化县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2972, '武功县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2973, '兴平市', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2974, '临渭区', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2975, '华县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2976, '潼关县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2977, '大荔县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2978, '合阳县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2979, '澄城县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2980, '蒲城县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2981, '白水县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2982, '富平县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2983, '韩城市', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2984, '华阴市', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2985, '宝塔区', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2986, '延长县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2987, '延川县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2988, '子长县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2989, '安塞县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2990, '志丹县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2991, '吴起县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2992, '甘泉县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2993, '富县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2994, '洛川县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2995, '宜川县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2996, '黄龙县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2997, '黄陵县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2998, '汉台区', '0', 441, 0, '', 1, 0, '', NULL, 0),
(2999, '南郑县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3000, '城固县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3001, '洋县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3002, '西乡县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3003, '勉县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3004, '宁强县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3005, '略阳县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3006, '镇巴县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3007, '留坝县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3008, '佛坪县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3009, '榆阳区', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3010, '神木县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3011, '府谷县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3012, '横山县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3013, '靖边县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3014, '定边县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3015, '绥德县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3016, '米脂县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3017, '佳县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3018, '吴堡县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3019, '清涧县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3020, '子洲县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3021, '汉滨区', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3022, '汉阴县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3023, '石泉县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3024, '宁陕县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3025, '紫阳县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3026, '岚皋县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3027, '平利县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3028, '镇坪县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3029, '旬阳县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3030, '白河县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3031, '商州区', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3032, '洛南县', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3033, '丹凤县', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3034, '商南县', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3035, '山阳县', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3036, '镇安县', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3037, '柞水县', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3038, '城关区', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3039, '七里河区', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3040, '西固区', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3041, '安宁区', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3042, '红古区', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3043, '永登县', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3044, '皋兰县', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3045, '榆中县', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3046, '金川区', '0', 447, 0, '', 1, 0, '', NULL, 0),
(3047, '永昌县', '0', 447, 0, '', 1, 0, '', NULL, 0),
(3048, '白银区', '0', 448, 0, '', 1, 0, '', NULL, 0),
(3049, '平川区', '0', 448, 0, '', 1, 0, '', NULL, 0),
(3050, '靖远县', '0', 448, 0, '', 1, 0, '', NULL, 0),
(3051, '会宁县', '0', 448, 0, '', 1, 0, '', NULL, 0),
(3052, '景泰县', '0', 448, 0, '', 1, 0, '', NULL, 0),
(3053, '秦城区', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3054, '北道区', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3055, '清水县', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3056, '秦安县', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3057, '甘谷县', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3058, '武山县', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3059, '张家川回族自治县', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3060, '凉州区', '0', 450, 0, '', 1, 0, '', NULL, 0),
(3061, '民勤县', '0', 450, 0, '', 1, 0, '', NULL, 0),
(3062, '古浪县', '0', 450, 0, '', 1, 0, '', NULL, 0),
(3063, '天祝藏族自治县', '0', 450, 0, '', 1, 0, '', NULL, 0),
(3064, '甘州区', '0', 451, 0, '', 1, 0, '', NULL, 0),
(3065, '肃南裕固族自治县', '0', 451, 0, '', 1, 0, '', NULL, 0),
(3066, '民乐县', '0', 451, 0, '', 1, 0, '', NULL, 0),
(3067, '临泽县', '0', 451, 0, '', 1, 0, '', NULL, 0),
(3068, '高台县', '0', 451, 0, '', 1, 0, '', NULL, 0),
(3069, '山丹县', '0', 451, 0, '', 1, 0, '', NULL, 0),
(3070, '崆峒区', '0', 452, 0, '', 1, 0, '', NULL, 0),
(3071, '泾川县', '0', 452, 0, '', 1, 0, '', NULL, 0),
(3072, '灵台县', '0', 452, 0, '', 1, 0, '', NULL, 0),
(3073, '崇信县', '0', 452, 0, '', 1, 0, '', NULL, 0);
INSERT INTO `v9_linkage` (`linkageid`, `name`, `style`, `parentid`, `child`, `arrchildid`, `keyid`, `listorder`, `description`, `setting`, `siteid`) VALUES
(3074, '华亭县', '0', 452, 0, '', 1, 0, '', NULL, 0),
(3075, '庄浪县', '0', 452, 0, '', 1, 0, '', NULL, 0),
(3076, '静宁县', '0', 452, 0, '', 1, 0, '', NULL, 0),
(3077, '肃州区', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3078, '金塔县', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3079, '瓜州县', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3080, '肃北蒙古族自治县', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3081, '阿克塞哈萨克族自治县', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3082, '玉门市', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3083, '敦煌市', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3084, '西峰区', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3085, '庆城县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3086, '环县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3087, '华池县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3088, '合水县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3089, '正宁县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3090, '宁县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3091, '镇原县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3092, '安定区', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3093, '通渭县', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3094, '陇西县', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3095, '渭源县', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3096, '临洮县', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3097, '漳县', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3098, '岷县', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3099, '武都区', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3100, '成县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3101, '文县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3102, '宕昌县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3103, '康县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3104, '西和县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3105, '礼县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3106, '徽县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3107, '两当县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3108, '临夏市', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3109, '临夏县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3110, '康乐县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3111, '永靖县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3112, '广河县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3113, '和政县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3114, '东乡族自治县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3115, '积石山保安族东乡族撒拉族自治县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3116, '合作市', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3117, '临潭县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3118, '卓尼县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3119, '舟曲县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3120, '迭部县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3121, '玛曲县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3122, '碌曲县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3123, '夏河县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3124, '城东区', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3125, '城中区', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3126, '城西区', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3127, '城北区', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3128, '大通回族土族自治县', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3129, '湟中县', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3130, '湟源县', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3131, '平安县', '0', 460, 0, '', 1, 0, '', NULL, 0),
(3132, '民和回族土族自治县', '0', 460, 0, '', 1, 0, '', NULL, 0),
(3133, '乐都县', '0', 460, 0, '', 1, 0, '', NULL, 0),
(3134, '互助土族自治县', '0', 460, 0, '', 1, 0, '', NULL, 0),
(3135, '化隆回族自治县', '0', 460, 0, '', 1, 0, '', NULL, 0),
(3136, '循化撒拉族自治县', '0', 460, 0, '', 1, 0, '', NULL, 0),
(3137, '门源回族自治县', '0', 461, 0, '', 1, 0, '', NULL, 0),
(3138, '祁连县', '0', 461, 0, '', 1, 0, '', NULL, 0),
(3139, '海晏县', '0', 461, 0, '', 1, 0, '', NULL, 0),
(3140, '刚察县', '0', 461, 0, '', 1, 0, '', NULL, 0),
(3141, '同仁县', '0', 462, 0, '', 1, 0, '', NULL, 0),
(3142, '尖扎县', '0', 462, 0, '', 1, 0, '', NULL, 0),
(3143, '泽库县', '0', 462, 0, '', 1, 0, '', NULL, 0),
(3144, '河南蒙古族自治县', '0', 462, 0, '', 1, 0, '', NULL, 0),
(3145, '共和县', '0', 463, 0, '', 1, 0, '', NULL, 0),
(3146, '同德县', '0', 463, 0, '', 1, 0, '', NULL, 0),
(3147, '贵德县', '0', 463, 0, '', 1, 0, '', NULL, 0),
(3148, '兴海县', '0', 463, 0, '', 1, 0, '', NULL, 0),
(3149, '贵南县', '0', 463, 0, '', 1, 0, '', NULL, 0),
(3150, '玛沁县', '0', 464, 0, '', 1, 0, '', NULL, 0),
(3151, '班玛县', '0', 464, 0, '', 1, 0, '', NULL, 0),
(3152, '甘德县', '0', 464, 0, '', 1, 0, '', NULL, 0),
(3153, '达日县', '0', 464, 0, '', 1, 0, '', NULL, 0),
(3154, '久治县', '0', 464, 0, '', 1, 0, '', NULL, 0),
(3155, '玛多县', '0', 464, 0, '', 1, 0, '', NULL, 0),
(3156, '玉树县', '0', 465, 0, '', 1, 0, '', NULL, 0),
(3157, '杂多县', '0', 465, 0, '', 1, 0, '', NULL, 0),
(3158, '称多县', '0', 465, 0, '', 1, 0, '', NULL, 0),
(3159, '治多县', '0', 465, 0, '', 1, 0, '', NULL, 0),
(3160, '囊谦县', '0', 465, 0, '', 1, 0, '', NULL, 0),
(3161, '曲麻莱县', '0', 465, 0, '', 1, 0, '', NULL, 0),
(3162, '格尔木市', '0', 466, 0, '', 1, 0, '', NULL, 0),
(3163, '德令哈市', '0', 466, 0, '', 1, 0, '', NULL, 0),
(3164, '乌兰县', '0', 466, 0, '', 1, 0, '', NULL, 0),
(3165, '都兰县', '0', 466, 0, '', 1, 0, '', NULL, 0),
(3166, '天峻县', '0', 466, 0, '', 1, 0, '', NULL, 0),
(3167, '兴庆区', '0', 467, 0, '', 1, 0, '', NULL, 0),
(3168, '西夏区', '0', 467, 0, '', 1, 0, '', NULL, 0),
(3169, '金凤区', '0', 467, 0, '', 1, 0, '', NULL, 0),
(3170, '永宁县', '0', 467, 0, '', 1, 0, '', NULL, 0),
(3171, '贺兰县', '0', 467, 0, '', 1, 0, '', NULL, 0),
(3172, '灵武市', '0', 467, 0, '', 1, 0, '', NULL, 0),
(3173, '大武口区', '0', 468, 0, '', 1, 0, '', NULL, 0),
(3174, '惠农区', '0', 468, 0, '', 1, 0, '', NULL, 0),
(3175, '平罗县', '0', 468, 0, '', 1, 0, '', NULL, 0),
(3176, '利通区', '0', 469, 0, '', 1, 0, '', NULL, 0),
(3177, '盐池县', '0', 469, 0, '', 1, 0, '', NULL, 0),
(3178, '同心县', '0', 469, 0, '', 1, 0, '', NULL, 0),
(3179, '青铜峡市', '0', 469, 0, '', 1, 0, '', NULL, 0),
(3180, '原州区', '0', 470, 0, '', 1, 0, '', NULL, 0),
(3181, '西吉县', '0', 470, 0, '', 1, 0, '', NULL, 0),
(3182, '隆德县', '0', 470, 0, '', 1, 0, '', NULL, 0),
(3183, '泾源县', '0', 470, 0, '', 1, 0, '', NULL, 0),
(3184, '彭阳县', '0', 470, 0, '', 1, 0, '', NULL, 0),
(3185, '沙坡头区', '0', 471, 0, '', 1, 0, '', NULL, 0),
(3186, '中宁县', '0', 471, 0, '', 1, 0, '', NULL, 0),
(3187, '海原县', '0', 471, 0, '', 1, 0, '', NULL, 0),
(3188, '天山区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3189, '沙依巴克区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3190, '新市区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3191, '水磨沟区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3192, '头屯河区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3193, '达坂城区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3194, '东山区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3195, '乌鲁木齐县', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3196, '独山子区', '0', 473, 0, '', 1, 0, '', NULL, 0),
(3197, '克拉玛依区', '0', 473, 0, '', 1, 0, '', NULL, 0),
(3198, '白碱滩区', '0', 473, 0, '', 1, 0, '', NULL, 0),
(3199, '乌尔禾区', '0', 473, 0, '', 1, 0, '', NULL, 0),
(3200, '吐鲁番市', '0', 474, 0, '', 1, 0, '', NULL, 0),
(3201, '鄯善县', '0', 474, 0, '', 1, 0, '', NULL, 0),
(3202, '托克逊县', '0', 474, 0, '', 1, 0, '', NULL, 0),
(3203, '哈密市', '0', 475, 0, '', 1, 0, '', NULL, 0),
(3204, '巴里坤哈萨克自治县', '0', 475, 0, '', 1, 0, '', NULL, 0),
(3205, '伊吾县', '0', 475, 0, '', 1, 0, '', NULL, 0),
(3206, '昌吉市', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3207, '阜康市', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3208, '米泉市', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3209, '呼图壁县', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3210, '玛纳斯县', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3211, '奇台县', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3212, '吉木萨尔县', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3213, '木垒哈萨克自治县', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3214, '博乐市', '0', 477, 0, '', 1, 0, '', NULL, 0),
(3215, '精河县', '0', 477, 0, '', 1, 0, '', NULL, 0),
(3216, '温泉县', '0', 477, 0, '', 1, 0, '', NULL, 0),
(3217, '库尔勒市', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3218, '轮台县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3219, '尉犁县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3220, '若羌县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3221, '且末县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3222, '焉耆回族自治县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3223, '和静县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3224, '和硕县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3225, '博湖县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3226, '阿克苏市', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3227, '温宿县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3228, '库车县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3229, '沙雅县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3230, '新和县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3231, '拜城县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3232, '乌什县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3233, '阿瓦提县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3234, '柯坪县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3235, '阿图什市', '0', 480, 0, '', 1, 0, '', NULL, 0),
(3236, '阿克陶县', '0', 480, 0, '', 1, 0, '', NULL, 0),
(3237, '阿合奇县', '0', 480, 0, '', 1, 0, '', NULL, 0),
(3238, '乌恰县', '0', 480, 0, '', 1, 0, '', NULL, 0),
(3239, '喀什市', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3240, '疏附县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3241, '疏勒县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3242, '英吉沙县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3243, '泽普县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3244, '莎车县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3245, '叶城县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3246, '麦盖提县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3247, '岳普湖县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3248, '伽师县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3249, '巴楚县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3250, '塔什库尔干塔吉克自治县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3251, '和田市', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3252, '和田县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3253, '墨玉县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3254, '皮山县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3255, '洛浦县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3256, '策勒县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3257, '于田县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3258, '民丰县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3259, '伊宁市', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3260, '奎屯市', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3261, '伊宁县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3262, '察布查尔锡伯自治县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3263, '霍城县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3264, '巩留县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3265, '新源县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3266, '昭苏县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3267, '特克斯县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3268, '尼勒克县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3269, '塔城市', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3270, '乌苏市', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3271, '额敏县', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3272, '沙湾县', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3273, '托里县', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3274, '裕民县', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3275, '和布克赛尔蒙古自治县', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3276, '阿勒泰市', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3277, '布尔津县', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3278, '富蕴县', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3279, '福海县', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3280, '哈巴河县', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3281, '青河县', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3282, '吉木乃县', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3358, '钓鱼岛', '', 0, 0, '', 1, 0, '', NULL, 0),
(3359, '钓鱼岛', '', 3358, 0, '', 1, 0, '', NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_log`
--

CREATE TABLE `v9_log` (
  `logid` int(10) UNSIGNED NOT NULL,
  `field` varchar(15) NOT NULL,
  `value` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `module` varchar(15) NOT NULL,
  `file` varchar(20) NOT NULL,
  `action` varchar(20) NOT NULL,
  `querystring` varchar(255) NOT NULL,
  `data` mediumtext NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_log`
--

INSERT INTO `v9_log` (`logid`, `field`, `value`, `module`, `file`, `action`, `querystring`, `data`, `userid`, `username`, `ip`, `time`) VALUES
(1, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, '', '', '2017-11-25 14:29:35'),
(2, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, '', '', '2017-11-25 14:30:34'),
(3, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 14:30:50'),
(4, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'baile', '', '2017-11-25 14:38:45'),
(5, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'baile', '', '2017-11-25 14:39:35'),
(6, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 14:39:51'),
(7, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 14:40:16'),
(8, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 14:40:23'),
(9, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 14:40:33'),
(10, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 14:41:43'),
(11, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 14:41:59'),
(12, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'baile', '', '2017-11-25 14:54:59'),
(13, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'baile', '', '2017-11-25 14:55:02'),
(14, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'baile', '', '2017-11-25 14:55:08'),
(15, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'baile', '', '2017-11-25 14:55:12'),
(16, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'baile', '', '2017-11-25 14:55:16'),
(17, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'baile', '', '2017-11-25 14:55:19'),
(18, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'baile', '', '2017-11-25 14:55:23'),
(19, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'baile', '', '2017-11-25 15:00:35'),
(20, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'baile', '', '2017-11-25 15:01:07'),
(21, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'baile', '', '2017-11-25 15:01:31'),
(22, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'baile', '', '2017-11-25 15:02:52'),
(23, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'baile', '', '2017-11-25 15:03:09'),
(24, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'baile', '', '2017-11-25 15:03:18'),
(25, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'baile', '', '2017-11-25 15:29:57'),
(26, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'baile', '', '2017-11-25 15:30:02'),
(27, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'baile', '', '2017-11-25 15:30:42'),
(28, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'baile', '', '2017-11-25 15:30:44'),
(29, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'baile', '', '2017-11-25 15:31:24'),
(30, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'baile', '', '2017-11-25 15:31:25'),
(31, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'baile', '', '2017-11-25 15:32:02'),
(32, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'baile', '', '2017-11-25 15:32:03'),
(33, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'baile', '', '2017-11-25 15:33:00'),
(34, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'baile', '', '2017-11-25 15:33:14'),
(35, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'baile', '', '2017-11-25 15:33:39'),
(36, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'baile', '', '2017-11-25 15:37:39'),
(37, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'baile', '', '2017-11-25 15:37:46'),
(38, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'baile', '', '2017-11-25 15:37:56'),
(39, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'baile', '', '2017-11-25 15:38:01'),
(40, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'baile', '', '2017-11-25 15:38:10'),
(41, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'baile', '', '2017-11-25 15:38:38'),
(42, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 15:39:22'),
(43, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 15:39:38'),
(44, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 15:40:32'),
(45, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 15:44:58'),
(46, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 15:45:07'),
(47, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 15:48:48'),
(48, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 15:48:53'),
(49, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 15:51:56'),
(50, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 15:52:13'),
(51, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 15:57:52'),
(52, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 15:58:15'),
(53, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 15:58:44'),
(54, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 15:59:45'),
(55, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 16:00:01'),
(56, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 16:12:08'),
(57, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 16:12:30'),
(58, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 16:13:26'),
(59, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 16:15:22'),
(60, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 16:21:05'),
(61, '', 0, 'admin', '', 'database', '?m=admin&c=database&a=export', '', 1, 'baile', '', '2017-11-25 16:23:38'),
(62, '', 0, 'admin', '', 'database', '?m=admin&c=database&a=export', '', 1, 'baile', '', '2017-11-25 16:23:41'),
(63, '', 0, 'admin', '', 'database', '?m=admin&c=database&a=export', '', 1, 'baile', '', '2017-11-25 16:23:45'),
(64, '', 0, 'admin', '', 'database', '?m=admin&c=database&a=export', '', 1, 'baile', '', '2017-11-25 16:23:48'),
(65, '', 0, 'admin', '', 'database', '?m=admin&c=database&a=import', '', 1, 'baile', '', '2017-11-25 16:23:49'),
(66, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 16:28:05'),
(67, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 16:30:24'),
(68, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 16:31:02'),
(69, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 16:31:22'),
(70, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 16:45:23'),
(71, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 16:45:53'),
(72, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 16:45:58'),
(73, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 16:46:09'),
(74, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 16:46:27'),
(75, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 16:46:59'),
(76, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 16:47:24'),
(77, '', 0, 'content', '', 'content', '?m=content&c=content&a=delete', '', 1, 'baile', '', '2017-11-25 16:47:35'),
(78, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 16:47:40'),
(79, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 16:48:37'),
(80, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 16:50:52'),
(81, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 16:52:30'),
(82, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 16:53:11'),
(83, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 16:53:17'),
(84, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 16:53:20'),
(85, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 16:53:57'),
(86, '', 0, 'content', '', 'content', '?m=content&c=content&a=listorder', '', 1, 'baile', '', '2017-11-25 17:03:52'),
(87, '', 0, 'content', '', 'content', '?m=content&c=content&a=listorder', '', 1, 'baile', '', '2017-11-25 17:04:28'),
(88, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-25 18:18:03'),
(89, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-25 18:18:13'),
(90, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-25 18:18:15'),
(91, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-25 18:18:23'),
(92, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-25 18:18:24'),
(93, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-25 18:18:30'),
(94, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-25 18:18:32'),
(95, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-25 18:18:52'),
(96, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 18:32:46'),
(97, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-25 18:32:50'),
(98, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 19:51:12'),
(99, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 19:51:13'),
(100, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-25 19:51:32'),
(101, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-25 20:22:52'),
(102, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-25 20:23:01'),
(103, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-25 20:23:50'),
(104, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-26 11:38:32'),
(105, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-26 11:39:51'),
(106, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-26 11:40:10'),
(107, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 12:44:35'),
(108, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 12:46:04'),
(109, '', 0, 'content', '', 'content', '?m=content&c=content&a=delete', '', 1, 'baile', '', '2017-11-26 12:46:20'),
(110, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 12:46:31'),
(111, '', 0, 'content', '', 'content', '?m=content&c=content&a=delete', '', 1, 'baile', '', '2017-11-26 12:46:44'),
(112, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 12:46:48'),
(113, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 12:49:55'),
(114, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 12:50:03'),
(115, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 12:50:31'),
(116, '', 0, 'content', '', 'content', '?m=content&c=content&a=delete', '', 1, 'baile', '', '2017-11-26 12:51:49'),
(117, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 12:51:53'),
(118, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 12:53:28'),
(119, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 12:53:33'),
(120, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 12:56:14'),
(121, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 12:56:18'),
(122, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 12:56:37'),
(123, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 12:56:40'),
(124, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 12:57:24'),
(125, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 12:57:28'),
(126, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 12:58:07'),
(127, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 12:58:10'),
(128, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 13:00:51'),
(129, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:00:57'),
(130, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:01:39'),
(131, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:01:54'),
(132, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:01:57'),
(133, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:02:28'),
(134, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:03:31'),
(135, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:03:45'),
(136, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:04:28'),
(137, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:04:31'),
(138, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:04:40'),
(139, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:04:43'),
(140, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:05:04'),
(141, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:06:02'),
(142, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:06:11'),
(143, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:06:48'),
(144, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:07:42'),
(145, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:07:46'),
(146, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:07:49'),
(147, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:10:07'),
(148, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:10:25'),
(149, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:10:38'),
(150, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:13:02'),
(151, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:13:19'),
(152, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:13:50'),
(153, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:14:17'),
(154, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:14:40'),
(155, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:15:32'),
(156, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:15:32'),
(157, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:17:05'),
(158, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:17:11'),
(159, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:18:19'),
(160, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:18:19'),
(161, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:18:56'),
(162, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:18:56'),
(163, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:19:39'),
(164, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:19:48'),
(165, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:19:49'),
(166, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:20:27'),
(167, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:20:27'),
(168, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:24:28'),
(169, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:24:32'),
(170, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:25:02'),
(171, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:26:15'),
(172, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:26:36'),
(173, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:27:11'),
(174, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:27:57'),
(175, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:28:28'),
(176, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:28:59'),
(177, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:29:23'),
(178, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:29:26'),
(179, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:29:39'),
(180, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:29:48'),
(181, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:29:52'),
(182, '', 0, 'content', '', 'content', '?m=content&c=content&a=delete', '', 1, 'baile', '', '2017-11-26 13:30:25'),
(183, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:30:28'),
(184, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:30:28'),
(185, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:32:29'),
(186, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:33:06'),
(187, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:33:06'),
(188, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:34:10'),
(189, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:35:28'),
(190, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:36:24'),
(191, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:36:30'),
(192, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:37:03'),
(193, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 1, 'baile', '', '2017-11-26 13:39:57'),
(194, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 1, 'baile', '', '2017-11-26 13:40:11'),
(195, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:40:24'),
(196, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:40:40'),
(197, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:40:46'),
(198, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:40:50'),
(199, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 13:40:55'),
(200, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:41:21'),
(201, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:41:29'),
(202, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:41:33'),
(203, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:42:15'),
(204, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 13:42:20'),
(205, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 13:42:57'),
(206, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 13:43:46'),
(207, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 13:44:23'),
(208, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 13:44:39'),
(209, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 13:45:13'),
(210, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 13:45:26'),
(211, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 13:46:00'),
(212, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 13:46:07'),
(213, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 13:46:56'),
(214, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 13:47:04'),
(215, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 13:47:33'),
(216, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 13:47:42'),
(217, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 13:48:05'),
(218, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 13:48:14'),
(219, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 13:49:11'),
(220, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:49:24'),
(221, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:49:29'),
(222, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:50:06'),
(223, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:50:11'),
(224, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:50:24'),
(225, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:50:34'),
(226, '', 0, 'content', '', 'content', '?m=content&c=content&a=listorder', '', 1, 'baile', '', '2017-11-26 13:51:08'),
(227, '', 0, 'content', '', 'content', '?m=content&c=content&a=remove', '', 1, 'baile', '', '2017-11-26 13:51:16'),
(228, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:52:17'),
(229, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:52:44'),
(230, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:53:48'),
(231, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:54:44'),
(232, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:55:05'),
(233, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:55:10'),
(234, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:55:14'),
(235, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:55:17'),
(236, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:55:22'),
(237, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:55:25'),
(238, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:55:29'),
(239, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:55:33'),
(240, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:55:36'),
(241, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:55:40'),
(242, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:55:47'),
(243, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:55:50'),
(244, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:55:55'),
(245, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:55:58'),
(246, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:56:01'),
(247, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:56:04'),
(248, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:56:07'),
(249, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:56:11'),
(250, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:56:45'),
(251, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:56:50'),
(252, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:57:10'),
(253, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:57:14'),
(254, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:57:19'),
(255, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:57:28'),
(256, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:57:32'),
(257, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:57:35'),
(258, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:57:39'),
(259, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:57:46'),
(260, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:58:09'),
(261, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:58:14'),
(262, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:58:28'),
(263, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:58:45'),
(264, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:58:49'),
(265, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:59:05'),
(266, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:59:08'),
(267, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:59:18'),
(268, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:59:22'),
(269, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 13:59:30'),
(270, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:00:01'),
(271, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:04:42'),
(272, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:06:19'),
(273, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:06:30'),
(274, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:07:01'),
(275, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:07:20'),
(276, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:08:15'),
(277, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:09:53'),
(278, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:10:31'),
(279, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:10:48'),
(280, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:12:22'),
(281, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:12:57'),
(282, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:13:53'),
(283, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:14:08'),
(284, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:14:15'),
(285, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:14:40'),
(286, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:15:20'),
(287, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:15:33'),
(288, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:15:40'),
(289, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:16:29'),
(290, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:16:42'),
(291, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:16:48'),
(292, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:17:32'),
(293, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:17:37'),
(294, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:18:16'),
(295, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:18:19'),
(296, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:18:42'),
(297, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:18:46'),
(298, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:19:12'),
(299, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:20:11'),
(300, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:20:21'),
(301, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:20:50'),
(302, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:20:57'),
(303, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:21:32'),
(304, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:21:56'),
(305, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:22:17'),
(306, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:22:34'),
(307, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:22:49'),
(308, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:23:03'),
(309, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:23:20'),
(310, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:38:48'),
(311, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:39:18'),
(312, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:49:51'),
(313, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:50:03'),
(314, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:50:04'),
(315, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:50:16'),
(316, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:50:33'),
(317, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:50:34'),
(318, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:51:06'),
(319, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:51:32'),
(320, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:51:33'),
(321, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:53:44'),
(322, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:53:49'),
(323, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:54:32'),
(324, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:54:33'),
(325, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:55:12'),
(326, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:56:24'),
(327, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:57:55'),
(328, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 14:59:20'),
(329, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:02:32'),
(330, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:04:21'),
(331, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:05:06'),
(332, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:05:54'),
(333, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:05:54'),
(334, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:06:00'),
(335, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:06:09'),
(336, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:06:09'),
(337, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:07:08'),
(338, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:09:01'),
(339, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:12:57'),
(340, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:13:01'),
(341, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:13:39'),
(342, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:14:25'),
(343, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:14:46'),
(344, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:15:46'),
(345, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:16:03'),
(346, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:16:25'),
(347, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:16:57'),
(348, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:17:08'),
(349, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:17:27'),
(350, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:17:47'),
(351, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:18:09'),
(352, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:18:09'),
(353, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:18:58'),
(354, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:19:17'),
(355, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:19:17'),
(356, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:20:04'),
(357, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:20:17'),
(358, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:20:18'),
(359, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:20:49'),
(360, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:21:03'),
(361, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:21:44'),
(362, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:22:19'),
(363, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:22:19'),
(364, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:22:25'),
(365, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:22:47'),
(366, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:23:30'),
(367, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:25:46'),
(368, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:26:04'),
(369, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:26:15'),
(370, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:26:19'),
(371, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:26:29'),
(372, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:26:34'),
(373, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:26:42'),
(374, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:26:46'),
(375, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:26:51'),
(376, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:26:55'),
(377, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:27:03'),
(378, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:27:20'),
(379, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:27:25'),
(380, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:27:28'),
(381, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:27:32'),
(382, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:27:36'),
(383, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:27:40'),
(384, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:27:43'),
(385, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:27:49'),
(386, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:27:52'),
(387, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:27:56'),
(388, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:28:00'),
(389, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:28:07'),
(390, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:28:10'),
(391, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:28:18'),
(392, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:28:22'),
(393, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:28:36'),
(394, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:28:39'),
(395, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:28:49'),
(396, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:28:52'),
(397, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:29:00'),
(398, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:29:13'),
(399, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:29:20'),
(400, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:29:23'),
(401, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:29:30'),
(402, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:29:33'),
(403, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:29:38'),
(404, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:29:55'),
(405, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:30:10'),
(406, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:54:13'),
(407, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 15:54:21'),
(408, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:01:04'),
(409, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:01:05'),
(410, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:02:14'),
(411, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:03:06'),
(412, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:03:06'),
(413, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:04:25'),
(414, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:04:26'),
(415, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:06:44'),
(416, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:07:10'),
(417, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:07:11'),
(418, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:08:18'),
(419, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:08:40'),
(420, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:08:40'),
(421, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:14:49'),
(422, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:15:24'),
(423, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:15:24'),
(424, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:16:44'),
(425, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:17:03'),
(426, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:17:03'),
(427, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:18:22'),
(428, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:19:26'),
(429, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:19:26'),
(430, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:19:58'),
(431, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:20:26'),
(432, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:20:26'),
(433, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:23:39'),
(434, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:39:09'),
(435, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:39:09'),
(436, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:39:45'),
(437, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:40:09'),
(438, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:40:09'),
(439, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:40:26'),
(440, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:44:55'),
(441, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:44:55'),
(442, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:45:27'),
(443, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:55:53'),
(444, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:55:54'),
(445, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:56:45'),
(446, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:57:11'),
(447, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:57:11'),
(448, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 16:57:18');
INSERT INTO `v9_log` (`logid`, `field`, `value`, `module`, `file`, `action`, `querystring`, `data`, `userid`, `username`, `ip`, `time`) VALUES
(449, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-26 17:13:52'),
(450, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-26 17:14:06'),
(451, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-26 17:14:07'),
(452, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-26 17:14:22'),
(453, '', 0, 'pay', '', 'payment', '?m=pay&c=payment&a=pay_list', '', 1, 'baile', '', '2017-11-26 17:14:51'),
(454, '', 0, 'collection', '', 'node', '?m=collection&c=node&a=manage', '', 1, 'baile', '', '2017-11-26 17:21:22'),
(455, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=category', '', 1, 'baile', '', '2017-11-26 17:21:23'),
(456, '', 0, 'content', '', 'content', '?m=content&c=content&a=clear_data', '', 1, 'baile', '', '2017-11-26 17:21:26'),
(457, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-26 21:01:20'),
(458, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-26 21:01:42'),
(459, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:01:59'),
(460, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:02:01'),
(461, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:05:48'),
(462, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:06:09'),
(463, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:06:10'),
(464, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:07:03'),
(465, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:07:21'),
(466, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:07:21'),
(467, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:08:16'),
(468, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:27:16'),
(469, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:27:16'),
(470, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:27:26'),
(471, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:29:55'),
(472, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:30:06'),
(473, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:30:32'),
(474, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:30:33'),
(475, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:30:40'),
(476, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:31:16'),
(477, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:31:17'),
(478, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:34:08'),
(479, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:34:41'),
(480, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:36:56'),
(481, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:37:18'),
(482, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:41:13'),
(483, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:41:38'),
(484, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:42:53'),
(485, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:43:25'),
(486, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:44:19'),
(487, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:44:53'),
(488, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:45:18'),
(489, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:45:33'),
(490, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:45:57'),
(491, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:46:56'),
(492, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:47:51'),
(493, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:48:54'),
(494, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:49:17'),
(495, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:50:24'),
(496, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:51:59'),
(497, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:52:18'),
(498, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:52:30'),
(499, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:52:34'),
(500, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:52:38'),
(501, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 21:56:15'),
(502, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 21:56:30'),
(503, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:57:11'),
(504, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 21:57:40'),
(505, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 21:58:21'),
(506, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 21:58:52'),
(507, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 22:00:08'),
(508, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 22:00:18'),
(509, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 22:00:52'),
(510, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 22:01:09'),
(511, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:01:40'),
(512, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:02:44'),
(513, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:04:24'),
(514, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:04:34'),
(515, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:04:37'),
(516, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:04:43'),
(517, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:06:41'),
(518, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:06:41'),
(519, '', 0, 'content', '', 'content', '?m=content&c=content&a=delete', '', 1, 'baile', '', '2017-11-26 22:06:53'),
(520, '', 0, 'content', '', 'content', '?m=content&c=content&a=listorder', '', 1, 'baile', '', '2017-11-26 22:07:15'),
(521, '', 0, 'content', '', 'content', '?m=content&c=content&a=listorder', '', 1, 'baile', '', '2017-11-26 22:07:29'),
(522, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 22:07:34'),
(523, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 22:07:50'),
(524, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:09:13'),
(525, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:09:25'),
(526, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:10:14'),
(527, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:10:14'),
(528, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:11:01'),
(529, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:11:37'),
(530, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:12:00'),
(531, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:12:00'),
(532, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:13:03'),
(533, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:13:04'),
(534, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:13:44'),
(535, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:15:01'),
(536, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:17:18'),
(537, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:17:19'),
(538, '', 0, 'content', '', 'content', '?m=content&c=content&a=delete', '', 1, 'baile', '', '2017-11-26 22:17:40'),
(539, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 22:17:42'),
(540, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:18:29'),
(541, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 22:18:33'),
(542, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 22:19:10'),
(543, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 22:19:38'),
(544, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 22:20:06'),
(545, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 22:20:23'),
(546, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:21:22'),
(547, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:22:19'),
(548, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 22:24:29'),
(549, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 22:24:38'),
(550, '', 0, 'content', '', 'content', '?m=content&c=content&a=delete', '', 1, 'baile', '', '2017-11-26 22:25:11'),
(551, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 22:31:51'),
(552, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-26 22:32:07'),
(553, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:32:22'),
(554, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:32:45'),
(555, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:33:04'),
(556, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:33:05'),
(557, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-26 22:33:26'),
(558, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-27 12:20:05'),
(559, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-27 12:20:29'),
(560, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 12:21:05'),
(561, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 12:21:22'),
(562, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 12:48:48'),
(563, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 12:49:08'),
(564, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 12:49:09'),
(565, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 12:51:04'),
(566, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 12:51:05'),
(567, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 12:51:45'),
(568, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 12:53:28'),
(569, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 12:54:23'),
(570, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 12:54:25'),
(571, '', 0, 'member', '', 'member_verify', '?m=member&c=member_verify&a=manage', '', 1, 'baile', '', '2017-11-27 12:55:59'),
(572, '', 0, 'member', '', 'member', '?m=member&c=member&a=manage', '', 1, 'baile', '', '2017-11-27 12:56:00'),
(573, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 12:56:21'),
(574, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 12:56:39'),
(575, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 12:57:05'),
(576, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 12:59:48'),
(577, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 12:59:49'),
(578, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 13:00:06'),
(579, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-27 16:46:09'),
(580, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-27 16:46:35'),
(581, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 16:46:51'),
(582, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 16:47:14'),
(583, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 16:47:16'),
(584, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 16:48:04'),
(585, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 16:48:05'),
(586, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 16:48:24'),
(587, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 16:48:24'),
(588, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 16:48:41'),
(589, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 16:48:45'),
(590, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 16:48:46'),
(591, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:06:41'),
(592, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:06:42'),
(593, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:07:06'),
(594, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:07:18'),
(595, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:07:39'),
(596, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 17:07:43'),
(597, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 17:08:10'),
(598, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 17:08:39'),
(599, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 17:08:59'),
(600, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 17:09:03'),
(601, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 17:09:18'),
(602, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:09:29'),
(603, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:09:44'),
(604, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:09:47'),
(605, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:09:48'),
(606, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:10:07'),
(607, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:10:47'),
(608, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:11:27'),
(609, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:11:32'),
(610, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:11:46'),
(611, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:12:06'),
(612, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:12:20'),
(613, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:12:24'),
(614, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:12:44'),
(615, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:12:48'),
(616, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:12:49'),
(617, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:12:58'),
(618, '', 0, 'content', '', 'content', '?m=content&c=content&a=listorder', '', 1, 'baile', '', '2017-11-27 17:16:35'),
(619, '', 0, 'content', '', 'content', '?m=content&c=content&a=listorder', '', 1, 'baile', '', '2017-11-27 17:17:02'),
(620, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:53:07'),
(621, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 17:53:28'),
(622, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:07:20'),
(623, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:07:47'),
(624, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:14:29'),
(625, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:14:29'),
(626, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:15:02'),
(627, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:15:17'),
(628, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:16:02'),
(629, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:26:20'),
(630, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:26:28'),
(631, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:26:44'),
(632, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:26:46'),
(633, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:26:49'),
(634, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:26:50'),
(635, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:26:53'),
(636, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:26:54'),
(637, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:26:58'),
(638, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:27:00'),
(639, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:27:03'),
(640, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:27:05'),
(641, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:27:08'),
(642, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:27:10'),
(643, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:27:13'),
(644, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:27:14'),
(645, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:27:17'),
(646, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:27:18'),
(647, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:27:21'),
(648, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:27:22'),
(649, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:27:40'),
(650, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:27:42'),
(651, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:27:49'),
(652, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 18:28:18'),
(653, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-27 21:04:39'),
(654, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-27 21:04:54'),
(655, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-27 21:04:56'),
(656, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'baile', '', '2017-11-27 21:05:12'),
(657, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:18:59'),
(658, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:19:07'),
(659, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:20:38'),
(660, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:21:19'),
(661, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:21:22'),
(662, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:21:36'),
(663, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:22:08'),
(664, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:22:40'),
(665, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:23:40'),
(666, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:23:53'),
(667, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:24:39'),
(668, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:24:40'),
(669, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:25:02'),
(670, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:25:39'),
(671, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:26:06'),
(672, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:26:43'),
(673, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:26:48'),
(674, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:26:48'),
(675, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:27:06'),
(676, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:27:11'),
(677, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:27:52'),
(678, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:27:56'),
(679, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:29:06'),
(680, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:29:57'),
(681, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:30:31'),
(682, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:31:35'),
(683, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:32:04'),
(684, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:32:05'),
(685, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:32:40'),
(686, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:33:19'),
(687, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:33:19'),
(688, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:35:15'),
(689, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:35:18'),
(690, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:35:24'),
(691, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:35:27'),
(692, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:35:37'),
(693, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:35:40'),
(694, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:35:43'),
(695, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:35:46'),
(696, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:35:46'),
(697, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:35:48'),
(698, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:35:51'),
(699, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:36:03'),
(700, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:36:05'),
(701, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:36:10'),
(702, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:37:00'),
(703, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:37:01'),
(704, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:37:15'),
(705, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:37:27'),
(706, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:37:27'),
(707, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:37:37'),
(708, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:37:58'),
(709, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:38:04'),
(710, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:38:11'),
(711, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:38:17'),
(712, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:38:34'),
(713, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:39:13'),
(714, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:39:17'),
(715, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:39:21'),
(716, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:39:40'),
(717, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:39:44'),
(718, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:39:47'),
(719, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:40:19'),
(720, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:40:36'),
(721, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:40:52'),
(722, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:43:00'),
(723, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:43:00'),
(724, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:43:08'),
(725, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:43:23'),
(726, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:43:26'),
(727, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:43:30'),
(728, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:43:30'),
(729, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:43:49'),
(730, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:43:52'),
(731, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:43:56'),
(732, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:43:59'),
(733, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:44:00'),
(734, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:44:04'),
(735, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:44:27'),
(736, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:44:32'),
(737, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:44:40'),
(738, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:52:16'),
(739, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:52:17'),
(740, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:53:21'),
(741, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:53:24'),
(742, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:53:34'),
(743, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:53:37'),
(744, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:53:37'),
(745, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:53:46'),
(746, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:53:50'),
(747, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:53:57'),
(748, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:54:00'),
(749, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:54:08'),
(750, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:54:32'),
(751, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:54:32'),
(752, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:55:29'),
(753, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:56:13'),
(754, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:56:13'),
(755, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:57:33'),
(756, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:57:56'),
(757, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 21:57:56'),
(758, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:00:22'),
(759, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:00:22'),
(760, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:00:55'),
(761, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:01:26'),
(762, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:01:26'),
(763, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:01:40'),
(764, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:01:41'),
(765, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:01:57'),
(766, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:02:18'),
(767, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:02:23'),
(768, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:02:54'),
(769, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:03:40'),
(770, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:03:50'),
(771, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:03:56'),
(772, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:03:59'),
(773, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:04:12'),
(774, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:04:13'),
(775, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:04:20'),
(776, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:05:47'),
(777, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:05:47'),
(778, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:06:10'),
(779, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:06:24'),
(780, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'baile', '', '2017-11-27 22:06:32'),
(781, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 22:09:30'),
(782, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 22:13:20'),
(783, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'baile', '', '2017-11-27 22:13:21');

-- --------------------------------------------------------

--
-- 表的结构 `v9_member`
--

CREATE TABLE `v9_member` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `phpssouid` mediumint(8) UNSIGNED NOT NULL,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `encrypt` char(6) NOT NULL,
  `nickname` char(20) NOT NULL,
  `regdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `regip` char(15) NOT NULL DEFAULT '',
  `lastip` char(15) NOT NULL DEFAULT '',
  `loginnum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `email` char(32) NOT NULL DEFAULT '',
  `groupid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `areaid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `amount` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `point` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `modelid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `message` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `islock` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `vip` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `overduedate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `connectid` char(40) NOT NULL DEFAULT '',
  `from` char(10) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_member_detail`
--

CREATE TABLE `v9_member_detail` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `birthday` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_member_group`
--

CREATE TABLE `v9_member_group` (
  `groupid` tinyint(3) UNSIGNED NOT NULL,
  `name` char(15) NOT NULL,
  `issystem` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `starnum` tinyint(2) UNSIGNED NOT NULL,
  `point` smallint(6) UNSIGNED NOT NULL,
  `allowmessage` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `allowvisit` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowpost` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowpostverify` tinyint(1) UNSIGNED NOT NULL,
  `allowsearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowupgrade` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `allowsendmessage` tinyint(1) UNSIGNED NOT NULL,
  `allowpostnum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `allowattachment` tinyint(1) NOT NULL,
  `price_y` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `price_m` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `price_d` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `icon` char(30) NOT NULL,
  `usernamecolor` char(7) NOT NULL,
  `description` char(100) NOT NULL,
  `sort` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_member_group`
--

INSERT INTO `v9_member_group` (`groupid`, `name`, `issystem`, `starnum`, `point`, `allowmessage`, `allowvisit`, `allowpost`, `allowpostverify`, `allowsearch`, `allowupgrade`, `allowsendmessage`, `allowpostnum`, `allowattachment`, `price_y`, `price_m`, `price_d`, `icon`, `usernamecolor`, `description`, `sort`, `disabled`) VALUES
(8, '游客', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '0.00', '0.00', '0.00', '', '', '', 0, 0),
(2, '新手上路', 1, 1, 50, 100, 1, 1, 0, 0, 0, 1, 0, 0, '50.00', '10.00', '1.00', '', '', '', 2, 0),
(6, '注册会员', 1, 2, 100, 150, 0, 1, 0, 0, 1, 1, 0, 0, '300.00', '30.00', '1.00', '', '', '', 6, 0),
(4, '中级会员', 1, 3, 150, 500, 1, 1, 0, 1, 1, 1, 0, 0, '500.00', '60.00', '1.00', '', '', '', 4, 0),
(5, '高级会员', 1, 5, 300, 999, 1, 1, 0, 1, 1, 1, 0, 0, '360.00', '90.00', '5.00', '', '', '', 5, 0),
(1, '禁止访问', 1, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, '0.00', '0.00', '0.00', '', '', '0', 0, 0),
(7, '邮件认证', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', 'images/group/vip.jpg', '#000000', '', 7, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_member_menu`
--

CREATE TABLE `v9_member_menu` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `name` char(40) NOT NULL DEFAULT '',
  `parentid` smallint(6) NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL DEFAULT '',
  `c` char(20) NOT NULL DEFAULT '',
  `a` char(20) NOT NULL DEFAULT '',
  `data` char(100) NOT NULL DEFAULT '',
  `listorder` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `display` enum('1','0') NOT NULL DEFAULT '1',
  `isurl` enum('1','0') NOT NULL DEFAULT '0',
  `url` char(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_member_menu`
--

INSERT INTO `v9_member_menu` (`id`, `name`, `parentid`, `m`, `c`, `a`, `data`, `listorder`, `display`, `isurl`, `url`) VALUES
(1, 'member_init', 0, 'member', 'index', 'init', 't=0', 0, '1', '', ''),
(2, 'account_manage', 0, 'member', 'index', 'account_manage', 't=1', 0, '1', '', ''),
(3, 'favorite', 0, 'member', 'index', 'favorite', 't=2', 0, '1', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_member_verify`
--

CREATE TABLE `v9_member_verify` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `username` char(20) NOT NULL,
  `password` char(32) NOT NULL,
  `encrypt` char(6) NOT NULL,
  `nickname` char(20) NOT NULL,
  `regdate` int(10) UNSIGNED NOT NULL,
  `regip` char(15) NOT NULL,
  `email` char(32) NOT NULL,
  `modelid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `point` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `amount` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `modelinfo` char(255) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `message` char(100) DEFAULT NULL,
  `mobile` char(11) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_member_vip`
--

CREATE TABLE `v9_member_vip` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_menu`
--

CREATE TABLE `v9_menu` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `name` char(40) NOT NULL DEFAULT '',
  `parentid` smallint(6) NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL DEFAULT '',
  `c` char(20) NOT NULL DEFAULT '',
  `a` char(20) NOT NULL DEFAULT '',
  `data` char(100) NOT NULL DEFAULT '',
  `listorder` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `display` enum('1','0') NOT NULL DEFAULT '1',
  `project1` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `project2` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `project3` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `project4` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `project5` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_menu`
--

INSERT INTO `v9_menu` (`id`, `name`, `parentid`, `m`, `c`, `a`, `data`, `listorder`, `display`, `project1`, `project2`, `project3`, `project4`, `project5`) VALUES
(1, 'sys_setting', 0, 'admin', 'setting', 'init', '', 1, '1', 0, 1, 1, 1, 1),
(2, 'module', 0, 'admin', 'module', 'init', '', 2, '1', 1, 1, 1, 1, 1),
(872, 'sync_release_point', 873, 'release', 'index', 'init', '', 3, '1', 1, 1, 1, 1, 1),
(4, 'content', 0, 'content', 'content', 'init', '', 4, '1', 1, 1, 1, 1, 1),
(5, 'members', 0, 'member', 'member', 'init', '', 5, '1', 1, 1, 1, 1, 1),
(6, 'userinterface', 0, 'template', 'style', 'init', '', 6, '1', 0, 1, 1, 1, 1),
(30, 'correlative_setting', 1, 'admin', 'admin', 'admin', '', 0, '1', 1, 1, 1, 1, 1),
(31, 'menu_manage', 977, 'admin', 'menu', 'init', '', 8, '1', 1, 1, 1, 1, 1),
(32, 'posid_manage', 975, 'admin', 'position', 'init', '', 7, '1', 1, 1, 1, 1, 1),
(29, 'module_list', 2, 'admin', 'module', '', '', 0, '1', 1, 1, 1, 1, 1),
(82, 'module_manage', 2, 'admin', 'module', '', '', 0, '1', 1, 1, 1, 1, 1),
(10, 'panel', 0, 'admin', 'index', 'public_main', '', 0, '1', 0, 1, 1, 1, 1),
(35, 'menu_add', 31, 'admin', 'menu', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(826, 'template_manager', 6, '', '', '', '', 0, '1', 1, 1, 1, 1, 1),
(54, 'admin_manage', 49, 'admin', 'admin_manage', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(43, 'category_manage', 975, 'admin', 'category', 'init', 'module=admin', 4, '1', 1, 1, 1, 1, 1),
(42, 'add_category', 43, 'admin', 'category', 'add', 's=0', 1, '1', 1, 1, 1, 1, 1),
(44, 'edit_category', 43, 'admin', 'category', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(45, 'badword_manage', 977, 'admin', 'badword', 'init', '', 10, '1', 1, 1, 1, 1, 1),
(46, 'posid_add', 32, 'admin', 'position', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(49, 'admin_setting', 1, 'admin', '', '', '', 0, '1', 1, 1, 1, 1, 1),
(50, 'role_manage', 49, 'admin', 'role', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(51, 'role_add', 50, 'admin', 'role', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(52, 'category_cache', 43, 'admin', 'category', 'public_cache', 'module=admin', 4, '1', 1, 1, 1, 1, 1),
(55, 'manage_member', 5, 'member', 'member', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(58, 'admin_add', 54, 'admin', 'admin_manage', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(59, 'model_manage', 975, 'content', 'sitemodel', 'init', '', 5, '1', 1, 1, 1, 1, 1),
(64, 'site_management', 30, 'admin', 'site', 'init', '', 2, '1', 1, 1, 1, 1, 1),
(81, 'member_add', 72, 'member', 'member', 'add', '', 2, '0', 1, 1, 1, 1, 1),
(62, 'add_model', 59, 'content', 'sitemodel', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(65, 'release_point_management', 30, 'admin', 'release_point', 'init', '', 3, '1', 1, 1, 1, 1, 1),
(66, 'badword_export', 45, 'admin', 'badword', 'export', '', 0, '1', 1, 1, 1, 1, 1),
(67, 'add_site', 64, 'admin', 'site', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(68, 'badword_import', 45, 'admin', 'badword', 'import', '', 0, '1', 1, 1, 1, 1, 1),
(812, 'member_group_manage', 76, 'member', 'member_group', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(74, 'member_verify', 55, 'member', 'member_verify', 'manage', 's=0', 3, '1', 1, 1, 1, 1, 1),
(76, 'manage_member_group', 5, 'member', 'member_group', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(77, 'manage_member_model', 5, 'member', 'member_model', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(78, 'member_group_add', 812, 'member', 'member_group', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(79, 'member_model_add', 813, 'member', 'member_model', 'add', '', 1, '0', 1, 1, 1, 1, 1),
(80, 'member_model_import', 77, 'member', 'member_model', 'import', '', 2, '0', 1, 1, 1, 1, 1),
(72, 'member_manage', 55, 'member', 'member', 'manage', '', 1, '1', 1, 1, 1, 1, 1),
(813, 'member_model_manage', 77, 'member', 'member_model', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(814, 'site_edit', 64, 'admin', 'site', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(815, 'site_del', 64, 'admin', 'site', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(816, 'release_point_add', 65, 'admin', 'release_point', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(817, 'release_point_del', 65, 'admin', 'release_point', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(818, 'release_point_edit', 65, 'admin', 'release_point', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(821, 'content_publish', 4, 'content', 'content', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(822, 'content_manage', 821, 'content', 'content', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(867, 'linkage', 977, 'admin', 'linkage', 'init', '', 13, '1', 1, 1, 1, 1, 1),
(827, 'template_style', 826, 'template', 'style', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(828, 'import_style', 827, 'template', 'style', 'import', '', 0, '0', 1, 1, 1, 1, 1),
(831, 'template_export', 827, 'template', 'style', 'export', '', 0, '0', 1, 1, 1, 1, 1),
(830, 'template_file', 827, 'template', 'file', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(832, 'template_onoff', 827, 'template', 'style', 'disable', '', 0, '0', 1, 1, 1, 1, 1),
(833, 'template_updatename', 827, 'template', 'style', 'updatename', '', 0, '0', 1, 1, 1, 1, 1),
(834, 'member_lock', 72, 'member', 'member', 'lock', '', 0, '0', 1, 1, 1, 1, 1),
(835, 'member_unlock', 72, 'member', 'member', 'unlock', '', 0, '0', 1, 1, 1, 1, 1),
(836, 'member_move', 72, 'member', 'member', 'move', '', 0, '0', 1, 1, 1, 1, 1),
(837, 'member_delete', 72, 'member', 'member', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(842, 'verify_ignore', 74, 'member', 'member_verify', 'manage', 's=2', 0, '1', 1, 1, 1, 1, 1),
(839, 'member_setting', 55, 'member', 'member_setting', 'manage', '', 4, '1', 1, 1, 1, 1, 1),
(841, 'verify_pass', 74, 'member', 'member_verify', 'manage', 's=1', 0, '1', 1, 1, 1, 1, 1),
(843, 'verify_delete', 74, 'member', 'member_verify', 'manage', 's=3', 0, '0', 1, 1, 1, 1, 1),
(844, 'verify_deny', 74, 'member', 'member_verify', 'manage', 's=4', 0, '1', 1, 1, 1, 1, 1),
(845, 'never_pass', 74, 'member', 'member_verify', 'manage', 's=5', 0, '1', 1, 1, 1, 1, 1),
(846, 'template_file_list', 827, 'template', 'file', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(847, 'template_file_edit', 827, 'template', 'file', 'edit_file', '', 0, '0', 1, 1, 1, 1, 1),
(848, 'file_add_file', 827, 'template', 'file', 'add_file', '', 0, '0', 1, 1, 1, 1, 1),
(850, 'listorder', 76, 'member', 'member_group', 'sort', '', 0, '0', 1, 1, 1, 1, 1),
(852, 'priv_setting', 50, 'admin', 'role', 'priv_setting', '', 0, '0', 1, 1, 1, 1, 1),
(853, 'role_priv', 50, 'admin', 'role', 'role_priv', '', 0, '0', 1, 1, 1, 1, 1),
(857, 'attachment_manage', 821, 'attachment', 'manage', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(868, 'special', 821, 'special', 'special', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(869, 'template_editor', 827, 'template', 'file', 'edit_file', '', 0, '0', 1, 1, 1, 1, 1),
(870, 'template_visualization', 827, 'template', 'file', 'visualization', '', 0, '0', 1, 1, 1, 1, 1),
(871, 'pc_tag_edit', 827, 'template', 'file', 'edit_pc_tag', '', 0, '0', 1, 1, 1, 1, 1),
(873, 'release_manage', 4, 'release', 'html', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(874, 'type_manage', 975, 'content', 'type_manage', 'init', '', 6, '1', 1, 1, 1, 1, 1),
(875, 'add_type', 874, 'content', 'type_manage', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(876, 'linkageadd', 867, 'admin', 'linkage', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(877, 'failure_list', 872, 'release', 'index', 'failed', '', 0, '1', 1, 1, 1, 1, 1),
(879, 'member_search', 72, 'member', 'member', 'search', '', 0, '0', 1, 1, 1, 1, 1),
(880, 'queue_del', 872, 'release', 'index', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(881, 'member_model_delete', 813, 'member', 'member_model', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(882, 'member_model_edit', 813, 'member', 'member_model', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(885, 'workflow', 977, 'content', 'workflow', 'init', '', 15, '1', 1, 1, 1, 1, 1),
(888, 'add_workflow', 885, 'content', 'workflow', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(889, 'member_modelfield_add', 813, 'member', 'member_modelfield', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(890, 'member_modelfield_edit', 813, 'member', 'member_modelfield', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(891, 'member_modelfield_delete', 813, 'member', 'member_modelfield', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(892, 'member_modelfield_manage', 813, 'member', 'member_modelfield', 'manage', '', 0, '0', 1, 1, 1, 1, 1),
(895, 'sitemodel_import', 59, 'content', 'sitemodel', 'import', '', 0, '1', 1, 1, 1, 1, 1),
(896, 'pay', 29, 'pay', 'payment', 'pay_list', 's=3', 0, '1', 1, 1, 1, 1, 1),
(897, 'payments', 896, 'pay', 'payment', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(898, 'paylist', 896, 'pay', 'payment', 'pay_list', '', 0, '1', 1, 1, 1, 1, 1),
(899, 'add_content', 822, 'content', 'content', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(900, 'modify_deposit', 896, 'pay', 'payment', 'modify_deposit', 's=1', 0, '1', 1, 1, 1, 1, 1),
(901, 'check_content', 822, 'content', 'content', 'pass', '', 0, '0', 1, 1, 1, 1, 1),
(902, 'dbsource', 29, 'dbsource', 'data', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(905, 'create_content_html', 873, 'content', 'create_html', 'show', '', 2, '1', 1, 1, 1, 1, 1),
(904, 'external_data_sources', 902, 'dbsource', 'dbsource_admin', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(906, 'update_urls', 873, 'content', 'create_html', 'update_urls', '', 1, '1', 1, 1, 1, 1, 1),
(960, 'node_add', 957, 'collection', 'node', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(909, 'fulltext_search', 29, 'search', 'search_type', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(910, 'manage_type', 909, 'search', 'search_type', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(911, 'search_setting', 909, 'search', 'search_admin', 'setting', '', 0, '1', 1, 1, 1, 1, 1),
(912, 'createindex', 909, 'search', 'search_admin', 'createindex', '', 0, '1', 1, 1, 1, 1, 1),
(913, 'add_search_type', 909, 'search', 'search_type', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(914, 'database_toos', 977, 'admin', 'database', 'export', '', 6, '1', 1, 1, 1, 1, 1),
(915, 'database_export', 914, 'admin', 'database', 'export', '', 0, '1', 1, 1, 1, 1, 1),
(916, 'database_import', 914, 'admin', 'database', 'import', '', 0, '1', 1, 1, 1, 1, 1),
(917, 'dbsource_add', 902, 'dbsource', 'dbsource_admin', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(918, 'dbsource_edit', 902, 'dbsource', 'dbsource_admin', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(919, 'dbsource_del', 902, 'dbsource', 'dbsource_admin', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(920, 'dbsource_data_add', 902, 'dbsource', 'data', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(921, 'dbsource_data_edit', 902, 'dbsource', 'data', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(922, 'dbsource_data_del', 902, 'dbsource', 'data', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(926, 'add_special', 868, 'special', 'special', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(927, 'edit_special', 868, 'special', 'special', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(928, 'special_list', 868, 'special', 'special', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(929, 'special_elite', 868, 'special', 'special', 'elite', '', 0, '0', 1, 1, 1, 1, 1),
(930, 'delete_special', 868, 'special', 'special', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(931, 'badword_add', 45, 'admin', 'badword', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(932, 'badword_edit', 45, 'admin', 'badword', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(933, 'badword_delete', 45, 'admin', 'badword', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(934, 'special_listorder', 868, 'special', 'special', 'listorder', '', 0, '0', 1, 1, 1, 1, 1),
(935, 'special_content_list', 868, 'special', 'content', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(936, 'special_content_add', 935, 'special', 'content', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(937, 'special_content_list', 935, 'special', 'content', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(938, 'special_content_edit', 935, 'special', 'content', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(939, 'special_content_delete', 935, 'special', 'content', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(940, 'special_content_listorder', 935, 'special', 'content', 'listorder', '', 0, '0', 1, 1, 1, 1, 1),
(941, 'special_content_import', 935, 'special', 'special', 'import', '', 0, '0', 1, 1, 1, 1, 1),
(942, 'history_version', 827, 'template', 'template_bak', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(943, 'restore_version', 827, 'template', 'template_bak', 'restore', '', 0, '0', 1, 1, 1, 1, 1),
(944, 'del_history_version', 827, 'template', 'template_bak', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(945, 'block', 821, 'block', 'block_admin', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(946, 'block_add', 945, 'block', 'block_admin', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(950, 'block_edit', 945, 'block', 'block_admin', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(951, 'block_del', 945, 'block', 'block_admin', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(952, 'block_update', 945, 'block', 'block_admin', 'block_update', '', 0, '0', 1, 1, 1, 1, 1),
(953, 'block_restore', 945, 'block', 'block_admin', 'history_restore', '', 0, '0', 1, 1, 1, 1, 1),
(954, 'history_del', 945, 'block', 'block_admin', 'history_del', '', 0, '0', 1, 1, 1, 1, 1),
(978, 'urlrule_manage', 977, 'admin', 'urlrule', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(957, 'collection_node', 821, 'collection', 'node', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(979, 'safe_config', 30, 'admin', 'setting', 'init', '&tab=2', 11, '1', 1, 1, 1, 1, 1),
(959, 'basic_config', 30, 'admin', 'setting', 'init', '', 10, '1', 1, 1, 1, 1, 1),
(961, 'position_edit', 32, 'admin', 'position', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(962, 'collection_node_edit', 957, 'collection', 'node', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(963, 'collection_node_delete', 957, 'collection', 'node', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(990, 'col_url_list', 957, 'collection', 'node', 'col_url_list', '', 0, '0', 1, 1, 1, 1, 1),
(965, 'collection_node_publish', 957, 'collection', 'node', 'publist', '', 0, '0', 1, 1, 1, 1, 1),
(966, 'collection_node_import', 957, 'collection', 'node', 'node_import', '', 0, '0', 1, 1, 1, 1, 1),
(967, 'collection_node_export', 957, 'collection', 'node', 'export', '', 0, '0', 1, 1, 1, 1, 1),
(968, 'collection_node_collection_content', 957, 'collection', 'node', 'col_content', '', 0, '0', 1, 1, 1, 1, 1),
(969, 'googlesitemap', 977, 'admin', 'googlesitemap', 'set', '', 11, '1', 1, 1, 1, 1, 1),
(970, 'admininfo', 10, 'admin', 'admin_manage', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(971, 'editpwd', 970, 'admin', 'admin_manage', 'public_edit_pwd', '', 1, '1', 1, 1, 1, 1, 1),
(972, 'editinfo', 970, 'admin', 'admin_manage', 'public_edit_info', '', 0, '1', 1, 1, 1, 1, 1),
(973, 'keylink', 977, 'admin', 'keylink', 'init', '', 12, '1', 1, 1, 1, 1, 1),
(974, 'add_keylink', 973, 'admin', 'keylink', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(975, 'content_settings', 4, 'content', 'content_settings', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(7, 'extend', 0, 'admin', 'extend', 'init_extend', '', 7, '1', 0, 1, 1, 1, 1),
(977, 'extend_all', 7, 'admin', 'extend_all', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(980, 'sso_config', 30, 'admin', 'setting', 'init', '&tab=3', 12, '1', 1, 1, 1, 1, 1),
(981, 'email_config', 30, 'admin', 'setting', 'init', '&tab=4', 13, '1', 1, 1, 1, 1, 1),
(982, 'module_manage', 82, 'admin', 'module', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(983, 'ipbanned', 977, 'admin', 'ipbanned', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(984, 'add_ipbanned', 983, 'admin', 'ipbanned', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(993, 'collection_content_import', 957, 'collection', 'node', 'import', '', 0, '0', 1, 1, 1, 1, 1),
(991, 'copy_node', 957, 'collection', 'node', 'copy', '', 0, '0', 1, 1, 1, 1, 1),
(992, 'content_del', 957, 'collection', 'node', 'content_del', '', 0, '0', 1, 1, 1, 1, 1),
(989, 'downsites', 977, 'admin', 'downservers', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(994, 'import_program_add', 957, 'collection', 'node', 'import_program_add', '', 0, '0', 1, 1, 1, 1, 1),
(995, 'import_program_del', 957, 'collection', 'node', 'import_program_del', '', 0, '0', 1, 1, 1, 1, 1),
(996, 'import_content', 957, 'collection', 'node', 'import_content', '', 0, '0', 1, 1, 1, 1, 1),
(997, 'log', 977, 'admin', 'log', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(998, 'add_page', 43, 'admin', 'category', 'add', 's=1', 2, '1', 1, 1, 1, 1, 1),
(999, 'add_cat_link', 43, 'admin', 'category', 'add', 's=2', 2, '1', 1, 1, 1, 1, 1),
(1000, 'count_items', 43, 'admin', 'category', 'count_items', '', 5, '1', 1, 1, 1, 1, 1),
(1001, 'cache_all', 977, 'admin', 'cache_all', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1002, 'create_list_html', 873, 'content', 'create_html', 'category', '', 0, '1', 1, 1, 1, 1, 1),
(1003, 'create_html_quick', 10, 'content', 'create_html_opt', 'index', '', 0, '1', 1, 1, 1, 1, 1),
(1004, 'create_index', 1003, 'content', 'create_html', 'public_index', '', 0, '1', 1, 1, 1, 1, 1),
(1005, 'scan', 977, 'scan', 'index', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1006, 'scan_report', 1005, 'scan', 'index', 'scan_report', '', 0, '1', 1, 1, 1, 1, 1),
(1007, 'md5_creat', 1005, 'scan', 'index', 'md5_creat', '', 0, '1', 1, 1, 1, 1, 1),
(1008, 'album_import', 868, 'special', 'album', 'import', '', 0, '1', 1, 1, 1, 1, 1),
(8, 'phpsso', 0, 'admin', 'phpsso', 'menu', '', 7, '1', 0, 1, 1, 1, 1),
(1011, 'edit_content', 822, 'content', 'content', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1012, 'push_to_special', 822, 'content', 'push', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(1023, 'delete_log', 997, 'admin', 'log', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1024, 'delete_ip', 983, 'admin', 'ipbanned', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1026, 'delete_keylink', 973, 'admin', 'keylink', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1027, 'edit_keylink', 973, 'admin', 'keylink', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1034, 'operation_pass', 74, 'member', 'member_verify', 'pass', '', 0, '0', 1, 1, 1, 1, 1),
(1035, 'operation_delete', 74, 'member', 'member_verify', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1039, 'operation_ignore', 74, 'member', 'member_verify', 'ignore', '', 0, '0', 1, 1, 1, 1, 1),
(1038, 'settingsave', 30, 'admin', 'setting', 'save', '', 0, '0', 1, 1, 1, 1, 1),
(1040, 'admin_edit', 54, 'admin', 'admin_manage', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1041, 'operation_reject', 74, 'member', 'member_verify', 'reject', '', 0, '0', 1, 1, 1, 1, 1),
(1042, 'admin_delete', 54, 'admin', 'admin_manage', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1043, 'card', 54, 'admin', 'admin_manage', 'card', '', 0, '0', 1, 1, 1, 1, 1),
(1044, 'creat_card', 54, 'admin', 'admin_manage', 'creat_card', '', 0, '0', 1, 1, 1, 1, 1),
(1045, 'remove_card', 54, 'admin', 'admin_manage', 'remove_card', '', 0, '0', 1, 1, 1, 1, 1),
(1049, 'member_group_edit', 812, 'member', 'member_group', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1048, 'member_edit', 72, 'member', 'member', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1050, 'role_edit', 50, 'admin', 'role', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1051, 'member_group_delete', 812, 'member', 'member_group', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1052, 'member_manage', 50, 'admin', 'role', 'member_manage', '', 0, '0', 1, 1, 1, 1, 1),
(1053, 'role_delete', 50, 'admin', 'role', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1054, 'member_model_export', 77, 'member', 'member_model', 'export', '', 0, '0', 1, 1, 1, 1, 1),
(1055, 'member_model_sort', 77, 'member', 'member_model', 'sort', '', 0, '0', 1, 1, 1, 1, 1),
(1056, 'member_model_move', 77, 'member', 'member_model', 'move', '', 0, '0', 1, 1, 1, 1, 1),
(1057, 'payment_add', 897, 'pay', 'payment', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1058, 'payment_delete', 897, 'pay', 'payment', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1059, 'payment_edit', 897, 'pay', 'payment', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1060, 'spend_record', 896, 'pay', 'spend', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1061, 'pay_stat', 896, 'pay', 'payment', 'pay_stat', '', 0, '1', 1, 1, 1, 1, 1),
(1062, 'fields_manage', 59, 'content', 'sitemodel_field', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(1063, 'edit_model_content', 59, 'content', 'sitemodel', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1064, 'disabled_model', 59, 'content', 'sitemodel', 'disabled', '', 0, '0', 1, 1, 1, 1, 1),
(1065, 'delete_model', 59, 'content', 'sitemodel', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1066, 'export_model', 59, 'content', 'sitemodel', 'export', '', 0, '0', 1, 1, 1, 1, 1),
(1067, 'delete', 874, 'content', 'type_manage', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1068, 'edit', 874, 'content', 'type_manage', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1069, 'add_urlrule', 978, 'admin', 'urlrule', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1070, 'edit_urlrule', 978, 'admin', 'urlrule', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1071, 'delete_urlrule', 978, 'admin', 'urlrule', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1072, 'edit_menu', 31, 'admin', 'menu', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1073, 'delete_menu', 31, 'admin', 'menu', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1074, 'edit_workflow', 885, 'content', 'workflow', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1075, 'delete_workflow', 885, 'content', 'workflow', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1076, 'creat_html', 868, 'special', 'special', 'html', '', 0, '1', 1, 1, 1, 1, 1),
(1093, 'connect_config', 30, 'admin', 'setting', 'init', '&tab=5', 14, '1', 1, 1, 1, 1, 1),
(1102, 'view_modelinfo', 74, 'member', 'member_verify', 'modelinfo', '', 0, '0', 1, 1, 1, 1, 1),
(1202, 'create_special_list', 868, 'special', 'special', 'create_special_list', '', 0, '1', 1, 1, 1, 1, 1),
(1240, 'view_memberlinfo', 72, 'member', 'member', 'memberinfo', '', 0, '0', 1, 1, 1, 1, 1),
(1239, 'copyfrom_manage', 977, 'admin', 'copyfrom', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1241, 'move_content', 822, 'content', 'content', 'remove', '', 0, '0', 1, 1, 1, 1, 1),
(1242, 'poster_template', 56, 'poster', 'space', 'poster_template', '', 0, '1', 1, 1, 1, 1, 1),
(1243, 'create_index', 873, 'content', 'create_html', 'public_index', '', 0, '1', 1, 1, 1, 1, 1),
(1244, 'add_othors', 822, 'content', 'content', 'add_othors', '', 0, '1', 1, 1, 1, 1, 1),
(1295, 'attachment_manager_dir', 857, 'attachment', 'manage', 'dir', '', 2, '1', 1, 1, 1, 1, 1),
(1296, 'attachment_manager_db', 857, 'attachment', 'manage', 'init', '', 1, '1', 1, 1, 1, 1, 1),
(1346, 'attachment_address_replace', 857, 'attachment', 'address', 'init', '', 3, '1', 1, 1, 1, 1, 1),
(1347, 'attachment_address_update', 857, 'attachment', 'address', 'update', '', 0, '0', 1, 1, 1, 1, 1),
(1348, 'delete_content', 822, 'content', 'content', 'delete', '', 0, '1', 1, 1, 1, 1, 1),
(1349, 'member_menu_manage', 977, 'member', 'member_menu', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(1350, 'member_menu_add', 1349, 'member', 'member_menu', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(1351, 'member_menu_edit', 1349, 'member', 'member_menu', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1352, 'member_menu_delete', 1349, 'member', 'member_menu', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1353, 'batch_show', 822, 'content', 'create_html', 'batch_show', '', 0, '1', 1, 1, 1, 1, 1),
(1354, 'pay_delete', 898, 'pay', 'payment', 'pay_del', '', 0, '0', 1, 1, 1, 1, 1),
(1355, 'pay_cancel', 898, 'pay', 'payment', 'pay_cancel', '', 0, '0', 1, 1, 1, 1, 1),
(1356, 'discount', 898, 'pay', 'payment', 'discount', '', 0, '0', 1, 1, 1, 1, 1),
(1360, 'category_batch_edit', 43, 'admin', 'category', 'batch_edit', '', 6, '1', 1, 1, 1, 1, 1),
(1500, 'listorder', 822, 'content', 'content', 'listorder', '', 0, '0', 1, 1, 1, 1, 1),
(1501, 'a_clean_data', 873, 'content', 'content', 'clear_data', '', 0, '1', 0, 0, 0, 0, 0),
(9, 'video', 0, 'video', 'video', 'init', '', 11, '1', 1, 1, 1, 1, 1),
(1589, 'video', 9, 'video', 'video', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1583, 'sub_delete', 1589, 'video', 'video', 'sub_del', '', 0, '0', 1, 1, 1, 1, 1),
(1582, 'subscribe_manage', 1589, 'video', 'video', 'subscribe_list', '', 0, '1', 1, 1, 1, 1, 1),
(1581, 'video_open', 1589, 'video', 'video', 'open', '', 0, '1', 1, 1, 1, 1, 1),
(1592, 'complete_info', 1581, 'video', 'video', 'complete_info', '', 0, '1', 1, 1, 1, 1, 1),
(1591, 'video_inputinfo', 1581, 'video', 'video', 'open', '', 0, '1', 1, 1, 1, 1, 1),
(1577, 'video_manage', 1589, 'video', 'video', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1590, 'player_manage', 1589, 'video', 'player', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1585, 'import_ku6_video', 1589, 'video', 'video', 'import_ku6video', '', 0, '1', 1, 1, 1, 1, 1),
(1579, 'video_edit', 1589, 'video', 'video', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1580, 'video_delete', 1589, 'video', 'video', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1578, 'video_upload', 1589, 'video', 'video', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(1593, 'video_stat', 1589, 'video', 'stat', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1586, 'video_store', 1589, 'video', 'video', 'video2content', '', 0, '0', 1, 1, 1, 1, 1),
(1594, 'announce', 29, 'announce', 'admin_announce', 'init', 's=1', 0, '1', 1, 1, 1, 1, 1),
(1595, 'announce_add', 1594, 'announce', 'admin_announce', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1596, 'edit_announce', 1594, 'announce', 'admin_announce', 'edit', 's=1', 0, '0', 1, 1, 1, 1, 1),
(1597, 'check_announce', 1594, 'announce', 'admin_announce', 'init', 's=2', 0, '1', 1, 1, 1, 1, 1),
(1598, 'overdue', 1594, 'announce', 'admin_announce', 'init', 's=3', 0, '1', 1, 1, 1, 1, 1),
(1599, 'del_announce', 1594, 'announce', 'admin_announce', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1600, 'link', 29, 'link', 'link', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1601, 'add_link', 1600, 'link', 'link', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1602, 'edit_link', 1600, 'link', 'link', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1603, 'delete_link', 1600, 'link', 'link', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1604, 'link_setting', 1600, 'link', 'link', 'setting', '', 0, '1', 1, 1, 1, 1, 1),
(1605, 'add_type', 1600, 'link', 'link', 'add_type', '', 0, '1', 1, 1, 1, 1, 1),
(1606, 'list_type', 1600, 'link', 'link', 'list_type', '', 0, '1', 1, 1, 1, 1, 1),
(1607, 'check_register', 1600, 'link', 'link', 'check_register', '', 0, '1', 1, 1, 1, 1, 1),
(1608, 'formguide', 29, 'formguide', 'formguide', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1609, 'formguide_add', 1608, 'formguide', 'formguide', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1610, 'formguide_edit', 1608, 'formguide', 'formguide', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1611, 'form_info_list', 1608, 'formguide', 'formguide_info', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(1612, 'formguide_disabled', 1608, 'formguide', 'formguide', 'disabled', '', 0, '0', 1, 1, 1, 1, 1),
(1613, 'formguide_delete', 1608, 'formguide', 'formguide', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1614, 'formguide_stat', 1608, 'formguide', 'formguide', 'stat', '', 0, '0', 1, 1, 1, 1, 1),
(1615, 'add_public_field', 1608, 'formguide', 'formguide_field', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(1616, 'list_public_field', 1608, 'formguide', 'formguide_field', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1617, 'module_setting', 1608, 'formguide', 'formguide', 'setting', '', 0, '0', 1, 1, 1, 1, 1),
(1618, 'wap', 29, 'wap', 'wap_admin', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1619, 'wap_add', 1618, 'wap', 'wap_admin', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1620, 'wap_edit', 1618, 'wap', 'wap_admin', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1621, 'wap_delete', 1618, 'wap', 'wap_admin', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1622, 'wap_type_manage', 1618, 'wap', 'wap_admin', 'type_manage', '', 0, '0', 1, 1, 1, 1, 1),
(1623, 'wap_type_edit', 1618, 'wap', 'wap_admin', 'type_edit', '', 0, '0', 1, 1, 1, 1, 1),
(1624, 'wap_type_delete', 1618, 'wap', 'wap_admin', 'type_delete', '', 0, '0', 1, 1, 1, 1, 1),
(1625, 'tag', 826, 'tag', 'tag', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1626, 'add_tag', 1625, 'tag', 'tag', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1627, 'edit_tag', 1625, 'tag', 'tag', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1628, 'delete_tag', 1625, 'tag', 'tag', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(1629, 'tag_lists', 1625, 'tag', 'tag', 'lists', '', 0, '0', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `v9_model`
--

CREATE TABLE `v9_model` (
  `modelid` smallint(5) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `name` char(30) NOT NULL,
  `description` char(100) NOT NULL,
  `tablename` char(20) NOT NULL,
  `setting` text NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `items` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `enablesearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `default_style` char(30) NOT NULL,
  `category_template` char(30) NOT NULL,
  `list_template` char(30) NOT NULL,
  `show_template` char(30) NOT NULL,
  `js_template` varchar(30) NOT NULL,
  `admin_list_template` char(30) NOT NULL,
  `member_add_template` varchar(30) NOT NULL,
  `member_list_template` varchar(30) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_model`
--

INSERT INTO `v9_model` (`modelid`, `siteid`, `name`, `description`, `tablename`, `setting`, `addtime`, `items`, `enablesearch`, `disabled`, `default_style`, `category_template`, `list_template`, `show_template`, `js_template`, `admin_list_template`, `member_add_template`, `member_list_template`, `sort`, `type`) VALUES
(1, 1, '文章模型', '', 'news', '', 0, 0, 1, 0, 'default', 'category', 'list', 'show', '', '', '', '', 0, 0),
(2, 1, '下载模型', '', 'download', '', 0, 0, 1, 0, 'default', 'category_download', 'list_download', 'show_download', '', '', '', '', 0, 0),
(3, 1, '图片模型', '', 'picture', '', 0, 0, 1, 0, 'default', 'category_picture', 'list_picture', 'show_picture', '', '', '', '', 0, 0),
(10, 1, '普通会员', '普通会员', 'member_detail', '', 0, 0, 1, 0, '', '', '', '', '', '', '', '', 0, 2),
(11, 1, '视频模型', '', 'video', '', 0, 0, 1, 0, 'default', 'category_video', 'list_video', 'show_video', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_model_field`
--

CREATE TABLE `v9_model_field` (
  `fieldid` mediumint(8) UNSIGNED NOT NULL,
  `modelid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `tips` text NOT NULL,
  `css` varchar(30) NOT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL,
  `errortips` varchar(255) NOT NULL,
  `formtype` varchar(20) NOT NULL,
  `setting` mediumtext NOT NULL,
  `formattribute` varchar(255) NOT NULL,
  `unsetgroupids` varchar(255) NOT NULL,
  `unsetroleids` varchar(255) NOT NULL,
  `iscore` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `issystem` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `isunique` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `isbase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `issearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `isadd` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `isfulltext` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `isposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `listorder` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `isomnipotent` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_model_field`
--

INSERT INTO `v9_model_field` (`fieldid`, `modelid`, `siteid`, `field`, `name`, `tips`, `css`, `minlength`, `maxlength`, `pattern`, `errortips`, `formtype`, `setting`, `formattribute`, `unsetgroupids`, `unsetroleids`, `iscore`, `issystem`, `isunique`, `isbase`, `issearch`, `isadd`, `isfulltext`, `isposition`, `listorder`, `disabled`, `isomnipotent`) VALUES
(1, 1, 1, 'catid', '栏目', '', '', 1, 6, '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'array (\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(2, 1, 1, 'typeid', '类别', '', '', 0, 0, '', '', 'typeid', 'array (\n  \'minnumber\' => \'\',\n  \'defaultvalue\' => \'\',\n)', '', '', '', 0, 1, 0, 1, 1, 1, 0, 0, 2, 0, 0),
(3, 1, 1, 'title', '标题', '', 'inputtitle', 1, 80, '', '请输入标题', 'title', '', '', '', '', 0, 1, 0, 1, 1, 1, 1, 1, 4, 0, 0),
(4, 1, 1, 'thumb', '缩略图', '', '', 0, 100, '', '', 'image', 'array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'show_type\' => \'1\',\n  \'upload_maxsize\' => \'1024\',\n  \'upload_allowext\' => \'jpg|jpeg|gif|png|bmp\',\n  \'watermark\' => \'0\',\n  \'isselectimage\' => \'1\',\n  \'images_width\' => \'\',\n  \'images_height\' => \'\',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 0, 1, 14, 0, 0),
(5, 1, 1, 'keywords', '关键词', '多关键词之间用空格或者“,”隔开', '', 0, 40, '', '', 'keyword', 'array (\r\n  \'size\' => \'100\',\r\n  \'defaultvalue\' => \'\',\r\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 1, 0, 7, 0, 0),
(6, 1, 1, 'description', '摘要', '', '', 0, 255, '', '', 'textarea', 'array (\r\n  \'width\' => \'98\',\r\n  \'height\' => \'46\',\r\n  \'defaultvalue\' => \'\',\r\n  \'enablehtml\' => \'0\',\r\n)', '', '', '', 0, 1, 0, 1, 0, 1, 1, 1, 10, 0, 0),
(7, 1, 1, 'updatetime', '更新时间', '', '', 0, 0, '', '', 'datetime', 'array (\r\n  \'dateformat\' => \'int\',\r\n  \'format\' => \'Y-m-d H:i:s\',\r\n  \'defaulttype\' => \'1\',\r\n  \'defaultvalue\' => \'\',\r\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 12, 0, 0),
(8, 1, 1, 'content', '内容', '<div class="content_attr"><label><input name="add_introduce" type="checkbox"  value="1" checked>是否截取内容</label><input type="text" name="introcude_length" value="200" size="3">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value="1" checked>是否获取内容第</label><input type="text" name="auto_thumb_no" value="1" size="2" class="">张图片作为标题图片\r\n</div>', '', 1, 999999, '', '内容不能为空', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'defaultvalue\' => \'\',\n  \'enablekeylink\' => \'1\',\n  \'replacenum\' => \'2\',\n  \'link_mode\' => \'0\',\n  \'enablesaveimage\' => \'1\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 13, 0, 0),
(9, 1, 1, 'voteid', '添加投票', '', '', 0, 0, '', '', 'omnipotent', 'array (\n  \'formtext\' => \'<input type=\\\'text\\\' name=\\\'info[voteid]\\\' id=\\\'voteid\\\' value=\\\'{FIELD_VALUE}\\\' size=\\\'3\\\'> \r\n<input type=\\\'button\\\' value="选择已有投票" onclick="omnipotent(\\\'selectid\\\',\\\'?m=vote&c=vote&a=public_get_votelist&from_api=1\\\',\\\'选择已有投票\\\')" class="button">\r\n<input type=\\\'button\\\' value="新增投票" onclick="omnipotent(\\\'addvote\\\',\\\'?m=vote&c=vote&a=add&from_api=1\\\',\\\'添加投票\\\',0)" class="button">\',\n  \'fieldtype\' => \'mediumint\',\n  \'minnumber\' => \'1\',\n)', '', '', '', 0, 0, 0, 1, 0, 0, 1, 0, 21, 0, 0),
(10, 1, 1, 'pages', '分页方式', '', '', 0, 0, '', '', 'pages', '', '', '-99', '-99', 0, 0, 0, 1, 0, 0, 0, 0, 16, 0, 0),
(11, 1, 1, 'inputtime', '发布时间', '', '', 0, 0, '', '', 'datetime', 'array (\n  \'fieldtype\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'0\',\n)', '', '', '', 0, 1, 0, 0, 0, 0, 0, 1, 17, 0, 0),
(12, 1, 1, 'posids', '推荐位', '', '', 0, 0, '', '', 'posid', 'array (\n  \'cols\' => \'4\',\n  \'width\' => \'125\',\n)', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 18, 0, 0),
(13, 1, 1, 'url', 'URL', '', '', 0, 100, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 50, 0, 0),
(14, 1, 1, 'listorder', '排序', '', '', 0, 6, '', '', 'number', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 51, 0, 0),
(15, 1, 1, 'status', '状态', '', '', 0, 2, '', '', 'box', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 55, 0, 0),
(16, 1, 1, 'template', '内容页模板', '', '', 0, 30, '', '', 'template', 'array (\n  \'size\' => \'\',\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0),
(17, 1, 1, 'groupids_view', '阅读权限', '', '', 0, 0, '', '', 'groupid', 'array (\n  \'groupids\' => \'\',\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 19, 0, 0),
(18, 1, 1, 'readpoint', '阅读收费', '', '', 0, 5, '', '', 'readpoint', 'array (\n  \'minnumber\' => \'1\',\n  \'maxnumber\' => \'99999\',\n  \'decimaldigits\' => \'0\',\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0),
(19, 1, 1, 'relation', '相关文章', '', '', 0, 0, '', '', 'omnipotent', 'array (\n  \'formtext\' => \'<input type=\\\'hidden\\\' name=\\\'info[relation]\\\' id=\\\'relation\\\' value=\\\'{FIELD_VALUE}\\\' style=\\\'50\\\' >\r\n<ul class="list-dot" id="relation_text"></ul>\r\n<div>\r\n<input type=\\\'button\\\' value="添加相关" onclick="omnipotent(\\\'selectid\\\',\\\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\\\',\\\'添加相关文章\\\',1)" class="button" style="width:66px;">\r\n<span class="edit_content">\r\n<input type=\\\'button\\\' value="显示已有" onclick="show_relation({MODELID},{ID})" class="button" style="width:66px;">\r\n</span>\r\n</div>\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n)', '', '2,6,4,5,1,17,18,7', '', 0, 0, 0, 0, 0, 0, 1, 0, 15, 0, 0),
(20, 1, 1, 'allow_comment', '允许评论', '', '', 0, 0, '', '', 'box', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'tinyint\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'0\',\n)', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0),
(21, 1, 1, 'copyfrom', '来源', '', '', 0, 100, '', '', 'copyfrom', 'array (\n  \'defaultvalue\' => \'\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 8, 0, 0),
(80, 1, 1, 'username', '用户名', '', '', 0, 20, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 98, 0, 0),
(22, 2, 1, 'catid', '栏目', '', '', 1, 6, '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'array (\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(23, 2, 1, 'typeid', '类别', '', '', 0, 0, '', '', 'typeid', 'array (\n  \'minnumber\' => \'\',\n  \'defaultvalue\' => \'\',\n)', '', '', '', 0, 1, 0, 1, 1, 1, 0, 0, 2, 1, 0),
(24, 2, 1, 'title', '标题', '', 'inputtitle', 1, 80, '', '请输入标题', 'title', '', '', '', '', 0, 1, 0, 1, 1, 1, 1, 1, 4, 0, 0),
(25, 2, 1, 'keywords', '关键词', '多关键词之间用空格或者“,”隔开', '', 0, 40, '', '', 'keyword', 'array (\r\n  \'size\' => \'100\',\r\n  \'defaultvalue\' => \'\',\r\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 1, 0, 7, 0, 0),
(26, 2, 1, 'description', '摘要', '', '', 0, 255, '', '', 'textarea', 'array (\r\n  \'width\' => \'98\',\r\n  \'height\' => \'46\',\r\n  \'defaultvalue\' => \'\',\r\n  \'enablehtml\' => \'0\',\r\n)', '', '', '', 0, 1, 0, 1, 0, 1, 1, 1, 10, 0, 0),
(27, 2, 1, 'updatetime', '更新时间', '', '', 0, 0, '', '', 'datetime', 'array (\r\n  \'dateformat\' => \'int\',\r\n  \'format\' => \'Y-m-d H:i:s\',\r\n  \'defaulttype\' => \'1\',\r\n  \'defaultvalue\' => \'\',\r\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 12, 0, 0),
(28, 2, 1, 'content', '内容', '<div class="content_attr"><label><input name="add_introduce" type="checkbox"  value="1" checked>是否截取内容</label><input type="text" name="introcude_length" value="200" size="3">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value="1" checked>是否获取内容第</label><input type="text" name="auto_thumb_no" value="1" size="2" class="">张图片作为标题图片\r\n</div>', '', 1, 999999, '', '内容不能为空', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'defaultvalue\' => \'\',\n  \'enablekeylink\' => \'1\',\n  \'replacenum\' => \'2\',\n  \'link_mode\' => \'0\',\n  \'enablesaveimage\' => \'1\',\n  \'height\' => \'\',\n  \'disabled_page\' => \'1\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 13, 0, 0),
(29, 2, 1, 'thumb', '缩略图', '', '', 0, 100, '', '', 'image', 'array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'show_type\' => \'1\',\n  \'upload_maxsize\' => \'1024\',\n  \'upload_allowext\' => \'jpg|jpeg|gif|png|bmp\',\n  \'watermark\' => \'0\',\n  \'isselectimage\' => \'1\',\n  \'images_width\' => \'\',\n  \'images_height\' => \'\',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 0, 1, 14, 0, 0),
(30, 2, 1, 'relation', '相关文章', '', '', 0, 0, '', '', 'omnipotent', 'array (\n  \'formtext\' => \'<input type=\\\'hidden\\\' name=\\\'info[relation]\\\' id=\\\'relation\\\' value=\\\'{FIELD_VALUE}\\\' style=\\\'50\\\' >\r\n<ul class="list-dot" id="relation_text"></ul>\r\n<div>\r\n<input type=\\\'button\\\' value="添加相关" onclick="omnipotent(\\\'selectid\\\',\\\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\\\',\\\'添加相关文章\\\',1)" class="button" style="width:66px;">\r\n<span class="edit_content">\r\n<input type=\\\'button\\\' value="显示已有" onclick="show_relation({MODELID},{ID})" class="button" style="width:66px;">\r\n</span>\r\n</div>\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n)', '', '2,6,4,5,1,17,18,7', '', 0, 0, 0, 0, 0, 0, 1, 0, 15, 0, 0),
(31, 2, 1, 'pages', '分页方式', '', '', 0, 0, '', '', 'pages', '', '', '-99', '-99', 0, 0, 0, 1, 0, 0, 0, 0, 16, 1, 0),
(32, 2, 1, 'inputtime', '发布时间', '', '', 0, 0, '', '', 'datetime', 'array (\n  \'fieldtype\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'0\',\n)', '', '', '', 0, 1, 0, 0, 0, 0, 0, 1, 17, 0, 0),
(33, 2, 1, 'posids', '推荐位', '', '', 0, 0, '', '', 'posid', 'array (\n  \'cols\' => \'4\',\n  \'width\' => \'125\',\n)', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 18, 0, 0),
(34, 2, 1, 'groupids_view', '阅读权限', '', '', 0, 0, '', '', 'groupid', 'array (\n  \'groupids\' => \'\',\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 19, 0, 0),
(35, 2, 1, 'url', 'URL', '', '', 0, 100, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 50, 0, 0),
(36, 2, 1, 'listorder', '排序', '', '', 0, 6, '', '', 'number', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 51, 0, 0),
(37, 2, 1, 'template', '内容页模板', '', '', 0, 30, '', '', 'template', 'array (\n  \'size\' => \'\',\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0),
(38, 2, 1, 'allow_comment', '允许评论', '', '', 0, 0, '', '', 'box', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'tinyint\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'0\',\n)', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0),
(39, 2, 1, 'status', '状态', '', '', 0, 2, '', '', 'box', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 55, 0, 0),
(40, 2, 1, 'readpoint', '阅读收费', '', '', 0, 5, '', '', 'readpoint', 'array (\n  \'minnumber\' => \'1\',\n  \'maxnumber\' => \'99999\',\n  \'decimaldigits\' => \'0\',\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0),
(41, 2, 1, 'username', '用户名', '', '', 0, 20, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 98, 0, 0),
(42, 2, 1, 'downfiles', '本地下载', '', '', 0, 0, '', '', 'downfiles', 'array (\n  \'upload_allowext\' => \'rar|zip\',\n  \'isselectimage\' => \'0\',\n  \'upload_number\' => \'10\',\n  \'downloadlink\' => \'1\',\n  \'downloadtype\' => \'1\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 8, 0, 0),
(43, 2, 1, 'downfile', '镜像下载', '', '', 0, 0, '', '', 'downfile', 'array (\n  \'downloadlink\' => \'1\',\n  \'downloadtype\' => \'1\',\n  \'upload_allowext\' => \'rar|zip\',\n  \'isselectimage\' => \'0\',\n  \'upload_number\' => \'1\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 9, 0, 0),
(44, 2, 1, 'systems', '软件平台', '<select name=\'selectSystem\' onchange="ChangeInput(this,document.myform.systems,\'/\')">\r\n	<option value=\'WinXP\'>WinXP</option>\r\n	<option value=\'Vista\'>Windows 7</option>\r\n	<option value=\'Win2000\'>Win2000</option>\r\n	<option value=\'Win2003\'>Win2003</option>\r\n	<option value=\'Unix\'>Unix</option>\r\n	<option value=\'Linux\'>Linux</option>\r\n	<option value=\'MacOS\'>MacOS</option>\r\n</select>', '', 0, 100, '', '', 'text', 'array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'Win2000/WinXP/Win2003\',\n  \'ispassword\' => \'0\',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 1, 0, 14, 0, 0),
(45, 2, 1, 'copytype', '软件授权形式', '', '', 0, 15, '', '', 'box', 'array (\n  \'options\' => \'免费版|免费版\r\n共享版|共享版\r\n试用版|试用版\r\n演示版|演示版\r\n注册版|注册版\r\n破解版|破解版\r\n零售版|零售版\r\nOEM版|OEM版\',\n  \'boxtype\' => \'select\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'cols\' => \'5\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'default_select_value\' => \'免费版\',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 12, 0, 0),
(46, 2, 1, 'language', '软件语言', '', '', 0, 16, '', '', 'box', 'array (\n  \'options\' => \'英文|英文\r\n简体中文|简体中文\r\n繁体中文|繁体中文\r\n简繁中文|简繁中文\r\n多国语言|多国语言\r\n其他语言|其他语言\',\n  \'boxtype\' => \'select\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'cols\' => \'5\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'default_select_value\' => \'简体中文\',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 13, 0, 0),
(47, 2, 1, 'classtype', '软件类型', '', '', 0, 20, '', '', 'box', 'array (\n  \'options\' => \'国产软件|国产软件\r\n国外软件|国外软件\r\n汉化补丁|汉化补丁\r\n程序源码|程序源码\r\n其他|其他\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'cols\' => \'5\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'default_select_value\' => \'国产软件\',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 17, 0, 0),
(48, 2, 1, 'version', '版本号', '', '', 0, 20, '', '', 'text', 'array (\n  \'size\' => \'10\',\n  \'defaultvalue\' => \'\',\n  \'ispassword\' => \'0\',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 1, 0, 13, 0, 0),
(49, 2, 1, 'filesize', '文件大小', '', '', 0, 10, '', '', 'text', 'array (\n  \'size\' => \'10\',\n  \'defaultvalue\' => \'未知\',\n  \'ispassword\' => \'0\',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 1, 0, 14, 0, 0),
(50, 2, 1, 'stars', '评分等级', '', '', 0, 20, '', '', 'box', 'array (\n  \'options\' => \'★☆☆☆☆|★☆☆☆☆\r\n★★☆☆☆|★★☆☆☆\r\n★★★☆☆|★★★☆☆\r\n★★★★☆|★★★★☆\r\n★★★★★|★★★★★\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'cols\' => \'5\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'default_select_value\' => \'★★★☆☆\',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 17, 0, 0),
(51, 3, 1, 'allow_comment', '允许评论', '', '', 0, 0, '', '', 'box', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'tinyint\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'0\',\n)', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0),
(52, 3, 1, 'template', '内容页模板', '', '', 0, 30, '', '', 'template', 'array (\n  \'size\' => \'\',\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0),
(53, 3, 1, 'url', 'URL', '', '', 0, 100, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 50, 0, 0),
(54, 3, 1, 'listorder', '排序', '', '', 0, 6, '', '', 'number', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 51, 0, 0),
(55, 3, 1, 'posids', '推荐位', '', '', 0, 0, '', '', 'posid', 'array (\n  \'cols\' => \'4\',\n  \'width\' => \'125\',\n)', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 18, 0, 0),
(56, 3, 1, 'groupids_view', '阅读权限', '', '', 0, 0, '', '', 'groupid', 'array (\n  \'groupids\' => \'\',\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 19, 0, 0),
(57, 3, 1, 'inputtime', '发布时间', '', '', 0, 0, '', '', 'datetime', 'array (\n  \'fieldtype\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'0\',\n)', '', '', '', 0, 1, 0, 0, 0, 0, 0, 1, 17, 0, 0),
(58, 3, 1, 'pages', '分页方式', '', '', 0, 0, '', '', 'pages', '', '', '-99', '-99', 0, 0, 0, 1, 0, 0, 0, 0, 16, 0, 0),
(59, 3, 1, 'relation', '相关组图', '', '', 0, 0, '', '', 'omnipotent', 'array (\n  \'formtext\' => \'<input type=\\\'hidden\\\' name=\\\'info[relation]\\\' id=\\\'relation\\\' value=\\\'{FIELD_VALUE}\\\' style=\\\'50\\\' >\r\n<ul class="list-dot" id="relation_text"></ul>\r\n<div>\r\n<input type=\\\'button\\\' value="添加相关" onclick="omnipotent(\\\'selectid\\\',\\\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\\\',\\\'添加相关文章\\\',1)" class="button" style="width:66px;">\r\n<span class="edit_content">\r\n<input type=\\\'button\\\' value="显示已有" onclick="show_relation({MODELID},{ID})" class="button" style="width:66px;">\r\n</span>\r\n</div>\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n)', '', '2,6,4,5,1,17,18,7', '', 0, 0, 0, 0, 0, 0, 1, 0, 15, 0, 0),
(60, 3, 1, 'thumb', '缩略图', '', '', 0, 100, '', '', 'image', 'array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'show_type\' => \'1\',\n  \'upload_maxsize\' => \'1024\',\n  \'upload_allowext\' => \'jpg|jpeg|gif|png|bmp\',\n  \'watermark\' => \'0\',\n  \'isselectimage\' => \'1\',\n  \'images_width\' => \'\',\n  \'images_height\' => \'\',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 0, 1, 14, 0, 0),
(61, 3, 1, 'content', '内容', '<div class="content_attr"><label><input name="add_introduce" type="checkbox"  value="1" checked>是否截取内容</label><input type="text" name="introcude_length" value="200" size="3">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value="1" checked>是否获取内容第</label><input type="text" name="auto_thumb_no" value="1" size="2" class="">张图片作为标题图片\r\n</div>', '', 0, 999999, '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'defaultvalue\' => \'\',\n  \'enablekeylink\' => \'1\',\n  \'replacenum\' => \'2\',\n  \'link_mode\' => \'0\',\n  \'enablesaveimage\' => \'1\',\n  \'height\' => \'\',\n  \'disabled_page\' => \'1\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 13, 0, 0),
(62, 3, 1, 'updatetime', '更新时间', '', '', 0, 0, '', '', 'datetime', 'array (\r\n  \'dateformat\' => \'int\',\r\n  \'format\' => \'Y-m-d H:i:s\',\r\n  \'defaulttype\' => \'1\',\r\n  \'defaultvalue\' => \'\',\r\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 12, 0, 0),
(63, 3, 1, 'description', '摘要', '', '', 0, 255, '', '', 'textarea', 'array (\r\n  \'width\' => \'98\',\r\n  \'height\' => \'46\',\r\n  \'defaultvalue\' => \'\',\r\n  \'enablehtml\' => \'0\',\r\n)', '', '', '', 0, 1, 0, 1, 0, 1, 1, 1, 10, 0, 0),
(64, 3, 1, 'title', '标题', '', 'inputtitle', 1, 80, '', '请输入标题', 'title', '', '', '', '', 0, 1, 0, 1, 1, 1, 1, 1, 4, 0, 0),
(65, 3, 1, 'keywords', '关键词', '多关键词之间用空格或者“,”隔开', '', 0, 40, '', '', 'keyword', 'array (\r\n  \'size\' => \'100\',\r\n  \'defaultvalue\' => \'\',\r\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 1, 0, 7, 0, 0),
(66, 3, 1, 'typeid', '类别', '', '', 0, 0, '', '', 'typeid', 'array (\n  \'minnumber\' => \'\',\n  \'defaultvalue\' => \'\',\n)', '', '', '', 0, 1, 0, 1, 1, 1, 0, 0, 2, 0, 0),
(67, 3, 1, 'catid', '栏目', '', '', 1, 6, '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'array (\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(68, 3, 1, 'status', '状态', '', '', 0, 2, '', '', 'box', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 55, 0, 0),
(69, 3, 1, 'readpoint', '阅读收费', '', '', 0, 5, '', '', 'readpoint', 'array (\n  \'minnumber\' => \'1\',\n  \'maxnumber\' => \'99999\',\n  \'decimaldigits\' => \'0\',\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0),
(70, 3, 1, 'username', '用户名', '', '', 0, 20, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 98, 0, 0),
(71, 3, 1, 'pictureurls', '组图', '', '', 0, 0, '', '', 'images', 'array (\n  \'upload_allowext\' => \'gif|jpg|jpeg|png|bmp\',\n  \'isselectimage\' => \'1\',\n  \'upload_number\' => \'50\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 15, 0, 0),
(72, 3, 1, 'copyfrom', '来源', '', '', 0, 0, '', '', 'copyfrom', 'array (\n  \'defaultvalue\' => \'\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 8, 0, 0),
(73, 1, 1, 'islink', '转向链接', '', '', 0, 0, '', '', 'islink', '', '', '', '', 0, 1, 0, 0, 0, 1, 0, 0, 30, 0, 0),
(74, 2, 1, 'islink', '转向链接', '', '', 0, 0, '', '', 'islink', '', '', '', '', 0, 1, 0, 0, 0, 1, 0, 0, 30, 0, 0),
(75, 3, 1, 'islink', '转向链接', '', '', 0, 0, '', '', 'islink', '', '', '', '', 0, 1, 0, 0, 0, 1, 0, 0, 30, 0, 0),
(83, 10, 1, 'birthday', '生日', '', '', 0, 0, '', '生日格式错误', 'datetime', 'array (\n  \'fieldtype\' => \'date\',\n  \'format\' => \'Y-m-d\',\n  \'defaulttype\' => \'0\',\n)', '', '', '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(84, 11, 1, 'catid', '栏目', '', '', 1, 6, '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'array (\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(85, 11, 1, 'typeid', '类别', '', '', 0, 0, '', '', 'typeid', 'array (\n  \'minnumber\' => \'\',\n  \'defaultvalue\' => \'\',\n)', '', '', '', 0, 1, 0, 1, 1, 1, 0, 0, 2, 0, 0),
(86, 11, 1, 'title', '标题', '', 'inputtitle', 1, 80, '', '请输入标题', 'title', 'array (\n)', '', '', '', 0, 1, 0, 1, 1, 1, 1, 1, 4, 0, 0),
(87, 11, 1, 'keywords', '关键词', '多关键词之间用空格或者“,”隔开', '', 0, 40, '', '', 'keyword', 'array (\n  \'size\' => \'100\',\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 1, 0, 7, 0, 0),
(88, 11, 1, 'description', '摘要', '', '', 0, 255, '', '', 'textarea', 'array (\n  \'width\' => \'98\',\n  \'height\' => \'46\',\n  \'defaultvalue\' => \'\',\n  \'enablehtml\' => \'0\',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 1, 1, 10, 0, 0),
(89, 11, 1, 'updatetime', '更新时间', '', '', 0, 0, '', '', 'datetime', 'array (\n  \'dateformat\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'1\',\n  \'defaultvalue\' => \'\',\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 12, 0, 0),
(90, 11, 1, 'content', '内容', '<div class="content_attr"><label><input name="add_introduce" type="checkbox"  value="1" checked>是否截取内容</label><input type="text" name="introcude_length" value="200" size="3">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value="1" checked>是否获取内容第</label><input type="text" name="auto_thumb_no" value="1" size="2" class="">张图片作为标题图片\r\n</div>', '', 0, 999999, '', '内容不能为空', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'defaultvalue\' => \'\',\n  \'enablekeylink\' => \'1\',\n  \'replacenum\' => \'2\',\n  \'link_mode\' => \'0\',\n  \'enablesaveimage\' => \'1\',\n  \'height\' => \'\',\n  \'disabled_page\' => \'0\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 13, 0, 0),
(91, 11, 1, 'thumb', '缩略图', '', '', 0, 100, '', '', 'image', 'array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'show_type\' => \'1\',\n  \'upload_maxsize\' => \'1024\',\n  \'upload_allowext\' => \'jpg|jpeg|gif|png|bmp\',\n  \'watermark\' => \'0\',\n  \'isselectimage\' => \'1\',\n  \'images_width\' => \'\',\n  \'images_height\' => \'\',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 0, 1, 14, 0, 0),
(92, 11, 1, 'relation', '相关文章', '', '', 0, 0, '', '', 'omnipotent', 'array (\n  \'formtext\' => \'<input type=\\\'hidden\\\' name=\\\'info[relation]\\\' id=\\\'relation\\\' value=\\\'{FIELD_VALUE}\\\' style=\\\'50\\\' >\r\n<ul class="list-dot" id="relation_text"></ul>\r\n<div>\r\n<input type=\\\'button\\\' value="添加相关" onclick="omnipotent(\\\'selectid\\\',\\\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\\\',\\\'添加相关文章\\\',1)" class="button" style="width:66px;">\r\n<span class="edit_content">\r\n<input type=\\\'button\\\' value="显示已有" onclick="show_relation({MODELID},{ID})" class="button" style="width:66px;">\r\n</span>\r\n</div>\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n)', '', '2,6,4,5,1,17,18,7', '', 0, 0, 0, 0, 0, 0, 1, 0, 15, 0, 0),
(93, 11, 1, 'pages', '分页方式', '', '', 0, 0, '', '', 'pages', 'array (\n)', '', '-99', '-99', 0, 0, 0, 1, 0, 0, 0, 0, 16, 0, 0),
(94, 11, 1, 'inputtime', '发布时间', '', '', 0, 0, '', '', 'datetime', 'array (\n  \'fieldtype\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'0\',\n)', '', '', '', 0, 1, 0, 0, 0, 0, 0, 1, 17, 0, 0),
(95, 11, 1, 'posids', '推荐位', '', '', 0, 0, '', '', 'posid', 'array (\n  \'cols\' => \'4\',\n  \'width\' => \'125\',\n)', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 18, 0, 0),
(96, 11, 1, 'groupids_view', '阅读权限', '', '', 0, 100, '', '', 'groupid', 'array (\n  \'groupids\' => \'\',\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 19, 0, 0),
(97, 11, 1, 'url', 'URL', '', '', 0, 100, '', '', 'text', 'array (\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 50, 0, 0),
(98, 11, 1, 'listorder', '排序', '', '', 0, 6, '', '', 'number', 'array (\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 51, 0, 0),
(99, 11, 1, 'template', '内容页模板', '', '', 0, 30, '', '', 'template', 'array (\n  \'size\' => \'\',\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0),
(100, 11, 1, 'allow_comment', '允许评论', '', '', 0, 0, '', '', 'box', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'tinyint\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'0\',\n)', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0),
(101, 11, 1, 'status', '状态', '', '', 0, 2, '', '', 'box', 'array (\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 55, 0, 0),
(102, 11, 1, 'readpoint', '阅读收费', '', '', 0, 5, '', '', 'readpoint', 'array (\n  \'minnumber\' => \'1\',\n  \'maxnumber\' => \'99999\',\n  \'decimaldigits\' => \'0\',\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0),
(103, 11, 1, 'username', '用户名', '', '', 0, 20, '', '', 'text', 'array (\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 98, 0, 0),
(104, 11, 1, 'islink', '转向链接', '', '', 0, 0, '', '', 'islink', 'array (\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 20, 0, 0),
(105, 11, 1, 'video', '视频上传', '', '', 0, 0, '', '', 'video', 'array (\n  \'upload_allowext\' => \'flv|rm|mp4|rmv\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 8, 0, 0),
(106, 11, 1, 'vision', '画质', '', '', 0, 0, '', '', 'box', 'array (\n  \'options\' => \'高清|1\r\n普通|2\',\n  \'boxtype\' => \'select\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'0\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'1\',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 9, 0, 0),
(107, 11, 1, 'video_category', '视频分类', '', '', 0, 0, '', '', 'box', 'array (\n  \'options\' => \'喜剧|1\r\n爱情|2\r\n科幻|3\r\n剧情|4\r\n动作|5\r\n伦理|6\',\n  \'boxtype\' => \'select\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'1\',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 9, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_module`
--

CREATE TABLE `v9_module` (
  `module` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(50) NOT NULL,
  `iscore` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `version` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL,
  `setting` mediumtext NOT NULL,
  `listorder` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `installdate` date NOT NULL DEFAULT '0000-00-00',
  `updatedate` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_module`
--

INSERT INTO `v9_module` (`module`, `name`, `url`, `iscore`, `version`, `description`, `setting`, `listorder`, `disabled`, `installdate`, `updatedate`) VALUES
('admin', 'admin', '', 1, '1.0', '', 'array (\n  \'admin_email\' => \'phpcms@phpcms.cn\',\n  \'adminaccessip\' => \'0\',\n  \'maxloginfailedtimes\' => \'8\',\n  \'maxiplockedtime\' => \'15\',\n  \'minrefreshtime\' => \'2\',\n  \'mail_type\' => \'1\',\n  \'mail_server\' => \'smtp.qq.com\',\n  \'mail_port\' => \'25\',\n  \'mail_user\' => \'phpcms.cn@foxmail.com\',\n  \'mail_auth\' => \'1\',\n  \'mail_from\' => \'phpcms.cn@foxmail.com\',\n  \'mail_password\' => \'\',\n  \'errorlog_size\' => \'20\',\n)', 0, 0, '2010-10-18', '2010-10-18'),
('member', '会员', '', 1, '1.0', '', 'array (\n  \'allowregister\' => \'1\',\n  \'choosemodel\' => \'1\',\n  \'enablemailcheck\' => \'0\',\n  \'registerverify\' => \'0\',\n  \'showapppoint\' => \'0\',\n  \'rmb_point_rate\' => \'10\',\n  \'defualtpoint\' => \'0\',\n  \'defualtamount\' => \'0\',\n  \'showregprotocol\' => \'0\',\n  \'regprotocol\' => \'		 欢迎您注册成为phpcms用户\r\n请仔细阅读下面的协议，只有接受协议才能继续进行注册。 \r\n1．服务条款的确认和接纳\r\n　　phpcms用户服务的所有权和运作权归phpcms拥有。phpcms所提供的服务将按照有关章程、服务条款和操作规则严格执行。用户通过注册程序点击“我同意” 按钮，即表示用户与phpcms达成协议并接受所有的服务条款。\r\n2． phpcms服务简介\r\n　　phpcms通过国际互联网为用户提供新闻及文章浏览、图片浏览、软件下载、网上留言和BBS论坛等服务。\r\n　　用户必须： \r\n　　1)购置设备，包括个人电脑一台、调制解调器一个及配备上网装置。 \r\n　　2)个人上网和支付与此服务有关的电话费用、网络费用。\r\n　　用户同意： \r\n　　1)提供及时、详尽及准确的个人资料。 \r\n　　2)不断更新注册资料，符合及时、详尽、准确的要求。所有原始键入的资料将引用为注册资料。 \r\n　　3)用户同意遵守《中华人民共和国保守国家秘密法》、《中华人民共和国计算机信息系统安全保护条例》、《计算机软件保护条例》等有关计算机及互联网规定的法律和法规、实施办法。在任何情况下，phpcms合理地认为用户的行为可能违反上述法律、法规，phpcms可以在任何时候，不经事先通知终止向该用户提供服务。用户应了解国际互联网的无国界性，应特别注意遵守当地所有有关的法律和法规。\r\n3． 服务条款的修改\r\n　　phpcms会不定时地修改服务条款，服务条款一旦发生变动，将会在相关页面上提示修改内容。如果您同意改动，则再一次点击“我同意”按钮。 如果您不接受，则及时取消您的用户使用服务资格。\r\n4． 服务修订\r\n　　phpcms保留随时修改或中断服务而不需知照用户的权利。phpcms行使修改或中断服务的权利，不需对用户或第三方负责。\r\n5． 用户隐私制度\r\n　　尊重用户个人隐私是phpcms的 基本政策。phpcms不会公开、编辑或透露用户的注册信息，除非有法律许可要求，或phpcms在诚信的基础上认为透露这些信息在以下三种情况是必要的： \r\n　　1)遵守有关法律规定，遵从合法服务程序。 \r\n　　2)保持维护phpcms的商标所有权。 \r\n　　3)在紧急情况下竭力维护用户个人和社会大众的隐私安全。 \r\n　　4)符合其他相关的要求。 \r\n6．用户的帐号，密码和安全性\r\n　　一旦注册成功成为phpcms用户，您将得到一个密码和帐号。如果您不保管好自己的帐号和密码安全，将对因此产生的后果负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。您可随时根据指示改变您的密码，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，立即通知phpcms。\r\n7． 免责条款\r\n　　用户明确同意网站服务的使用由用户个人承担风险。 　　 \r\n　　phpcms不作任何类型的担保，不担保服务一定能满足用户的要求，也不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保。用户理解并接受：任何通过phpcms服务取得的信息资料的可靠性取决于用户自己，用户自己承担所有风险和责任。 \r\n8．有限责任\r\n　　phpcms对任何直接、间接、偶然、特殊及继起的损害不负责任。\r\n9． 不提供零售和商业性服务 \r\n　　用户使用网站服务的权利是个人的。用户只能是一个单独的个体而不能是一个公司或实体商业性组织。用户承诺不经phpcms同意，不能利用网站服务进行销售或其他商业用途。\r\n10．用户责任 \r\n　　用户单独承担传输内容的责任。用户必须遵循： \r\n　　1)从中国境内向外传输技术性资料时必须符合中国有关法规。 \r\n　　2)使用网站服务不作非法用途。 \r\n　　3)不干扰或混乱网络服务。 \r\n　　4)不在论坛BBS或留言簿发表任何与政治相关的信息。 \r\n　　5)遵守所有使用网站服务的网络协议、规定、程序和惯例。\r\n　　6)不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益。\r\n　　7)不得利用本站制作、复制和传播下列信息： \r\n　　　1、煽动抗拒、破坏宪法和法律、行政法规实施的；\r\n　　　2、煽动颠覆国家政权，推翻社会主义制度的；\r\n　　　3、煽动分裂国家、破坏国家统一的；\r\n　　　4、煽动民族仇恨、民族歧视，破坏民族团结的；\r\n　　　5、捏造或者歪曲事实，散布谣言，扰乱社会秩序的；\r\n　　　6、宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；\r\n　　　7、公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；\r\n　　　8、损害国家机关信誉的；\r\n　　　9、其他违反宪法和法律行政法规的；\r\n　　　10、进行商业广告行为的。\r\n　　用户不能传输任何教唆他人构成犯罪行为的资料；不能传输长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法 律的资料。未经许可而非法进入其它电脑系统是禁止的。若用户的行为不符合以上的条款，phpcms将取消用户服务帐号。\r\n11．网站内容的所有权\r\n　　phpcms定义的内容包括：文字、软件、声音、相片、录象、图表；在广告中全部内容；电子邮件的全部内容；phpcms为用户提供的商业信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在phpcms和广告商授权下才能使用这些内容，而不能擅自复制、篡改这些内容、或创造与内容有关的派生产品。\r\n12．附加信息服务\r\n　　用户在享用phpcms提供的免费服务的同时，同意接受phpcms提供的各类附加信息服务。\r\n13．解释权\r\n　　本注册协议的解释权归phpcms所有。如果其中有任何条款与国家的有关法律相抵触，则以国家法律的明文规定为准。 \',\n  \'registerverifymessage\' => \' 欢迎您注册成为phpcms用户，您的账号需要邮箱认证，点击下面链接进行认证：{click}\r\n或者将网址复制到浏览器：{url}\',\n  \'forgetpassword\' => \' phpcms密码找回，请在一小时内点击下面链接进行操作：{click}\r\n或者将网址复制到浏览器：{url}\',\n)', 0, 0, '2010-09-06', '2010-09-06'),
('pay', '支付', '', 1, '1.0', '', '', 0, 0, '2010-09-06', '2010-09-06'),
('digg', '顶一下', '', 0, '1.0', '', '', 0, 0, '2010-09-06', '2010-09-06'),
('special', '专题', '', 0, '1.0', '', '', 0, 0, '2010-09-06', '2010-09-06'),
('content', '内容模块', '', 1, '1.0', '', '', 0, 0, '2010-09-06', '2010-09-06'),
('search', '全站搜索', '', 0, '1.0', '', 'array (\n  \'fulltextenble\' => \'1\',\n  \'relationenble\' => \'1\',\n  \'suggestenable\' => \'1\',\n  \'sphinxenable\' => \'0\',\n  \'sphinxhost\' => \'10.228.134.102\',\n  \'sphinxport\' => \'9312\',\n)', 0, 0, '2010-09-06', '2010-09-06'),
('scan', '木马扫描', 'scan', 0, '1.0', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('attachment', '附件', 'attachment', 1, '1.0', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('block', '碎片', '', 1, '1.0', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('collection', '采集模块', 'collection', 1, '1.0', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('dbsource', '数据源', '', 1, '', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('template', '模板风格', '', 1, '1.0', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('release', '发布点', '', 1, '1.0', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('video', '视频库', '', 0, '1.0', '', '', 0, 0, '2012-09-28', '2012-09-28'),
('announce', '公告', 'announce/', 0, '1.0', '公告', '', 0, 0, '2017-11-25', '2017-11-25'),
('link', '友情链接', '', 0, '1.0', '', 'array (\n  1 => \n  array (\n    \'is_post\' => \'1\',\n    \'enablecheckcode\' => \'0\',\n  ),\n)', 0, 0, '2010-09-06', '2010-09-06'),
('formguide', '表单向导', 'formguide/', 0, '1.0', 'formguide', 'array (\n  \'allowmultisubmit\' => \'1\',\n  \'interval\' => \'30\',\n  \'allowunreg\' => \'0\',\n  \'mailmessage\' => \'用户向我们提交了表单数据，赶快去看看吧。\',\n)', 0, 0, '2010-10-20', '2010-10-20'),
('wap', '手机门户', 'wap/', 0, '1.0', '手机门户', '', 0, 0, '2017-11-25', '2017-11-25'),
('tag', '标签向导', 'tag/', 0, '1.0', '标签向导', '', 0, 0, '2017-11-25', '2017-11-25');

-- --------------------------------------------------------

--
-- 表的结构 `v9_news`
--

CREATE TABLE `v9_news` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `typeid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `posids` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `islink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_news`
--

INSERT INTO `v9_news` (`id`, `catid`, `typeid`, `title`, `style`, `thumb`, `keywords`, `description`, `posids`, `url`, `listorder`, `status`, `sysadd`, `islink`, `username`, `inputtime`, `updatetime`) VALUES
(18, 13, 0, '6：计算机的影响', '', 'http://localhost/happy/uploadfile/2017/1126/20171126021501676.jpg', '', '计算机的发明者约翰&middot;冯&middot;诺依曼。计算机是20世纪最先进的科学技术发明之一，对人类的生产活动和社会活动产生了极其重要的影响，并以强大的   ', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=13&id=18', 6, 99, 1, 0, 'baile', 1511675079, 1511778425),
(6, 13, 0, '10：2017年IT行业就业前景分析', '', 'http://localhost/happy/uploadfile/2017/1126/20171126021856347.jpg', '', '2017年，在社会趋势、国家政策方向面前，IT行业将迎来新得发展高度。IT行业涵盖的范围是很广的，包括了IT硬件设备、软件开发。IT的相关行业   ', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=13&id=6', 10, 99, 1, 0, 'baile', 1511596695, 1511778442),
(4, 12, 0, 'MV*框架大集合', '', 'http://localhost/happy/uploadfile/2017/1127/20171127051254724.png', '', 'MVC MVVM框架那些事【直播课】、\r\n前端跨界AI、iOS、PC、Android、IOT\r\n', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=12&id=4', 0, 99, 1, 0, 'baile', 1511595578, 1511790052),
(32, 12, 0, '性能优化与工程师', '', 'http://localhost/happy/uploadfile/2017/1127/20171127051238425.png', '', '前端性能优化与工程化 、\r\n  CSS古话今说与网站重构', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=12&id=32', 0, 99, 1, 0, 'baile', 1511706711, 1511789961),
(16, 13, 0, '8：IT未来发展的几大趋势', '', 'http://localhost/happy/uploadfile/2017/1126/20171126021758623.jpg', '', '1 通过增强现实来提升体验Economist Intelligence Unit全球技术研究主管Denis MaCauley一直致力于研究IT及增强现实的未来趋势，增强现实   ', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=13&id=16', 8, 99, 1, 0, 'baile', 1511674940, 1511778438),
(7, 13, 0, '9：IT面试中常见的问题', '', 'http://localhost/happy/uploadfile/2017/1126/20171126021828902.jpg', '', '对程序员而言，面试时让他写一段超难的代码他觉得很容易，让他和人面对面聊天反而会觉得很难。程序员觉得说不如做，自己的实力在这儿，说不   ', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=13&id=7', 9, 99, 1, 0, 'baile', 1511596785, 1511778434),
(14, 11, 0, '张老师', '', 'http://localhost/happy/uploadfile/2017/1126/20171126125633449.jpg', '老师', '张老师简介：——资深互联网专家，IT行业老兵，创业精英！——国内微营销先驱和倡导者，产品型社群商业模式践行者！中国人民大学管理学硕士曾（中国）资深项目顾问！', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=11&id=14', 0, 99, 1, 0, 'baile', 1511672013, 1511777702),
(15, 11, 0, '庆老师', '', 'http://localhost/happy/uploadfile/2017/1126/20171126125817643.jpg', '老师', '庆老师简介：IT从业工作19年，4年为大型企业信息化战略咨询经验，咨询内容包括IT规划咨询、项目管理办公室咨询、企业数据治理咨询，9年为数据仓库和商业智能技术领域的研发工作经验，', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=11&id=15', 0, 99, 1, 0, 'baile', 1511672290, 1511777267),
(17, 13, 0, '7：计算机发展的四个阶段', '', 'http://localhost/happy/uploadfile/2017/1126/20171126021711596.jpg', '', '计算机网络从产生到发展，总体来说可以分成4个阶段。 第1阶段：20世纪60年代末到20世纪70年代初为计算机网络发展的萌芽阶段。其主要特征是   ', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=13&id=17', 7, 99, 1, 0, 'baile', 1511675026, 1511778430),
(13, 11, 0, '朱老师', '', 'http://localhost/happy/uploadfile/2017/1126/20171126125314437.jpg', '老师', '朱老师简介：15年工作经验，其中10年甲乙方工作经历，5年第三方培训咨询经历，形成了独特和专业的信息化全生命周期管理培训系列课程。为近二百家企业提供过数次的培训！', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=11&id=13', 0, 99, 1, 0, 'baile', 1511671913, 1511777762),
(19, 13, 0, '5：万物互联', '', 'http://localhost/happy/uploadfile/2017/1126/20171126021307920.jpg', '', '万物互联定义万物互联（IoE）定义为将人，流程，数据和事物结合一起使得网络连接变得更加相关，更有价值。万物互联将信息转化为行动，给企   ', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=13&id=19', 5, 99, 1, 0, 'baile', 1511675126, 1511778420),
(20, 13, 0, '4：计算机发展的弊端', '', 'http://localhost/happy/uploadfile/2017/1126/20171126021103730.jpg', '', '一是网上安全问题。它包括网站安全、交易安全、网络信息安全。主要是指黑客、病毒对网络系统的硬件、软件及其系统中的数据破坏、更改、泄露   ', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=13&id=20', 4, 99, 1, 0, 'baile', 1511675167, 1511778414),
(21, 13, 0, '3：计算机的特点', '#FF0000', 'http://localhost/happy/uploadfile/2017/1126/20171126021008488.png', '', '运算速度快 计算机的运算速度(也称处理速度)是计算机的一个重要性能指标，通常用每秒钟执行定点加法的次数或平均每秒钟执行指令的条数来衡   ', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=13&id=21', 3, 99, 1, 0, 'baile', 1511675224, 1511778410),
(22, 13, 0, '2：计算机技术对我们生活的影响', '#FF0000', 'http://localhost/happy/uploadfile/2017/1126/20171126020732328.jpg', '', ' 伴随着计算机的普及与发展，”Internet”一词已经让我们不再感到陌生，随着E时代的来，新的理念和结构也在不断的形成和完善，网络给人类的工作学习和生活带来了极大的方便，', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=13&id=22', 2, 99, 1, 0, 'baile', 1511675262, 1511778498),
(23, 13, 0, '1：网络游戏的定义', '#FF0000', 'http://localhost/happy/uploadfile/2017/1126/20171126020514860.jpg', '网络游戏', '网络游戏：英文名称为OnlineGame，又称 在线游戏，简称网游。指以互联网为传输媒介，以游戏运营商服务器和用户计算机为处理终端，以游戏客   ', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=13&id=23', 1, 99, 1, 0, 'baile', 1511675294, 1511778388),
(33, 12, 0, '前端工程化那些事儿', '', 'http://localhost/happy/uploadfile/2017/1127/20171127051217504.png', '', 'PHP与MySQL开发入门、\r\nPHP与MySQL开发入门【中】、\r\n PHP与MySQL开发入门【下】', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=12&id=33', 0, 99, 1, 0, 'baile', 1511773663, 1511789953),
(24, 14, 0, '互联网牛掰职位从这里开始', '', 'http://localhost/happy/uploadfile/2017/1127/20171127095406640.jpg', '', '   你能想到的互联网牛掰职位都从这里开始7大课程，绝对职场神助攻，覆盖互联网技术行业全部技术岗位，课程半年升级一次，紧跟市场与企   ', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=14&id=24', 1, 99, 1, 0, 'baile', 1511704575, 1511790848),
(28, 14, 0, '行业前景', '', 'http://localhost/happy/uploadfile/2017/1127/20171127095342464.jpg', '前景 行业', 'IT行业前景人才需求大，待遇好IT行业发展日趋迅猛，IT产业的产值成倍增长，发展必然带来人才的需求，IT行业从业者的薪资待遇也就随之不断攀   ', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=14&id=28', 0, 99, 1, 0, 'baile', 1511705254, 1511790826),
(26, 14, 0, '学习阶段了解', '', 'http://localhost/happy/uploadfile/2017/1127/20171127095356215.jpg', '氛围', '引领行业的课程体系 更贴合企业用人需求拯救传统落后的行业现状，课程大纲紧跟技术潮流前沿，多项技能综合学习，打造全能人才PHP开发工程   ', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=14&id=26', 2, 99, 1, 0, 'baile', 1511704808, 1511790837),
(29, 14, 0, '六大核心保障', '', 'http://localhost/happy/uploadfile/2017/1127/20171127095332524.jpg', '核心', '六大核心保障 一经入学360&deg;云服务学习中途落课了怎么办中途耽误几天的话可以通过看视频同步完成老师的作业弥补进度，不会的可以随时问   ', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=14&id=29', 0, 99, 1, 0, 'baile', 1511705950, 1511790814),
(30, 14, 0, '多重行业保证', '', 'http://localhost/happy/uploadfile/2017/1127/20171127095224214.jpg', '行业', '多重教学保障服务课上讲师精讲总监级技术专家主讲，理论与实践相结合，知识模块与项目案例相结合，边讲边演示代码，学员人手一台电脑，边学   ', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=14&id=30', 0, 99, 1, 0, 'baile', 1511706006, 1511791592),
(34, 12, 0, 'EcmaScript体系', '', 'http://localhost/happy/uploadfile/2017/1127/20171127051139545.png', '', 'EcmaScript5 1新增语法，、一些让你感兴趣的内容', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=12&id=34', 0, 99, 1, 0, 'baile', 1511773719, 1511789984),
(35, 12, 0, 'Javascript语言新发展', '', 'http://localhost/happy/uploadfile/2017/1127/20171127051120766.png', '新发 语言', ' JavaScript语言新发展、\r\n精英班预读班', 0, 'http://localhost/happy/index.php?m=content&c=index&a=show&catid=12&id=35', 0, 99, 1, 0, 'baile', 1511773743, 1511790019);

-- --------------------------------------------------------

--
-- 表的结构 `v9_news_data`
--

CREATE TABLE `v9_news_data` (
  `id` mediumint(8) UNSIGNED DEFAULT '0',
  `content` mediumtext NOT NULL,
  `readpoint` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `voteid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `copyfrom` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_news_data`
--

INSERT INTO `v9_news_data` (`id`, `content`, `readpoint`, `groupids_view`, `paginationtype`, `maxcharperpage`, `template`, `paytype`, `relation`, `voteid`, `allow_comment`, `copyfrom`) VALUES
(4, '<div class="task-part-item" style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, arial, 宋体, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 14px;">\r\n<div class="task-part-hd" style="line-height: 40px; height: 40px; position: relative; margin-bottom: 5px; padding-top: 5px;">\r\n<h3 class="part-tt" style="margin: 0px; font-size: 16px;">.MVC MVVM框架那些事【直播课】</h3>\r\n</div>\r\n<div class="task-task-list" style="margin: 0px 10px;">\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】React深度指南">【直播】React深度指南</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(3月27日 20:00-22:00)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】Vue源码分析">【直播】Vue源码分析</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(3月30日 20:00-22:00)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】第六周考试+作业讲解">【直播】第六周考试+作业讲解</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(4月6日 20:00-22:00)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】前端架构师实战场">【直播】前端架构师实战场</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(4月7日 20:00-22:00)</span></a></p>\r\n</div>\r\n</div>\r\n<div class="task-part-item" style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, arial, 宋体, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 14px;">\r\n<div class="task-part-hd" style="line-height: 40px; height: 40px; position: relative; margin-bottom: 5px; padding-top: 5px;">\r\n<h3 class="part-tt" style="margin: 0px; font-size: 16px;">.前端跨界AI、iOS、PC、Android、IOT</h3>\r\n</div>\r\n<div class="task-task-list" style="margin: 0px 10px;">\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】人工智能时代下的大前端">【直播】人工智能时代下的大前端</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(4月10日 20:00-22:00)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】ReactNative和Cordova原理分析">【直播】ReactNative和Cordova原理分析</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(4月13日 20:00-22:00)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(238, 238, 238); -webkit-tap-highlight-color: transparent; outline: 0px; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】第七周考试+作业讲解">【直播】第七周考试+作业讲解</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(4月20日 20:00-22:00)</span></a></p>\r\n</div>\r\n</div>\r\n<br />\r\n', 0, '', 2, 10000, '', 0, '', 0, 1, '|0'),
(16, '<img src="http://localhost/happy/uploadfile/2017/1126/20171126021758623.jpg" style="height: 375px; width: 500px; border-width: 2px; border-style: solid; margin: 10px; float: left;" />\r\n<div style="margin-left: 40px;">1.通过增强现实来提升体验</div>\r\n<div style="margin-left: 40px;">Economist Intelligence Unit全球技术研究主管Denis MaCauley一直致力于研究IT及增强现实的未来趋势，增强现实是备受关注的领域之一，主要是利用计算机生成数据来增强现实、真实世界环境的体验。MaCauley表示增强的例子可能包括增加信息，比如向体育广播中添加事实和数字。&ldquo;你拥有的一些东西是不能完全虚拟的，但可以利用计算机生成数据增强观赏体验。&rdquo;他讲到。企业和厂商希望在新领域进行投资，Juniper研究表明移动增强现实的收入在2015年将会达到15亿美元。MaCauley说，一些CIO相信增强现实能够在商业的特定领域出现可用的应用程序，如客服服务和员工培训。&ldquo;客户服务代表可以通过加大信息量覆盖多个屏幕，&rdquo;MaCauley说，&ldquo;游戏也是，在以往的组织活动中应用的并不多，但现在可以被当做工具去加强培训和进行头脑风暴活动。&rdquo;</div>\r\n<div style="margin-left: 40px;">2. 移动科技越来越火</div>\r\n<div style="margin-left: 40px;">Gary Barr，零售巨头Wm Morrisons前IT总监。他表示，预测下一个发展领域是很难的，但他相信在近期的创新领域中仍然能有所收获，尤其是便携式设备及协作工具相关领域。&ldquo;在移动技术和社交媒体能够被称作是企业标准工具之前，还有很多时间发生别的事情，&rdquo;他说。&ldquo;人们现在在工作场所内外都能够得益于一些令人难以置信的便携式技术，但CIO们不一定能够搞清这些协作工具是如何在工作场所背景下被使用的。&rdquo;</div>\r\n<div style="margin-left: 40px;">Barr说，对于创新来说，需要有一段沉寂期，然后才可能被接受成为开展业务的新方式。他以千年之交的dot-com革命举例，认为那个时代的大品牌如Amazon和eBay经历了最好的十年，然后才成功。&ldquo;从大肆宣传的创新逐渐走向成熟，电子商务花了10年时间才成为强大的商业模式。&rdquo;他指出，&ldquo;同样，在这些创新真正能被作为优势采用之前，类似的事情也会发生在移动和社交科技领域。&rdquo;</div>\r\n<div style="margin-left: 40px;">3. 创新与新技术一起发展</div>\r\n<div style="margin-left: 40px;">Toby Clarke，Abbey Protection集团保险专家组IT总监。他说，当你尝试思考企业IT的未来时，很难不把重点放在目前被夸大的技术发展领域。他指的是自身设备及云计算的增长潜力，并且他还列举了增强现实的例子。但真正的创新，他说，将会与夸大的技术一起到来。&ldquo;这是关于正在发生的一切的未来。&rdquo;Clarke说到，他认为将会有越来越多的企业及客户数据会被组织继续收集起来。&ldquo;有如此多的数据，我们需要将它们集中起来。&rdquo;Clarke说到。他指的是基于位置的服务增长及潜在的个性化服务水平，但这样的创新不是那么简单的。&ldquo;我目前努力尝试要看看这些数据存储库如何被链接起来。&rdquo;他说，&ldquo;现实情况是，一定有些东西是我的商业以及所有CIO可以在大数据方面可以一展身手的。但大量的创新工作仍然是必不可少的。&rdquo;</div>\r\n<div style="margin-left: 40px;">4. 智能大数据</div>\r\n<div style="margin-left: 40px;">Francois Zimmerman，存储专家HDS的CTO，是另一位相信在现有科技趋势中在创新方面仍有一定操作空间的IT领导者。他相信在数据使用上仍有较大的发展空间。&ldquo;相对于市场炒作，这是现实中的实例，&rdquo;他说，&ldquo;商务智能，直到现在，一直都是时髦的新鲜事物，如大数据和厂商急于重新包装的现有工具如分析系统。&rdquo;他给CIO们的建议是不要想寻找一个单一的、现成的产品来解决他们所关注的问题。Zimmerman说，从现有情况分析来看，未来的举措将会面向更加具体的部门，以及帮助企业实时处理信息。&quot;首席信息官应该一切以案例为导向，应用反方向思维，从需要的业务成果追溯到技术的准备工作。&quot;他说，&ldquo;信息的未来将都会是有关业务流程的分析。&rdquo;</div>\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(17, '<div style="margin-left: 40px;"><img src="http://localhost/happy/uploadfile/2017/1126/20171126021711596.jpg" style="height: 353px; width: 500px; border-width: 2px; border-style: solid; margin: 10px 20px; float: left;" /></div>\r\n<div style="margin-left: 40px;">计算机网络从产生到发展，总体来说可以分成4个阶段。 第1阶段：20世纪60年代末到20世纪70年代初为计算机网络发展的萌芽阶段。其主要特征是：为了增加系统的计算能力和资源共享，把小型计算机连成实验性的网络。第一个远程分组交换网叫ARPANET，是由美国国防部于1969年建成的，第一次实现了由通信网络和资源网络复合构成计算机网络系统。标志计算机网络的真正产生，ARPANET是这一阶段的典型代表。 第2阶段：20世纪70年代中后期是局域网络(LAN)发展的重要阶段，其主要特征为：局域网络作为一种新型的计算机体系结构开始进入产业部门。局域网技术是从远程分组交换通信网络和I/O总线结构计算机系统派生出来的。1976年，美国Xerox公司的Palo Alto研究中心推出以太网(Ethernet)，它成功地采用了夏威夷大学ALOHA无线电网络系统的基本原理，使之发展成为第一个总线竞争式局域网络。1974年，英国剑桥大学计算机研究所开发了著名的剑桥环局域网(Cambridge Ring)。这些网络的成功实现，一方面标志着局域网络的产生，另一方面，它们形成的以太网及环网对以后局域网络的发展起到导航的作用。 第3阶段：整个20世纪80年代是计算机局域网络的发展时期。其主要特征是：局域网络完全从硬件上实现了ISO的开放系统互连通信模式协议的能力。计算机局域网及其互连产品的集成，使得局域网与局域互连、局域网与各类主机互连，以及局域网与广域网互连的技术越来越成熟。综合业务数据通信网络(ISDN)和智能化网络(IN)的发展，标志着局域网络的飞速发展。1980年2月，IEEE (美国电气和电子工程师学会)下属的802局域网络标准委员会宣告成立，并相继提出IEEE801.5~802.6等局域网络标准草案，其中的绝大部分内容已被国际标准化组织(ISO)正式认可。作为局域网络的国际标准，它标志着局域网协议及其标准化的确定，为局域网的进一步发展奠定了基础。 第4阶段：20世纪90年代初至现在是计算机网络飞速发展的阶段，其主要特征是：计算机网络化，协同计算能力发展以及全球互连网络(Internet)的盛行。计算机的发展已经完全与网络融为一体，体现了&ldquo;网络就是计算机&rdquo;的口号。目前，计算机网络已经真正进入社会各行各业，为社会各行各业所采用。另外，虚拟网络FDDI及ATM技术的应用，使网络技术蓬勃发展并迅速走向市场，走进平民百姓的生活。</div>\r\n<div>&nbsp;</div>\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(18, '<div style="margin-left: 40px;"><img src="http://localhost/happy/uploadfile/2017/1126/20171126021501676.jpg" style="height: 300px; width: 231px; border-width: 2px; border-style: solid; margin: 30px 20px; float: right;" /><br />\r\n计算机的发明者约翰&middot;冯&middot;诺依曼。计算机是20世纪最先进的科学技术发明之一，对人类的生产活动和社会活动产生了极其重要的影响，并以强大的生命力飞速发展。它的应用领域从最初的军事科研应用扩展到社会的各个领域，已形成了规模巨大的计算机产业，带动了全球范围的技术进步，由此引发了深刻的社会变革，计算机已遍及一般学校、企事业单位，进入寻常百姓家，成为信息社会中必不可少的工具。它是人类进入信息时代的重要标志之一。随着互联网的提出发展，计算机与其他技术又一次掀起信息技术的革命，根据中国物联网校企联盟的定义，物联网是当下几乎所有技术与计算机、互联网技术的结合，实现物体与物体之间环境以及状态信息实时的共享以及智能化的收集、传递、处理。</div>\r\n<div style="margin-left: 40px;">计算机的应用在我国越来越普遍，改革开放以后，我国计算机用户的数量不断攀升，应用水平不断提高，特别是互联网、通信、多媒体等领域的应用取得了不错的成绩。1996年至2009 年，计算机用户数量从原来的630万增长至6710 万台，联网计算机台数由原来的2.9万台上升至5940万台。互联网用户已经达到3.16 亿，无线网络有6.7 亿移动用户，其中手机上网用户达1.17 亿，为全球第一位。（2012-2013年中国计算机市场投资领域浅析）中总结：行业需求不乐观：12 年和13 年一季度软件行业收入增速分别为13.6%和8.5%，11 和12 年样本企业人员整体同比增长20.3%和15.6%，显示行业 整体需求不乐观，多数企业在12 年扩张速度放缓。</div>\r\n<div style="margin-left: 40px;">薪酬压力仍大：12 年和13 年一季度软件行业整体薪酬增速分别为27.2%和22.8%，均超过当期收入增速，使得营业利润同比分别下滑12.4%和18.7 %，未来几年多数软件企业薪酬压力仍大，面临员工和股东关于企业利润的再分配。 现在的个人电脑已经不仅仅是一种工具，随着技术的增长，&ldquo;个人计算&rdquo;的概念涵盖了更为广阔的范围笔记本，服务器、便携设备、手机，&ldquo;个人计算&rdquo;无所不在。计算机和互联网已经与老百姓的日常工作、学习和生活息息相关，人类社会目前又处于了一个历史飞跃时期，他改变了人们传统的生活方式，人们可以通过网络从浩如烟海的信息中查询到自己需要的信息，可以和远方的亲朋好友互通音讯，可以坐在家中接受全球各地医学专家的会诊，可以和未曾谋面的陌生人交流情感，可以网上婚礼、网上购物、网上营销、网上政府等等。为人类提供了快捷，自由，开放，互动，创新的平台。&nbsp;</div>\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(19, '<img src="http://localhost/happy/uploadfile/2017/1126/20171126021307920.jpg" style="width: 400px; height: 288px; margin: 10px 20px; float: left;" /><br />\r\n<img src="http://localhost/happy/uploadfile/2017/1126/20171126021308489.jpg" style="height: 303px; width: 396px; float: right; margin: 20px 10px;" />\r\n<div style="margin-left: 40px;">万物互联定义</div>\r\n<div style="margin-left: 40px;">&nbsp;</div>\r\n<div style="margin-left: 40px;">万物互联（IoE）定义为将人，流程，数据和事物结合一起使得网络连接变得更加相关，更有价值。万物互联将信息转化为行动，给企业，个人和国家创造新的功能，并带来更加丰富的体验和前所未有的经济发展机遇。鲜明特征随着越来越多的事物，人，数据和 互联网联系起来，互联网的力量（实质上是网络的网络）正呈指数增长。这个观点（也就是&ldquo; 梅特卡夫定律 &rdquo;) 由科技先驱和3Com公司的创始人 罗伯特&middot;梅特卡夫 提出。 罗伯特&middot;梅特卡夫认为，网络的价值与联网的用户数的平方呈正比。从本质上讲，网络的力量大于部分之和，使得万物互联，令人难以置信的强大。</div>\r\n<div style="margin-left: 40px;">&nbsp;</div>\r\n<div style="margin-left: 40px;">随着我们步入万物互联(IoE：Internet of Everything)时代，公众将更多的注意力投向 梅特卡夫定律，也叫做&ldquo; 网络效应&rdquo;，大家想知道同样的定律是否仍将适用。 梅特卡夫定律的内容是，网络价值的增长与用户数的平方成比例。也就是说，随着用户数的增加，网络的价值呈指数级增长。　最近，NirEyal 和 Sangeet Paul Choudary 在 TechCrunch 上发表了关于 网络效应的力度正在衰减的文章。在他们看来，有一种由用户产生的&ldquo;储存价值&rdquo;（有创造性的内容、声誉、使用数据和影响）加强了 网络效应的力度，使企业能够留住客户并增加市场份额。　Nir 和 Sangeet 提到了一个重要观点，即我们开始考虑万物互联改变世界的潜力。请大家想一想：在 梅特卡夫定律中，严格说来，&ldquo;价值&rdquo;来自网络不断增加的内容物的&ldquo;数量&rdquo;。当这些内容物（人、物品和数据）将自身价值带入等式的时候会发生什么？　本质上来说，实现的&ldquo;价值&rdquo;是与 网络效应的力度相乘后呈指数级增长的，网络创造了前所未有的商机，静默的物品被赋予声音，唤醒您能想到的几乎一切事物。如下面的动画所示，万物互联将给我们提供更清晰的画面、更广阔的前景，让我们能够基于更准确的现实作出决策。</div>\r\n<div>&nbsp;</div>\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(6, '<div style="margin-left: 40px;"><img src="http://localhost/happy/uploadfile/2017/1126/20171126021856347.jpg" style="height: 346px; width: 500px; border-width: 1px; border-style: solid; margin: 10px 20px; float: right;" /></div>\r\n<div style="margin-left: 40px;">2017年，在社会趋势、国家政策方向面前，IT行业将迎来新得发展高度。IT行业涵盖的范围是很广的，包括了IT硬件设备、软件开发。IT的相关行业如：网络营销、电子商务、平面设计等。 当前IT行业发展迅速，IT市场的潜力是无穷的，IT行业从业者的薪资待遇也就随之不断攀升了。就软件开发而言，现在是信息技术时代，软件人才的需求成比例增长，但是合格的软件开发人才却存在着大的缺口，因此软件开发行业成为了名副其实的高薪行业，通常拥有3-5年开发经验的工程师年薪在10万以上的不在少数。就电子商务而言，信息时代的网上交易、网站制作等都是需要大量人才的供给的，今年双十一的电商火爆程度可见电商人才对于企业的重要性，因此很多企业都愿意出高薪招揽电商人才。 随着全球信息化进程的不断加快，信息产业的发展水平直接影响到国家的综合实力。我国国IT行业的发展越来越受到国家管理层的重视，我国目前正在大力推行国民经济与社会信息化建设，这无疑为IT行业的发展提供了巨大的需求，提供了更广阔的空间。 2017年，在社会趋势、国家政策方向面前，IT行业将迎来新得发展高度。这样一个有前景的行业，也不外呼很多年轻人想要转行到IT行业。虽然IT行业对于人才的需求很大，但是我们想要进入这个行业，如果没有过硬的职业技术和行业经验，企业在面试的时候是不可能会让你通过的。 IT行业从业者是具备较强的专业性的，这也决定了IT从业人员的独特性，特别是像软件开发、网络营销等方向对于从业人员的要求都是比较高的，只有系统的学习了技能，扎实的掌握了知识点，且拥有了一定的项目实践经验，才能够很好的胜任企业的相关岗位，能够上岗就上手工作，类技术型人才是备受企业的亲睐的。 IT行业是一个需要不断自我挑战的行业，这就让很多人都想要进行尝试、挑战。IT行业的工作属于脑力劳动，需要不断的攻克难关，且在工作的过程需要不断的更新自己的技能知识，跟上时代的脚步。在该行业，从业者能够不断的突破自己，一步步的得到自我的提升。 IT行业重在战胜挑战，完成项目后不仅能获得额外的报酬，而且看到自己的成果推向市场得到认可后，会感到非常自豪，获得极大的成就感。而且就算不是自己所负责的项目，但是只要是自己有参与其中，在项目完成后也是会有极高的成就感的。IT行业不断的发展，因此专业的从业人员也是一直处于匮乏状态的，掌握了实用的IT技能就业前景是相当好的。可以从很多权威的数据看到，在最具潜力的薪酬职业中，前二十位里面IT行业总是占有大比重的。而且从事IT行业的人，就算是跳槽再就业也是不会有什么难度的，与其他行业相比，IT行业只要有技术，其他的就都微不足道了。</div>\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(7, '<img src="http://localhost/happy/uploadfile/2017/1126/20171126021828902.jpg" style="height: 305px; width: 500px; border-width: 2px; border-style: solid; margin: 10px 20px; float: right;" /><br />\r\n<div style="margin-left: 40px;">对程序员而言，面试时让他写一段超难的代码他觉得很容易，让他和人面对面聊天反而会觉得很难。程序员觉得说不如做，自己的实力在这儿，说不说都没什么大不了。</div>\r\n<div style="margin-left: 40px;">问题一：&ldquo;请你自我介绍一下&rdquo;</div>\r\n<div>\r\n<div style="margin-left: 40px;">这是面试的必考题目，介绍内容要与个人简历相一致。 表述方式上尽量口语化，要切中要害，不谈无关、无用的内容。 条理要清晰，层次要分明，事先最好以文字的形式写好背熟。&nbsp;</div>\r\n<div style="margin-left: 40px;">问题二：&ldquo;你有什么业余爱好？&rdquo;</div>\r\n<div style="margin-left: 40px;">业余爱好能在一定程度上反映应聘者的性格、观念、心态，这是招聘单位问该问题的主要原因，最好不要说自己没有业余爱好。不要说自己有那些庸俗的、令人感觉不好的爱好。</div>\r\n<div style="margin-left: 40px;">问题三：&ldquo;你认为你工作中的哪些方面是最重要的？&rdquo;&nbsp;</div>\r\n<div style="margin-left: 40px;">对这个问题的错误回答将使你丧失就职机会，高层行政主管将预算报告作为工作的最重要的方面即是一例。这个问题的设计是要试探你的时间分配能力、分辨轻重缓急能力以及任何逃避工作任务的倾向。</div>\r\n<div style="margin-left: 40px;">问题四：&ldquo;谈谈你的缺点&rdquo;</div>\r\n<div style="margin-left: 40px;">不宜说自己没缺点，也不宜把那些明显的优点说成缺点。 不宜说出严重影响所应聘工作的缺点，也不宜说出令人不放心、不舒服的缺点。 可以说出一些对于所应聘工作&ldquo;无关紧要&rdquo;的 缺点，甚至是一些表面上看是缺点，从工作的角度看却是优点的缺点。&nbsp;</div>\r\n<div style="margin-left: 40px;">问题五：&ldquo;谈一谈你的一次失败经历&rdquo;</div>\r\n<div style="margin-left: 40px;">不宜说自己没有失败的经历。 不宜把那些明显的成功说成是失败。 不宜说出严重影响所应聘工作的失败经历，&nbsp; 失败后自己很快振作起来，以更加饱满的热情面对以后的工作。</div>\r\n<div style="margin-left: 40px;">问题六：&ldquo;你为什么选择我们公司？&rdquo;</div>\r\n<div style="margin-left: 40px;">&ldquo;我十分看好贵公司所在的行业，我认为贵公司十分重视人才，而且这项工作很适合我，相信自己一定能做好。&rdquo;</div>\r\n</div>\r\n<br />\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(13, '<div style="text-align: center;">\r\n<p class="lecturer-tit" microsoft="" style="margin: 0px; padding: 0px; overflow: hidden; background: rgb(245, 245, 245); height: 40px; line-height: 40px; color: rgb(45, 45, 45); font-family: "><img class="tx-icon" src="http://localhost/happy/uploadfile/2017/1126/20171126031301423.jpg" style="border: 0px; float: left; margin: 10px 5px 0px 10px;" /><span style="float: left; font-size: 14px; font-weight: bold; color: rgb(253, 116, 12);">朱远佳资历背景</span></p>\r\n<p class="text" microsoft="" style="margin: 0px; padding: 10px; line-height: 30px; color: rgb(45, 45, 45); font-family: ">1.授课特点<br />\r\n15年工作经验，其中10年甲乙方工作经历，5年第三方培训咨询经历，形成了独特和专业的信息化全生命周期管理培训系列课程。为近二百家企业提供过数次的培训，其独创的知识练习、案例分析、课程研讨、实践操作的教学用方法，融合西方的互动式的培训方法，抛弃了传统的照本宣科的教学方法，深受学员的好评。<br />\r\n深厚的行业基础及工作实践使课程成体系：有宏观也有微观，有理论也有实践，是培训也是咨询，是咨询也是实施，是实施也是监管，培训、咨询、监理、教练融为一体。让学员受益非浅。<br />\r\n 实战性：IT管理培训专题能够通过IT咨询落地，通过IT监理保障IT项目落地；&nbsp;<br />\r\n 趣味性：理论讲解+案例分析+研讨交流+知识练习+角色扮演+培训游戏+实战演练+视频等多种培训方式相结合，欧美流行的培训方法，杜绝理论化，机构返聘率达80%；<br />\r\n 完整性：IT管理培训专题包括：IT规划、IT项目管理、IT服务管理、IT管控&amp;信息安全。IT管理培训价值链完整，体系健全；建立一套配套的理论知识考试体系，通过网上考试，能够帮助学员快速掌握基础理论知识；汇编亲身实施的IT规划、IT项目管理、IT服务管理的案例库；建立一套配套的培训视频培训库，精彩课件分享；<br />\r\n2.从业经历<br />\r\n2010年-至今AMT咨询&nbsp;合伙人/IT咨询顾问，北大纵横&nbsp;人才测评软件专家；为数百家企业提供信息化IT战略规划、IT项目管理、IT监理、IT运维服务管理的实战咨询，以及基于COBIT、CMMI、AGILE、ISO20000、ISO27001、ITIL的认证咨询服务。</p>\r\n<p class="lecturer-tit" microsoft="" style="margin: 0px; padding: 0px; overflow: hidden; background: rgb(245, 245, 245); height: 40px; line-height: 40px; color: rgb(45, 45, 45); font-family: "><img class="tx-icon" src="http://localhost/happy/uploadfile/2017/1126/20171126031301619.jpg" style="border: 0px; float: left; margin: 10px 5px 0px 10px;" /><span style="float: left; font-size: 14px; font-weight: bold; color: rgb(253, 116, 12);">朱远佳主讲课程</span></p>\r\n<p class="text" microsoft="" style="margin: 0px; padding: 10px; line-height: 30px; color: rgb(45, 45, 45); font-family: ">ITM-01、IT战略规划、ITM-02、COBIT、Foundation、ITM-03、ITM-04、基于CMMI顶级评估后软件企业管理体系建设、ITM-05、产品软件需求开发和需求管理、<br />\r\nITM-06、系统集成项目管理工程师(软考)、ITM-07、ITIL、Foundation服务管理、ITM-08、ISO20000、ITM-09、ISOI27001</p>\r\n<p class="lecturer-tit" microsoft="" style="margin: 0px; padding: 0px; overflow: hidden; background: rgb(245, 245, 245); height: 40px; line-height: 40px; color: rgb(45, 45, 45); font-family: "><img class="tx-icon" src="http://localhost/happy/uploadfile/2017/1126/20171126031301661.jpg" style="border: 0px; float: left; margin: 10px 5px 0px 10px;" /><span style="float: left; font-size: 14px; font-weight: bold; color: rgb(253, 116, 12);">朱远佳服务客户</span></p>\r\n<p class="text" microsoft="" style="margin: 0px; padding: 10px; line-height: 30px; color: rgb(45, 45, 45); font-family: ">政府：嘉定网格化中心，上海世博局，郑州海关，上海新闻出版局，浦东城管执法局，上海宝山团委，上海市北医院，上海杨浦区信息委，山东临沂地税局，厦门税务局，嘉兴平湖财税局； 通讯：中国电信(广州)，中国移动（北京/昆明/浙江/深圳/南京）， IT：台湾英业达，SUNGARD，万达信息，金蝶软件，久隆信息工程，上海铁大设备，武汉软创科技，无锡曼荼罗软件，无锡海宝软件，苏州迪锐信软件，河南大方软件，江苏交科院，华东凯亚，上海互联信息，杭州碧海银帆科技有限公司； 生产制造：中船重工，上海核工院，江淮重工，上实交通电器，上海永继电气，上海大众电器，丛兴电子，宏发电声； 金融：上海期货交易所，广州农商银行，厦门建设银行，申银证券，石嘴山银行； 石油化工：中国海洋石油； 物流：上海国药控股，上海永乐家电，德邦物流，舟山港集团； 地铁：宁波地铁； 房地产：南京银城集团； 咨询培训：北大纵横管理咨询，AMT咨询，上海华东理工大学、杭州威特教育、杭州博学教育，广州嘉为科技、上海甫奇咨询、上海艾威培训、上海联众智达、上海益思咨询、上海交大继教院、厦门金士达、江苏万和计算机；<br />\r\n//内容纯属在网上查找</p>\r\n</div>\r\n<div style="text-align: center;">&nbsp;</div>\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(14, '<div style="text-align: center;">\r\n<div class="lecturer-ps" microsoft="" style="margin: 0px 0px 10px; padding: 0px; height: auto; border: 1px solid rgb(204, 204, 204); color: rgb(45, 45, 45); font-family: ">\r\n<ul class="lecturer-ps2" style="margin: 0px; padding-right: 10px; padding-left: 10px; list-style-type: none; overflow: hidden;">\r\n<li class="fl_l w700" style="margin: 0px; padding: 10px; list-style-type: none; float: left; width: 700px; height: auto; line-height: 29px;">\r\n<p style="margin: 0px; padding: 0px;">张老师IT行业老兵、IP社群专家、国内微营销先驱和倡导者！</p>\r\n<p style="margin: 0px; padding: 0px;">讲师年龄：40 ~ 50 岁&nbsp;<span class="marl_20" style="margin-left: 20px;">所在地：北京</span></p>\r\n<p class="click" style="margin: 0px; padding: 0px;">擅长领域/行业：<a href="http://www.jiangshi.org/search/kw_%e4%ba%92%e8%81%94%e7%bd%91%2b_order_0_costmin_0_costmax_0_area_0_page_0.html" style="text-decoration-line: none; color: rgb(0, 0, 0);">[互联网+]</a>&nbsp;<a href="http://www.jiangshi.org/search/kw_%e5%be%ae%e8%90%a5%e9%94%80_order_0_costmin_0_costmax_0_area_0_page_0.html" style="text-decoration-line: none; color: rgb(0, 0, 0);">[微营销]</a>&nbsp;<a href="http://www.jiangshi.org/search/kw_%e5%be%ae%e8%bf%90%e8%90%a5_order_0_costmin_0_costmax_0_area_0_page_0.html" style="text-decoration-line: none; color: rgb(0, 0, 0);">[微运营]</a>&nbsp;<a href="http://www.jiangshi.org/search/kw_%e7%a4%be%e7%be%a4%e8%bf%90%e8%90%a5_order_0_costmin_0_costmax_0_area_0_page_0.html" style="text-decoration-line: none; color: rgb(0, 0, 0);">[社群运营]</a></p>\r\n<p style="margin: 0px; padding: 0px;">主讲课程：A类课程：互联网思维/转型&nbsp;B类课程：传统企业如何借势移动互联网&nbsp;互联网+下的新商业模式&nbsp;互联网转型的风险和挑战&nbsp;新趋势新商业新思维&nbsp;企业如何做微运营、微营销实操&nbsp;产品型社群&nbsp;IP社群电商</p>\r\n<p id="pcontact" style="margin: 0px; padding: 0px;">咨询电话：<span class="red fw f18" style="font-size: 18px; color: rgb(250, 2, 2); font-weight: bold;">15815216506</span>&nbsp;&nbsp;QQ：<span class="red fw f18" style="font-size: 18px; color: rgb(250, 2, 2); font-weight: bold;">1245212570</span></p>\r\n</li>\r\n<li class="dscontainer fl_r" style="margin: 0px; padding: 10px; list-style-type: none; float: right; height: auto; line-height: 29px;">\r\n<p style="margin: 0px; padding: 0px;">获赠鲜花：<b class="red f14" style="font-size: 14px; color: rgb(250, 2, 2);">0朵</b></p>\r\n<p align="center" style="margin: 20px 0px 0px; padding: 0px;"><a style="color: rgb(44, 70, 140);"><img class="dashang" data-lectid="702663" src="http://localhost/happy/uploadfile/2017/1126/20171126030232252.png" style="border: 0px; cursor: pointer;" /></a></p>\r\n<p align="center" style="margin: 0px; padding: 10px 0px 0px; color: rgb(250, 2, 2);">喜欢就赏一下~</p>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class="lecturer-ps" microsoft="" style="margin: 0px 0px 10px; padding: 0px; height: auto; border: 1px solid rgb(204, 204, 204);">\r\n<p class="lecturer-tit" style="color: rgb(45, 45, 45); margin: 0px; padding: 0px; overflow: hidden; background: rgb(245, 245, 245); height: 40px; line-height: 40px;"><img class="tx-icon" src="http://localhost/happy/uploadfile/2017/1126/20171126030232211.jpg" style="border: 0px; float: left; margin: 10px 5px 0px 10px;" /><span style="float: left; font-size: 14px; font-weight: bold; color: rgb(253, 116, 12);">张老师简介</span><font style="float: right; color: rgb(68, 68, 68); margin-right: 10px;"><a href="http://www.jiangshi.org/702663/introduce.html" style="text-decoration-line: none; color: rgb(68, 68, 68);">更多&gt;&gt;</a></font></p>\r\n<p class="text" style="color: rgb(45, 45, 45); margin: 0px; padding: 10px; line-height: 30px;">&mdash;&mdash;资深互联网专家，IT行业老兵，创业精英！<br />\r\n&mdash;&mdash;国内微营销先驱和倡导者，产品型社群商业模式践行者！<br />\r\n中国人民大学管理学硕士曾（中国）资深项目顾问<img src="http://localhost/happy/uploadfile/2017/1126/20171126032031299.jpg" style="height: 200px; width: 200px; margin: 10px; float: right;" /><br />\r\n曾任城集团高管<br />\r\n易清信息联合创始人<br />\r\n微运营CEO<br />\r\n易费朗信息技术有限公司创始人<br />\r\n<br />\r\n王睿，网名文艺IT虎，IT行业老兵，互联网创业精英，国内微营销先驱和倡导者，著名社群运营专家。曾在58同城等多家知名互联网公司担任高管，创办多家互联网公司，2011年与合伙人创办易清集团-正在启动上市，2013年率先进入微营销领域，2014年创立中国第一微运营品牌&mdash;&mdash;老虎微运营。<br />\r\n<br />\r\n&bull; 产品型社群实践者。中小企业互联网联盟&ldquo;e联盟&rdquo;发起人，中国印刷协会、中国衡器协首席互联网顾问，中国茶群主联盟总顾问，清华大学客座讲师，北京大学总裁班客座讲师。经营公司之余，曾为海南航空、中国电信、葛洲坝集团、</p>\r\n<p class="lecturer-tit" style="color: rgb(45, 45, 45); margin: 0px; padding: 0px; overflow: hidden; background: rgb(245, 245, 245); height: 40px; line-height: 40px;"><span style="float: left; font-size: 14px; font-weight: bold; color: rgb(253, 116, 12);">&nbsp; &nbsp; 张老师主讲课程</span></p>\r\n<div class="padding" style="margin: 0px; padding: 10px 0px;">\r\n<p class="text1 flowhidden" style="color: rgb(45, 45, 45); margin: 0px; padding: 0px 20px; overflow: hidden; line-height: 30px;"><a ..="" 6px="" center="" href="http://www.jiangshi.org/702663/course_1210826.html" images="" padding-left:="" style="text-decoration-line: none; color: rgb(0, 0, 0); background: url(">[张老师]A3&nbsp;互联网风口&mdash;打造IP</a><font class="fl_r" style="float: right;">2016-08-25</font></p>\r\n<p class="text1 flowhidden" style="color: rgb(45, 45, 45); margin: 0px; padding: 0px 20px; overflow: hidden; line-height: 30px;"><a ..="" 6px="" center="" href="http://www.jiangshi.org/702663/course_1210815.html" images="" padding-left:="" style="text-decoration-line: none; color: rgb(0, 0, 0); background: url(">[张老师]A2&nbsp;互联网商业模式-社群经济</a><font class="fl_r" style="float: right;">2016-08-25</font></p>\r\n<p class="text1 flowhidden" style="color: rgb(45, 45, 45); margin: 0px; padding: 0px 20px; overflow: hidden; line-height: 30px;"><a ..="" 6px="" center="" href="http://www.jiangshi.org/702663/course_1210803.html" images="" padding-left:="" style="text-decoration-line: none; color: rgb(0, 0, 0); background: url(">[张老师]A1互联网世界观</a><font class="fl_r" style="float: right;">2016-08-25</font></p>\r\n<p class="text1 flowhidden" style="color: rgb(45, 45, 45); margin: 0px; padding: 0px 20px; overflow: hidden; line-height: 30px;"><a ..="" 6px="" center="" href="http://www.jiangshi.org/702663/course_1210890.html" images="" padding-left:="" style="text-decoration-line: none; color: rgb(0, 0, 0); background: url(">[张老师]B4&nbsp;玩转公众号</a><font class="fl_r" style="float: right;">2016-08-25</font></p>\r\n<p class="text1 flowhidden" style="margin: 0px; padding: 0px 20px; overflow: hidden; line-height: 30px;"><font color="#2d2d2d">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font><a ..="" 6px="" center="" href="http://www.jiangshi.org/702663/course_1210879.html" images="" padding-left:="" style="color: rgb(0, 0, 0); text-decoration-line: none; background: url(">[张老师]B3玩转微信群</a><font color="#2d2d2d">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2016-08-25&nbsp;&nbsp;<br />\r\n//内容纯属在网上查找</font><br />\r\n&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n<br />\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(15, '<div style="text-align: center;">\r\n<div class="articalTitle" style="clear: both; line-height: 20px; padding-bottom: 10px; color: rgb(70, 70, 70); font-family: Verdana, 宋体, sans-serif; background-color: rgb(188, 211, 229);">\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0px 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:="">&nbsp;</p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0px 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><b><u><span style="word-wrap: normal; word-break: normal; line-height: 52px; font-family: 微软雅黑; font-size: 26pt;">庆老</span></u></b><b><u><span style="word-wrap: normal; word-break: normal; line-height: 52px; font-family: 微软雅黑; font-size: 26pt;">师</span></u></b><b><u><span style="word-wrap: normal; word-break: normal; line-height: 52px; font-family: 微软雅黑; font-size: 26pt;">简介</span></u></b></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0px 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: "><b><span style="word-wrap: normal; word-break: normal; line-height: 36px; font-family: 宋体; color: rgb(192, 0, 0); font-size: 18pt;">&nbsp;<wbr /></span></b></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0px 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: "><b><span style="word-wrap: normal; word-break: normal; line-height: 36px; font-family: 宋体; color: rgb(192, 0, 0); font-size: 18pt;">讲师背景</span></b></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 28px; font-family: " text-indent:=""><br />\r\n<span style="word-wrap: normal; word-break: normal; line-height: 32px; font-family: 宋体; font-size: 12pt;">&nbsp;<wbr /></span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 28px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 32px; font-family: 宋体; font-size: 12pt;">中国计算机学会会员</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 28px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 32px; font-family: 宋体; font-size: 12pt;">中山大学计算机工学硕士毕业</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 28px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 32px; font-family: 宋体; font-size: 12pt;">北京洪涛文化发展战略委员会主任</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 28px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 32px; font-family: 宋体; font-size: 12pt;">中国系统分析员协（希赛）资深高级顾问</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 28px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 32px; font-family: 宋体; font-size: 12pt;">国内知名的企业信息化业数据领域专家</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 28px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 32px; font-family: 宋体; font-size: 12pt;">企业数据实验室（中国创办人和主任培训师</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 28px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 32px; font-family: 宋体; font-size: 12pt;">南海总商会直属商会企业管理咨询顾问</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 28px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 32px; font-family: 宋体; font-size: 12pt;">拥有国家认证的系统员和高级程序员资阿萨德格</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 28px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 32px; font-family: 宋体; font-size: 12pt;">广州民间金融研究院银行转金融创新研究中心研究员</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 28px; font-family: " text-indent:=""><b><span style="word-wrap: normal; word-break: normal; line-height: 48px; font-family: 宋体; color: rgb(192, 0, 0); font-size: 18pt;">职业履历</span></b></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">&nbsp;<wbr /></span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">IT从业工作19年，4年为大型企业信息化战略咨询经验，咨询内容包括IT规划咨询、项目管理办公室咨询、企业数据治理咨询，9年为数据仓库和商业智能技术领域的研发工作经验，在企业大数据领域有丰富的实践经验和深入的</span><img src="http://localhost/happy/uploadfile/2017/1126/20171126031528709.jpg" style="height: 200px; width: 200px; border-width: 1px; border-style: solid; margin: 10px; float: right;" /></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">体会；超过10年的企业管理信息系统和业务应用系统的软件开发经验、近7年的企业和技术部门管理经验；</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;"><font face="宋体" style="word-wrap: normal; word-break: normal; line-height: 24px;">历任中国农业银行核心业务系统软件开发工程师、香港高阳科技公司金融行业数据仓库项目项目经理、马恒达萨蒂扬公司华南区数阿萨德据仓库商业智能技术服务事业部经理、国际商业机器</font>(IBM)中国公司全球企业咨询业务部高级咨询顾问等职,曾为北京、上海、广州、深圳、香港、澳门、常州、九江、景德镇、青岛、南宁、贵阳、乌鲁木齐、印度（海德拉巴）等广泛地域的大型企业客户提供专业技术服务。通过多年银行金融信息科技工作经验，积累了对企业的海量多源异构数据的集成和分析应用丰富的经验，对企业的信息化长远发展战略和信息化应用价值有丰富经验和深刻认识，精通互联网、企业大数据相关技术和应用，对于业务驱动的信息化战略规划工作、企业通过项目管理办公室机制实现信息化治理、信息化建设帮阿萨德助企业实现现代化治理、完成转型升级有独到的个人见解。</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;"><font face="宋体" style="word-wrap: normal; word-break: normal; line-height: 24px;">业务领域研究方向包括：互联融、银阿萨德行的组织战略和公司治理、银行资本管理与风险控制</font>(新资本协议）、私人银行、金融数据标准化、流程银行、利率市场化；</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: "><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">IT领域研究方向包括：企业架构、企业信息化战略规划、数据治理、业务流程优化方面的商业智能应用、大数据应用等。</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: "><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">&nbsp;<wbr /></span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: "><b><span style="word-wrap: normal; word-break: normal; line-height: 36px; font-family: 宋体; color: rgb(192, 0, 0); font-size: 18pt;">精品课程</span></b></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0px 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: "><b><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">&nbsp;<wbr /></span></b></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0px 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: "><b><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">主讲课程：</span></b></p>\r\n<br />\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;"><font face="宋体" style="word-wrap: normal; word-break: normal; line-height: 24px;">互联网时代的企业战略范畴可阿萨德讲授课程</font>----</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">《互联网时代的企业生命历阿萨德程和成长基因》</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">《互联网时代的阿萨德企业战略》</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">《学习型组织萨达理论与实践》</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">《知识管理识库建设》</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">&nbsp;<wbr /></span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">互联网时代如何企业大数据可讲授课程</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">《通过大数术提升企业管理》</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">《基于业务优化据分析方法和技巧》</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">《数据分析在客系管理方面的应用》</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">《企业数据仓商业智能技术应用》</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">《数据挖掘数据应用》</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">&nbsp;<wbr /></span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">企业信息化范可讲授课程</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">《政府机构和大型企单位信息化战略规划》</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">《企业级信息系件工程项目管理》</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">《企业信息化管理体系建设》</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;">《企业级信息化需求分析》</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><span style="word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体; font-size: 12pt;"><font face="宋体" style="word-wrap: normal; word-break: normal; line-height: 24px;">《企业级</font>IT理(ITIL)》</span></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0pt 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: " text-indent:=""><b><span style="word-wrap: normal; word-break: normal; line-height: 36px; font-family: 宋体; color: rgb(192, 0, 0); font-size: 18pt;">&nbsp;</span></b></p>\r\n<p font-size:="" helvetica="" microsoft="" style="margin: 0px 0px 5px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; font-family: "><span style="word-wrap: normal; word-break: normal; line-height: 21px; font-family: Calibri; font-size: 10.5pt;">&nbsp;<wbr />助理杨婷 &nbsp;<wbr />&nbsp;&nbsp;<wbr />&nbsp;&nbsp;<wbr />电话15210052115 &nbsp;<wbr />&nbsp;&nbsp;<wbr />&nbsp;&nbsp;<wbr />&nbsp;qq3445645381<br />\r\n//信息为在网上查找的信息</span></p>\r\n</div>\r\n</div>\r\n<br />\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(20, '<img src="http://localhost/happy/uploadfile/2017/1126/20171126021103730.jpg" style="height: 300px; width: 500px; margin: 10px 20px; float: left;" />\r\n<div style="margin-left: 40px;">一是网上安全问题。它包括网站安全、交易安全、网络信息安全。主要是指黑客、病毒对网络系统的硬件、软件及其系统中的数据破坏、更改、泄露，系统连续不正常地运行，网络服务中断；</div>\r\n<div style="margin-left: 40px;">　　第二类是指传播色情暴力和仇恨的不良信息。由于网络自身发展的限制，用户在使用计算机的时候会被莫名的不健康信息干扰，容易受其影响给社会带来不安定因素；</div>\r\n<div style="margin-left: 40px;">　　第三类是形形色色的信息污染和垃圾，就在对方辩友慷慨激昂的四分钟陈词里，全球主要网站已经被黑客入侵了近200次，全球互联网计算机可能已经被最新病毒感染了170万台次。</div>\r\n<div style="margin-left: 40px;">　　第四类对基础教育的冲击。由于网络过早的进入中小学生的生活，一些自制力相对差的学生沉迷于网络游戏，极大的影响到中小学生的身心健康。众多信息冲击中小学生的世界，有模仿天性的学生会仿照犯罪分子的作案手段来扰乱生活。老师面对众多学生对倡导的价值观产生的怀疑，无法给予学生正确的导向。</div>\r\n<div style="margin-left: 40px;">目前网络有三个难以解决的问题：第一类是网上安全问题，主要是指黑客、病毒和网上欺诈等；第二类是指传播色情暴力和仇恨的不良信息；第三类是形形色色的信息污染和垃圾，就在对方辩友慷慨激昂的四分钟陈词里，全球主要网站已经被黑客入侵了近200次，全球互联网计算机可能已经被最新病毒感染了170万台次&hellip;&hellip;现实中，中学生上网已带来了诸多危害：&nbsp;</div>\r\n<div style="margin-left: 40px;">其一，据一项调查显示，不少的中学生成了小&quot;网虫&quot;，沉湎于网上，将90%的时间用到网络游戏上，做了网络的俘虏，为网络所累，痴迷于&quot;网吧&quot;、&quot;聊天室&quot;不能自拔。不仅耽误了学习，甚至犯罪，据2000年4月《广州日报》报道，一名15岁的中学生为了&quot;随心所欲&quot;地上网玩网络游戏，竟然杀害自己的表姐，以达到占有她电脑的目的。&nbsp;</div>\r\n<div style="margin-left: 40px;">其二，中学生极易沉浸到网络的虚拟化生活空间中，一旦回到现实社会就产生一种孤独感，患上&quot;网络疏离症&quot;，成天高唱：网络是我家，我的眼里只有它。这样对心理造成严重损害。同时在生理上中学生正处于快速发育时间，但是他们一上网就是四、五个小时，不仅眼睛超负荷运转，危害视力；也使得脊椎变形，真可谓鞠躬尽瘁，死而后已！&nbsp;</div>\r\n<div style="margin-left: 40px;">所以网络的这么多弊与网络在信息交流方面的快捷性、方便性这一利相比，难道不是弊大于利吗？&nbsp;</div>\r\n<div style="margin-left: 40px;">其次，从质上说，我们今天讨论特定主体是中学生，他们是特殊的群体，他们易于接受新鲜事物，求知欲望极其强烈，但他们生理、心理还未成熟，对待新事物缺乏辨别是非的能力、自制力差。这些固有的特征，与网络固有的问题，在本质上就构成了中学生与上网之间固有的不可调和的矛盾。&nbsp;</div>\r\n<div style="margin-left: 40px;">所以现实迫使国家机关颁布关于网络管理的专项法律，但网络的开放性、自由性、无疆域特征也导致了法律难以奏效。正如尼葛洛庞蒂所指出的，在网络世界里，人类社会现存的法律，就好像一条条&quot;在甲板上叭嗒叭嗒拼命喘气的鱼&quot;。所以，在目前及可预见的将来，网络的种种弊端仍然存在。也许将来某年某月某日，网络将成为一方净土。但一万年太久，我们只争朝夕，现实是网络已经对中学生的身心构成了不同程度的伤害。</div>\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(21, '<img src="http://localhost/happy/uploadfile/2017/1126/20171126021008488.png" style="height: 316px; width: 500px; border-width: 2px; border-style: solid; margin: 10px 30px; float: right;" />\r\n<div style="margin-left: 40px;">运算速度快</div>\r\n<div style="margin-left: 40px;">&nbsp; 计算机的运算速度(也称处理速度)是计算机的一个重要性能指标，通常用每秒钟执行定点加法的次数或平均每秒钟执行指令的条数来衡量，其单位是MIPS(Million Instructions Per Second)，即每秒钟百万条指令。目前，计算机的运算速度已由早期的几千次/s发展到现代的计算机运算速度在几十个MIPs，巨型计算机可达到千万个MIPS。计算机如此高的运算速度是其他任何计算工具都无法比拟的，这极大地提高了人们的工作效率，使许多复杂的工程计算能在很短的时间内完成。尤其在时间响应速度要求很高的实时控制系统中，计算机运算速度快的特点更能够得到很好的发挥。</div>\r\n<div style="margin-left: 40px;">计算精度高</div>\r\n<div style="margin-left: 40px;">&nbsp; 精度高是计算机又一显著的特点。在计算机内部数据采用二进制表示，二进制位数越多表示数的精度就越高。目前计算机的计算精度已经能达到几十位有效数字。从理论上说随着计算机技术的不断发展，计算精度可以提高到任意精度。</div>\r\n<div style="margin-left: 40px;">具有强大的记忆功能</div>\r\n<div style="margin-left: 40px;">&nbsp; 计算机的记忆功能是由计算机的存储器完成的。存储器能够将输入的原始数据，计算的中间结果及程序保存起来．提供给计算机系统在需要的时候反复调用。记忆功能是计算机区别于传统计算工具最重要的特征。随着计算机技术的发展，计算机的内存容量已经可以达到几十兆甚至几百兆。而计算机的外存储容量更是越来越大，目前一台微型计算机的硬盘容量可以达到几十GB其至上百GB。计算机所能存储的信息也由早期的文字、数据、程序发展到如今的图形、图像、声音、影像、动画、视频等数据。</div>\r\n<div style="margin-left: 40px;">具有逻辑判断能力</div>\r\n<div style="margin-left: 40px;">&nbsp; 计算机的运算器除了能够进行算术运算，还能够对数据信息进行比较、判断等逻辑运算。这种逻辑判断能力是计算机处理逻辑推理问题的前提，也是计算机能实现信息处理高度智能化的重要因素。</div>\r\n<div style="margin-left: 40px;">能实现自动控制</div>\r\n<div style="margin-left: 40px;">&nbsp; 计算机的工作原理是&ldquo;存储程序控制&rdquo;，就是将程序和数据通过输入设备输入并保存在存储器中，计算机执行程序时按照程序中指令的逻辑顺序自动地、连续地把指令依次取出来并执行，这样执行程序的过程无须人为干预，完全由计算机自动控制执行。</div>\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(22, '<div style="text-align: center; margin-left: 80px;"><span style="color:#ff0000;"><strong>计算机技术对我们生活的影响&nbsp;</strong></span></div>\r\n<div style="margin-left: 80px;">伴随着计算机的普及与发展，&rdquo;Internet&rdquo;一词已经让我们不再感到陌生，随着E时代的来，新的理念和结构也在不断的形成和完善，网络给人类的工作学习和生活带来了极大的方便，计算机网络技术的发展对人类技术史的发展产生了不可磨灭的深远影响。但是，当我们看到网络带给我们利益的同时，也有着一些不容忽视的弊端的存在值得我们去探讨和深思。&nbsp;</div>\r\n<div style="margin-left: 80px;">随着信息技术的广泛应用，它已经引起了社会各个方面，各个领域的深刻变革，加快了社会生产力的发展和人们的生活质量的提高。&nbsp;</div>\r\n<div style="margin-left: 80px;">信息技术在人们日常生活中的影响已是不可小觑的了。最简单地，人们将广泛地利用信息网络，自觉或不自觉地使日常生活便捷化。信息技术的广泛应用促进了人们的工作效率和生活质量的提高，人们的工作方式和学习方式也正发生转变。足不出户可知天下事，人不离家照样能办事。一部分人可以由原来的按时定点上班变为可以在家上班，网上看病、网上授课、网上学习、网上会议、网上购物、网上洽谈生意、网上娱乐等成为人们一种新型的生活方式。网络技术、多媒体技术在教学上的应用，使得人们的学习内容更丰富、学习方式更灵活。另一方面，信息技术促进了新技术的变革，极大地推动了科学技术的进步。计算机技术的应用，帮助人们攻克了一个又一个科学难题，使得原本用人工需要花几十年甚至上百年才能解决的复杂的计算，用计算机可能几分钟就能完成。应用计算机仿真技术可以模拟现实中可能出现的各种情况，便于验证各种科学的假设。&nbsp;</div>\r\n<div style="margin-left: 80px;">计算机网络技术的发展虽然对人类社会的发展起到了不可磨灭的推动作用，但是作用与反作用往往是并存的，在技术发展的背后引发出的种种问题也是显而易见的。&nbsp;</div>\r\n<div style="margin-left: 80px;">&nbsp; &nbsp; 首先，正是因为网络空间的这种虚拟性，让人们过于的在这个空间里放纵自己，沉迷于这样的虚拟世界，人们往往在现实中解决不了的问题喜欢跑到幻想中去解决，比如电脑游戏，它给人一种逃避现实性的途径，在游戏中扮演一个自己从未体验过的角色或者是在现实中根本不可能实现的梦想，从而使人们过于沉迷于游戏，沉迷于网络。再者，网络的开放性使得个人的隐私安全得不到根本的保障。另一方面，网络使现实的真实的社会道德关系日趋松散，使人际关系淡漠，情感疏远。Internet改变了个体交往的方式，使人与人之间的交流变成了人与机器之间的交谈，感情的直接交流越来越小，人与人之间的依赖关系逐渐被人对网络的依赖关系所取代。这种状况在网络发达的社会中已有充分的表现，即使是在我国目前网络欠发达的情况下也有一定程度的反映。数字化、电子化在一定意义上会无情地伤害人类。&nbsp;</div>\r\n<div style="margin-left: 80px;">技术的进步给了人们以更大的信息支配能力，也要求人们更严格地控制自己的行为。唯有如此，我们才能最大限度地利用网络的便利并去除其弊端。</div>\r\n', 0, '', 2, 10000, '', 0, '', 0, 1, '|0');
INSERT INTO `v9_news_data` (`id`, `content`, `readpoint`, `groupids_view`, `paginationtype`, `maxcharperpage`, `template`, `paytype`, `relation`, `voteid`, `allow_comment`, `copyfrom`) VALUES
(23, '<div style="text-align: center;"><img src="http://localhost/happy/uploadfile/2017/1126/20171126020514860.jpg" style="height: 300px; width: 500px; float: right;" /></div>\r\n<div style="text-align: center; margin-left: 40px;">网络游戏：英文名称为OnlineGame，又称 &ldquo;在线游戏&rdquo;，简称&ldquo;网游&rdquo;。指以互联网为传输媒介，以游戏运营商服务器和用户计算机为处理终端，以游戏客户端软件为信息交互窗口的旨在实现娱乐、休闲、交流和取得虚拟成就的具有可持续性的个体性多人在线游戏。</div>\r\n<div style="text-align: center; margin-left: 40px;">&nbsp; 网络游戏区别与单机游戏而言的，是指玩家必须通过互联网连接来进行多人游戏。 一般指由多名玩家通过计算机网络在虚拟的环境下对人物角色及场景按照一定的规则进行操作以达到娱乐和互动目的的游戏产品集合。 而单机游戏模式多为人机对战。因为其不能连入互联网而玩家与玩家互动性差了很多，但可以通过局域网的连接进行有限的多人对战。网络游戏的诞生使命：&ldquo;通过互联网服务中的网络游戏服务，提升全球人类生活品质&rdquo;。网络游戏的诞生让人类的生活更丰富，从而促进全球人类社会的进步。并且丰富了人类的精神世界和物质世界，让人类的生活的品质更高，让人类的生活更快乐。</div>\r\n<div style="text-align: center; margin-left: 40px;">网络游戏是服务器客户端体系&mdash;&mdash;与多媒体出版物和单机游戏也有显著不同。&nbsp; &nbsp; 网络游戏的运营，不仅需要客户端，而且需要服务器才能运营，一个只有一个人玩的网络游戏算不得上是网络游戏。从这个角度看，网络游戏的概念不应该局限在某个客户端，而应当把一个由服务器和所有客户端组成的游戏系统看成是一个网络游戏。这个游戏系统绝对不是简单的复制关系，而是一个有机的虚拟社会体验系统，一个不可割裂的游戏系统。这和单机游戏截然不同。</div>\r\n<div style="text-align: center; margin-left: 40px;">单机游戏不同于多媒体光盘等电子出版物，最大的区别&nbsp; 在于其目的不同：电子出版物的目的在于向公众发行，而单机游戏的目的是体验。游戏二字拆开，就是游览、游历还有就是像戏剧一样是一种娱乐活动。&nbsp; &nbsp; 另外，每个玩家的游戏并不完全一样。不同的玩家，可能会玩到不同的结局，每个玩家的游戏体验绝大多数是不同的。所以说，单机游戏尽管没有联网，也具有一定个性化体验的要素，而绝非简单的游戏复制。而网络游戏与之更有本质的区别</div>\r\n<div style="text-align: center; margin-left: 40px;">我们可以把服务器比喻成大脑，那么，每个客户端都是身上的器官、组织甚至是细胞。这是一个整体的庞大的游戏，所以每个客户端都是一个连续的、整体的、不可分割的游戏的一部分。在这个游戏里，没有两个游戏体验完全一样的玩家，他们的视角不同，装备不同，成长经历不同，任务不同，朋友不同，角色不同，这是一个高度个性化的虚拟游戏社会。&nbsp; &nbsp; 网络游戏的运营机制和出版物的运行机制完全不同，也不同与单机游戏相对孤立的模式。我们不能说玩家的客户端是服务器程序的复制品，他们甚至可能是运行在不同操作系统上的电脑程序。&nbsp; &nbsp; 网络游戏更不是传递什么&ldquo;知识&rdquo;&ldquo;讯息&rdquo;，说白了，这就是一种体验，就像是旅游、看演唱会。哲人说，一个人不可能两次踏入同一条河，网络游戏也一样，在游戏里不会有完全相同的角色一样</div>\r\n<div style="text-align: center;">&nbsp;</div>\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(24, '<span style="background-color: rgb(244, 244, 244); color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 40px; font-weight: 700; text-align: center;">&nbsp; &nbsp; &nbsp; &nbsp;你能想到的互联网牛掰职位都从这里开始</span>\r\n<p class="titx-desc qr wow bounceInRight animated animated" style="margin: 35px 0px 0px; padding: 0px; font-size: 24px; color: rgb(51, 51, 51); text-align: center; position: relative; top: 0px; transition: all 0.2s; font-family: 微软雅黑; background-color: rgb(244, 244, 244); visibility: visible;">7大课程，绝对职场神助攻，覆盖互联网技术行业全部技术岗位，课程半年升级一次，紧跟市场与企业步伐</p>\r\n<div class="nzw-box" style="margin: 55px 0px 0px; padding: 0px; width: 1200px; height: 900px; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: medium; background-color: rgb(244, 244, 244);">\r\n<div class="nzw-box-l one wow bounceInLeft animated animated" style="margin: 14px 0px 0px; padding: 0px; width: 287px; height: 430px; border: 1px solid rgb(147, 68, 177); float: left; visibility: visible;">\r\n<p class="tit" style="margin: 0px; padding: 0px; width: 287px; height: 70px; background: rgb(147, 68, 177); line-height: 70px; text-align: center; color: rgb(255, 255, 255); font-size: 24px;">PHP开发工程师</p>\r\n<p class="box" style="margin: 15px auto 0px; padding: 0px; width: 75px; height: 30px; border-bottom: 1px solid rgb(147, 68, 177); text-align: center; color: rgb(147, 68, 177);">课程优势</p>\r\n<p class="desc" style="margin: 0px; padding: 10px; font-size: 14px; line-height: 25px;">1. 利用PHP过程化的编写方式很快进入Web开发领域<br style="margin: 0px; padding: 0px;" />\r\n2.适合开发论坛、SNS、企业门户网站项目的开发<br style="margin: 0px; padding: 0px;" />\r\n3.入门易，上手快，学习周期短，基础要求不高<br style="margin: 0px; padding: 0px;" />\r\n4.通过专家讲师带领，可以具有 独立开发能力<br style="margin: 0px; padding: 0px;" />\r\n5.网站需求分析、讲解数据库模式、使用和设计流程<br style="margin: 0px; padding: 0px;" />\r\n6.课程的技术点完全采用编码规范，使学员熟练应用</p>\r\n</div>\r\n<div class="nzw-box-l ls wow bounceInDown animated animated" style="margin: 14px 0px 0px 14px; padding: 0px; width: 287px; height: 430px; border: 1px solid rgb(97, 161, 64); float: left; visibility: visible;">\r\n<p class="tit ls" style="margin: 0px; padding: 0px; border: 1px solid rgb(97, 161, 64); width: 287px; height: 70px; background: rgb(97, 161, 64); line-height: 70px; text-align: center; color: rgb(255, 255, 255); font-size: 24px;">JavaEE工程师</p>\r\n<p class="box lsl" style="margin: 15px auto 0px; padding: 0px; width: 75px; height: 30px; border-bottom: 1px solid rgb(43, 184, 127); text-align: center; color: rgb(43, 184, 127);">课程优势</p>\r\n<p class="desc" style="margin: 0px; padding: 10px; font-size: 14px; line-height: 25px;">1.课程非常完整，高度契合企业需求<br style="margin: 0px; padding: 0px;" />\r\n2.骨灰级Java+大数据开发大咖联合亲授<br style="margin: 0px; padding: 0px;" />\r\n3.大数据处理，服务器开发，网站后台维护，大型项 &nbsp;&nbsp;&nbsp;目开发<br style="margin: 0px; padding: 0px;" />\r\n4.JavaEE+大数据，一门课程双=倍能力<br style="margin: 0px; padding: 0px;" />\r\n5.双项目并行，提升编程思想，就业前景巨大<br style="margin: 0px; padding: 0px;" />\r\n6.课程以学员掌握为导向，真正掌握技术</p>\r\n</div>\r\n<div class="nzw-box-l qs wow bounceInUp animated animated" style="margin: 14px 0px 0px 14px; padding: 0px; width: 287px; height: 430px; border: 1px solid rgb(225, 0, 86); float: left; visibility: visible;">\r\n<p class="tit ls qs" style="margin: 0px; padding: 0px; border: 1px solid rgb(225, 0, 86); width: 287px; height: 70px; background: rgb(225, 0, 86); line-height: 70px; text-align: center; color: rgb(255, 255, 255); font-size: 24px;">UI/UE全能设计师</p>\r\n<p class="box qsl" style="margin: 15px auto 0px; padding: 0px; width: 75px; height: 30px; border-bottom: 1px solid rgb(225, 0, 86); text-align: center; color: rgb(225, 0, 86);">课程优势</p>\r\n<p class="desc" style="margin: 0px; padding: 10px; font-size: 14px; line-height: 25px;">1.基础的美学知识、UI界面设计和用户研究<br style="margin: 0px; padding: 0px;" />\r\n2.案例教学，重方法，多套路，以实战为主<br style="margin: 0px; padding: 0px;" />\r\n3.名师一对一辅导，每晚陪你到9点<br style="margin: 0px; padding: 0px;" />\r\n4.课程体系与百度用户体验部共同研发<br style="margin: 0px; padding: 0px;" />\r\n5.知名互联网公司设计大咖亲临现场指导项目<br style="margin: 0px; padding: 0px;" />\r\n6.着手实战项目，迅速提升工作经验的能力</p>\r\n</div>\r\n<div class="nzw-box-l fs wow bounceInRight animated animated" style="margin: 14px 0px 0px 14px; padding: 0px; width: 287px; height: 430px; border: 1px solid rgb(232, 154, 19); float: left; visibility: visible;">\r\n<p class="tit ls fs" style="margin: 0px; padding: 0px; border: 1px solid rgb(232, 154, 19); width: 287px; height: 70px; background: rgb(232, 154, 19); line-height: 70px; text-align: center; color: rgb(255, 255, 255); font-size: 24px;">HTML5全栈工程师</p>\r\n<p class="box fsl" style="margin: 15px auto 0px; padding: 0px; width: 75px; height: 30px; border-bottom: 1px solid rgb(232, 154, 19); text-align: center; color: rgb(232, 154, 19);">课程优势</p>\r\n<p class="desc" style="margin: 0px; padding: 10px; font-size: 14px; line-height: 25px;">1.培养全栈型工程师，扩大就业选择空间<br style="margin: 0px; padding: 0px;" />\r\n2.HTML、CSS、JS都是轻量级语言，学习快<br style="margin: 0px; padding: 0px;" />\r\n3.由浅入深，循序渐进- 不同层次因材施教<br style="margin: 0px; padding: 0px;" />\r\n4.采用真实互联网案例企业需要什么就讲什么<br style="margin: 0px; padding: 0px;" />\r\n5.讲师授课激情励志风格幽默，让学习生动快乐<br style="margin: 0px; padding: 0px;" />\r\n6.课堂互动性强，案例紧扣知识点，让学习更简单</p>\r\n</div>\r\n<div class="nzw-box-l one ld wow bounceInLeft animated animated" style="margin: 14px 0px 0px; padding: 0px; width: 287px; height: 430px; border: 1px solid rgb(59, 146, 204); float: left; visibility: visible;">\r\n<p class="tit ls lls" style="margin: 0px; padding: 0px; border: 1px solid rgb(59, 146, 204); width: 287px; height: 70px; background: rgb(59, 146, 204); line-height: 70px; text-align: center; color: rgb(255, 255, 255); font-size: 24px;">云计算Linux工程师</p>\r\n<p class="box llss" style="margin: 15px auto 0px; padding: 0px; width: 75px; height: 30px; border-bottom: 1px solid rgb(59, 146, 204); text-align: center; color: rgb(59, 146, 204);">课程优势</p>\r\n<p class="desc" style="margin: 0px; padding: 10px; font-size: 14px; line-height: 25px;">1.实战化技术模块授课，所学即为所用<br style="margin: 0px; padding: 0px;" />\r\n2.CentOS 6.8和7.2同步授课，兼顾实用与前沿<br style="margin: 0px; padding: 0px;" />\r\n3.课程内容更新幅度超过50%，我们只做更好<br style="margin: 0px; padding: 0px;" />\r\n4.深入讲解Python自动化运维，掌握全方位运维技术</p>\r\n</div>\r\n<div class="nzw-box-l hs wow bounceInRight animated animated" style="margin: 14px 0px 0px 14px; padding: 0px; width: 287px; height: 430px; border: 1px solid rgb(230, 59, 63); float: left; visibility: visible;">\r\n<p class="tit hs" style="margin: 0px; padding: 0px; border: 1px solid rgb(230, 59, 63); width: 287px; height: 70px; background: rgb(230, 59, 63); line-height: 70px; text-align: center; color: rgb(255, 255, 255); font-size: 24px;">Python全栈+人工智能</p>\r\n<p class="box hsl" style="margin: 15px auto 0px; padding: 0px; width: 75px; height: 30px; border-bottom: 1px solid rgb(230, 59, 63); text-align: center; color: rgb(230, 59, 63);">课程优势</p>\r\n<p class="desc" style="margin: 0px; padding: 10px; font-size: 14px; line-height: 25px;">1.全流程的工业化敏捷开发<br style="margin: 0px; padding: 0px;" />\r\n2.基于Python的全栈开发<br style="margin: 0px; padding: 0px;" />\r\n3.Spark机器学习,TensorFlow深度学习</p>\r\n</div>\r\n<div class="last hg wow bounceInRight animated animated" style="margin: 14px 0px 0px 14px; padding: 0px; border: 1px solid rgb(43, 184, 127); width: 590px; height: 430px; float: left; visibility: visible;">\r\n<p class="tits col" style="margin: 0px; padding: 0px; border: 1px solid rgb(43, 184, 127); width: 590px; height: 70px; background: rgb(43, 184, 127); line-height: 70px; text-align: center; color: rgb(255, 255, 255); font-size: 24px;">大数据开发工程师</p>\r\n<p class="box1 coll" style="margin: 15px auto 0px; padding: 0px; width: 75px; height: 30px; border-bottom: 1px solid rgb(43, 184, 127); text-align: center; color: rgb(43, 184, 127);">课程优势</p>\r\n<p class="desc1" style="margin: 0px 0px 0px 60px; padding: 10px; font-size: 14px; line-height: 25px;">1.来自主流高校和一线企业的骨灰级大咖授课<br style="margin: 0px; padding: 0px;" />\r\n2.根据企业需求设计课程，并且定期更新，引入主流框架<br style="margin: 0px; padding: 0px;" />\r\n3.根据学员的不同时期采用不同等级的项目标准和流程<br style="margin: 0px; padding: 0px;" />\r\n4.总监级开发大咖亲自带你做企业级项目，而不是培训项目<br style="margin: 0px; padding: 0px;" />\r\n5.上百万的开发服务器，可实时感受分布式开发和云计算等<br style="margin: 0px; padding: 0px;" />\r\n6.16小时老师全程陪伴，不怕学不会&hellip;&hellip;<br style="margin: 0px; padding: 0px;" />\r\n7.线上线下结合，可以无缝衔接&hellip;&hellip;<br style="margin: 0px; padding: 0px;" />\r\n8.学员管理以人为本，不忘初心，致力培养眼界高/技术牛/做人好的职场员工</p>\r\n</div>\r\n</div>\r\n<br />\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(28, '<div class="part" color:="" microsoft="" overflow:="" style="margin: 0px auto; padding: 0px; font-size: 14px; font-family: " width:="">\r\n<div ..="" animation-delay:="" bottom="" center="" class="title wow fadeInDown animated" data-wow-delay="0.2s" img="" style="margin: 0px 0px 50px; padding: 60px 0px 16px; animation-duration: 1s; animation-fill-mode: both; animation-name: fadeInDown; width: 1349px; text-align: center; background: url(" visibility:="">\r\n<h1 style="margin: 0px; padding: 0px; font-weight: normal; font-size: 42px; color: rgb(65, 70, 77); line-height: 42px;">IT行业<span style="color: rgb(0, 150, 255);">前景</span></h1>\r\n</div>\r\n<div class="main" style="margin: 0px auto; padding: 0px; width: 1200px;">\r\n<div class="container1 clearfix" style="margin: 0px 0px 0px 61px; padding: 0px 0px 100px; transition: 0.2s;">\r\n<div class="box wow fadeInUp animated" data-wow-delay="0.2s" style="margin: 0px; padding: 0px 34px; animation-duration: 1s; animation-fill-mode: both; animation-name: fadeInUp; float: left; width: 290px; transition: 0.2s; border-right: 1px solid rgb(204, 204, 204); visibility: visible; animation-delay: 0.2s;"><img src="http://localhost/happy/uploadfile/2017/1126/20171126100751943.png" style="border: 0px; margin: 0px auto; display: block; transition: 0.5s;" />\r\n<h1 style="margin: 26px 0px 0px; padding: 0px; font-weight: normal; font-size: 18px; color: rgb(0, 150, 255); text-align: center;">人才需求大，待遇好</h1>\r\n<p style="margin: 26px 0px 0px; padding: 0px; text-indent: 25px; color: rgb(128, 128, 128); line-height: 22px;">IT行业发展日趋迅猛，IT产业的产值成倍增长，发展必然带来人才的需求，IT行业从业者的薪资待遇也就随之不断攀升，双十一的电商火爆程度可见一斑。</p>\r\n</div>\r\n<div class="box wow fadeInUp animated" data-wow-delay="0.4s" style="margin: 0px; padding: 0px 34px; animation-duration: 1s; animation-fill-mode: both; animation-name: fadeInUp; float: left; width: 290px; transition: 0.2s; border-right: 1px solid rgb(204, 204, 204); visibility: visible; animation-delay: 0.4s;"><img src="http://localhost/happy/uploadfile/2017/1126/20171126100751119.png" style="border: 0px; margin: 0px auto; display: block; transition: 0.5s;" />\r\n<h1 style="margin: 26px 0px 0px; padding: 0px; font-weight: normal; font-size: 18px; color: rgb(0, 150, 255); text-align: center;">职业寿命长，越老越吃香</h1>\r\n<p style="margin: 26px 0px 0px; padding: 0px; text-indent: 25px; color: rgb(128, 128, 128); line-height: 22px;">IT行业发展迅速,从业者能够随时随地的接触到新的资讯，了解到新的技术，不断的充实自己，突破自己，一步步的得到自我提升，随之，待遇、职位也会越来越好。</p>\r\n</div>\r\n<div class="box last wow fadeInUp animated" data-wow-delay="0.6s" style="margin: 0px; padding: 0px 34px; animation-duration: 1s; animation-fill-mode: both; animation-name: fadeInUp; float: left; width: 290px; transition: 0.2s; border-right: none; visibility: visible; animation-delay: 0.6s;"><img src="http://localhost/happy/uploadfile/2017/1126/20171126100751138.png" style="border: 0px; margin: 0px auto; display: block; transition: 0.5s;" />\r\n<h1 style="margin: 26px 0px 0px; padding: 0px; font-weight: normal; font-size: 18px; color: rgb(0, 150, 255); text-align: center;">未来IT企业人才需求分布</h1>\r\n<p style="margin: 26px 0px 0px; padding: 0px; text-indent: 25px; color: rgb(128, 128, 128); line-height: 22px;">数字艺术类41%、信息技术类38%、软件技术类8%、移动开发类6%、硬件开发类5%、软件测试类2%。</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div ..="" background:="" center="" class="part bg1" color:="" height:="" img="" microsoft="" overflow:="" style="margin: 0px auto; padding: 0px; font-size: 14px; font-family: " width:="">\r\n<div ..="" animation-delay:="" bottom="" center="" class="title c2 wow fadeInDown animated" data-wow-delay="0.2s" img="" style="margin: 0px 0px 50px; padding: 60px 0px 16px; animation-duration: 1s; animation-fill-mode: both; animation-name: fadeInDown; width: 1349px; text-align: center; background: url(" visibility:="">\r\n<h1 style="margin: 0px; padding: 0px; font-weight: normal; font-size: 42px; color: rgb(255, 255, 255); line-height: 42px;"><span style="color: rgb(0, 150, 255);">零基础，</span>选择参加&ldquo;培训&rdquo;</h1>\r\n<h2 style="margin: 12px 0px 0px; padding: 0px; font-weight: normal; font-size: 20px; line-height: 20px;">是进入IT行业快速、有效的途径</h2>\r\n</div>\r\n<div class="main" style="margin: 0px auto; padding: 0px; width: 1200px;">\r\n<div class="container2 clearfix" style="margin: 0px 0px 0px 98px; padding: 0px;">\r\n<div class="box b1 wow bounceInLeft animated" data-wow-delay="0.4s" style="margin: 0px 28px 0px 0px; padding: 0px; animation-duration: 1s; animation-fill-mode: both; animation-name: bounceInLeft; float: left; width: 487px; height: auto; transition: 0.2s; overflow: hidden; visibility: visible; animation-delay: 0.4s;">\r\n<h1 style="margin: 0px; padding: 0px; font-weight: normal; font-size: 30px; color: rgb(255, 255, 255); line-height: 60px; height: 60px; text-align: center; background: rgb(0, 150, 255); border-top: 4px solid rgb(0, 114, 193); border-right: 2px solid rgb(0, 114, 193);">培训的优势</h1>\r\n<div ..="" 2px="" 390px="" background-attachment:="" background-clip:="" background-origin:="" background-position:="" background-repeat:="" background-size:="" border-right:="" class="info" img="" overflow:="" solid="" style="margin: 0px; padding: 40px 37px 0px; height: 200px; transition: 0.2s; background-image: url(">\r\n<h2 style="margin: 0px; padding: 0px; font-size: 20px; color: rgb(0, 150, 255); line-height: 30px; text-align: center;">快速 学习效率高 效果有保证 就业有保障</h2>\r\n<p style="margin: 5px 0px 0px; padding: 0px; color: rgb(51, 51, 51); line-height: 25px;">IT行业从业者需要具备较强的专业性、技术性，这也决定了IT从业人员的独特性，特别是像软件开发、网络营销等方向对于从业人员的要求都是比较高的，只有系统的学习了技能，扎实的掌握了知识点，且拥有了一定的项目实践经验，才能够很好的胜任企业的相关岗位，能够上岗就上手工作，这类技术型人才备受企业亲睐。</p>\r\n</div>\r\n</div>\r\n<div class="box b2 wow bounceInRight animated" data-wow-delay="0.4s" style="margin: 0px 28px 0px 0px; padding: 0px; animation-duration: 1s; animation-fill-mode: both; animation-name: bounceInRight; float: left; width: 487px; height: auto; transition: 0.2s; overflow: hidden; visibility: visible; animation-delay: 0.4s;">\r\n<h1 style="margin: 0px; padding: 0px; font-weight: normal; font-size: 30px; color: rgb(255, 255, 255); line-height: 60px; height: 60px; text-align: center; background: rgb(67, 67, 67); border-top: 4px solid rgb(51, 51, 51); border-right: 2px solid rgb(51, 51, 51);">其他途径的弊端</h1>\r\n<div -29px="" ..="" 2px="" 33px="" border-right:="" class="info" img="" no-repeat="" overflow:="" solid="" style="margin: 0px; padding: 40px 37px 0px; height: 200px; transition: 0.2s; background: url(">\r\n<h3 style="margin: 0px; padding: 0px; font-size: 18px; color: rgb(51, 51, 51); line-height: 18px;">实习生途径：</h3>\r\n<p style="margin: 8px 0px 15px; padding: 0px; color: rgb(51, 51, 51); line-height: 25px;">一般只招应届生、计算机专业，且学历要求211/985</p>\r\n<h3 style="margin: 0px; padding: 0px; font-size: 18px; color: rgb(51, 51, 51); line-height: 18px;">自学途径：</h3>\r\n<p style="margin: 8px 0px 15px; padding: 0px; color: rgb(51, 51, 51); line-height: 25px;">效果差，没保证，时间还长，学习不系统，几年下来只能学个皮毛，后都被迫放弃</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<br />\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(26, '<span style="color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 40px; font-weight: 700; text-align: center;">引领行业的课程体系 更贴合企业用人需求</span>\r\n<p class="titx-desc qr wow bounceInRight animated animated" style="margin: 35px 0px 0px; padding: 0px; font-size: 24px; color: rgb(51, 51, 51); text-align: center; position: relative; top: 0px; transition: all 0.2s; font-family: 微软雅黑; visibility: visible;">拯救传统落后的行业现状，课程大纲紧跟技术潮流前沿，多项技能综合学习，打造全能人才</p>\r\n<div class="kc-box" style="margin: 85px 0px 0px; padding: 0px; width: 1200px; height: 100px; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: medium;">\r\n<div class="tit-box one" style="margin: 0px; padding: 0px; width: 157px; height: 100px; color: rgb(51, 51, 51); text-align: center; background: rgb(244, 244, 244); float: left; position: relative;">\r\n<p class="ll" style="margin: 0px; padding: 35px 0px 0px; font-size: 20px;">PHP开发工程师</p>\r\n</div>\r\n<div class="tit-box" style="margin: 0px 0px 0px 12px; padding: 0px; width: 157px; height: 100px; color: rgb(51, 51, 51); text-align: center; background: rgb(244, 244, 244); float: left; position: relative;">\r\n<p style="margin: 0px; padding: 35px 0px 0px; font-size: 20px;">JavaEE工程师</p>\r\n</div>\r\n<div class="tit-box" style="margin: 0px 0px 0px 12px; padding: 0px; width: 157px; height: 100px; color: rgb(51, 51, 51); text-align: center; background: rgb(244, 244, 244); float: left; position: relative;">\r\n<p class="ll" style="margin: 0px; padding: 35px 0px 0px; font-size: 20px;">UI/UE全能<br style="margin: 0px; padding: 0px;" />\r\n设计师</p>\r\n</div>\r\n<div class="tit-box" style="margin: 0px 0px 0px 12px; padding: 0px; width: 157px; height: 100px; color: rgb(51, 51, 51); text-align: center; background: rgb(244, 244, 244); float: left; position: relative;">\r\n<p class="ll" style="margin: 0px; padding: 35px 0px 0px; font-size: 20px;">HTML5全栈<br style="margin: 0px; padding: 0px;" />\r\n工程师</p>\r\n</div>\r\n<div class="tit-box" style="margin: 0px 0px 0px 12px; padding: 0px; width: 157px; height: 100px; color: rgb(51, 51, 51); text-align: center; background: rgb(244, 244, 244); float: left; position: relative;">\r\n<p style="margin: 0px; padding: 35px 0px 0px; font-size: 20px;">云计算Linux<br style="margin: 0px; padding: 0px;" />\r\n工程师</p>\r\n</div>\r\n<div class="tit-box active" style="margin: 0px 0px 0px 12px; padding: 0px; width: 157px; height: 100px; color: rgb(255, 255, 255); text-align: center; background: rgb(16, 86, 180); float: left; position: relative;">\r\n<p style="margin: 0px; padding: 35px 0px 0px; font-size: 20px;">Python全栈+<br style="margin: 0px; padding: 0px;" />\r\n人工智能</p>\r\n</div>\r\n<div class="tit-box" style="margin: 0px 0px 0px 12px; padding: 0px; width: 157px; height: 100px; color: rgb(51, 51, 51); text-align: center; background: rgb(244, 244, 244); float: left; position: relative;">\r\n<p style="margin: 0px; padding: 35px 0px 0px; font-size: 20px;">大数据开发<br style="margin: 0px; padding: 0px;" />\r\n工程师</p>\r\n</div>\r\n</div>\r\n<div class="kcjs-box" style="margin: 105px 0px 0px; padding: 0px; width: 1200px; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: medium;">\r\n<div class="kcjs-box-l show" style="margin: 0px; padding: 0px; max-height: 1000px; width: 1200px; height: auto; position: relative;">\r\n<div class="x" style="margin: 0px; padding: 0px; width: 1200px; height: 1px; background: rgb(93, 93, 93);">&nbsp;</div>\r\n<div class="y llf" style="margin: 0px; padding: 0px; width: 1px; height: 830px; position: absolute; background: rgb(93, 93, 93); left: 50px; top: -60px;">&nbsp;</div>\r\n<div class="yd" style="margin: 0px; padding: 0px; width: 75px; height: 75px; position: absolute; background: rgb(16, 86, 180); border-radius: 50px; top: -40px; left: 15px;">&nbsp;</div>\r\n<div class="wz" style="margin: 0px; padding: 0px; width: 340px; height: 45px; text-align: center; line-height: 45px; font-size: 30px; color: rgb(16, 86, 180); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; top: -20px; left: 120px; font-weight: 700;">Python全栈+人工智能</div>\r\n<div class="kcjs-nr" style="margin: 60px 0px 0px 85px; padding: 0px; width: 1100px; height: auto;">\r\n<p class="titl" style="margin: 15px 0px 0px; padding: 0px; font-size: 19px; color: rgb(16, 86, 180); font-weight: 700;">第一阶段 Python从入门到精通</p>\r\n<p class="desc" style="margin: 15px 0px 0px; padding: 0px 0px 0px 40px; font-size: 14px;">基本语法、字符串解析、时间日历、文件操作、Python模块、异常处理、实战项目</p>\r\n<p class="titl top" style="margin: 35px 0px 0px; padding: 0px; font-size: 19px; color: rgb(16, 86, 180); font-weight: 700;">第二阶段 算法、面向对象</p>\r\n<p class="desc" style="margin: 15px 0px 0px; padding: 0px 0px 0px 40px; font-size: 14px;">数据结构及算法、面向对象、设计模式</p>\r\n<p class="titl top" style="margin: 35px 0px 0px; padding: 0px; font-size: 19px; color: rgb(16, 86, 180); font-weight: 700;">第三阶段 Web全栈、MySQL</p>\r\n<p class="desc" style="margin: 15px 0px 0px; padding: 0px 0px 0px 40px; font-size: 14px;">HTML5+CSS3、PS应用、JavaScript、JQuery、项目、JavaScript单页应用技术开发实战、Django框架开发、RESTful接口开发、微信公众号开发、MySQL数据库设计</p>\r\n<p class="titl top" style="margin: 35px 0px 0px; padding: 0px; font-size: 19px; color: rgb(16, 86, 180); font-weight: 700;">第四阶段 现代软件开发方法</p>\r\n<p class="desc" style="margin: 15px 0px 0px; padding: 0px 0px 0px 40px; font-size: 14px;">Git项目代码管理和项目开发流程、MarkDown文档编写、Git分布式版本控制器、敏捷、代码重构、测试驱动开发、自动化</p>\r\n<p class="titl top" style="margin: 35px 0px 0px; padding: 0px; font-size: 19px; color: rgb(16, 86, 180); font-weight: 700;">第五阶段 NoSQL</p>\r\n<p class="desc" style="margin: 15px 0px 0px; padding: 0px 0px 0px 40px; font-size: 14px;">MongoDB、Redis、Elasticsearch</p>\r\n<p class="titl top" style="margin: 35px 0px 0px; padding: 0px; font-size: 19px; color: rgb(16, 86, 180); font-weight: 700;">第六阶段 Python运维</p>\r\n<p class="desc" style="margin: 15px 0px 0px; padding: 0px 0px 0px 40px; font-size: 14px;">Linux、Linux网络编程、Shell脚本编程</p>\r\n<p class="titl top" style="margin: 35px 0px 0px; padding: 0px; font-size: 19px; color: rgb(16, 86, 180); font-weight: 700;">第七阶段 人工智能</p>\r\n<p class="desc" style="margin: 15px 0px 0px; padding: 0px 0px 0px 40px; font-size: 14px;">网络爬虫、大数据科学分析、机器学习、深度学习</p>\r\n<p class="titl top" style="margin: 35px 0px 0px; padding: 0px; font-size: 19px; color: rgb(16, 86, 180); font-weight: 700;">第八阶段 毕业冲刺</p>\r\n<p class="desc" style="margin: 15px 0px 0px; padding: 0px 0px 0px 40px; font-size: 14px;">综合运用前三阶段所学知识、为毕业就业做最后冲刺；大型实战项目开发、面试准备</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="kcjs-foo" style="margin: 0px; padding: 0px; height: 300px; position: relative; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: medium;">&nbsp;</div>\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(29, '<div class="question-title " style="margin: 0px; padding: 90px 0px 38px; text-align: center; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: medium;">\r\n<h3 style="margin: 0px; padding: 0px; font-size: 40px; line-height: 68px; color: rgb(51, 51, 51); font-weight: 300;">六大核心保障 一经入学360&deg;云服务</h3>\r\n</div>\r\n<div class="question-content wow fadeInUp animated animated" style="margin: 0px auto; padding: 0px; width: 876px; height: 980px; position: relative; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: medium; visibility: visible;"><img alt="" src="http://localhost/happy/uploadfile/2017/1126/20171126101938631.png" style="margin: 0px; padding: 0px; border: 0px; display: inline;" />\r\n<div class="q1 wow slideInLeft animated animated" style="margin: 0px; padding: 0px; width: 295px; position: absolute; top: 135px; left: 58px; visibility: visible;">\r\n<h3 style="margin: 0px; padding: 0px; color: rgb(0, 91, 172); font-size: 22px; text-align: center; line-height: 40px;"><span style="color:#ffffff;">学习中途落课了怎么办</span></h3>\r\n<p style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 22px;"><span style="color:#ffffff;">中途耽误几天的话可以通过看视频同步完成老师的作业弥补进度，不会的可以随时问老师。</span></p>\r\n</div>\r\n<div class="q2 wow slideInLeft animated animated" style="margin: 0px; padding: 0px; width: 295px; position: absolute; top: 410px; left: 58px; visibility: visible;">\r\n<h3 style="margin: 0px; padding: 0px; color: rgb(0, 91, 172); font-size: 22px; text-align: center; line-height: 40px;"><span style="color:#ffffff;">专业考核方式</span></h3>\r\n<p style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 22px;"><span style="color:#ffffff;">学习的流程分为预习、听课、整理笔记、作业（每周定期检查作业，并针对反馈情况进行讲解）、复习、默写、项目阶段跟踪检查。</span></p>\r\n</div>\r\n<div class="q3 wow slideInLeft animated animated" style="margin: 0px; padding: 0px; width: 295px; position: absolute; top: 680px; left: 58px; visibility: visible;">\r\n<h3 style="margin: 0px; padding: 0px; color: rgb(0, 91, 172); font-size: 22px; text-align: center; line-height: 40px;"><span style="color:#ffffff;">定期召开关怀学员会议</span></h3>\r\n<p style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 22px;"><span style="color:#ffffff;">开课后根据学生的作业及测验情况形成关怀名单，进入关怀名单的学生会被所有老师所关注，相应的对其作业、预习笔记、默写等要求会更高，要求会更严格。</span></p>\r\n</div>\r\n<div class="q4 wow slideInRight animated animated" style="margin: 0px; padding: 0px; width: 295px; position: absolute; top: 212px; left: 523px; visibility: visible;">\r\n<h3 style="margin: 0px; padding: 0px; color: rgb(0, 91, 172); font-size: 22px; text-align: center; line-height: 40px;"><span style="color:#ffffff;">是否可以免费重修呢？</span></h3>\r\n<p style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 22px;"><span style="color:#ffffff;">学生因学习中途落课或者学习效果不扎实等原因可以向教务老师申请重修或降级，本期学不会下期免费再学，直到学会为止！</span></p>\r\n</div>\r\n<div class="q5 wow slideInRight animated animated" style="margin: 0px; padding: 0px; width: 295px; position: absolute; top: 490px; left: 523px; visibility: visible;">\r\n<h3 style="margin: 0px; padding: 0px; color: rgb(0, 91, 172); font-size: 22px; text-align: center; line-height: 40px;"><span style="color:#ffffff;">严格规范的预习笔记</span></h3>\r\n<p style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 22px;"><span style="color:#ffffff;">预习笔记是兄弟连一再强调的学习法宝，每个同学在兄弟连都必须养成课前预习的习惯，对老师第二天要讲授的内容重点、难点做到心里有数，听课事半功倍。</span></p>\r\n</div>\r\n<div class="q6 wow slideInRight animated animated" style="margin: 0px; padding: 0px; width: 295px; position: absolute; top: 760px; left: 523px; visibility: visible;">\r\n<h3 style="margin: 0px; padding: 0px; color: rgb(0, 91, 172); font-size: 22px; text-align: center; line-height: 40px;"><span style="color:#ffffff;">人性化的班组机制</span></h3>\r\n<p style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 22px;"><span style="color:#ffffff;">学习中遇到问题，小组成员共同讨论解决，小组内有学习懈怠完不成学习任务的同学，小组内全体成员会集体被罚（罚手抄代码n遍哟）。</span></p>\r\n</div>\r\n</div>\r\n<br />\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(30, '<div class="design-tit wow fadeInUp animated  animated" style="padding: 0px; margin: 0px auto 70px; list-style: none; animation-duration: 1s; animation-fill-mode: both; animation-name: fadeInUp; color: rgb(0, 0, 0); font-family: 微软雅黑, sans-serif; visibility: visible;">\r\n<div class="design-title " style="padding: 0px; margin: 0px auto; list-style: none; width: 1200px; position: relative; text-align: center;">\r\n<div class="worry-auto" style="padding: 0px; margin: 0px; list-style: none; width: 1200px;">\r\n<h3 style="padding: 25px 0px 0px; margin: 0px; list-style: none; word-wrap: break-word; font-size: 36px;">乐课堂教育核心保障 一经入学绝对负责</h3>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="worry-content wow bounceInDown animated animated animated  animated" style="padding: 0px; margin: 200px auto 0px; list-style: none; width: 1200px; height: 424px; position: relative; text-align: center; animation-duration: 1s; animation-fill-mode: both; animation-name: bounceInDown; color: rgb(0, 0, 0); font-family: 微软雅黑, sans-serif; visibility: visible;"><img alt=" " src="http://localhost/happy/uploadfile/2017/1127/20171127100610414.png" style="padding: 0px; margin: 0px; list-style: none; border: none; vertical-align: middle;" />\r\n<div class="worry1 wow slideInLeft animated animated  animated" style="padding: 0px; margin: 0px; list-style: none; position: absolute; width: 210px; left: 203px; top: -150px; animation-duration: 1s; animation-fill-mode: both; animation-name: slideInLeft; visibility: visible;">\r\n<h3 style="padding: 0px; margin: 0px; list-style: none; word-wrap: break-word; font-size: 18px; color: rgb(14, 114, 197);">专业考核方式</h3>\r\n<p style="padding: 0px; margin: 0px; list-style: none; word-wrap: break-word; font-size: 16px; color: rgb(136, 136, 136);">学习的流程分为预习、听课、整理笔记、作业（每周定期检查作业，并针对反馈情况进行讲解）、复习、默写、项目阶段跟踪检查。</p>\r\n</div>\r\n<div class="worry2 wow slideInLeft animated animated  animated" style="padding: 0px; margin: 0px; list-style: none; position: absolute; width: 210px; left: 590px; top: -150px; animation-duration: 1s; animation-fill-mode: both; animation-name: slideInLeft; visibility: visible;">\r\n<h3 style="padding: 0px; margin: 0px; list-style: none; word-wrap: break-word; font-size: 18px; color: rgb(14, 114, 197);">专是否可以免费重修呢？</h3>\r\n<p style="padding: 0px; margin: 0px; list-style: none; word-wrap: break-word; font-size: 16px; color: rgb(136, 136, 136);">学生因学习中途落课或者学习效果不扎实等原因可以向教务老师申请重修或降级，本期学不会下期免费再学，直到学会为止！</p>\r\n</div>\r\n<div class="worry3 wow slideInLeft animated animated  animated" style="padding: 0px; margin: 0px; list-style: none; position: absolute; width: 210px; left: 989px; top: -150px; animation-duration: 1s; animation-fill-mode: both; animation-name: slideInLeft; visibility: visible;">\r\n<h3 style="padding: 0px; margin: 0px; list-style: none; word-wrap: break-word; font-size: 18px; color: rgb(14, 114, 197);">人性化的班组机制</h3>\r\n<p style="padding: 0px; margin: 0px; list-style: none; word-wrap: break-word; font-size: 16px; color: rgb(136, 136, 136);">学习中遇到问题，小组成员共同讨论解决，小组内有学习懈怠完不成学习任务的同学，小组内全体成员会集体被罚（罚手抄代码n遍哟）。</p>\r\n</div>\r\n<div class="worry4 wow slideInRight animated animated  animated" style="padding: 0px; margin: 0px; list-style: none; position: absolute; width: 210px; left: 0px; top: 250px; animation-duration: 1s; animation-fill-mode: both; animation-name: slideInRight; visibility: visible;">\r\n<h3 style="padding: 0px; margin: 0px; list-style: none; word-wrap: break-word; font-size: 18px; color: rgb(14, 114, 197);">学习中途落课了怎么办</h3>\r\n<p style="padding: 0px; margin: 0px; list-style: none; word-wrap: break-word; font-size: 16px; color: rgb(136, 136, 136);">中途耽误几天的话可以通过看视频同步完成老师的作业弥补进度，不会可以随时问老师。</p>\r\n</div>\r\n<div class="worry5 wow slideInRight animated animated  animated" style="padding: 0px; margin: 0px; list-style: none; position: absolute; width: 210px; left: 397px; animation-duration: 1s; animation-fill-mode: both; animation-name: slideInRight; visibility: visible;">\r\n<h3 style="padding: 0px; margin: 0px; list-style: none; word-wrap: break-word; font-size: 18px; color: rgb(14, 114, 197);">定期召开关怀学员会议</h3>\r\n<p style="padding: 0px; margin: 0px; list-style: none; word-wrap: break-word; font-size: 16px; color: rgb(136, 136, 136);">开课后根据学生的作业及测验情况形成关怀名单，进入关怀名单的学生会被所有老师所关注，相应的对其作业、预习笔记、默写等要求会更高，要求会更严格。</p>\r\n</div>\r\n<div class="worry6 wow slideInRight animated animated  animated" style="padding: 0px; margin: 0px; list-style: none; position: absolute; width: 210px; left: 793px; top: 250px; animation-duration: 1s; animation-fill-mode: both; animation-name: slideInRight; visibility: visible;">\r\n<h3 style="padding: 0px; margin: 0px; list-style: none; word-wrap: break-word; font-size: 18px; color: rgb(14, 114, 197);">严格规范的预习笔记</h3>\r\n<p style="padding: 0px; margin: 0px; list-style: none; word-wrap: break-word; font-size: 16px; color: rgb(136, 136, 136);">预习笔记是兄弟连一再强调的学习法宝，每个同学在兄弟连都必须养成课前预习的习惯，对老师第二天要讲授的内容重点、难点做到心里有数，听课事半功倍。</p>\r\n</div>\r\n</div>\r\n<a class="feature-btn " href="http://www11.53kf.com/webCompany.php?style=1&amp;arg=10143228&amp;it" rel="nofollow" style="padding: 0px; margin: 100px auto; list-style: none; text-decoration-line: none; color: rgb(14, 114, 197); width: 264px; height: 50px; border: 1px solid rgb(14, 114, 197); font-size: 24px; text-align: center; line-height: 48px; border-radius: 50px; display: block; font-family: 微软雅黑, sans-serif;" target="_blank ">了解更多</a>', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(32, '<div class="task-part-item" font-size:="" helvetica="" hiragino="" microsoft="" sans="" style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: ">\r\n<div class="task-part-hd" style="line-height: 40px; height: 40px; position: relative; margin-bottom: 5px; padding-top: 5px;">\r\n<h3 class="part-tt" style="margin: 0px; font-size: 16px;">前端性能优化与工程化【直播课】</h3>\r\n</div>\r\n<div class="task-task-list" style="margin: 0px 10px;">\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】前端性能优化必备服务器知识">【直播】前端性能优化必备服务器知识</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(2月27日 20:00-22:00)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】前端架构与性能优化那些事儿">【直播】前端架构与性能优化那些事儿</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(3月2日 20:00-22:00)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】第四周考试+作业讲解">【直播】第四周考试+作业讲解</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(3月9日 20:00-22:00)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】前端架构师启蒙课第一讲">【直播】前端架构师启蒙课第一讲</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(3月10日 20:00-22:00)</span></a></p>\r\n</div>\r\n</div>\r\n<div class="task-part-item" font-size:="" helvetica="" hiragino="" microsoft="" sans="" style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: ">\r\n<div class="task-part-hd" style="line-height: 40px; height: 40px; position: relative; margin-bottom: 5px; padding-top: 5px;">\r\n<h3 class="part-tt" style="margin: 0px; font-size: 16px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.CSS古话今说与网站重构【直播课】</h3>\r\n</div>\r\n<div class="task-task-list" style="margin: 0px 10px;">\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】CSS WorkFlow">【直播】CSS WorkFlow</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(3月13日 20:00-22:00)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】CSS与数学的奥秘">【直播】CSS与数学的奥秘</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(3月16日 20:00-22:00)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】第五周考试+作业讲解">【直播】第五周考试+作业讲解</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(3月20日 20:00-22:00)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(238, 238, 238); -webkit-tap-highlight-color: transparent; outline: 0px; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】前端架构师启蒙课第二讲">【直播】前端架构师启蒙课第二讲</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(3月24日 20:00-22:00)</span></a></p>\r\n</div>\r\n</div>\r\n<br />\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0');
INSERT INTO `v9_news_data` (`id`, `content`, `readpoint`, `groupids_view`, `paginationtype`, `maxcharperpage`, `template`, `paytype`, `relation`, `voteid`, `allow_comment`, `copyfrom`) VALUES
(33, '<div class="task-part-item" font-size:="" helvetica="" hiragino="" microsoft="" sans="" style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: ">\r\n<div class="task-part-hd" style="line-height: 40px; height: 40px; position: relative; margin-bottom: 5px; padding-top: 5px;">\r\n<h3 class="part-tt" style="margin: 0px; font-size: 16px;">PHP与MySQL开发入门【上】</h3>\r\n</div>\r\n<div class="task-task-list" style="margin: 0px 10px;">\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】1.初识PHP">【录播】1.初识PHP</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(16分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】2.PHP基础操作">【录播】2.PHP基础操作</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(26分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】3.初识phpMyAdmin">【录播】3.初识phpMyAdmin</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(17分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】4.PHP与MySQL">【录播】4.PHP与MySQL</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(17分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】5.PHP与MySQL小实战">【录播】5.PHP与MySQL小实战</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(16分钟)</span></a></p>\r\n</div>\r\n</div>\r\n<div class="task-part-item" font-size:="" helvetica="" hiragino="" microsoft="" sans="" style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: ">\r\n<div class="task-part-hd" style="line-height: 40px; height: 40px; position: relative; margin-bottom: 5px; padding-top: 5px;">\r\n<h3 class="part-tt" style="margin: 0px; font-size: 16px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PHP与MySQL开发入门【中】</h3>\r\n</div>\r\n<div class="task-task-list" style="margin: 0px 10px;">\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】6-1.PHP面向对象的介绍">【录播】6-1.PHP面向对象的介绍</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(21分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】6-2.构造方法与析构方法">【录播】6-2.构造方法与析构方法</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(12分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】6-3.PHP面向对象之封装性">【录播】6-3.PHP面向对象之封装性</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(29分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】6-4.PHP面向对象之继承和多态">【录播】6-4.PHP面向对象之继承和多态</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(17分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】6-5.PHP抽象类与接口">【录播】6-5.PHP抽象类与接口</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(28分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】6-6.PHP常见的关键字">【录播】6-6.PHP常见的关键字</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(8分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】6-7.PHP错误处理类">【录播】6-7.PHP错误处理类</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(9分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】7.PHP和JavaScript的比较">【录播】7.PHP和JavaScript的比较</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(31分钟)&nbsp;</span></a></p>\r\n</div>\r\n</div>\r\n<div class="task-part-item" font-size:="" helvetica="" hiragino="" microsoft="" sans="" style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: ">\r\n<div class="task-part-hd" style="line-height: 40px; height: 40px; position: relative; margin-bottom: 5px; padding-top: 5px;">\r\n<h3 class="part-tt" style="margin: 0px; font-size: 16px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PHP与MySQL开发入门【下】</h3>\r\n</div>\r\n<div class="task-task-list" style="margin: 0px 10px;">\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】8.MySQL数据库客户端基础">【录播】8.MySQL数据库客户端基础</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(20分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】9.MySQL创建表">【录播】9.MySQL创建表</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(22分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】10.MySQL函数SQL语句">【录播】10.MySQL函数SQL语句</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(24分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】11.MYSQL条件查询">【录播】11.MYSQL条件查询</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(20分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; outline: 0px; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】12.MYSQL复杂条件查询">【录播】12.MYSQL复杂条件查询</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(21分钟)</span></a></p>\r\n</div>\r\n</div>\r\n<br />\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(34, '<div class="task-part-item" font-size:="" helvetica="" hiragino="" microsoft="" sans="" style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: ">\r\n<div class="task-part-hd" style="line-height: 40px; height: 40px; position: relative; margin-bottom: 5px; padding-top: 5px;">\r\n<h3 class="part-tt" style="margin: 0px; font-size: 16px;">EcmaScript5.1新增语法【上】</h3>\r\n</div>\r\n<div class="task-task-list" style="margin: 0px 10px;">\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】1.ECMAScript5.1简介">【录播】1.ECMAScript5.1简介</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(3分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】2.浏览器支持">【录播】2.浏览器支持</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(6分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】3.严格模式">【录播】3.严格模式</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(23分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】4.JSON格式">【录播】4.JSON格式</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(7分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】5.添加对象">【录播】5.添加对象</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(11分钟)</span></a></p>\r\n</div>\r\n</div>\r\n<div class="task-part-item" font-size:="" helvetica="" hiragino="" microsoft="" sans="" style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: ">\r\n<div class="task-part-hd" style="line-height: 40px; height: 40px; position: relative; margin-bottom: 5px; padding-top: 5px;">\r\n<h3 class="part-tt" style="margin: 0px; font-size: 16px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;EcmaScript5.1新增语法【下】</h3>\r\n</div>\r\n<div class="task-task-list" style="margin: 0px 10px;">\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】6.额外的数组">【录播】6.额外的数组</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(8分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】7.Function.prototype.bind">【录播】7.Function.prototype.bind</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(5分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】8.JavaScript this的使用">【录播】8.JavaScript this的使用</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(13分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】9.JavaScript作用域和闭包">【录播】9.JavaScript作用域和闭包</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(12分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; outline: 0px; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】10.按值传递和按引用传递">【录播】10.按值传递和按引用传递</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(7分钟)</span></a></p>\r\n</div>\r\n</div>\r\n<br />\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(35, '<div class="task-part-item" font-size:="" helvetica="" hiragino="" microsoft="" sans="" style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: ">\r\n<div class="task-part-hd" style="line-height: 40px; height: 40px; position: relative; margin-bottom: 5px; padding-top: 5px;">&nbsp;</div>\r\n<div class="task-part-hd" style="line-height: 40px; height: 40px; position: relative; margin-bottom: 5px; padding-top: 5px;">\r\n<div class="task-part-item" font-size:="" helvetica="" hiragino="" microsoft="" sans="" style="margin-bottom: 10px; font-family: ">\r\n<div class="task-part-hd" style="line-height: 40px; height: 40px; position: relative; margin-bottom: 5px; padding-top: 5px;">\r\n<h3 class="part-tt" style="margin: 0px; font-size: 16px;">&nbsp; &nbsp; &nbsp;.JavaScript语言新发展【直播课】</h3>\r\n</div>\r\n<div class="task-task-list" style="margin: 0px 10px;">\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】精英前端工程师开学典礼">【直播】精英前端工程师开学典礼</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(12月28日 20:00-22:00)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】JavaScript函数式编程">【直播】JavaScript函数式编程</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(1月9日 20:00-22:00)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】JavaScript与QA测试工程师">【直播】JavaScript与QA测试工程师</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(1月12日 20:00-22:00)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】第一周实战+作业讲解">【直播】第一周实战+作业讲解</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(1月19日 20:00-22:00)&nbsp; &nbsp;</span></a></p>\r\n</div>\r\n</div>\r\n<div class="task-part-item" font-size:="" helvetica="" hiragino="" microsoft="" sans="" style="margin-bottom: 10px; font-family: ">\r\n<div class="task-part-hd" style="line-height: 40px; height: 40px; position: relative; margin-bottom: 5px; padding-top: 5px;">\r\n<h3 class="part-tt" style="margin: 0px; font-size: 16px;">&nbsp; &nbsp; 精英班预读班</h3>\r\n</div>\r\n<div class="task-task-list" style="margin: 0px 10px;">\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】你不知道的HTML">【录播】你不知道的HTML</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(119分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】CSS3构建3D的世界">【录播】CSS3构建3D的世界</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(119分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】CSS高级实用技巧【上】">【录播】CSS高级实用技巧【上】</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(56分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】CSS高级使用技巧【下】">【录播】CSS高级使用技巧【下】</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(56分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】CSS与数学的巧妙运用">【录播】CSS与数学的巧妙运用</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(107分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】ES5核心技术">【录播】ES5核心技术</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(113分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】jQuery技术内幕">【录播】jQuery技术内幕</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(116分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】走进后端工程师的世界">【录播】走进后端工程师的世界</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(116分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; outline: 0px; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】常用后端语言介绍">【录播】常用后端语言介绍</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(121分钟)</span></a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<br />\r\n<div class="task-part-item" font-size:="" helvetica="" hiragino="" microsoft="" sans="" style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: ">\r\n<div class="task-part-hd" style="line-height: 40px; height: 40px; position: relative; margin-bottom: 5px; padding-top: 5px;">\r\n<h3 class="part-tt" style="margin: 0px; font-size: 16px;">&nbsp;</h3>\r\n</div>\r\n<div class="task-task-list" style="margin: 0px 10px;">\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】精英前端工程师开学典礼">【直播】精英前端工程师开学典礼</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(12月28日 20:00-22:00)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】JavaScript函数式编程">【直播】JavaScript函数式编程</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(1月9日 20:00-22:00)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】JavaScript与QA测试工程师">【直播】JavaScript与QA测试工程师</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(1月12日 20:00-22:00)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item js-task-live-open task-item-jump js-task-needSign" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【直播】第一周实战+作业讲解">【直播】第一周实战+作业讲解</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(1月19日 20:00-22:00)</span></a></p>\r\n</div>\r\n</div>\r\n<div class="task-part-item" font-size:="" helvetica="" hiragino="" microsoft="" sans="" style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: ">\r\n<div class="task-task-list" style="margin: 0px 10px;">\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】你不知道的HTML">【录播】你不知道的HTML</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(119分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】CSS3构建3D的世界">【录播】CSS3构建3D的世界</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(119分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】CSS高级实用技巧【上】">【录播】CSS高级实用技巧【上】</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(56分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】CSS高级使用技巧【下】">【录播】CSS高级使用技巧【下】</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(56分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】CSS与数学的巧妙运用">【录播】CSS与数学的巧妙运用</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(107分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】ES5核心技术">【录播】ES5核心技术</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(113分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】jQuery技术内幕">【录播】jQuery技术内幕</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(116分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】走进后端工程师的世界">【录播】走进后端工程师的世界</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(116分钟)</span></a></p>\r\n<p class="task-tt" style="margin: 0px;"><a class="task-task-item task-item-nojump" style="background: rgb(244, 244, 244); -webkit-tap-highlight-color: transparent; outline: 0px; position: relative; line-height: 50px; padding-left: 53px; display: block; width: 800px; box-sizing: border-box; margin-bottom: 20px; cursor: default;"><span class="task-tt-text" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; word-wrap: normal; display: inline-block; vertical-align: middle;" title="【录播】常用后端语言介绍">【录播】常用后端语言介绍</span><span class="tt-suffix" style="color: rgb(153, 153, 153); margin-left: 10px; display: inline-block; vertical-align: middle;">(121分钟)</span></a></p>\r\n</div>\r\n</div>\r\n<br />\r\n', 0, '', 0, 10000, '', 0, '', 0, 1, '|0');

-- --------------------------------------------------------

--
-- 表的结构 `v9_page`
--

CREATE TABLE `v9_page` (
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(160) NOT NULL,
  `style` varchar(24) NOT NULL,
  `keywords` varchar(40) NOT NULL,
  `content` text NOT NULL,
  `template` varchar(30) NOT NULL,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_page`
--

INSERT INTO `v9_page` (`catid`, `title`, `style`, `keywords`, `content`, `template`, `updatetime`) VALUES
(16, '关于我们', ';', '', '<div background:="" class="xieyi" color:="" height:="" microsoft="" style="margin: 0px; padding: 100px 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; vertical-align: baseline; font-family: " text-align:="" width:="">\r\n<div class="pt60 pb60" font-size:="" helvetica="" microsoft="" pingfang="" style="color: rgb(51, 51, 51); margin: 0px; padding: 60px 0px;">\r\n<div class="mb40 fz28 tc" style="margin: 0px 0px 40px; padding: 0px; font-size: 28px; text-align: center;">公司新闻</div>\r\n<ul class="in-news-list" style="padding-right: 0px; padding-left: 0px; margin: 0px auto; width: 1140px; overflow: hidden;">\r\n<li style="margin: 0px; padding: 0px; list-style: none; width: 348px; float: left;"><img src="http://localhost/happy/uploadfile/2017/1126/20171126041623114.jpg" style="height: 263px; width: 350px; margin-left: 10px; margin-right: 10px;" /><br />\r\n<div class="mb10 mt20 fz16 text-trim" style="margin: 20px 0px 10px; padding: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">乐<a class="gray3" href="http://www.yxt.com/Item/336.aspx" style="text-decoration-line: none; color: rgb(51, 51, 51);" target="_blank">学堂荣登郑州培训杂志Top 25</a></div>\r\n<div class="gray9 mb10 fz12" style="margin: 0px 0px 10px; padding: 0px; color: rgb(153, 153, 153);">&nbsp;</div>\r\n<div class="gray6 lh150 fz14 font-control" style="margin: 0px; padding: 0px; line-height: 21px; color: rgb(102, 102, 102); overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical;">11月24日，2017河南培训杂志年会暨HR服务展在郑州举行，郑州培训杂志Top 25榜单揭晓，乐学堂进入河南培训组织25强。</div>\r\n</li>\r\n<li style="margin: 0px 0px 0px 48px; padding: 0px; list-style: none; width: 348px; float: left;"><img src="http://localhost/happy/uploadfile/2017/1126/20171126041954278.jpg" /><br />\r\n<div class="mb10 mt20 fz16 text-trim" style="margin: 20px 0px 10px; padding: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;"><a class="gray3" href="http://www.yxt.com/Item/335.aspx" style="text-decoration-line: none; color: rgb(51, 51, 51);" target="_blank">上海金融人才发展论坛揭幕在即</a></div>\r\n<div class="gray9 mb10 fz12" style="margin: 0px 0px 10px; padding: 0px; color: rgb(153, 153, 153);">&nbsp;</div>\r\n<div class="gray6 lh150 fz14 font-control" style="margin: 0px; padding: 0px; line-height: 21px; color: rgb(102, 102, 102); overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical;">乐学堂将发布细分行业解决方案|11月30日，由云学堂与郑州银行金融学院共同举办的金融人才发展论坛将在郑州举行</div>\r\n</li>\r\n<li style="margin: 0px 0px 0px 48px; padding: 0px; list-style: none; width: 348px; float: left;"><a href="http://www.yxt.com/Item/334.aspx" style="text-decoration-line: none;" target="_blank"><img alt="云学堂斩获“杰出供应商”大奖" src="http://localhost/happy/uploadfile/2017/1126/20171126040214965.jpg" style="border: 0px; width: 350px; height: 263px; display: block;" /></a>\r\n<div class="mb10 mt20 fz16 text-trim" style="margin: 20px 0px 10px; padding: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">乐<a class="gray3" href="http://www.yxt.com/Item/334.aspx" style="text-decoration-line: none; color: rgb(51, 51, 51);" target="_blank">学堂斩获&ldquo;杰出供应商&rdquo;大奖</a></div>\r\n<div class="gray9 mb10 fz12" style="margin: 0px 0px 10px; padding: 0px; color: rgb(153, 153, 153);">&nbsp;</div>\r\n<div class="gray6 lh150 fz14 font-control" style="margin: 0px; padding: 0px; line-height: 21px; color: rgb(102, 102, 102); overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical;">11月17日，由中国人力资源开发研究会主办的&ldquo;2017年中国人才发展论坛&rdquo;（HRID）在郑州举行，乐学堂夺得&ldquo;2017年度人才发展服务...</div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div background:="" class="pt60 pb60" font-size:="" helvetica="" microsoft="" pingfang="" style="color: rgb(51, 51, 51); margin: 0px; padding: 60px 0px;">\r\n<div class="mb40 fz28 tc" style="margin: 0px 0px 40px; padding: 0px; text-align: center; font-size: 28px;">媒体关注</div>\r\n<div class="in-events" style="margin: 0px auto; padding: 0px; width: 1140px; overflow: hidden;">\r\n<ul class="in-media-list" style="padding-right: 0px; padding-left: 0px; margin: 0px;">\r\n<li style="margin: 0px 0px 10px; padding: 0px; list-style: none; width: 520px; height: 100px; overflow: hidden; float: left;"><img alt="上海金融人才发展论坛揭幕在即 云学堂将发布细分行业解决方案" src="http://localhost/happy/uploadfile/2017/1126/20171126040215321.jpg" style="border: 0px; width: 130px; height: 80px; margin-right: 10px; float: left;" />\r\n<div class="media-content" style="margin: 0px; padding: 0px 0px 0px 10px; width: 380px; float: left; box-sizing: border-box; position: relative;">\r\n<div class="mb10 fz18" style="margin: 0px 0px 10px; padding: 0px; font-size: 18px;">郑州<a class="gray3" href="http://city.sina.com.cn/invest/t/2017-11-22/170514171.html" style="text-decoration-line: none; color: rgb(51, 51, 51);" target="_blank">金融人才发展论坛揭幕在即&nbsp;乐学堂将发布细分行业解决方案</a></div>\r\n<div class="gray9 fz14" style="margin: 0px; padding: 0px; color: rgb(153, 153, 153);">2010年9月2日 |&nbsp;<span class="gray6" style="color: rgb(102, 102, 102);">新浪网</span></div>\r\n</div>\r\n</li>\r\n<li style="margin: 0px 0px 10px; padding: 0px; list-style: none; width: 520px; height: 100px; overflow: hidden; float: right;"><img alt="2017中国人才发展论坛闭幕 云学堂斩获“杰出供应商”大奖" src="http://localhost/happy/uploadfile/2017/1126/20171126040215223.jpg" style="border: 0px; width: 130px; height: 80px; margin-right: 10px; float: left;" />\r\n<div class="media-content" style="margin: 0px; padding: 0px 0px 0px 10px; width: 380px; float: left; box-sizing: border-box; position: relative;">\r\n<div class="mb10 fz18" style="margin: 0px 0px 10px; padding: 0px; font-size: 18px;"><a class="gray3" href="http://news.ifeng.com/a/20171117/53357898_0.shtml" style="text-decoration-line: none; color: rgb(51, 51, 51);" target="_blank">2017中国人才发展论坛闭幕&nbsp;乐学堂斩获&ldquo;杰出供应商&rdquo;大奖</a></div>\r\n<div class="gray9 fz14" style="margin: 0px; padding: 0px; color: rgb(153, 153, 153);">2010年9月0日 |&nbsp;<span class="gray6" style="color: rgb(102, 102, 102);">凤凰网</span></div>\r\n</div>\r\n</li>\r\n<li style="margin: 0px 0px 10px; padding: 0px; list-style: none; width: 520px; height: 100px; overflow: hidden; float: left;"><img alt="云学堂携手TTI SI激活人才培养“未来模式”" src="http://localhost/happy/uploadfile/2017/1126/20171126040215985.jpg" style="border: 0px; width: 130px; height: 80px; margin-right: 10px; float: left;" />\r\n<div class="media-content" style="margin: 0px; padding: 0px 0px 0px 10px; width: 380px; float: left; box-sizing: border-box; position: relative;">\r\n<div class="mb10 fz18" style="margin: 0px 0px 10px; padding: 0px; font-size: 18px;">乐<a class="gray3" href="http://www.cet.com.cn/itpd/hlw/1975321.shtml" style="text-decoration-line: none; color: rgb(51, 51, 51);" target="_blank">学堂携手TTI SI激活人才培养&ldquo;未来模式&rdquo;</a></div>\r\n<div class="gray9 fz14" style="margin: 0px; padding: 0px; color: rgb(153, 153, 153);">2010年9月2日 |&nbsp;<span class="gray6" style="color: rgb(102, 102, 102);">中国经济新闻网</span></div>\r\n</div>\r\n</li>\r\n<li style="margin: 0px 0px 10px; padding: 0px; list-style: none; width: 520px; height: 100px; overflow: hidden; float: right;"><img alt="云学堂获CSTD高度认可 企业培训全案服务领跑行业" src="http://localhost/happy/uploadfile/2017/1126/20171126040215534.jpg" style="border: 0px; width: 130px; height: 80px; margin-right: 10px; float: left;" />\r\n<div class="media-content" style="margin: 0px; padding: 0px 0px 0px 10px; width: 380px; float: left; box-sizing: border-box; position: relative;">\r\n<div class="mb10 fz18" style="margin: 0px 0px 10px; padding: 0px; font-size: 18px;">乐<a class="gray3" href="http://city.sina.com.cn/invest/t/2017-11-07/125511932.html" style="text-decoration-line: none; color: rgb(51, 51, 51);" target="_blank">学堂获高度认可 企业培训全案服务领跑行业</a></div>\r\n<div class="gray9 fz14" style="margin: 0px; padding: 0px; color: rgb(153, 153, 153);">2010年9月2日 |&nbsp;<span class="gray6" style="color: rgb(102, 102, 102);">新浪网</span></div>\r\n</div>\r\n</li>\r\n<li style="margin: 0px 0px 10px; padding: 0px; list-style: none; width: 520px; height: 100px; overflow: hidden; float: left;"><img alt="云学堂CTO王润念、产品总监刘一峰：让学习平台进化为企业学习智能助手" src="http://localhost/happy/uploadfile/2017/1126/20171126040215496.jpg" style="border: 0px; width: 130px; height: 80px; margin-right: 10px; float: left;" />\r\n<div class="media-content" style="margin: 0px; padding: 0px 0px 0px 10px; width: 380px; float: left; box-sizing: border-box; position: relative;">\r\n<div class="mb10 fz18" style="margin: 0px 0px 10px; padding: 0px; font-size: 18px;">乐<a class="gray3" href="http://industry.caijing.com.cn/20171103/4354198.shtml" style="text-decoration-line: none; color: rgb(51, 51, 51);" target="_blank">学堂CTO王润念、产品总监庆威伟：让学习平台进化为企业学习智能助手</a></div>\r\n<div class="gray9 fz14" style="margin: 0px; padding: 0px; color: rgb(153, 153, 153);">2010年9月2日 |&nbsp;<span class="gray6" style="color: rgb(102, 102, 102);">财经网</span></div>\r\n</div>\r\n</li>\r\n<li style="margin: 0px 0px 10px; padding: 0px; list-style: none; width: 520px; height: 100px; overflow: hidden; float: right;"><img alt="云学堂人才培养论坛成都收官 商业学习2.0助推中国企业升级" src="http://localhost/happy/uploadfile/2017/1126/20171126040215432.jpg" style="border: 0px; width: 130px; height: 80px; margin-right: 10px; float: left;" />\r\n<div class="media-content" style="margin: 0px; padding: 0px 0px 0px 10px; width: 380px; float: left; box-sizing: border-box; position: relative;">\r\n<div class="mb10 fz18" style="margin: 0px 0px 10px; padding: 0px; font-size: 18px;">乐<a class="gray3" href="http://news.163.com/17/1020/11/D16GESRA00014AEE.html" style="text-decoration-line: none; color: rgb(51, 51, 51);" target="_blank">学堂人才培养论坛成功收官 商业学习2.0助推中国企业升级</a></div>\r\n<div class="gray9 fz14" style="margin: 0px; padding: 0px; color: rgb(153, 153, 153);">2010年9月2日 |&nbsp;<span class="gray6" style="color: rgb(102, 102, 102);">网易</span></div>\r\n</div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class="tc" style="margin: 0px; padding: 0px; text-align: center;"><a class="media-more" href="http://www.yxt.com/Category_100/Index.aspx" style="text-decoration-line: none; display: inline-block; width: 235px; height: 50px; border: 1px solid rgb(242, 148, 26); border-radius: 50px; color: rgb(242, 148, 26); line-height: 50px;">查看更多</a></div>\r\n</div>\r\n<div class="pt60 pb60" font-size:="" helvetica="" microsoft="" pingfang="" style="color: rgb(51, 51, 51); margin: 0px; padding: 60px 0px;">\r\n<div class="mb40 fz28 tc" style="margin: 0px 0px 40px; padding: 0px; text-align: center; font-size: 28px;">市场活动</div>\r\n<div class="in-events" style="margin: 0px auto; padding: 0px; width: 1140px; overflow: hidden;">\r\n<ul class="in-events-list" style="padding-right: 0px; padding-left: 0px; margin: 0px; width: 1400px;">\r\n<li style="margin: 0px 55px 50px 0px; padding: 0px; list-style: none; float: left;">\r\n<div class="mb20 fz18 text-trim" style="margin: 0px 0px 20px; padding: 0px; font-size: 18px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;"><a class="gray3" href="http://www.yxt.com/Item/337.aspx" style="text-decoration-line: none; color: rgb(51, 51, 51);" target="_blank">2017乐学堂发展论坛</a></div>\r\n<div class="fl mr10" style="margin: 0px 10px 0px 0px; padding: 0px; float: left;"><img src="http://localhost/happy/uploadfile/2017/1126/20171126090430995.png" style="background-color: initial;" /></div>\r\n<div class="fl in-event-info" style="margin: 0px; padding: 0px; float: left; width: 225px;">\r\n<div class="mr10" style="margin: 0px 10px 0px 0px; padding: 0px;">\r\n<div class="gray6 in-event-detail font-control" style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); line-height: 2;">\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">主题：创造未来</div>\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">时间：2017年11月26日</div>\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">地点：<span style="background-color: initial;">河南.郑州</span></div>\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">主办：乐学堂</div>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li style="margin: 0px 55px 50px 0px; padding: 0px; list-style: none; float: left;">\r\n<div class="mb20 fz18 text-trim" style="margin: 0px 0px 20px; padding: 0px; font-size: 18px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">郑州<a class="gray3" href="http://www.yxt.com/Item/333.aspx" style="text-decoration-line: none; color: rgb(51, 51, 51);" target="_blank">金融人才发展论坛</a></div>\r\n<div class="fl mr10" style="margin: 0px 10px 0px 0px; padding: 0px; float: left;"><img src="http://localhost/happy/uploadfile/2017/1126/20171126090459566.png" style="background-color: initial;" /></div>\r\n<div class="fl in-event-info" style="margin: 0px; padding: 0px; float: left; width: 225px;">\r\n<div class="mr10" style="margin: 0px 10px 0px 0px; padding: 0px;">\r\n<div class="gray6 in-event-detail font-control" style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); line-height: 2;">\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">主题：<span style="background-color: initial;">创造未来</span></div>\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">时间：2017年11月28日</div>\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">地点：<span style="background-color: initial;">河南.郑州</span></div>\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">主办：乐学堂</div>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li style="margin: 0px 55px 50px 0px; padding: 0px; list-style: none; float: left;">\r\n<div class="mb20 fz18 text-trim" style="margin: 0px 0px 20px; padding: 0px; font-size: 18px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;"><a class="gray3" href="http://www.yxt.com/Item/315.aspx" style="text-decoration-line: none; color: rgb(51, 51, 51);" target="_blank">组织与人才发展新趋势主题论坛</a></div>\r\n<div class="fl mr10" style="margin: 0px 10px 0px 0px; padding: 0px; float: left;"><img src="http://localhost/happy/uploadfile/2017/1126/20171126090513199.png" style="background-color: initial;" /></div>\r\n<div class="fl in-event-info" style="margin: 0px; padding: 0px; float: left; width: 225px;">\r\n<div class="mr10" style="margin: 0px 10px 0px 0px; padding: 0px;">\r\n<div class="gray6 in-event-detail font-control" style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); line-height: 2;">\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">主题：<span style="background-color: initial;">创造未来</span></div>\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">时间：2017年11月30日</div>\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">地点：河南.郑州</div>\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">主办：乐学堂</div>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li style="margin: 0px 55px 50px 0px; padding: 0px; list-style: none; float: left;">\r\n<div class="mb20 fz18 text-trim" style="margin: 0px 0px 20px; padding: 0px; font-size: 18px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">\r\n<div class="mb20 fz18 text-trim" style="margin: 0px 0px 20px; padding: 0px; overflow: hidden; text-overflow: ellipsis;">乐<a class="gray3" href="http://www.yxt.com/Item/313.aspx" style="text-decoration-line: none; color: rgb(51, 51, 51);" target="_blank">学堂互联网培养人才主题</a></div>\r\n<div class="fl mr10" style="margin: 0px 10px 0px 0px; padding: 0px; float: left;"><img src="http://localhost/happy/uploadfile/2017/1126/20171126090627489.png" /></div>\r\n<div class="fl in-event-info" style="margin: 0px; padding: 0px; float: left; width: 225px;">\r\n<div class="mr10" style="margin: 0px 10px 0px 0px; padding: 0px;">\r\n<div class="gray6 in-event-detail font-control" style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); line-height: 2;">\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis;">主题：<span style="background-color: initial;">创造未来</span></div>\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis;">时间：2017年11月29日</div>\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis;">地点：<span style="background-color: initial;">河南.郑州</span></div>\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis;">主办：乐学堂</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li style="margin: 0px 55px 50px 0px; padding: 0px; list-style: none; float: left;">\r\n<div class="mb20 fz18 text-trim" style="margin: 0px 0px 20px; padding: 0px; font-size: 18px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">乐<a class="gray3" href="http://www.yxt.com/Item/313.aspx" style="text-decoration-line: none; color: rgb(51, 51, 51);" target="_blank">学堂制造业人才培养主题</a></div>\r\n<div class="fl mr10" style="margin: 0px 10px 0px 0px; padding: 0px; float: left;"><img src="http://localhost/happy/uploadfile/2017/1126/20171126090653711.png" style="background-color: initial;" /></div>\r\n<div class="fl in-event-info" style="margin: 0px; padding: 0px; float: left; width: 225px;">\r\n<div class="mr10" style="margin: 0px 10px 0px 0px; padding: 0px;">\r\n<div class="gray6 in-event-detail font-control" style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); line-height: 2;">\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">主题：<span style="background-color: initial;">创造未来</span></div>\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">时间：2017年11月29日</div>\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">地点：<span style="background-color: initial;">河南.郑州</span></div>\r\n<div class="text-trim" style="margin: 0px; padding: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">主办：乐学堂</div>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<br />\r\n</ul>\r\n</div>\r\n</div>\r\n<div background:="" class="pt60 pb60" font-size:="" helvetica="" microsoft="" pingfang="" style="color: rgb(51, 51, 51); margin: 0px; padding: 60px 0px;">\r\n<div class="mb40 fz28 tc" style="margin: 0px 0px 40px; padding: 0px; text-align: center; font-size: 28px;">他们选择了乐学堂<br />\r\n相信我们，&nbsp;创造美好未来</div>\r\n</div>\r\n</div>\r\n<br />\r\n', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_pay_account`
--

CREATE TABLE `v9_pay_account` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `trade_sn` char(50) NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `contactname` char(50) NOT NULL,
  `email` char(40) NOT NULL,
  `telephone` char(20) NOT NULL,
  `discount` float(8,2) NOT NULL DEFAULT '0.00',
  `money` char(8) NOT NULL,
  `quantity` int(8) UNSIGNED NOT NULL DEFAULT '1',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `paytime` int(10) NOT NULL DEFAULT '0',
  `usernote` char(255) NOT NULL,
  `pay_id` tinyint(3) NOT NULL,
  `pay_type` enum('offline','recharge','selfincome','online') NOT NULL DEFAULT 'recharge',
  `payment` char(90) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT '1',
  `ip` char(15) NOT NULL DEFAULT '0.0.0.0',
  `status` enum('succ','failed','error','progress','timeout','cancel','waitting','unpay') NOT NULL DEFAULT 'unpay',
  `adminnote` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_pay_payment`
--

CREATE TABLE `v9_pay_payment` (
  `pay_id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `pay_name` varchar(120) NOT NULL,
  `pay_code` varchar(20) NOT NULL,
  `pay_desc` text NOT NULL,
  `pay_method` tinyint(1) DEFAULT NULL,
  `pay_fee` varchar(10) NOT NULL,
  `config` text NOT NULL,
  `is_cod` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_online` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pay_order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `version` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_pay_spend`
--

CREATE TABLE `v9_pay_spend` (
  `id` int(10) UNSIGNED NOT NULL,
  `creat_at` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `logo` varchar(20) NOT NULL,
  `value` int(5) NOT NULL,
  `op_userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `op_username` char(20) NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_picture`
--

CREATE TABLE `v9_picture` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `typeid` smallint(5) UNSIGNED NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `islink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_picture_data`
--

CREATE TABLE `v9_picture_data` (
  `id` mediumint(8) UNSIGNED DEFAULT '0',
  `content` text NOT NULL,
  `readpoint` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `pictureurls` mediumtext NOT NULL,
  `copyfrom` varchar(255) NOT NULL DEFAULT '',
  `allow_comment` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_position`
--

CREATE TABLE `v9_position` (
  `posid` smallint(5) UNSIGNED NOT NULL,
  `modelid` smallint(5) UNSIGNED DEFAULT '0',
  `catid` smallint(5) UNSIGNED DEFAULT '0',
  `name` char(30) NOT NULL DEFAULT '',
  `maxnum` smallint(5) NOT NULL DEFAULT '20',
  `extention` char(100) DEFAULT NULL,
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `thumb` varchar(150) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_position`
--

INSERT INTO `v9_position` (`posid`, `modelid`, `catid`, `name`, `maxnum`, `extention`, `listorder`, `siteid`, `thumb`) VALUES
(1, 0, 0, '首页焦点图推荐', 20, NULL, 1, 1, ''),
(2, 0, 0, '首页头条推荐', 20, NULL, 4, 1, ''),
(13, 82, 0, '栏目页焦点图', 20, NULL, 0, 1, ''),
(5, 69, 0, '推荐下载', 20, NULL, 0, 1, ''),
(8, 30, 54, '图片频道首页焦点图', 20, NULL, 0, 1, ''),
(9, 0, 0, '网站顶部推荐', 20, NULL, 0, 1, ''),
(10, 0, 0, '栏目首页推荐', 20, NULL, 0, 1, ''),
(12, 0, 0, '首页图片推荐', 20, NULL, 0, 1, ''),
(14, 0, 0, '视频首页焦点图', 20, '', 0, 1, ''),
(15, 0, 0, '视频首页头条推荐', 20, '', 0, 1, ''),
(16, 0, 0, '视频首页每日热点', 20, '', 0, 1, ''),
(17, 0, 0, '视频栏目精彩推荐', 20, '', 0, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_position_data`
--

CREATE TABLE `v9_position_data` (
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `posid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `module` char(20) DEFAULT NULL,
  `modelid` smallint(6) UNSIGNED DEFAULT '0',
  `thumb` tinyint(1) NOT NULL DEFAULT '0',
  `data` mediumtext,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `listorder` mediumint(8) DEFAULT '0',
  `expiration` int(10) NOT NULL,
  `extention` char(30) DEFAULT NULL,
  `synedit` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_poster_201711`
--

CREATE TABLE `v9_poster_201711` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `spaceid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `area` char(40) NOT NULL,
  `ip` char(15) NOT NULL,
  `referer` char(120) NOT NULL,
  `clicktime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_queue`
--

CREATE TABLE `v9_queue` (
  `id` int(10) NOT NULL,
  `type` char(5) DEFAULT NULL,
  `siteid` smallint(5) UNSIGNED DEFAULT '0',
  `path` varchar(100) DEFAULT NULL,
  `status1` tinyint(1) DEFAULT '0',
  `status2` tinyint(1) DEFAULT '0',
  `status3` tinyint(1) DEFAULT '0',
  `status4` tinyint(1) DEFAULT '0',
  `times` int(10) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_release_point`
--

CREATE TABLE `v9_release_point` (
  `id` mediumint(8) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `port` varchar(10) DEFAULT '21',
  `pasv` tinyint(1) DEFAULT '0',
  `ssl` tinyint(1) DEFAULT '0',
  `path` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_search`
--

CREATE TABLE `v9_search` (
  `searchid` int(10) UNSIGNED NOT NULL,
  `typeid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `adddate` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_search`
--

INSERT INTO `v9_search` (`searchid`, `typeid`, `id`, `adddate`, `data`, `siteid`) VALUES
(1, 1, 1, 1511591991, '关于我们 关于我们 关于 我们', 1),
(2, 1, 2, 1511592023, '关于我们 关于我们 防守 我们 关于', 1),
(3, 1, 3, 1511592103, '你好 你好你好 收费 是非 你好', 1),
(4, 1, 4, 1511595578, 'MV*框架大集合  直播 讲解 作业 分析 考试 框架 指南 那些 深度 源码 时代 架构 战场 原理 宋体 集合', 1),
(16, 1, 16, 1511674940, '8：IT未来发展的几大趋势  现实 增强 创新 数据 领域 技术 工具 未来 研究 企业 相信 可以 信息 能够 工作 体验 移动 分析 现有 发生 商业 一定 科技 现在 一些 发展 需要 趋势 一直 服务 这些 起来 厂商 空间 进行 对于 使用 之前 协作 存储 社交 总监 仍然 一个 越来越 情况 时间 智能 事情 组织 活动 以及 方面 应用 场所 然后 致力于 真正 例子 表示 一起 生成 目前 尝试 夸大 利用 计算机 可能 认为 一切 成为 主管 通过 东西 提升 业务 这是 全球 集团 位置 专家组 保险 个性化 水平 潜在 增长 自身 关于 到来 列举 并且 收集 正在 新技术 继续 这样 如此 的数据 客户 放在 基于 重点 云计算 集中 我们 它们 潜力 的增长 思考 来看 问题 关注 未来的 举措 更加 面向 他们 解决 不要 建议 寻找 单一 产品 现成 具体 部门 成果 思维 追溯 准备 有关 方向 导向 实时 帮助 处理 首席 案例 应该 系统 包装 大量 必不可少 专家 所有 有些 简单 那么 努力 看看 链接 如何 类似 时髦 直到 新鲜 事物 重新 急于 商务 实例 领导者 操作 较大 的发展 炒作 市场 不是 投资 希望 表明 会达到 的收入 观赏 虚拟 数字 事实 有的 不能 完全 亿美元 特定 加大 可以通过 覆盖 屏幕 多个 代表 客户服务 可用 出现 应用程序 员工培训 添加 广播 大趋势 未来发展 环境 世界 包括 增加 体育 比如 真实 主要 受关注 之一 游戏 以往 那个 举例 时代 品牌 革命 接受 开展 方式 千年 经历 最好 模式 强大 指出 同样 优势 作为 电子商务 成熟 成功 宣传 逐渐 走向 来说 背景 巨头 零售 近期 预测 加强 培训 头脑 风暴 有所 收获 内外 令人 如何在 人们 还有 相关 尤其 媒体 标准 采用', 1),
(6, 1, 6, 1511596695, '10：2017年IT行业就业前景分析  行业 不断 人才 软件开发 国家 企业 自己 需要 社会 项目 的发展 经验 而且 因此 时代 想要 需求 但是 工作 从业 技能 能够 相关 迎来 发展 面前 政策方向 趋势 高度 对于 挑战 只要 提供 而言 自我 获得 完成 得到 信息化 潜力 看到 高薪 我国 拥有 市场 范围 包括 设备 硬件 涵盖 掌握 职业 技术 其他 网络营销 电子商务 一个 通过 攻克 具备 进行尝试 属于 多人 胜任 系统 只有 比较 学习 实践 过程 扎实 岗位 要求 备受 一定 决定 特别 上岗 方向 专业性 推向 可以 权威 的数据 薪酬 相当 实用 一直 处于 匮乏 状态 里面 总是 不会 难度 相比 再就业 跳槽 占有 比重 从事 算是 专业 其中 战胜 不仅 额外 提升 知识 突破 报酬 成果 就算 不是 负责 参与 极大 自豪 可能 认可 感到 非常 更新 建设 比例 增长 合格 存在 软件 待遇 随之 攀升 现在 缺口 为了 信息 网上交易 网站制作 年薪 通常 开发 工程师 薪资 分析 平面设计 当前 行业发展 迅速 大量 供给 的空间 这样 前景 广阔 巨大 大力 推行 国民经济 无疑 多年 年轻 如果 没有 面试 这个 进入 虽然 很大 我们 正在 目前 愿意 随着 全球 重要性 可见 今年 十一 火爆 程度 进程 加快 越来越 受到 管理层 重视 实力 综合 信息产业 水平 直接 影响 时候', 1),
(7, 1, 7, 1511596785, '9：IT面试中常见的问题  问题 自己 缺点 工作 不宜 觉得 失败 说出 面试 程序员 爱好 业余 那些 公司 应聘 经历 代码 容易 明显 这儿 没有 反而 这是 内容 优点 一些 影响 严重 不如 实力 最好 面对面 一定 聊天 介绍 而言 重要 这个 十分 方面 能力 认为 令人 时间 设计 的最 报告 作为 分配 任何 倾向 逃避 谈谈 以及 做好 分辨 舒服 人才 重视 而且 起来 更加 热情 面对 行业 看好 我们 选择 以后 为什么 这项 适合 甚至 表面 对于 所在 可以 上看 角度 相信 很快 成功 预算 却是 一次 放心 不要 不了 自我 没什么 不说 题目 个人简历 口语 尽量 方式 一致 表述 常见 无关 无用 感觉 不好 主要原因 要说 哪些 错误 高层 行政 机会 回答 丧失 招聘单位 心态 事先 文字 分明 层次 清晰 形式 性格 观念 应聘者 反映 程度 主管', 1),
(14, 1, 14, 1511672013, '张老师 老师 互联网 社群 老师 运营 营销 行业 商业 顾问 专家 资深 模式 课程 国内 产品 集团 公司 联盟 讲师 创业 精英 客座 如何 转型 企业 多家 创办 管理学 硕士 项目 主讲 高管 领域 大学 北京 简介 创始人 中国人民大学 中小企业 进入 启动 上市 正在 担任 年率 创立 老虎 品牌 第一 公众 世界观 网上 查找 纯属 内容 经济 清华 总裁 首席 协会 印刷 经营 航空 打造 中国电信 葛洲坝 传统 思维 移动互联网 的风险 趋势 挑战 擅长 所在地 年龄 咨询电话 信息 更多 联合 文艺 著名 有限公司 鲜花 喜欢 知名', 1),
(15, 1, 15, 1511672290, '庆老师 老师 宋体 企业 数据 咨询 经验 信息化 应用 商业 智能 治理 互联网 领域 银行 工作 技术 大型 课程 时代 项目管理 数据仓库 业务 丰富 建设 信息 企业管理 办公室 通过 战略 金融 高级 分析 公司 经理 实现 管理 广州 研发 系统 企业战略 商会 包括 软件开发 优化 从业 资本 规划 组织 主任 简介 计算机 发展战略 技术服务 实践 北京 互联 见解 相关 多年 深刻 认识 价值 海量 积累 长远 精通 集成 转型 升级 完成 现代化 对于 驱动 机制 个人 技巧 政府机构 单位 信息系 工程 挖掘 技术应用 方法 管理方 面的 管理体系 需求 网上 查找 电话 助理 基于 提升 利率 市场化 架构 流程 标准化 风险控制 协议 私人 金融数据 方面 学习型 理论 知识管理 如何 基因 成长 主讲 范畴 生命 公司治理 创办 人和 培训 直属 实验室 专家 资深 顾问 国内 知名 拥有 国家 研究中心 研究员 职业 金融创新 研究院 认证 程序员 民间 委员会 老师 工学 硕士 毕业 文化 大学 会员 讲师 背景 学会 履历 深入 中国公司 全球 机器 国际 仓库 事业部 深圳 常州 广泛 地域 客户 提供 乌鲁 贵阳 九江 景德镇 南宁 行业 体会 农业银行 工程师 科技 部门 超过 专业', 1),
(13, 1, 13, 1511671913, '朱老师 老师 ', 1),
(17, 1, 17, 1511675026, '7：计算机发展的四个阶段  网络 阶段 局域 发展 计算机 局域网 世纪 计算机网络 主要 特征 标志 年代 的发展 产生 实现 技术 能力 年代初 分组 真正 远程 交换 已经 一个 标准 及其 以及 完全 协议 飞速 大学 国际标准 进入 成功 作为 社会 可以 分成 总体 系统 来说 计算 学会 生活 国电 下属 宣告 相继 提出 成立 走进 平民 委员会 百姓 综合 各类 主机 使得 集成 模式 产品的 越来越 智能化 数据 业务 成熟 其中 协同 全球 通信 虚拟 现在 计算机网 另外 采用 口号 目前 体现 盛行 基础 走向 组织 迅速 市场 内容 草案 就是 大部分 蓬勃 正式 应用 进一步 奠定 确定 标准化 网络技术 认可 原理 国防部 建成 第一次 是由 实验 小型 资源 复合 重要 新型 构成 典型 代表 增加 为了 开始 这些 一方面 著名 竞争 研究所 开发 另一方面 它们 整个 时期 硬件 作用 导航 形成 以后 起到 发展成为 基本 出来 公司 计算机系 是从 结构 无线电 采用了 研究中心 推出 开放', 1),
(18, 1, 18, 1511675079, '6：计算机的影响  计算机 人类 用户 互联网 信息 社会 企业 应用 技术 行业 可以 发明 的影响 薪酬 网上 软件 增速 已经 万台 重要 分别 整体 之一 收入 年一季度 物联网 人们 范围 工具 进入 全球 我国 原来 领域 压力 多数 需求 不断 数量 个人 计算 以及 乐观 物体 随着 产生了 极其 强大 活动 发展 约翰 生产 世纪 先进 科学技术 下滑 同比 营业利润 使得 未来 提供 股东 关于 网上购物 婚礼 超过 员工 政府 营销 面临 等等 互动 显示 同比增长 样本 扩张 速度 自由 快捷 开放 利润 平台 创新 现在 家中 处于 一个 历史 飞跃 接受 目前 生活 医学 各地 坐在 时期 查询 自己 网络 可以通过 改变 传统 生活方式 学习 专家 面的 交流 情感 需要 不仅仅 的增长 概念 涵盖 手机 老百姓 设备 便携 更为 广阔 笔记本 服务器 分配 增长 由此 技术进步 引发 深刻 变革 带动 产业 各个领域 形成 规模 巨大 遍及 一般 标志 时代 提出 其他 一次 必不可少 成为 学校 事业单位 百姓 扩展 科研 飞速 最初 军事 生命力 掀起 年至 成绩 联网 上升至 不错 取得 提高 特别 通信 多媒体 达到 年中国 全球第一 市场 投资 浅析 无线网络 移动 其中 水平 攀升 所有 几乎 结合 实现 之间 当下 定义 革命 根据 联盟 环境 状态 越来越 普遍 改革开放 以后 处理 传递 实时 共享 智能化 收集 总结', 1),
(19, 1, 19, 1511675126, '5：万物互联  网络 互联 万物 价值 卡夫 定律 数据 我们 内容 定义 效应 事物 随着 指数 增长 用户数 使得 更加 力度 增加 有的 前所 创造 大家 力量 企业 物品 平方 本质 能够 观点 互联网 相关 变得 转化 信息 连接 一起 结合 流程 行动 考虑 留住 市场份额 重要 提到 开始 一个 客户 影响 文章 他们 正在 发表 关于 看来 用户 使用 决策 声誉 创造性 产生 储存 加强 严格 赋予 声音 商机 广阔 实现 画面 清晰 提供 面的 如下 一切 想到 几乎 来说 发生 来自 不断 数量 作出 说来 潜力 动画 这些 现实 时候 前景 基于 准确 自身 改变世界 令人 特征 越来越 鲜明 机遇 体验 经济发展 联系 起来 科技 也就是 实质 这个 丰富 带来 国家 功能 个人 公司 创始人 知道 同样 叫做 投向 更多 注意力 是否 适用 最近 也就是说 的增长 比例 公众 时代 大于 部分 联网 提出 认为 步入 强大', 1),
(20, 1, 20, 1511675167, '4：计算机发展的弊端  网络 信息 中学生 安全 病毒 网上 已经 黑客 主要 计算机 网站 现实 全球 他们 上网 有的 法律 所以 安全问题 学生 系统 网络游戏 社会 污染 带来 问题 特征 不仅 世界 第三 分钟 冲击 众多 万台 构成 时间 自制 生活 感染 最新 对方 入侵 可能 互联网 垃圾 第二 更改 破坏 的数据 泄露 难以 目前 心理 及其 软件 弊端 发展 包括 交易 硬件 事物 暴力 色情 不良 我们 由于 危害 传播 生理 将来 产生 讨论 今天 其次 大于 特殊 主体 特定 群体 这么 发育 快速 但是 就是 小时 处于 同时 这样 只有 造成 严重 损害 眼睛 快捷 方面 方便 相比 难道 交流 而后 运转 使得 变形 可谓 不是 国家机关 好像 现存 人类 指出 导致 正如 预见 身心 万年 不同 程度 伤害 一方 仍然 存在 也许 成为 自由 开放性 对待 成熟 缺乏 是非 强烈 极其 接受 新鲜 欲望 能力 这些 颁布 眼里 关于 网络管理 专项 迫使 矛盾 本质 之间 不可 易于 生成 进入 一些 相对 基础教育 因素 干扰 容易 影响 不安 极大 的影响 手段 老师 面对 模仿 健康 限制 用户 使用 时候 自身 中断 连续 正常 运行 网络服务 倡导 价值观 竟然 自己 达到 占有 为了 甚至 犯罪 广州日报 报道 电脑 目的 孤独 回到 一旦 其二 学习 第一 解决 欺诈 诸多 其一 三个 导向 怀疑 无法 给予 正确 调查 显示 网吧 聊天室 不少 中学 我家', 1),
(21, 1, 21, 1511675224, '3：计算机的特点  计算机 执行 计算 速度 程序 数据 逻辑 指令 几十 处理 能够 重要 可以 达到 记忆 目前 功能 存储 容量 判断 特点 输入 信息 发展 工作 时间 提高 技术 完成 工具 实现 已经 具有 随着 进行 能力 表示 平均 性能 一个 次数 常用 指标 早期 图形 文字 如今 影像 除了 视频 动画 声音 图像 特征 的发展 内存 传统 区别 反复 调用 甚至 硬盘 越来越 更是 几百 至上 这种 自动 连续 顺序 按照 设备 存在 依次 出来 干预 完全 人为 无须 这样 过程 通过 就是 前提 问题 推理 比较 时候 高度 智能化 控制 原理 因素 计算机系 工程 尤其 复杂 许多 效率 响应 要求 发挥 衡量 得到 单位 实时 控制系统 人们 千万 几千 现代 如此 其他 极大 无法 任何 百万 显著 内部 是由 强大 原始 中间 提供 起来 保存 结果 任意 采用 有效 不断 数字 理论 需要', 1),
(22, 1, 22, 1511675262, '2：计算机技术对我们生活的影响  人们 网络 计算机 我们 技术 生活 网上 学习 随着 的发展 人类 应用 社会 工作 现实 网络技术 自己 关系 解决 不可 方式 可以 使得 广泛 之间 一个 发展 的影响 极大 已经 推动 另一方面 陌生 进步 感到 才能 科学 时代 上班 信息 利用 自觉 促进 理念 结构 不再 可能 普及 根本 游戏 交流 依赖 一定 发达 过于 往往 作用 情况 问题 空间 虚拟 这种 提高 各种 弊端 完善 方便 质量 但是 形成 带来 变革 不断 隐私 安全 个人 限度 实现 梦想 从而 不到 开放性 真实 人际关系 情感 日趋 便利 道德 产生了 保障 或者 世界 不了 喜欢 幻想 这样 影响 比如 电脑游戏 从未 体验 角色 扮演 深远 逃避 途径 改变 反映 数字化 电子化 意义 程度 最大 我国 目前 上会 无情 控制 行为 唯有 严格 要求 伤害 支配 能力 即使 表现 变成 机器 交谈 这个 个体 交往 的方式 感情 直接 已有 充分 状况 取代 越来越 逐渐 如此 因为 网上购物 洽谈 生意 娱乐 会议 授课 变为 在家 成为 新型 丰富 灵活 新技术 内容 引起 生活方式 多媒体 教学 各个 效率 各个领域 发生 转变 深刻 便捷 简单 生产力 加快 可知 方面 原来 按时 部分 办事 天下 科学技术 起到 一些 有着 虽然 假设 便于 验证 并存 背后 正是 利益 带给 首先 显而易见 发出 同时 可能出现 原本 用人 需要 几十 难题 探讨 帮助 攻克 深思 甚至 值得 模拟 完成 分钟 存在 复杂 计算 看到', 1),
(23, 1, 23, 1511675294, '1：网络游戏的定义 网络游戏 游戏 网络游戏 不同 一个 玩家 客户端 服务器 体验 人类 一样 互联网 虚拟 生活 系统 每个 完全 多人 就是 进行 目的 运营 角色 在线游戏 社会 娱乐 通过 区别 这个 一定 品质 丰富 诞生 不能 全球 模式 服务 需要 这是 我们 个性化 整体 他们 程序 运行 机制 没有 所以 不是 多媒体 简单 复制 可能 在于 世界 简称 网游 名称 具有 传输 媒介 处理 终端 计算机 用户 运营商 英文 又称 连接 演唱会 尽管 大多数 结局 哲人 旅游 联网 本质 讯息 要素 同一 像是 可以 另外 发行 目的是 公众 最大 相同 不会 活动 戏剧 还有 比喻 大脑 任务 朋友 经历 电脑 装备 成长 高度 制品 甚至可能 定义 孤立 相对 视角 传递 甚至 细胞 组织 器官 那么 身上 光盘 知识 部分 两个 连续 庞大的 操作系统 成就 取得 提升 有限 而言 使命 交流 从而 精神 实现 物质 并且 进步 促进 休闲 局域网 可以通过 多名 规则 操作 按照 场景 人物 计算机网络 达到 互动 因为 必须 为人 集合 一般 产品 快乐 体系 看成 绝对 组成 某个 应当 所有 不可 环境 有机 关系 而是 局限 应该 信息 软件 不仅 显著 交互 旨在 窗口 而且 角度 概念 不得 只有 才能 不同于', 1),
(24, 1, 24, 1511704575, '互联网牛掰职位从这里开始  课程 开发 技术 互联网 优势 企业 工程师 学习 项目 学员 授课 需求 这里 采用 职场 能力 设计 流程 实战 掌握 开始 职位 不同 数据 用户 服务器 培养 更新 基础 主流 想到 网站 可以 讲解 绝对 根据 讲师 覆盖 行业 一次 提升 半年 市场 案例 岗位 升级 云计算 全部 实用 我们 深入 更好 自动化 超过 内容 前沿 全方位 幅度 所学 风格 励志 幽默 生动 课堂 快乐 激情 需要 语言 层次 真实 所用 同步 模块 简单 兼顾 小时 老师 全程 感受 不是 百万 实时 不怕 不会 致力 以人为本 做人 员工 管理 上线 结合 衔接 亲自 总监 深度 机器 工业化 敏捷 基于 框架 引入 时期 等级 标准 定期 并且 来自 高校 一线 辅导 通过 要求 专家 带领 具有 周期 论坛 门户网站 目的 入门 独立 分析 应用 熟练 规范 编码 数据库 模式 使用 完全 适合 领域 步伐 方式 编写 很快 进入 过程 利用 非常 完整 体验 百度 共同 研发 知名 体系 方法 为主 名师 公司 扩大就业 选择 空间 经验 工作 现场 指导 着手 迅速 研究 大型 编程 思想 维护 后台 高度 联合 巨大 美学 知识 设计师 全能 导向 真正', 1),
(28, 1, 28, 1511705254, '行业前景 前景 行业 行业 待遇 途径 学习 企业 能够 人才需求 行业发展 人才 随之 不断 自己 迅猛 前景 日趋 培训 开发 要求 系统 从业 快速 产值 产业 增长 必然 带来 效果 保证 需求 薪资 发展 需要 软件开发 对于 方向 网络营销 有保障 就业 效率 技术性 专业性 具备 决定 特别 应届 计算机 专业 一般 学历 被迫 放弃 只能 自学 时间 下来 弊端 其他 拥有 一定 项目 掌握 只有 技能 扎实 实践 经验 备受 工作 上岗 胜任 相关 岗位 比较 突破 得到 充实 技术 资讯 了解 自我 提升 未来 分布 职位 越来越 接触 攀升 十一 火爆 程度 迅速 寿命 职业 数字 有效 进入 优势 参加 选择 移动 软件技术 硬件 基础 软件测试', 1),
(26, 1, 26, 1511704808, '学习阶段了解 氛围 阶段 开发 学习 工程师 课程 行业 全能 项目 综合 实战 数据 需求 引领 应用 面向 算法 代码 企业 用人 拯救 体系 人才 打造 技术 潮流 技能 前沿 冲刺 大纲 落后 对象 传统 现状 毕业 现代 准备 设计 公众 数据库 接口 框架 面试 最后 知识 所学 第三 运用 软件开发 大型 技术开发 第五 自动化 就业 测试 驱动 脚本 编程 科学 重构 机器 网络 流程 深度 第八 管理 文档 编写 敏捷 分析 版本 方法 云计算 设计师 工程 了解 氛围 语法 字符串 基本 精通 第一 入门 解析 时间 异常 处理 模块 操作 日历 文件 第二', 1),
(30, 1, 30, 1511706006, '多重行业保证 行业 学习 老师 作业 笔记 可以 关怀 小组 结合 名单 情况 多重 保障 要求 行业 定期 检查 免费 兄弟 同学 成员 代码 学生 学员 不会 项目 相应 关注 完成 全体 弥补 任务 进度 随时 可以通过 视频 根据 进入 召开 测验 怎么办 所有 同步 集体 会议 形成 重点 了解 更多 每个 必须 养成 习惯 法宝 强调 严格规范 一再 第二 心里 做到 内容 不成 难点 严格 跟踪 核心 一经 入学 绝对 教育 课堂 负责 总监 技术 专家 讲师 保证 教学 服务 主讲 理论 电脑 演示 案例 实践 知识 模块 直到 学会 为止 本期 教务 申请 共同 讨论 解决 问题 遇到 人性化 机制 原因 扎实 整理 每周 针对 分为 流程 专业 考核 方式 反馈 进行 是否 或者 效果 讲解 复习 阶段', 1),
(29, 1, 29, 1511705950, '六大核心保障 核心 学习 老师 作业 笔记 可以 核心 关怀 小组 六大 不会 保障 视频 情况 兄弟 可以通过 入学 学生 怎么办 一经 服务 名单 随时 检查 要求 免费 同学 定期 进度 同步 弥补 完成 成员 一再 每个 强调 法宝 严格规范 学会 扎实 原因 效果 或者 是否 教务 申请 直到 本期 为止 心里 讨论 解决 共同 问题 机制 遇到 不成 代码 集体 全体 任务 人性化 内容 第二 习惯 养成 重点 难点 做到 必须 考核 方式 专业 流程 分为 测验 形成 根据 会议 学员 进入 严格 相应 关注 所有 召开 反馈 进行 针对 每周 整理 讲解 复习 跟踪 阶段 项目', 1),
(32, 1, 32, 1511706711, '性能优化与工程师  直播 性能 优化 架构 讲解 作业 考试 启蒙 工程 那些 第一 第五 第二 奥秘 数学 重构 网站 必备 服务器 知识 工程师', 1),
(33, 1, 33, 1511773663, '前端工程化那些事儿  分钟 对象 入门 面向 开发 条件 方法 查询 基础 比较 错误 关键字 常见 数据库 处理 创建 复杂 语句 函数 客户端 接口 操作 介绍 实战 继承 抽象 构造 工程 那些', 1),
(34, 1, 34, 1511773719, 'EcmaScript体系  分钟 传递 语法 新增 使用 严格 支持 作用 浏览器 模式 对象 添加 格式 额外 引用 简介 一些 内容 兴趣 体系', 1),
(35, 1, 35, 1511773743, 'Javascript语言新发展 新发 语言 分钟 直播 工程师 语言 高级 世界 精英 使用技巧 数学 巧妙 构建 运用 技术 走进 常用 介绍 内幕 核心技术 测试 第一 编程 函数 作业 实战 讲解 知道 发展', 1);

-- --------------------------------------------------------

--
-- 表的结构 `v9_search_keyword`
--

CREATE TABLE `v9_search_keyword` (
  `keyword` char(20) NOT NULL,
  `pinyin` char(20) NOT NULL,
  `searchnums` int(10) UNSIGNED NOT NULL,
  `data` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_session`
--

CREATE TABLE `v9_session` (
  `sessionid` char(32) NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL,
  `lastvisit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `roleid` tinyint(3) UNSIGNED DEFAULT '0',
  `groupid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL,
  `c` char(20) NOT NULL,
  `a` char(20) NOT NULL,
  `data` char(255) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_session`
--

INSERT INTO `v9_session` (`sessionid`, `userid`, `ip`, `lastvisit`, `roleid`, `groupid`, `m`, `c`, `a`, `data`) VALUES
('vuvaar69732isoc9ggh61ml156', 1, '', 1511792075, 1, 0, 'admin', 'index', 'public_session_life', 'code|s:5:"g6rdv";userid|s:1:"1";roleid|s:1:"1";pc_hash|s:6:"3oP8ma";lock_screen|i:0;');

-- --------------------------------------------------------

--
-- 表的结构 `v9_site`
--

CREATE TABLE `v9_site` (
  `siteid` smallint(5) UNSIGNED NOT NULL,
  `name` char(30) DEFAULT '',
  `dirname` char(255) DEFAULT '',
  `domain` char(255) DEFAULT '',
  `site_title` char(255) DEFAULT '',
  `keywords` char(255) DEFAULT '',
  `description` char(255) DEFAULT '',
  `release_point` text,
  `default_style` char(50) DEFAULT NULL,
  `template` text,
  `setting` mediumtext,
  `uuid` char(40) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_site`
--

INSERT INTO `v9_site` (`siteid`, `name`, `dirname`, `domain`, `site_title`, `keywords`, `description`, `release_point`, `default_style`, `template`, `setting`, `uuid`) VALUES
(1, '默认站点', '', 'http://localhost/happy/', '乐课堂', '乐课堂 web前端 课堂 学堂', '乐课堂 快乐学习的课堂', '', 'happy', 'happy', '{"upload_maxsize":"2048","upload_allowext":"jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf","watermark_enable":"1","watermark_minwidth":"300","watermark_minheight":"300","watermark_img":"statics\\/images\\/water\\/\\/mark.png","watermark_pct":"85","watermark_quality":"80","watermark_pos":"9"}', '259fae30-d1aa-11e7-bc7f-c85b7670b42a');

-- --------------------------------------------------------

--
-- 表的结构 `v9_special`
--

CREATE TABLE `v9_special` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `aid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` char(60) NOT NULL,
  `typeids` char(100) NOT NULL,
  `thumb` char(100) NOT NULL,
  `banner` char(100) NOT NULL,
  `description` char(255) NOT NULL,
  `url` char(100) NOT NULL,
  `ishtml` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ispage` tinyint(1) UNSIGNED NOT NULL,
  `filename` char(40) NOT NULL,
  `pics` char(100) NOT NULL,
  `voteid` char(60) NOT NULL,
  `style` char(20) NOT NULL,
  `index_template` char(40) NOT NULL,
  `list_template` char(40) NOT NULL,
  `show_template` char(60) NOT NULL,
  `css` text NOT NULL,
  `username` char(40) NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `listorder` smallint(5) UNSIGNED NOT NULL,
  `elite` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `isvideo` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_special_content`
--

CREATE TABLE `v9_special_content` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `specialid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` char(80) NOT NULL,
  `style` char(24) NOT NULL,
  `typeid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `thumb` char(100) NOT NULL,
  `keywords` char(40) NOT NULL,
  `description` char(255) NOT NULL,
  `url` char(100) NOT NULL,
  `curl` char(15) NOT NULL,
  `listorder` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `searchid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `islink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `isdata` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `videoid` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_special_c_data`
--

CREATE TABLE `v9_special_c_data` (
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL,
  `content` text NOT NULL,
  `paginationtype` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `maxcharperpage` mediumint(6) UNSIGNED NOT NULL DEFAULT '0',
  `style` char(20) NOT NULL,
  `show_template` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_sphinx_counter`
--

CREATE TABLE `v9_sphinx_counter` (
  `counter_id` int(11) UNSIGNED NOT NULL,
  `max_doc_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_sso_admin`
--

CREATE TABLE `v9_sso_admin` (
  `id` smallint(6) NOT NULL,
  `username` char(20) NOT NULL,
  `password` char(32) NOT NULL,
  `encrypt` char(6) DEFAULT NULL,
  `issuper` tinyint(1) DEFAULT '0',
  `lastlogin` int(10) DEFAULT NULL,
  `ip` char(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_sso_admin`
--

INSERT INTO `v9_sso_admin` (`id`, `username`, `password`, `encrypt`, `issuper`, `lastlogin`, `ip`) VALUES
(1, 'baile', '6ba2a0109f878fccb1a39c6ede6d4be1', 'kLUiac', 1, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_sso_applications`
--

CREATE TABLE `v9_sso_applications` (
  `appid` smallint(6) UNSIGNED NOT NULL,
  `type` char(16) NOT NULL DEFAULT '',
  `name` char(20) NOT NULL DEFAULT '',
  `url` char(255) NOT NULL DEFAULT '',
  `authkey` char(255) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `apifilename` char(30) NOT NULL DEFAULT 'phpsso.php',
  `charset` char(8) NOT NULL DEFAULT '',
  `synlogin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_sso_applications`
--

INSERT INTO `v9_sso_applications` (`appid`, `type`, `name`, `url`, `authkey`, `ip`, `apifilename`, `charset`, `synlogin`) VALUES
(1, 'phpcms_v9', 'phpcms v9', 'http://localhost/happy/', 'cqpWWVMgO5hBds5Ch0ki2NbMtwxWT1F6', '', 'api.php?op=phpsso', 'utf-8', 1);

-- --------------------------------------------------------

--
-- 表的结构 `v9_sso_members`
--

CREATE TABLE `v9_sso_members` (
  `uid` int(10) UNSIGNED NOT NULL,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `random` char(8) NOT NULL DEFAULT '',
  `email` char(32) NOT NULL DEFAULT '',
  `regip` char(15) NOT NULL DEFAULT '',
  `regdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` char(15) NOT NULL DEFAULT '0',
  `lastdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `appname` char(15) NOT NULL,
  `type` enum('app','connect') DEFAULT NULL,
  `avatar` tinyint(1) NOT NULL DEFAULT '0',
  `ucuserid` mediumint(8) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_sso_messagequeue`
--

CREATE TABLE `v9_sso_messagequeue` (
  `id` int(10) UNSIGNED NOT NULL,
  `operation` char(32) NOT NULL,
  `succeed` tinyint(1) NOT NULL DEFAULT '0',
  `totalnum` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `noticedata` mediumtext NOT NULL,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `appstatus` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_sso_session`
--

CREATE TABLE `v9_sso_session` (
  `sessionid` char(32) NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL,
  `lastvisit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `roleid` tinyint(3) UNSIGNED DEFAULT '0',
  `groupid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL,
  `c` char(20) NOT NULL,
  `a` char(20) NOT NULL,
  `data` char(255) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_sso_settings`
--

CREATE TABLE `v9_sso_settings` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_sso_settings`
--

INSERT INTO `v9_sso_settings` (`name`, `data`) VALUES
('denyemail', ''),
('denyusername', ''),
('creditrate', ''),
('sp4', ''),
('ucenter', '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_tag`
--

CREATE TABLE `v9_tag` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `tag` text NOT NULL,
  `name` char(40) NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `module` char(20) NOT NULL,
  `action` char(20) NOT NULL,
  `data` text NOT NULL,
  `page` char(15) NOT NULL,
  `return` char(20) NOT NULL,
  `cache` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `num` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_template_bak`
--

CREATE TABLE `v9_template_bak` (
  `id` int(10) NOT NULL,
  `creat_at` int(10) UNSIGNED DEFAULT '0',
  `fileid` char(50) DEFAULT NULL,
  `userid` mediumint(8) DEFAULT NULL,
  `username` char(20) DEFAULT NULL,
  `template` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_times`
--

CREATE TABLE `v9_times` (
  `username` char(40) NOT NULL,
  `ip` char(15) NOT NULL,
  `logintime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `times` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_type`
--

CREATE TABLE `v9_type` (
  `typeid` smallint(5) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `module` char(15) NOT NULL,
  `modelid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `name` char(30) NOT NULL,
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `typedir` char(20) NOT NULL,
  `url` char(100) NOT NULL,
  `template` char(30) NOT NULL,
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_type`
--

INSERT INTO `v9_type` (`typeid`, `siteid`, `module`, `modelid`, `name`, `parentid`, `typedir`, `url`, `template`, `listorder`, `description`) VALUES
(52, 1, 'search', 0, '专题', 0, 'special', '', '', 4, '专题'),
(1, 1, 'search', 1, '新闻', 0, '', '', '', 1, '新闻模型搜索'),
(2, 1, 'search', 2, '下载', 0, '', '', '', 3, '下载模型搜索'),
(3, 1, 'search', 3, '图片', 0, '', '', '', 2, '图片模型搜索');

-- --------------------------------------------------------

--
-- 表的结构 `v9_urlrule`
--

CREATE TABLE `v9_urlrule` (
  `urlruleid` smallint(5) UNSIGNED NOT NULL,
  `module` varchar(15) NOT NULL,
  `file` varchar(20) NOT NULL,
  `ishtml` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `urlrule` varchar(255) NOT NULL,
  `example` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_urlrule`
--

INSERT INTO `v9_urlrule` (`urlruleid`, `module`, `file`, `ishtml`, `urlrule`, `example`) VALUES
(1, 'content', 'category', 1, '{$categorydir}{$catdir}/index.html|{$categorydir}{$catdir}/{$page}.html', 'news/china/1000.html'),
(6, 'content', 'category', 0, 'index.php?m=content&c=index&a=lists&catid={$catid}|index.php?m=content&c=index&a=lists&catid={$catid}&page={$page}', 'index.php?m=content&c=index&a=lists&catid=1&page=1'),
(11, 'content', 'show', 1, '{$year}/{$catdir}_{$month}{$day}/{$id}.html|{$year}/{$catdir}_{$month}{$day}/{$id}_{$page}.html', '2010/catdir_0720/1_2.html'),
(12, 'content', 'show', 1, '{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}.html|{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}_{$page}.html', 'it/product/2010/0720/1_2.html'),
(16, 'content', 'show', 0, 'index.php?m=content&c=index&a=show&catid={$catid}&id={$id}|index.php?m=content&c=index&a=show&catid={$catid}&id={$id}&page={$page}', 'index.php?m=content&c=index&a=show&catid=1&id=1'),
(17, 'content', 'show', 0, 'show-{$catid}-{$id}-{$page}.html', 'show-1-2-1.html'),
(18, 'content', 'show', 0, 'content-{$catid}-{$id}-{$page}.html', 'content-1-2-1.html'),
(30, 'content', 'category', 0, 'list-{$catid}-{$page}.html', 'list-1-1.html');

-- --------------------------------------------------------

--
-- 表的结构 `v9_video`
--

CREATE TABLE `v9_video` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `typeid` smallint(5) UNSIGNED NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `islink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `vision` varchar(255) NOT NULL DEFAULT '',
  `video_category` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_video_content`
--

CREATE TABLE `v9_video_content` (
  `contentid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modelid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `videoid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_video_data`
--

CREATE TABLE `v9_video_data` (
  `id` mediumint(8) UNSIGNED DEFAULT '0',
  `content` text NOT NULL,
  `readpoint` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `video` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_video_store`
--

CREATE TABLE `v9_video_store` (
  `videoid` int(10) UNSIGNED NOT NULL,
  `title` char(60) NOT NULL,
  `vid` char(40) NOT NULL,
  `keywords` char(40) NOT NULL,
  `description` char(255) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `picpath` char(120) NOT NULL,
  `size` char(20) NOT NULL,
  `timelen` mediumint(9) NOT NULL DEFAULT '0',
  `userupload` tinyint(1) NOT NULL DEFAULT '0',
  `channelid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_wap`
--

CREATE TABLE `v9_wap` (
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `sitename` char(30) NOT NULL,
  `logo` char(100) DEFAULT NULL,
  `domain` varchar(100) DEFAULT NULL,
  `setting` mediumtext,
  `status` tinyint(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_wap`
--

INSERT INTO `v9_wap` (`siteid`, `sitename`, `logo`, `domain`, `setting`, `status`) VALUES
(1, 'PHPCMS手机门户', '/statics/images/wap/wlogo.gif', '', 'array (\n  \'listnum\' => \'10\',\n  \'thumb_w\' => \'220\',\n  \'thumb_h\' => \'0\',\n  \'c_num\' => \'1000\',\n  \'index_template\' => \'index\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n)', 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_wap_type`
--

CREATE TABLE `v9_wap_type` (
  `typeid` smallint(5) NOT NULL,
  `cat` smallint(5) NOT NULL,
  `parentid` smallint(5) NOT NULL,
  `typename` varchar(30) NOT NULL,
  `siteid` smallint(5) NOT NULL,
  `listorder` smallint(5) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_workflow`
--

CREATE TABLE `v9_workflow` (
  `workflowid` smallint(5) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `steps` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `workname` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `setting` text NOT NULL,
  `flag` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_workflow`
--

INSERT INTO `v9_workflow` (`workflowid`, `siteid`, `steps`, `workname`, `description`, `setting`, `flag`) VALUES
(1, 1, 1, '一级审核', '审核一次', '', 0),
(2, 1, 2, '二级审核', '审核两次', '', 0),
(3, 1, 3, '三级审核', '审核三次', '', 0),
(4, 1, 4, '四级审核', '四级审核', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `v9_admin`
--
ALTER TABLE `v9_admin`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `v9_admin_panel`
--
ALTER TABLE `v9_admin_panel`
  ADD UNIQUE KEY `userid` (`menuid`,`userid`);

--
-- Indexes for table `v9_admin_role`
--
ALTER TABLE `v9_admin_role`
  ADD PRIMARY KEY (`roleid`),
  ADD KEY `listorder` (`listorder`),
  ADD KEY `disabled` (`disabled`);

--
-- Indexes for table `v9_admin_role_priv`
--
ALTER TABLE `v9_admin_role_priv`
  ADD KEY `roleid` (`roleid`,`m`,`c`,`a`,`siteid`);

--
-- Indexes for table `v9_announce`
--
ALTER TABLE `v9_announce`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `siteid` (`siteid`,`passed`,`endtime`);

--
-- Indexes for table `v9_attachment`
--
ALTER TABLE `v9_attachment`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `authcode` (`authcode`);

--
-- Indexes for table `v9_attachment_index`
--
ALTER TABLE `v9_attachment_index`
  ADD KEY `keyid` (`keyid`),
  ADD KEY `aid` (`aid`);

--
-- Indexes for table `v9_badword`
--
ALTER TABLE `v9_badword`
  ADD PRIMARY KEY (`badid`),
  ADD UNIQUE KEY `badword` (`badword`),
  ADD KEY `usetimes` (`replaceword`,`listorder`),
  ADD KEY `hits` (`listorder`);

--
-- Indexes for table `v9_block`
--
ALTER TABLE `v9_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos` (`pos`),
  ADD KEY `type` (`type`),
  ADD KEY `siteid` (`siteid`);

--
-- Indexes for table `v9_block_history`
--
ALTER TABLE `v9_block_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v9_block_priv`
--
ALTER TABLE `v9_block_priv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blockid` (`blockid`),
  ADD KEY `roleid` (`roleid`,`siteid`);

--
-- Indexes for table `v9_cache`
--
ALTER TABLE `v9_cache`
  ADD PRIMARY KEY (`filename`,`path`);

--
-- Indexes for table `v9_category`
--
ALTER TABLE `v9_category`
  ADD PRIMARY KEY (`catid`),
  ADD KEY `module` (`module`,`parentid`,`listorder`,`catid`),
  ADD KEY `siteid` (`siteid`,`type`);

--
-- Indexes for table `v9_category_priv`
--
ALTER TABLE `v9_category_priv`
  ADD KEY `catid` (`catid`,`roleid`,`is_admin`,`action`),
  ADD KEY `siteid` (`siteid`);

--
-- Indexes for table `v9_collection_content`
--
ALTER TABLE `v9_collection_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nodeid` (`nodeid`,`siteid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `v9_collection_history`
--
ALTER TABLE `v9_collection_history`
  ADD PRIMARY KEY (`md5`,`siteid`);

--
-- Indexes for table `v9_collection_node`
--
ALTER TABLE `v9_collection_node`
  ADD PRIMARY KEY (`nodeid`),
  ADD KEY `siteid` (`siteid`);

--
-- Indexes for table `v9_collection_program`
--
ALTER TABLE `v9_collection_program`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siteid` (`siteid`),
  ADD KEY `nodeid` (`nodeid`);

--
-- Indexes for table `v9_content_check`
--
ALTER TABLE `v9_content_check`
  ADD KEY `username` (`username`),
  ADD KEY `checkid` (`checkid`),
  ADD KEY `status` (`status`,`inputtime`);

--
-- Indexes for table `v9_copyfrom`
--
ALTER TABLE `v9_copyfrom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v9_datacall`
--
ALTER TABLE `v9_datacall`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `v9_dbsource`
--
ALTER TABLE `v9_dbsource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siteid` (`siteid`);

--
-- Indexes for table `v9_download`
--
ALTER TABLE `v9_download`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`,`listorder`,`id`),
  ADD KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  ADD KEY `catid` (`catid`,`status`,`id`);

--
-- Indexes for table `v9_download_data`
--
ALTER TABLE `v9_download_data`
  ADD KEY `id` (`id`);

--
-- Indexes for table `v9_downservers`
--
ALTER TABLE `v9_downservers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v9_extend_setting`
--
ALTER TABLE `v9_extend_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`key`);

--
-- Indexes for table `v9_favorite`
--
ALTER TABLE `v9_favorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `v9_hits`
--
ALTER TABLE `v9_hits`
  ADD PRIMARY KEY (`hitsid`);

--
-- Indexes for table `v9_ipbanned`
--
ALTER TABLE `v9_ipbanned`
  ADD PRIMARY KEY (`ipbannedid`);

--
-- Indexes for table `v9_keylink`
--
ALTER TABLE `v9_keylink`
  ADD PRIMARY KEY (`keylinkid`);

--
-- Indexes for table `v9_keyword`
--
ALTER TABLE `v9_keyword`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keyword` (`keyword`,`siteid`);

--
-- Indexes for table `v9_keyword_data`
--
ALTER TABLE `v9_keyword_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagid` (`tagid`,`siteid`);

--
-- Indexes for table `v9_link`
--
ALTER TABLE `v9_link`
  ADD PRIMARY KEY (`linkid`),
  ADD KEY `typeid` (`typeid`,`passed`,`listorder`,`linkid`);

--
-- Indexes for table `v9_linkage`
--
ALTER TABLE `v9_linkage`
  ADD PRIMARY KEY (`linkageid`,`keyid`),
  ADD KEY `parentid` (`parentid`,`listorder`);

--
-- Indexes for table `v9_log`
--
ALTER TABLE `v9_log`
  ADD PRIMARY KEY (`logid`),
  ADD KEY `module` (`module`,`file`,`action`),
  ADD KEY `username` (`username`,`action`);

--
-- Indexes for table `v9_member`
--
ALTER TABLE `v9_member`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `email` (`email`(20)),
  ADD KEY `phpssouid` (`phpssouid`);

--
-- Indexes for table `v9_member_detail`
--
ALTER TABLE `v9_member_detail`
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `v9_member_group`
--
ALTER TABLE `v9_member_group`
  ADD PRIMARY KEY (`groupid`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `listorder` (`sort`);

--
-- Indexes for table `v9_member_menu`
--
ALTER TABLE `v9_member_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listorder` (`listorder`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `module` (`m`,`c`,`a`);

--
-- Indexes for table `v9_member_verify`
--
ALTER TABLE `v9_member_verify`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `email` (`email`(20));

--
-- Indexes for table `v9_member_vip`
--
ALTER TABLE `v9_member_vip`
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `v9_menu`
--
ALTER TABLE `v9_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listorder` (`listorder`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `module` (`m`,`c`,`a`);

--
-- Indexes for table `v9_model`
--
ALTER TABLE `v9_model`
  ADD PRIMARY KEY (`modelid`),
  ADD KEY `type` (`type`,`siteid`);

--
-- Indexes for table `v9_model_field`
--
ALTER TABLE `v9_model_field`
  ADD PRIMARY KEY (`fieldid`),
  ADD KEY `modelid` (`modelid`,`disabled`),
  ADD KEY `field` (`field`,`modelid`);

--
-- Indexes for table `v9_module`
--
ALTER TABLE `v9_module`
  ADD PRIMARY KEY (`module`);

--
-- Indexes for table `v9_news`
--
ALTER TABLE `v9_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`,`listorder`,`id`),
  ADD KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  ADD KEY `catid` (`catid`,`status`,`id`);

--
-- Indexes for table `v9_news_data`
--
ALTER TABLE `v9_news_data`
  ADD KEY `id` (`id`);

--
-- Indexes for table `v9_page`
--
ALTER TABLE `v9_page`
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `v9_pay_account`
--
ALTER TABLE `v9_pay_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`),
  ADD KEY `trade_sn` (`trade_sn`,`money`,`status`,`id`);

--
-- Indexes for table `v9_pay_payment`
--
ALTER TABLE `v9_pay_payment`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `pay_code` (`pay_code`);

--
-- Indexes for table `v9_pay_spend`
--
ALTER TABLE `v9_pay_spend`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `creat_at` (`creat_at`),
  ADD KEY `logo` (`logo`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `v9_picture`
--
ALTER TABLE `v9_picture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`,`listorder`,`id`),
  ADD KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  ADD KEY `catid` (`catid`,`status`,`id`);

--
-- Indexes for table `v9_picture_data`
--
ALTER TABLE `v9_picture_data`
  ADD KEY `id` (`id`);

--
-- Indexes for table `v9_position`
--
ALTER TABLE `v9_position`
  ADD PRIMARY KEY (`posid`);

--
-- Indexes for table `v9_position_data`
--
ALTER TABLE `v9_position_data`
  ADD KEY `posid` (`posid`),
  ADD KEY `listorder` (`listorder`);

--
-- Indexes for table `v9_poster_201711`
--
ALTER TABLE `v9_poster_201711`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`type`,`ip`);

--
-- Indexes for table `v9_queue`
--
ALTER TABLE `v9_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siteid` (`siteid`),
  ADD KEY `times` (`times`);

--
-- Indexes for table `v9_release_point`
--
ALTER TABLE `v9_release_point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v9_search`
--
ALTER TABLE `v9_search`
  ADD PRIMARY KEY (`searchid`),
  ADD KEY `typeid` (`typeid`,`id`),
  ADD KEY `siteid` (`siteid`);
ALTER TABLE `v9_search` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `v9_search_keyword`
--
ALTER TABLE `v9_search_keyword`
  ADD UNIQUE KEY `keyword` (`keyword`),
  ADD UNIQUE KEY `pinyin` (`pinyin`);
ALTER TABLE `v9_search_keyword` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `v9_session`
--
ALTER TABLE `v9_session`
  ADD PRIMARY KEY (`sessionid`),
  ADD KEY `lastvisit` (`lastvisit`);

--
-- Indexes for table `v9_site`
--
ALTER TABLE `v9_site`
  ADD PRIMARY KEY (`siteid`);

--
-- Indexes for table `v9_special`
--
ALTER TABLE `v9_special`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`,`siteid`);

--
-- Indexes for table `v9_special_content`
--
ALTER TABLE `v9_special_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specialid` (`specialid`,`typeid`,`isdata`),
  ADD KEY `typeid` (`typeid`,`isdata`);

--
-- Indexes for table `v9_special_c_data`
--
ALTER TABLE `v9_special_c_data`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `v9_sphinx_counter`
--
ALTER TABLE `v9_sphinx_counter`
  ADD PRIMARY KEY (`counter_id`);

--
-- Indexes for table `v9_sso_admin`
--
ALTER TABLE `v9_sso_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `v9_sso_applications`
--
ALTER TABLE `v9_sso_applications`
  ADD PRIMARY KEY (`appid`),
  ADD KEY `synlogin` (`synlogin`);

--
-- Indexes for table `v9_sso_members`
--
ALTER TABLE `v9_sso_members`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `ucuserid` (`ucuserid`);

--
-- Indexes for table `v9_sso_messagequeue`
--
ALTER TABLE `v9_sso_messagequeue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dateline` (`dateline`),
  ADD KEY `succeed` (`succeed`,`id`);

--
-- Indexes for table `v9_sso_session`
--
ALTER TABLE `v9_sso_session`
  ADD PRIMARY KEY (`sessionid`),
  ADD KEY `lastvisit` (`lastvisit`);

--
-- Indexes for table `v9_sso_settings`
--
ALTER TABLE `v9_sso_settings`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `v9_tag`
--
ALTER TABLE `v9_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v9_template_bak`
--
ALTER TABLE `v9_template_bak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fileid` (`fileid`);

--
-- Indexes for table `v9_times`
--
ALTER TABLE `v9_times`
  ADD PRIMARY KEY (`username`,`isadmin`);

--
-- Indexes for table `v9_type`
--
ALTER TABLE `v9_type`
  ADD PRIMARY KEY (`typeid`),
  ADD KEY `module` (`module`,`parentid`,`siteid`,`listorder`);

--
-- Indexes for table `v9_urlrule`
--
ALTER TABLE `v9_urlrule`
  ADD PRIMARY KEY (`urlruleid`);

--
-- Indexes for table `v9_video`
--
ALTER TABLE `v9_video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`,`listorder`,`id`),
  ADD KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  ADD KEY `catid` (`catid`,`status`,`id`);

--
-- Indexes for table `v9_video_content`
--
ALTER TABLE `v9_video_content`
  ADD KEY `videoid` (`videoid`);

--
-- Indexes for table `v9_video_data`
--
ALTER TABLE `v9_video_data`
  ADD KEY `id` (`id`);

--
-- Indexes for table `v9_video_store`
--
ALTER TABLE `v9_video_store`
  ADD PRIMARY KEY (`videoid`),
  ADD KEY `videoid` (`videoid`,`status`);

--
-- Indexes for table `v9_wap`
--
ALTER TABLE `v9_wap`
  ADD PRIMARY KEY (`siteid`);

--
-- Indexes for table `v9_wap_type`
--
ALTER TABLE `v9_wap_type`
  ADD PRIMARY KEY (`typeid`);

--
-- Indexes for table `v9_workflow`
--
ALTER TABLE `v9_workflow`
  ADD PRIMARY KEY (`workflowid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `v9_admin`
--
ALTER TABLE `v9_admin`
  MODIFY `userid` mediumint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `v9_admin_role`
--
ALTER TABLE `v9_admin_role`
  MODIFY `roleid` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `v9_announce`
--
ALTER TABLE `v9_announce`
  MODIFY `aid` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_attachment`
--
ALTER TABLE `v9_attachment`
  MODIFY `aid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- 使用表AUTO_INCREMENT `v9_badword`
--
ALTER TABLE `v9_badword`
  MODIFY `badid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_block`
--
ALTER TABLE `v9_block`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_block_history`
--
ALTER TABLE `v9_block_history`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_block_priv`
--
ALTER TABLE `v9_block_priv`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_category`
--
ALTER TABLE `v9_category`
  MODIFY `catid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- 使用表AUTO_INCREMENT `v9_collection_content`
--
ALTER TABLE `v9_collection_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_collection_node`
--
ALTER TABLE `v9_collection_node`
  MODIFY `nodeid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_collection_program`
--
ALTER TABLE `v9_collection_program`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_copyfrom`
--
ALTER TABLE `v9_copyfrom`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_datacall`
--
ALTER TABLE `v9_datacall`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_dbsource`
--
ALTER TABLE `v9_dbsource`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_download`
--
ALTER TABLE `v9_download`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_downservers`
--
ALTER TABLE `v9_downservers`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_extend_setting`
--
ALTER TABLE `v9_extend_setting`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_favorite`
--
ALTER TABLE `v9_favorite`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_ipbanned`
--
ALTER TABLE `v9_ipbanned`
  MODIFY `ipbannedid` smallint(5) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_keylink`
--
ALTER TABLE `v9_keylink`
  MODIFY `keylinkid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_keyword`
--
ALTER TABLE `v9_keyword`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- 使用表AUTO_INCREMENT `v9_keyword_data`
--
ALTER TABLE `v9_keyword_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- 使用表AUTO_INCREMENT `v9_link`
--
ALTER TABLE `v9_link`
  MODIFY `linkid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `v9_linkage`
--
ALTER TABLE `v9_linkage`
  MODIFY `linkageid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3360;
--
-- 使用表AUTO_INCREMENT `v9_log`
--
ALTER TABLE `v9_log`
  MODIFY `logid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=784;
--
-- 使用表AUTO_INCREMENT `v9_member`
--
ALTER TABLE `v9_member`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_member_group`
--
ALTER TABLE `v9_member_group`
  MODIFY `groupid` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `v9_member_menu`
--
ALTER TABLE `v9_member_menu`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `v9_member_verify`
--
ALTER TABLE `v9_member_verify`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_menu`
--
ALTER TABLE `v9_menu`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1630;
--
-- 使用表AUTO_INCREMENT `v9_model`
--
ALTER TABLE `v9_model`
  MODIFY `modelid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `v9_model_field`
--
ALTER TABLE `v9_model_field`
  MODIFY `fieldid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- 使用表AUTO_INCREMENT `v9_news`
--
ALTER TABLE `v9_news`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- 使用表AUTO_INCREMENT `v9_pay_account`
--
ALTER TABLE `v9_pay_account`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_pay_payment`
--
ALTER TABLE `v9_pay_payment`
  MODIFY `pay_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_pay_spend`
--
ALTER TABLE `v9_pay_spend`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_picture`
--
ALTER TABLE `v9_picture`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_position`
--
ALTER TABLE `v9_position`
  MODIFY `posid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `v9_poster_201711`
--
ALTER TABLE `v9_poster_201711`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_queue`
--
ALTER TABLE `v9_queue`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_release_point`
--
ALTER TABLE `v9_release_point`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_search`
--
ALTER TABLE `v9_search`
  MODIFY `searchid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- 使用表AUTO_INCREMENT `v9_site`
--
ALTER TABLE `v9_site`
  MODIFY `siteid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `v9_special`
--
ALTER TABLE `v9_special`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_special_content`
--
ALTER TABLE `v9_special_content`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_sso_admin`
--
ALTER TABLE `v9_sso_admin`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `v9_sso_applications`
--
ALTER TABLE `v9_sso_applications`
  MODIFY `appid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `v9_sso_members`
--
ALTER TABLE `v9_sso_members`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_sso_messagequeue`
--
ALTER TABLE `v9_sso_messagequeue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_tag`
--
ALTER TABLE `v9_tag`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_template_bak`
--
ALTER TABLE `v9_template_bak`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_type`
--
ALTER TABLE `v9_type`
  MODIFY `typeid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- 使用表AUTO_INCREMENT `v9_urlrule`
--
ALTER TABLE `v9_urlrule`
  MODIFY `urlruleid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- 使用表AUTO_INCREMENT `v9_video`
--
ALTER TABLE `v9_video`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_video_store`
--
ALTER TABLE `v9_video_store`
  MODIFY `videoid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_wap_type`
--
ALTER TABLE `v9_wap_type`
  MODIFY `typeid` smallint(5) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_workflow`
--
ALTER TABLE `v9_workflow`
  MODIFY `workflowid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
