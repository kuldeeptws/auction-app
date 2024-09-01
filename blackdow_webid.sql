-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 10, 2024 at 09:19 PM
-- Server version: 8.0.36-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blackdow_webid`
--

-- --------------------------------------------------------

--
-- Table structure for table `webid_accesseshistoric`
--

CREATE TABLE `webid_accesseshistoric` (
  `month` char(2) NOT NULL DEFAULT '',
  `year` char(4) NOT NULL DEFAULT '',
  `pageviews` int NOT NULL DEFAULT '0',
  `uniquevisitors` int NOT NULL DEFAULT '0',
  `usersessions` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webid_accounts`
--

CREATE TABLE `webid_accounts` (
  `id` int NOT NULL,
  `nick` varchar(20) NOT NULL,
  `name` tinytext NOT NULL,
  `text` text NOT NULL,
  `type` varchar(15) NOT NULL,
  `paid_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` double(6,2) NOT NULL,
  `day` int NOT NULL,
  `week` int NOT NULL,
  `month` int NOT NULL,
  `year` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webid_adminusers`
--

CREATE TABLE `webid_adminusers` (
  `id` int NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(60) NOT NULL,
  `password_type` int NOT NULL DEFAULT '1',
  `hash` varchar(5) NOT NULL DEFAULT '',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastlogin` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_adminusers`
--

INSERT INTO `webid_adminusers` (`id`, `username`, `password`, `password_type`, `hash`, `created`, `lastlogin`, `status`, `notes`) VALUES
(2, 'eugenio', '$2a$08$zc9zsXX/q5xEuDy8z.5t0.VK/7DsBbFSxl4RtMD/tV0GcavSM395K', 1, 'b5pt6', '2024-03-21 15:13:19', '2024-05-09 09:41:34', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webid_auccounter`
--

CREATE TABLE `webid_auccounter` (
  `auction_id` int NOT NULL DEFAULT '0',
  `counter` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_auccounter`
--

INSERT INTO `webid_auccounter` (`auction_id`, `counter`) VALUES
(2, 19),
(3, 12),
(4, 9),
(5, 6),
(6, 6),
(7, 9),
(8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `webid_auctions`
--

CREATE TABLE `webid_auctions` (
  `id` int NOT NULL,
  `user` int DEFAULT NULL,
  `title` varchar(70) DEFAULT NULL,
  `subtitle` varchar(70) DEFAULT NULL,
  `starts` datetime DEFAULT NULL,
  `ends` datetime DEFAULT NULL,
  `description` text,
  `pict_url` tinytext,
  `category` int DEFAULT NULL,
  `secondcat` int DEFAULT NULL,
  `minimum_bid` double(16,2) DEFAULT '0.00',
  `shipping_cost` double(16,2) DEFAULT '0.00',
  `additional_shipping_cost` double(16,2) DEFAULT '0.00',
  `reserve_price` double(16,2) DEFAULT '0.00',
  `buy_now` double(16,2) DEFAULT '0.00',
  `auction_type` tinyint(1) DEFAULT NULL,
  `duration` double(8,2) DEFAULT NULL,
  `increment` double(8,2) NOT NULL DEFAULT '0.00',
  `shipping` tinyint(1) DEFAULT '1',
  `payment` tinytext,
  `international` tinyint(1) DEFAULT '0',
  `current_bid` double(16,2) DEFAULT '0.00',
  `current_bid_id` int DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `photo_uploaded` tinyint(1) DEFAULT '0',
  `initial_quantity` int DEFAULT '1',
  `quantity` int DEFAULT '1',
  `suspended` tinyint(1) DEFAULT '0',
  `relist` int NOT NULL DEFAULT '0',
  `relisted` int NOT NULL DEFAULT '0',
  `num_bids` int NOT NULL DEFAULT '0',
  `sold` enum('y','n','s') NOT NULL DEFAULT 'n',
  `shipping_terms` tinytext,
  `bn_only` tinyint(1) DEFAULT '0',
  `bold` tinyint(1) DEFAULT '0',
  `highlighted` tinyint(1) DEFAULT '0',
  `featured` tinyint(1) DEFAULT '0',
  `current_fee` double(16,2) DEFAULT '0.00',
  `tax` tinyint(1) DEFAULT '0',
  `taxinc` tinyint(1) DEFAULT '0',
  `bn_sale` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_auctions`
--

INSERT INTO `webid_auctions` (`id`, `user`, `title`, `subtitle`, `starts`, `ends`, `description`, `pict_url`, `category`, `secondcat`, `minimum_bid`, `shipping_cost`, `additional_shipping_cost`, `reserve_price`, `buy_now`, `auction_type`, `duration`, `increment`, `shipping`, `payment`, `international`, `current_bid`, `current_bid_id`, `closed`, `photo_uploaded`, `initial_quantity`, `quantity`, `suspended`, `relist`, `relisted`, `num_bids`, `sold`, `shipping_terms`, `bn_only`, `bold`, `highlighted`, `featured`, `current_fee`, `tax`, `taxinc`, `bn_sale`) VALUES
(2, 4, 'Ribeye 8m Fast Rib', '', '2024-04-16 15:45:10', '2024-05-16 15:45:10', '<p>Loreem Ipsum</p>', 'o_1hrjp8n3214uc1b589ob1okl1gtna.png', 198, 0, 1000.00, 0.00, 0.00, 2000.00, 0.00, 1, 30.00, 0.00, 1, 'banktransfer', 0, 3900.00, 15, 0, 0, 1, 1, 0, 5, 0, 7, 'n', '', 0, 0, 0, 0, 0.00, 0, 0, 0),
(3, 4, 'Ribeye 10M', '', '2024-04-19 07:00:53', '2024-05-03 07:00:53', '<p>Lorem Ipsum</p>', 'o_1hrqidu5iphi1t4vb111fus19kjg.png', 198, 0, 500.00, 0.00, 0.00, 600.00, 0.00, 1, 14.00, 0.00, 1, 'banktransfer', 0, 850.00, 16, 1, 0, 1, 1, 0, 5, 0, 6, 'y', '', 0, 0, 0, 0, 0.00, 0, 0, 0),
(4, 5, 'A nice R.I.B.', '', '2024-04-26 09:53:13', '2024-05-26 09:53:13', '<p>A nice R.I.B.</p><p>&nbsp;</p><p>Collection only</p>', 'o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg', 198, 0, 1000.00, 0.00, 0.00, 8000.00, 0.00, 1, 30.00, 0.00, 3, 'banktransfer', 0, 1150.00, 17, 0, 0, 1, 1, 0, 5, 0, 3, 'n', '', 0, 0, 0, 0, 0.00, 0, 0, 0),
(5, 11, 'Rebel R.I.B. 10m', '', '2024-04-28 07:23:13', '2024-05-28 07:23:13', '<p>Rebel R.I.B. 10m</p>', 'o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg', 198, 0, 10000.00, 0.00, 0.00, 12000.00, 0.00, 1, 30.00, 0.00, 3, 'banktransfer', 0, 0.00, 0, 0, 0, 1, 1, 0, 5, 0, 0, 'n', '', 0, 0, 0, 0, 0.00, 0, 0, 0),
(6, 11, 'Dutch Auction R.I.B.', '', '2024-04-28 07:36:36', '2024-05-01 07:36:36', '<p>Dutch Auction R.I.B.</p>', 'o_1hshq2ige1mt41spq196mjahnug.jpg', 200, 0, 30000.00, 0.00, 0.00, 0.00, 0.00, 2, 3.00, 0.00, 3, 'banktransfer', 0, 31000.00, 13, 1, 0, 1, 1, 0, 5, 0, 1, 'y', '', 0, 0, 0, 0, 0.00, 0, 0, 0),
(7, 11, 'Another DA R.I.B.', '', '2024-05-06 12:46:12', '2024-05-07 12:46:12', '<p>Another DA R.I.B.</p>', 'o_1hshqittl1p43161dae7f0tvq3b.jpg', 198, 0, 10000.00, 0.00, 0.00, 0.00, 0.00, 1, 1.00, 0.00, 3, 'banktransfer', 0, 0.00, 0, 1, 0, 1, 1, 0, 5, 5, 0, 'y', '', 0, 0, 0, 0, 0.00, 0, 0, 0),
(8, 4, 'TEST R.I.B.', '', '2024-04-30 14:01:29', '2024-05-01 14:01:29', '<p>TEST R.I.B.</p><p><strong>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with:</strong></p><p><u>&ldquo;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&rdquo;</u><br /><em>The purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn&#39;t distract from the layout. A practice not without controversy, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.</em></p><p>The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it&#39;s seen all <strong>around the web; on templates, websites, and stock designs. Use our generator to get your own, or read on for the authoritative history of lorem ipsum.</strong></p><p>&nbsp;</p><p><a href=\"https://ribs.auction\"><strong>https://ribs.auction</strong></a></p>', 'o_1hsnksskp6mv161l2t115lp12mma.jpg', 198, 0, 1000.00, 200.00, 0.00, 1100.00, 0.00, 1, 1.00, 0.00, 1, 'banktransfer', 0, 1200.00, 21, 1, 0, 1, 1, 0, 0, 0, 4, 'y', 'Delivery only at £200', 0, 0, 0, 0, 0.00, 0, 0, 0),
(9, 9, 'Test Item', '', '2024-05-09 20:15:54', '2024-05-10 20:15:54', '<p>Test Description</p>', 'o_1htfftutvr901g9d17b2ftl1qgdb.jpg', 199, 0, 0.99, 0.00, 0.00, 0.00, 0.00, 1, 1.00, 0.00, 1, 'paypal', 0, 0.00, 0, 1, 0, 1, 1, 0, 0, 0, 0, 'y', '', 0, 0, 0, 0, 0.00, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `webid_auction_moderation`
--

CREATE TABLE `webid_auction_moderation` (
  `id` int NOT NULL,
  `auction_id` int NOT NULL DEFAULT '0',
  `reason` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webid_auction_types`
--

CREATE TABLE `webid_auction_types` (
  `id` int NOT NULL,
  `key` varchar(32) DEFAULT NULL,
  `language_string` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_auction_types`
--

INSERT INTO `webid_auction_types` (`id`, `key`, `language_string`) VALUES
(1, 'standard', '1021'),
(2, 'dutch', '1020');

-- --------------------------------------------------------

--
-- Table structure for table `webid_banners`
--

CREATE TABLE `webid_banners` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` enum('gif','jpg','png','swf') DEFAULT NULL,
  `views` int DEFAULT NULL,
  `clicks` int DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sponsortext` varchar(255) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `purchased` int NOT NULL DEFAULT '0',
  `width` int NOT NULL DEFAULT '0',
  `height` int NOT NULL DEFAULT '0',
  `user` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webid_bannerscategories`
--

CREATE TABLE `webid_bannerscategories` (
  `banner` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webid_bannerskeywords`
--

CREATE TABLE `webid_bannerskeywords` (
  `banner` int NOT NULL DEFAULT '0',
  `keyword` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webid_bannersstats`
--

CREATE TABLE `webid_bannersstats` (
  `banner` int DEFAULT NULL,
  `purchased` int DEFAULT NULL,
  `views` int DEFAULT NULL,
  `clicks` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webid_bannersusers`
--

CREATE TABLE `webid_bannersusers` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webid_bids`
--

CREATE TABLE `webid_bids` (
  `id` int NOT NULL,
  `auction` int DEFAULT NULL,
  `bidder` int DEFAULT NULL,
  `bid` double(16,2) DEFAULT NULL,
  `bidwhen` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `quantity` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_bids`
--

INSERT INTO `webid_bids` (`id`, `auction`, `bidder`, `bid`, `bidwhen`, `quantity`) VALUES
(1, 2, 5, 3000.00, '2024-04-16 15:51:59', 1),
(2, 3, 5, 600.00, '2024-04-20 06:50:56', 1),
(3, 2, 5, 3500.00, '2024-04-20 06:51:54', 1),
(4, 3, 7, 700.00, '2024-04-22 08:25:54', 1),
(5, 4, 10, 1000.00, '2024-04-26 10:05:21', 1),
(6, 3, 10, 725.00, '2024-04-26 10:05:38', 1),
(7, 2, 10, 3600.00, '2024-04-26 10:06:38', 1),
(8, 3, 5, 750.00, '2024-04-26 10:09:37', 1),
(9, 2, 5, 3700.00, '2024-04-26 10:09:51', 1),
(10, 3, 7, 800.00, '2024-04-26 10:12:12', 1),
(11, 2, 7, 3800.00, '2024-04-26 10:12:27', 1),
(12, 4, 7, 1100.00, '2024-04-26 10:13:03', 1),
(13, 6, 10, 31000.00, '2024-04-28 07:37:52', 1),
(14, 2, 11, 3850.00, '2024-04-28 07:50:00', 1),
(15, 2, 10, 3900.00, '2024-04-29 10:18:51', 1),
(16, 3, 10, 850.00, '2024-04-30 13:49:46', 1),
(17, 4, 10, 1150.00, '2024-04-30 13:50:32', 1),
(18, 8, 10, 1000.00, '2024-04-30 14:02:35', 1),
(19, 8, 7, 1050.00, '2024-04-30 14:04:47', 1),
(20, 8, 10, 1100.00, '2024-04-30 14:06:50', 1),
(21, 8, 12, 1200.00, '2024-04-30 14:13:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `webid_categories`
--

CREATE TABLE `webid_categories` (
  `cat_id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `left_id` int NOT NULL,
  `right_id` int NOT NULL,
  `level` int NOT NULL,
  `cat_name` tinytext,
  `sub_counter` int DEFAULT '0',
  `counter` int DEFAULT '0',
  `cat_colour` varchar(15) DEFAULT '',
  `cat_image` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_categories`
--

INSERT INTO `webid_categories` (`cat_id`, `parent_id`, `left_id`, `right_id`, `level`, `cat_name`, `sub_counter`, `counter`, `cat_colour`, `cat_image`) VALUES
(1, -1, 1, 10, -1, 'All', 5, 0, '', ''),
(198, 1, 8, 9, 0, 'Sports and cruising R.I.B.s\r', 3, 0, NULL, NULL),
(199, 1, 6, 7, 0, 'Commercial and rescue R.I.B.s\r', 2, 0, NULL, NULL),
(200, 1, 4, 5, 0, 'Racing R.I.B.s\r', 0, 0, NULL, NULL),
(201, 1, 2, 3, 0, 'Outboard Engines', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webid_categories_translated`
--

CREATE TABLE `webid_categories_translated` (
  `cat_id` int NOT NULL,
  `lang` char(2) NOT NULL DEFAULT '',
  `category` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webid_community`
--

CREATE TABLE `webid_community` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '0',
  `messages` int NOT NULL DEFAULT '0',
  `lastmessage` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `msgstoshow` int NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_community`
--

INSERT INTO `webid_community` (`id`, `name`, `messages`, `lastmessage`, `msgstoshow`, `active`) VALUES
(1, 'Selling', 0, '0000-00-00 00:00:00', 30, 1),
(2, 'Buying', 1, '2024-03-25 08:02:44', 30, 1),
(3, 'WeBid', 2, '2024-04-28 08:18:32', 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `webid_community_translated`
--

CREATE TABLE `webid_community_translated` (
  `id` int NOT NULL,
  `lang` char(2) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webid_comm_messages`
--

CREATE TABLE `webid_comm_messages` (
  `id` int NOT NULL,
  `boardid` int NOT NULL DEFAULT '0',
  `msgdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_comm_messages`
--

INSERT INTO `webid_comm_messages` (`id`, `boardid`, `msgdate`, `user`, `username`, `message`) VALUES
(1, 2, '2024-03-25 08:02:44', 4, 'eugenio', 'Lorem Ipsum'),
(2, 3, '2024-04-28 08:17:07', 11, 'test2804@i3dmedia.co', 'This is a test message...'),
(3, 3, '2024-04-28 08:18:32', 10, 'kirsty@i3dmedia.co.u', 'This is also a test message. but what purpose does it serve?');

-- --------------------------------------------------------

--
-- Table structure for table `webid_counters`
--

CREATE TABLE `webid_counters` (
  `users` int DEFAULT '0',
  `inactiveusers` int NOT NULL DEFAULT '0',
  `auctions` int DEFAULT '0',
  `closedauctions` int NOT NULL DEFAULT '0',
  `bids` int NOT NULL DEFAULT '0',
  `suspendedauctions` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_counters`
--

INSERT INTO `webid_counters` (`users`, `inactiveusers`, `auctions`, `closedauctions`, `bids`, `suspendedauctions`) VALUES
(5, 9, 5, 11, -11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `webid_countries`
--

CREATE TABLE `webid_countries` (
  `country_id` int NOT NULL,
  `country` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_countries`
--

INSERT INTO `webid_countries` (`country_id`, `country`) VALUES
(217, 'United Kingdom');

-- --------------------------------------------------------

--
-- Table structure for table `webid_countries_translated`
--

CREATE TABLE `webid_countries_translated` (
  `country_id` int NOT NULL,
  `lang` char(2) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webid_currentaccesses`
--

CREATE TABLE `webid_currentaccesses` (
  `day` char(2) NOT NULL DEFAULT '0',
  `month` char(2) NOT NULL DEFAULT '0',
  `year` char(4) NOT NULL DEFAULT '0',
  `pageviews` int NOT NULL DEFAULT '0',
  `uniquevisitors` int NOT NULL DEFAULT '0',
  `usersessions` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_currentaccesses`
--

INSERT INTO `webid_currentaccesses` (`day`, `month`, `year`, `pageviews`, `uniquevisitors`, `usersessions`) VALUES
('18', '03', '2024', 11, 2, 3),
('19', '03', '2024', 6, 2, 3),
('20', '03', '2024', 2, 1, 2),
('21', '03', '2024', 10, 0, 1),
('22', '03', '2024', 11, 0, 1),
('23', '03', '2024', 15, 0, 1),
('24', '03', '2024', 2, 1, 1),
('25', '03', '2024', 118, 0, 4),
('26', '03', '2024', 9, 2, 4),
('27', '03', '2024', 4, 0, 1),
('28', '03', '2024', 1, 0, 1),
('29', '03', '2024', 16, 0, 1),
('30', '03', '2024', 2, 0, 1),
('31', '03', '2024', 75, 0, 1),
('01', '04', '2024', 18, 2, 2),
('02', '04', '2024', 6, 0, 1),
('04', '04', '2024', 2, 1, 1),
('05', '04', '2024', 1, 0, 1),
('06', '04', '2024', 2, 0, 1),
('08', '04', '2024', 7, 0, 2),
('09', '04', '2024', 3, 0, 1),
('12', '04', '2024', 19, 4, 4),
('15', '04', '2024', 5, 0, 2),
('16', '04', '2024', 25, 1, 2),
('19', '04', '2024', 37, 0, 1),
('20', '04', '2024', 29, 0, 2),
('21', '04', '2024', 21, 1, 1),
('22', '04', '2024', 39, 0, 3),
('24', '04', '2024', 25, 1, 4),
('26', '04', '2024', 145, 1, 2),
('27', '04', '2024', 17, 1, 1),
('28', '04', '2024', 138, 0, 1),
('29', '04', '2024', 37, 0, 4),
('30', '04', '2024', 183, 1, 2),
('01', '05', '2024', 8, 1, 1),
('03', '05', '2024', 7, 1, 1),
('04', '05', '2024', 15, 0, 2),
('05', '05', '2024', 9, 0, 3),
('06', '05', '2024', 11, 3, 5),
('07', '05', '2024', 63, 2, 10),
('08', '05', '2024', 10, 1, 3),
('09', '05', '2024', 26, 1, 5),
('10', '05', '2024', 3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `webid_currentbrowsers`
--

CREATE TABLE `webid_currentbrowsers` (
  `month` char(2) NOT NULL DEFAULT '0',
  `year` varchar(4) NOT NULL DEFAULT '0',
  `browser` varchar(255) NOT NULL DEFAULT '0',
  `counter` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_currentbrowsers`
--

INSERT INTO `webid_currentbrowsers` (`month`, `year`, `browser`, `counter`) VALUES
('03', '2024', 'Opera 106.0.0.0', 11),
('03', '2024', 'Opera 108.0.0.0', 270),
('03', '2024', 'User Agent: Chrome<br />Engine: AppleWebKit 122.0.0.0', 1),
('04', '2024', 'Opera 108.0.0.0', 39),
('04', '2024', 'User Agent: Chrome<br />Engine: AppleWebKit 123.0.0.0', 52),
('04', '2024', 'Opera 109.0.0.0', 642),
('04', '2024', 'User Agent: Chrome<br />Engine: AppleWebKit 124.0.0.0', 18),
('04', '2024', 'User Agent: Safari<br />Engine: AppleWebKit 605.1.15', 8),
('05', '2024', 'User Agent: Applewebkit<br />Engine: AppleWebKit 605.1.15', 8),
('05', '2024', 'Opera 109.0.0.0', 121),
('05', '2024', 'User Agent: Safari<br />Engine: AppleWebKit 605.1.15', 2),
('05', '2024', 'User Agent: Chrome<br />Engine: AppleWebKit 124.0.0.0', 13),
('05', '2024', 'Mozilla/ Firefox 125.0', 2),
('05', '2024', 'User Agent: Safari<br />Engine: AppleWebKit 604.1', 5);

-- --------------------------------------------------------

--
-- Table structure for table `webid_currentplatforms`
--

CREATE TABLE `webid_currentplatforms` (
  `month` char(2) NOT NULL DEFAULT '0',
  `year` varchar(4) NOT NULL DEFAULT '0',
  `platform` varchar(50) NOT NULL DEFAULT '0',
  `counter` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_currentplatforms`
--

INSERT INTO `webid_currentplatforms` (`month`, `year`, `platform`, `counter`) VALUES
('03', '2024', 'Mac OS X', 281),
('03', '2024', 'Windows NT 10.0 (Windows 10)', 1),
('04', '2024', 'Mac OS X', 689),
('04', '2024', 'Windows NT 10.0 (Windows 10)', 70),
('05', '2024', 'iphone10', 13),
('05', '2024', 'Mac OS X', 123),
('05', '2024', 'Windows NT 10.0 (Windows 10)', 15);

-- --------------------------------------------------------

--
-- Table structure for table `webid_durations`
--

CREATE TABLE `webid_durations` (
  `days` double(8,2) NOT NULL DEFAULT '0.00',
  `description` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_durations`
--

INSERT INTO `webid_durations` (`days`, `description`) VALUES
(1.00, '1 day'),
(2.00, '2 days'),
(2.50, '2.5 days'),
(3.00, '3 days'),
(7.00, '1 week'),
(14.00, '2 weeks'),
(21.00, '3 weeks'),
(30.00, '1 month'),
(45.00, '1.5 months');

-- --------------------------------------------------------

--
-- Table structure for table `webid_durations_translated`
--

CREATE TABLE `webid_durations_translated` (
  `days` double(8,2) NOT NULL,
  `lang` char(2) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webid_faqs`
--

CREATE TABLE `webid_faqs` (
  `id` int NOT NULL,
  `question` varchar(200) NOT NULL DEFAULT '',
  `answer` text NOT NULL,
  `category` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_faqs`
--

INSERT INTO `webid_faqs` (`id`, `question`, `answer`, `category`) VALUES
(2, 'Registering', 'To register as a new user, click on Register at the top of the window. You will be asked for your name, a username and password, and contact information, including your email address.\r\n\r\n<B>You must be at least 18 years of age to register.</B>!', 1),
(4, 'Item Watch', '<b>Item watch</b> notifies you when someone bids on the auctions that you have added to your Item Watch. ', 3),
(5, 'What is a Dutch auction?', 'Dutch auction is a type of auction where the auctioneer begins with a high asking price which is lowered until some participant is willing to accept the auctioneer\'s price. The winning participant pays the last announced price.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `webid_faqscategories`
--

CREATE TABLE `webid_faqscategories` (
  `id` int NOT NULL,
  `category` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_faqscategories`
--

INSERT INTO `webid_faqscategories` (`id`, `category`) VALUES
(1, 'General'),
(2, 'Selling'),
(3, 'Buying');

-- --------------------------------------------------------

--
-- Table structure for table `webid_faqscat_translated`
--

CREATE TABLE `webid_faqscat_translated` (
  `id` int NOT NULL DEFAULT '0',
  `lang` char(2) NOT NULL DEFAULT '',
  `category` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_faqscat_translated`
--

INSERT INTO `webid_faqscat_translated` (`id`, `lang`, `category`) VALUES
(3, 'EN', 'Buying'),
(3, 'ES', 'Comprar'),
(1, 'EN', 'General'),
(1, 'ES', 'General'),
(2, 'EN', 'Selling'),
(2, 'ES', 'Vender');

-- --------------------------------------------------------

--
-- Table structure for table `webid_faqs_translated`
--

CREATE TABLE `webid_faqs_translated` (
  `id` int NOT NULL,
  `lang` char(2) NOT NULL DEFAULT '',
  `question` varchar(200) NOT NULL DEFAULT '',
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_faqs_translated`
--

INSERT INTO `webid_faqs_translated` (`id`, `lang`, `question`, `answer`) VALUES
(2, 'EN', 'Registering', 'To register as a new user, click on Register at the top of the window. You will be asked for your name, a username and password, and contact information, including your email address.\r\n\r\n<B>You must be at least 18 years of age to register.</B>!'),
(2, 'ES', 'Registrarse', 'Para registrar un nuevo usuario, haz click en <B>Reg&iacute;ÃÂ­strate</B> en la parte superior de la pantalla. Se te preguntar&aacute;n tus datos personales, un nombre de usuario, una contrase&ntilde;a e informacion de contacto como la direccion e-mail.\r\n\r\n<B>¡Tienes que ser mayor de edad para poder registrarte!</B>'),
(4, 'EN', 'Item Watch', '<b>Item watch</b> notifies you when someone bids on the auctions that you have added to your Item Watch. '),
(4, 'ES', 'En la Mira', '<i><b>En la Mira</b></i> te env&iacute;a una notificacion por e-mail, cada vez que alguien puja en una de las subastas que has a&ntilde;adido a tu lista <i>En la Mira</i>. '),
(6, 'ES', 'Auction Watch', '<i><B>Auction Watch</b></i> es tu asistente para saber cuando se abre una subasta cuya descripcion contiene palabras clave de tu interes.\r\n\r\nPara usar esta opcion inserta las palabras clave en las que est&aacute;s interesado en la lista de <i>Auction Watch</i>. Todas las palabras claves deben estar separadas por un espacio. Cuando estas palabras claves aparezcan en alg&uacute;n t&iacute;tulo o descripcion de subasta, recibir&aacute;s un e-mail con la informacion de que una subasta que contiene tus palabras claves ha sido creada. Tambi&aacute;n puedas agregar el nombre del usuario como palabra clave. ');

-- --------------------------------------------------------

--
-- Table structure for table `webid_feedbacks`
--

CREATE TABLE `webid_feedbacks` (
  `id` int NOT NULL,
  `rated_user_id` int DEFAULT NULL,
  `rater_user_nick` varchar(20) DEFAULT NULL,
  `feedback` mediumtext,
  `rate` int DEFAULT NULL,
  `feedbackdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `auction_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webid_fees`
--

CREATE TABLE `webid_fees` (
  `id` int NOT NULL,
  `fee_from` double(16,2) NOT NULL DEFAULT '0.00',
  `fee_to` double(16,2) NOT NULL DEFAULT '0.00',
  `fee_type` enum('flat','perc') NOT NULL DEFAULT 'flat',
  `value` double(8,2) NOT NULL DEFAULT '0.00',
  `type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_fees`
--

INSERT INTO `webid_fees` (`id`, `fee_from`, `fee_to`, `fee_type`, `value`, `type`) VALUES
(1, 0.00, 0.00, 'flat', 0.00, 'signup_fee'),
(2, 0.00, 20000.00, 'perc', 10.00, 'buyer_fee'),
(3, 0.00, 0.00, 'flat', 0.00, 'setup_fee'),
(4, 0.00, 0.00, 'flat', 0.00, 'featured_fee'),
(5, 0.00, 0.00, 'flat', 0.00, 'bold_fee'),
(6, 0.00, 0.00, 'flat', 0.00, 'highlighted_fee'),
(7, 0.00, 0.00, 'flat', 0.00, 'reserve_fee'),
(8, 0.00, 0.00, 'flat', 0.00, 'picture_fee'),
(9, 0.00, 0.00, 'flat', 0.00, 'subtitle_fee'),
(10, 0.00, 0.00, 'flat', 0.00, 'extracat_fee'),
(11, 0.00, 0.00, 'flat', 0.00, 'relist_fee'),
(12, 0.00, 0.00, 'flat', 0.00, 'buynow_fee'),
(14, 20001.00, 1000000.00, 'perc', 3.00, 'buyer_fee');

-- --------------------------------------------------------

--
-- Table structure for table `webid_filterwords`
--

CREATE TABLE `webid_filterwords` (
  `word` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_filterwords`
--

INSERT INTO `webid_filterwords` (`word`) VALUES
('');

-- --------------------------------------------------------

--
-- Table structure for table `webid_groups`
--

CREATE TABLE `webid_groups` (
  `id` int NOT NULL,
  `group_name` varchar(50) NOT NULL DEFAULT '',
  `can_sell` tinyint(1) NOT NULL DEFAULT '0',
  `can_buy` tinyint(1) NOT NULL DEFAULT '0',
  `no_fees` tinyint(1) NOT NULL DEFAULT '0',
  `count` tinyint NOT NULL DEFAULT '0',
  `auto_join` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_groups`
--

INSERT INTO `webid_groups` (`id`, `group_name`, `can_sell`, `can_buy`, `no_fees`, `count`, `auto_join`) VALUES
(1, 'Sellers', 1, 0, 0, 0, 1),
(2, 'Buyers', 0, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `webid_groups_translated`
--

CREATE TABLE `webid_groups_translated` (
  `id` int NOT NULL,
  `lang` char(2) NOT NULL DEFAULT '',
  `group_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webid_increments`
--

CREATE TABLE `webid_increments` (
  `id` int NOT NULL,
  `low` double(16,2) DEFAULT '0.00',
  `high` double(16,2) DEFAULT '0.00',
  `increment` double(16,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_increments`
--

INSERT INTO `webid_increments` (`id`, `low`, `high`, `increment`) VALUES
(1, 0.00, 0.99, 0.28),
(2, 1.00, 9.99, 0.50),
(3, 10.00, 29.99, 1.00),
(4, 30.00, 99.99, 2.00),
(5, 100.00, 249.99, 5.00),
(6, 250.00, 499.99, 10.00),
(7, 500.00, 999.99, 25.00),
(8, 1000.00, 1999.99, 50.00);

-- --------------------------------------------------------

--
-- Table structure for table `webid_logs`
--

CREATE TABLE `webid_logs` (
  `id` int NOT NULL,
  `type` varchar(5) NOT NULL,
  `message` text NOT NULL,
  `action_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `ip` varchar(45) NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_logs`
--

INSERT INTO `webid_logs` (`id`, `type`, `message`, `action_id`, `user_id`, `ip`, `timestamp`) VALUES
(1, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, id, nick FROM webid_users\' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '81.152.91.218', '2024-03-18 11:51:30'),
(2, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '185.80.221.235', '2024-03-20 18:56:46'),
(3, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '185.80.221.235', '2024-03-20 18:58:11'),
(4, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '185.80.221.235', '2024-03-20 19:00:47'),
(5, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '185.80.221.235', '2024-03-20 19:04:38'),
(6, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '185.80.221.235', '2024-03-20 19:06:47'),
(7, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '185.80.221.235', '2024-03-20 19:18:11'),
(8, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '185.80.221.235', '2024-03-20 19:18:57'),
(9, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '185.80.221.235', '2024-03-20 19:19:15'),
(10, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '185.80.221.235', '2024-03-20 19:20:00'),
(11, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 216\n', 0, 0, '185.80.221.235', '2024-03-20 19:25:08'),
(12, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 216\n', 0, 0, '185.80.221.235', '2024-03-20 19:25:31'),
(13, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 217\n', 0, 0, '185.80.221.235', '2024-03-20 19:25:56'),
(14, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '185.80.221.235', '2024-03-20 19:30:08'),
(15, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '185.80.221.235', '2024-03-20 19:30:08'),
(16, 'error', '<b>Warning</b> [2] implode(): Invalid arguments passed on /home/blackdow/public_html/webid/insert_test.php line 20\n', 0, 0, '58.84.60.213', '2024-03-20 19:30:34'),
(17, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '58.84.60.213', '2024-03-20 19:30:34'),
(18, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 216\n', 0, 0, '185.80.221.235', '2024-03-20 19:31:50'),
(19, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 216\n', 0, 0, '185.80.221.235', '2024-03-20 19:31:50'),
(20, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 216\n', 0, 0, '185.80.221.235', '2024-03-20 19:31:58'),
(21, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 216\n', 0, 0, '185.80.221.235', '2024-03-20 19:31:58'),
(22, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 216\n', 0, 0, '58.84.60.213', '2024-03-20 19:35:08'),
(23, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 216\n', 0, 0, '58.84.60.213', '2024-03-20 19:36:19'),
(24, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 216\n', 0, 0, '185.80.221.235', '2024-03-20 19:40:19'),
(25, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 216\n', 0, 0, '185.80.221.235', '2024-03-20 19:40:19'),
(26, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 216\n', 0, 0, '185.80.221.235', '2024-03-20 19:43:41'),
(27, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 216\n', 0, 0, '185.80.221.235', '2024-03-20 19:43:41'),
(28, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 216\n', 0, 0, '58.84.60.213', '2024-03-20 19:44:41'),
(29, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (?, ?, ?, ?, ?, ?, \' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '58.84.60.213', '2024-03-20 19:45:17'),
(30, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, password)\r\n                          VALUES (\'name\', \'nick\', \'t\' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '58.84.60.213', '2024-03-20 19:49:55'),
(31, 'error', '<b>Warning</b> [2] A non-numeric value encountered on /home/blackdow/public_html/webid/register.php line 32\n', 0, 0, '185.198.190.2', '2024-03-21 07:06:45'),
(32, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, timezone)\r\n                          VALUES\r\n                  \' at line 3 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '185.198.190.2', '2024-03-21 07:06:45'),
(33, 'user', 'Registered User', 0, 32, '185.198.190.2', '2024-03-21 07:06:45'),
(34, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '185.198.190.2', '2024-03-21 07:06:45'),
(35, 'error', '<b>Warning</b> [2] A non-numeric value encountered on /home/blackdow/public_html/webid/register.php line 32\n', 0, 0, '81.152.91.218', '2024-03-22 04:43:52'),
(36, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, timezone)\r\n                          VALUES\r\n                  \' at line 3 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '81.152.91.218', '2024-03-22 04:43:52'),
(37, 'user', 'Registered User', 0, 36, '81.152.91.218', '2024-03-22 04:43:52'),
(38, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '81.152.91.218', '2024-03-22 04:43:52'),
(39, 'error', '<b>Warning</b> [2] A non-numeric value encountered on /home/blackdow/public_html/webid/register.php line 32\n', 0, 0, '81.152.91.218', '2024-03-23 10:27:09'),
(40, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, timezone)\r\n                          VALUES\r\n                  \' at line 3 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '81.152.91.218', '2024-03-23 10:27:09'),
(41, 'user', 'Registered User', 0, 40, '81.152.91.218', '2024-03-23 10:27:09'),
(42, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '81.152.91.218', '2024-03-23 10:27:09'),
(43, 'error', '<b>Warning</b> [2] A non-numeric value encountered on /home/blackdow/public_html/webid/register.php line 32\n', 0, 0, '109.150.104.127', '2024-03-25 07:51:04'),
(44, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, timezone)\r\n                          VALUES\r\n                  \' at line 3 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '109.150.104.127', '2024-03-25 07:51:04'),
(45, 'user', 'Registered User', 0, 44, '109.150.104.127', '2024-03-25 07:51:04'),
(46, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '109.150.104.127', '2024-03-25 07:51:04'),
(47, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '109.150.104.127', '2024-03-25 07:55:57'),
(48, 'user', 'List Item', 1, 4, '109.150.104.127', '2024-03-25 07:55:57'),
(49, 'user', 'Post Public Message', 1, 4, '109.150.104.127', '2024-03-25 08:02:44'),
(50, 'error', '<b>Warning</b> [2] count(): Parameter must be an array or an object that implements Countable on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 199\n', 0, 0, '109.150.104.127', '2024-03-25 13:46:11'),
(51, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '178.239.163.126', '2024-03-26 10:18:50'),
(52, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, id, nick FROM webid_users\' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '109.150.104.127', '2024-03-26 10:21:04'),
(53, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '194.37.98.102', '2024-03-27 13:14:15'),
(54, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '89.44.201.54', '2024-03-28 08:44:32'),
(55, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.236', '2024-03-29 10:23:51'),
(56, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.236', '2024-03-29 10:24:30'),
(57, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.236', '2024-03-29 10:25:06'),
(58, 'error', '<b>Warning</b> [2] A non-numeric value encountered on /home/blackdow/public_html/webid/register.php line 32\n', 0, 0, '138.199.29.236', '2024-03-29 10:30:58'),
(59, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, timezone)\r\n                          VALUES\r\n                  \' at line 3 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '138.199.29.236', '2024-03-29 10:30:58'),
(60, 'user', 'Registered User', 0, 59, '138.199.29.236', '2024-03-29 10:30:58'),
(61, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.236', '2024-03-29 10:30:58'),
(62, 'error', '<b>Warning</b> [2] A non-numeric value encountered on /home/blackdow/public_html/webid/register.php line 32\n', 0, 0, '223.233.82.48', '2024-04-12 02:54:45'),
(63, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, timezone)\r\n                          VALUES\r\n                  \' at line 3 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '223.233.82.48', '2024-04-12 02:54:45'),
(64, 'user', 'Registered User', 0, 63, '223.233.82.48', '2024-04-12 02:54:45'),
(65, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '223.233.82.48', '2024-04-12 02:54:45'),
(66, 'error', '<b>Warning</b> [2] A non-numeric value encountered on /home/blackdow/public_html/webid/register.php line 32\n', 0, 0, '103.133.158.208', '2024-04-15 20:32:45'),
(67, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, timezone)\r\n                          VALUES\r\n                  \' at line 3 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '103.133.158.208', '2024-04-15 20:32:45'),
(68, 'user', 'Registered User', 0, 67, '103.133.158.208', '2024-04-15 20:32:45'),
(69, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '103.133.158.208', '2024-04-15 20:32:45'),
(70, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '217.146.82.196', '2024-04-16 15:45:10'),
(71, 'user', 'List Item', 2, 4, '217.146.82.196', '2024-04-16 15:45:11'),
(72, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.196', '2024-04-16 15:45:26'),
(73, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.196', '2024-04-16 15:45:45'),
(74, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.196', '2024-04-16 15:45:45'),
(75, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.196', '2024-04-16 15:45:55'),
(76, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.196', '2024-04-16 15:50:23'),
(77, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.196', '2024-04-16 15:50:53'),
(78, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.196', '2024-04-16 15:51:32'),
(79, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.196', '2024-04-16 15:51:33'),
(80, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.196', '2024-04-16 15:51:33'),
(81, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.196', '2024-04-16 15:51:51'),
(82, 'user', 'Bid $3000(previous bid was $0.00) on Item', 2, 5, '217.146.82.196', '2024-04-16 15:51:59'),
(83, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.196', '2024-04-16 15:52:06'),
(84, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.196', '2024-04-16 15:52:06'),
(85, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.196', '2024-04-16 15:52:08'),
(86, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:54:35'),
(87, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:54:38'),
(88, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:54:38'),
(89, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:55:00'),
(90, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:55:02'),
(91, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:55:02'),
(92, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:55:04'),
(93, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:55:04'),
(94, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:55:25'),
(95, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:55:27'),
(96, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:55:27'),
(97, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:55:32'),
(98, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:55:35'),
(99, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:55:35'),
(100, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:55:58'),
(101, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:55:59'),
(102, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:55:59'),
(103, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:56:07'),
(104, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:56:07'),
(105, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:56:46'),
(106, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:57:21'),
(107, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:57:47'),
(108, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:57:47'),
(109, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 06:58:02'),
(110, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '185.44.77.124', '2024-04-19 07:00:53'),
(111, 'user', 'List Item', 3, 4, '185.44.77.124', '2024-04-19 07:00:53'),
(112, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 07:01:09'),
(113, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 07:01:09'),
(114, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 07:01:09'),
(115, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-19 07:01:09'),
(116, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:49:37'),
(117, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:49:37'),
(118, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:49:40'),
(119, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:49:40'),
(120, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:49:40'),
(121, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:49:40'),
(122, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:49:54'),
(123, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:49:54'),
(124, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:49:57'),
(125, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:49:57'),
(126, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:49:57'),
(127, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:49:57'),
(128, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:50:26'),
(129, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:50:26'),
(130, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:50:27'),
(131, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:50:27'),
(132, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:50:27'),
(133, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:50:27'),
(134, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:50:37'),
(135, 'user', 'Bid $600(previous bid was $0.00) on Item', 3, 5, '185.44.77.124', '2024-04-20 06:50:56'),
(136, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:51:00'),
(137, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:51:00'),
(138, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:51:00'),
(139, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:51:00'),
(140, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:51:20'),
(141, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:51:20'),
(142, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:51:22'),
(143, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:51:22'),
(144, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:51:30'),
(145, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:51:38'),
(146, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:51:40'),
(147, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:51:42'),
(148, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:51:42'),
(149, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:51:52'),
(150, 'user', 'Bid $3500(previous bid was $3000.00) on Item', 2, 5, '185.44.77.124', '2024-04-20 06:51:54'),
(151, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:51:58'),
(152, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:51:58'),
(153, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:52:23'),
(154, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.124', '2024-04-20 06:52:23'),
(155, 'error', '<b>Warning</b> [2] A non-numeric value encountered on /home/blackdow/public_html/webid/register.php line 32\n', 0, 0, '223.233.82.85', '2024-04-20 23:46:44'),
(156, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, balance, timezone)\r\n                          VALUES\r\n                  \' at line 3 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '223.233.82.85', '2024-04-20 23:46:44'),
(157, 'user', 'Registered User', 0, 156, '223.233.82.85', '2024-04-20 23:46:44'),
(158, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '223.233.82.85', '2024-04-20 23:46:44'),
(159, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '223.233.82.85', '2024-04-20 23:55:06'),
(160, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '223.233.82.85', '2024-04-20 23:55:07'),
(161, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '223.233.82.85', '2024-04-21 00:32:02'),
(162, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '223.233.82.85', '2024-04-21 00:32:02'),
(163, 'error', '<b>Warning</b> [2] A non-numeric value encountered on /home/blackdow/public_html/webid/register.php line 32\n', 0, 0, '223.233.82.85', '2024-04-21 00:33:03'),
(164, 'user', 'Registered User', 0, 6, '223.233.82.85', '2024-04-21 00:33:03'),
(165, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '223.233.82.85', '2024-04-21 00:33:03'),
(166, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:23:08'),
(167, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:23:08'),
(168, 'error', '<b>Warning</b> [2] A non-numeric value encountered on /home/blackdow/public_html/webid/register.php line 32\n', 0, 0, '138.199.29.148', '2024-04-22 08:24:09'),
(169, 'user', 'Registered User', 0, 7, '138.199.29.148', '2024-04-22 08:24:09'),
(170, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.148', '2024-04-22 08:24:09'),
(171, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:24'),
(172, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:24'),
(173, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:26'),
(174, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:26'),
(175, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:26'),
(176, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:26'),
(177, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:34'),
(178, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:38'),
(179, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:38'),
(180, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:38'),
(181, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:38'),
(182, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:44'),
(183, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:44'),
(184, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:44'),
(185, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:44'),
(186, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:52'),
(187, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:54'),
(188, 'user', 'Bid $700(previous bid was $600.00) on Item', 3, 7, '138.199.29.148', '2024-04-22 08:25:54'),
(189, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:59'),
(190, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:59');
INSERT INTO `webid_logs` (`id`, `type`, `message`, `action_id`, `user_id`, `ip`, `timestamp`) VALUES
(191, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:59'),
(192, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 08:25:59'),
(193, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 09:34:53'),
(194, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 09:34:53'),
(195, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 09:34:57'),
(196, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 09:34:57'),
(197, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 09:34:57'),
(198, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 09:34:57'),
(199, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 11:01:13'),
(200, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 11:01:13'),
(201, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 11:01:17'),
(202, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 11:01:17'),
(203, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 11:01:17'),
(204, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 11:01:17'),
(205, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 11:02:00'),
(206, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.148', '2024-04-22 11:02:00'),
(207, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-24 07:20:15'),
(208, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-24 07:20:15'),
(209, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-24 07:20:17'),
(210, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-24 07:20:17'),
(211, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-24 07:20:17'),
(212, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-24 07:20:17'),
(213, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-24 07:20:36'),
(214, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-24 07:20:36'),
(215, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-24 07:21:59'),
(216, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-24 07:21:59'),
(217, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-24 07:22:01'),
(218, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-24 07:22:01'),
(219, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-24 07:22:04'),
(220, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-24 07:22:04'),
(221, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-24 07:22:11'),
(222, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-24 07:22:11'),
(223, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-24 07:22:11'),
(224, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-24 07:22:11'),
(225, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '223.233.82.123', '2024-04-24 20:53:52'),
(226, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '223.233.82.123', '2024-04-24 20:53:52'),
(227, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '223.233.82.123', '2024-04-24 21:01:30'),
(228, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '223.233.82.123', '2024-04-24 21:01:31'),
(229, 'error', '<b>Warning</b> [2] A non-numeric value encountered on /home/blackdow/public_html/webid/register.php line 32\n', 0, 0, '223.233.82.123', '2024-04-24 21:02:58'),
(230, 'user', 'Registered User', 0, 8, '223.233.82.123', '2024-04-24 21:02:58'),
(231, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '223.233.82.123', '2024-04-24 21:02:58'),
(232, 'error', '<b>Warning</b> [2] A non-numeric value encountered on /home/blackdow/public_html/webid/register.php line 32\n', 0, 0, '223.233.82.123', '2024-04-24 21:06:56'),
(233, 'error', '<b>Warning</b> [2] A non-numeric value encountered on /home/blackdow/public_html/webid/register.php line 32\n', 0, 0, '223.233.82.123', '2024-04-24 21:09:58'),
(234, 'user', 'Registered User', 0, 9, '223.233.82.123', '2024-04-24 21:09:58'),
(235, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '223.233.82.123', '2024-04-24 21:09:58'),
(236, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '103.153.167.140', '2024-04-26 07:41:07'),
(237, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '103.153.167.140', '2024-04-26 07:41:07'),
(238, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '103.153.167.140', '2024-04-26 08:22:30'),
(239, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '103.153.167.140', '2024-04-26 08:22:30'),
(240, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '103.153.167.140', '2024-04-26 08:31:46'),
(241, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '103.153.167.140', '2024-04-26 08:31:46'),
(242, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:36:03'),
(243, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:36:03'),
(244, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:36:12'),
(245, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:36:12'),
(246, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:36:12'),
(247, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:36:12'),
(248, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:36:24'),
(249, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:36:24'),
(250, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:36:24'),
(251, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:36:24'),
(252, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:36:54'),
(253, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:36:54'),
(254, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:36:54'),
(255, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:36:54'),
(256, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:37:01'),
(257, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:37:01'),
(258, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:37:25'),
(259, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:37:25'),
(260, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:37:38'),
(261, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:37:38'),
(262, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:37:40'),
(263, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:37:40'),
(264, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:37:58'),
(265, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:37:58'),
(266, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:38:00'),
(267, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:38:00'),
(268, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:38:02'),
(269, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:38:02'),
(270, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:38:22'),
(271, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:38:22'),
(272, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:38:28'),
(273, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:38:28'),
(274, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:38:53'),
(275, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:38:53'),
(276, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:39:03'),
(277, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:39:03'),
(278, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:39:44'),
(279, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:39:44'),
(280, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:39:50'),
(281, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:39:50'),
(282, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:39:53'),
(283, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:39:53'),
(284, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:39:53'),
(285, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:39:53'),
(286, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:39:57'),
(287, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:39:57'),
(288, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:39:59'),
(289, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:39:59'),
(290, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '185.44.77.51', '2024-04-26 09:53:13'),
(291, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '185.44.77.51', '2024-04-26 09:53:13'),
(292, 'user', 'List Item', 4, 5, '185.44.77.51', '2024-04-26 09:53:13'),
(293, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:53:20'),
(294, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslh1crg1usm1ns8qbi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:53:20'),
(295, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslasishc1ofv1aj61gloh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:53:20'),
(296, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl18t21pvfcf6c491sebf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:53:20'),
(297, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslj36188felerv41djhg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:53:20'),
(298, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:53:20'),
(299, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:56:16'),
(300, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:56:16'),
(301, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:56:16'),
(302, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:56:21'),
(303, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslh1crg1usm1ns8qbi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:56:21'),
(304, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslasishc1ofv1aj61gloh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:56:21'),
(305, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl18t21pvfcf6c491sebf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:56:21'),
(306, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslj36188felerv41djhg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:56:21'),
(307, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 09:56:21'),
(308, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:02:00'),
(309, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:02:00'),
(310, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:02:00'),
(311, 'error', '<b>Warning</b> [2] A non-numeric value encountered on /home/blackdow/public_html/webid/register.php line 32\n', 0, 0, '185.44.77.51', '2024-04-26 10:03:06'),
(312, 'user', 'Registered User', 0, 10, '185.44.77.51', '2024-04-26 10:03:06'),
(313, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '185.44.77.51', '2024-04-26 10:03:06'),
(314, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:04:07'),
(315, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:04:07'),
(316, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:04:07'),
(317, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:04:13'),
(318, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:04:13'),
(319, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:04:13'),
(320, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:04:38'),
(321, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:04:38'),
(322, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:04:38'),
(323, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:04:42'),
(324, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslh1crg1usm1ns8qbi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:04:42'),
(325, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslasishc1ofv1aj61gloh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:04:42'),
(326, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl18t21pvfcf6c491sebf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:04:42'),
(327, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslj36188felerv41djhg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:04:42'),
(328, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:04:42'),
(329, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:01'),
(330, 'user', 'Bid $1000(previous bid was $0.00) on Item', 4, 10, '185.44.77.51', '2024-04-26 10:05:21'),
(331, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:23'),
(332, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslh1crg1usm1ns8qbi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:23'),
(333, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslasishc1ofv1aj61gloh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:23'),
(334, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl18t21pvfcf6c491sebf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:23'),
(335, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslj36188felerv41djhg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:23'),
(336, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:23'),
(337, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:26'),
(338, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:26'),
(339, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:26'),
(340, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:30'),
(341, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:30'),
(342, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:30'),
(343, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:30'),
(344, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:36'),
(345, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:38'),
(346, 'user', 'Bid $725(previous bid was $700.00) on Item', 3, 10, '185.44.77.51', '2024-04-26 10:05:38'),
(347, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:42'),
(348, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:42'),
(349, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:42'),
(350, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:42'),
(351, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:44'),
(352, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:44'),
(353, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:44'),
(354, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:49'),
(355, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslh1crg1usm1ns8qbi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:49'),
(356, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslasishc1ofv1aj61gloh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:49'),
(357, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:49'),
(358, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl18t21pvfcf6c491sebf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:49'),
(359, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslj36188felerv41djhg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:05:49'),
(360, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:06'),
(361, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:06'),
(362, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:23'),
(363, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:25'),
(364, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:25'),
(365, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:30'),
(366, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:38'),
(367, 'user', 'Bid $3600(previous bid was $3500.00) on Item', 2, 10, '185.44.77.51', '2024-04-26 10:06:38'),
(368, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:44'),
(369, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:44'),
(370, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:45'),
(371, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:45'),
(372, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:45'),
(373, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:47'),
(374, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:47'),
(375, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:47'),
(376, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:47'),
(377, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:53'),
(378, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:53'),
(379, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:53'),
(380, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:54'),
(381, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:06:54'),
(382, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:15'),
(383, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:15'),
(384, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:15'),
(385, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:18'),
(386, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:18'),
(387, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:18'),
(388, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:18'),
(389, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:24'),
(390, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:24'),
(391, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:24'),
(392, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:24'),
(393, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:37'),
(394, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:37'),
(395, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:43'),
(396, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslh1crg1usm1ns8qbi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:43'),
(397, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslasishc1ofv1aj61gloh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:43'),
(398, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl18t21pvfcf6c491sebf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:43'),
(399, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslj36188felerv41djhg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:43'),
(400, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:43'),
(401, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:46'),
(402, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:46'),
(403, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:46'),
(404, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:49'),
(405, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:49'),
(406, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:08:49'),
(407, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:09:24'),
(408, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:09:24'),
(409, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:09:24');
INSERT INTO `webid_logs` (`id`, `type`, `message`, `action_id`, `user_id`, `ip`, `timestamp`) VALUES
(410, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:09:24'),
(411, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:09:35'),
(412, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '185.44.77.51', '2024-04-26 10:09:37'),
(413, 'user', 'Bid $750(previous bid was $725.00) on Item', 3, 5, '185.44.77.51', '2024-04-26 10:09:37'),
(414, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:09:39'),
(415, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:09:39'),
(416, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:09:39'),
(417, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:09:39'),
(418, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:09:41'),
(419, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:09:41'),
(420, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:09:41'),
(421, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:09:43'),
(422, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:09:43'),
(423, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:09:50'),
(424, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '185.44.77.51', '2024-04-26 10:09:51'),
(425, 'user', 'Bid $3700(previous bid was $3600.00) on Item', 2, 5, '185.44.77.51', '2024-04-26 10:09:51'),
(426, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:11'),
(427, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:11'),
(428, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:13'),
(429, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:13'),
(430, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:13'),
(431, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:15'),
(432, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslh1crg1usm1ns8qbi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:15'),
(433, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslasishc1ofv1aj61gloh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:15'),
(434, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl18t21pvfcf6c491sebf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:15'),
(435, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslj36188felerv41djhg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:15'),
(436, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:15'),
(437, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:22'),
(438, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslh1crg1usm1ns8qbi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:36'),
(439, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:36'),
(440, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslasishc1ofv1aj61gloh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:36'),
(441, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslj36188felerv41djhg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:36'),
(442, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl18t21pvfcf6c491sebf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:36'),
(443, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:36'),
(444, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:55'),
(445, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:55'),
(446, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:10:55'),
(447, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:11:35'),
(448, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:11:35'),
(449, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:11:35'),
(450, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:11:53'),
(451, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:11:53'),
(452, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:11:53'),
(453, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:11:55'),
(454, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:11:55'),
(455, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:11:55'),
(456, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:11:55'),
(457, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:10'),
(458, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:12'),
(459, 'user', 'Bid $800(previous bid was $750.00) on Item', 3, 7, '185.44.77.51', '2024-04-26 10:12:12'),
(460, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:15'),
(461, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:15'),
(462, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:15'),
(463, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:18'),
(464, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:18'),
(465, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:26'),
(466, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:27'),
(467, 'user', 'Bid $3800(previous bid was $3700.00) on Item', 2, 7, '185.44.77.51', '2024-04-26 10:12:27'),
(468, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:29'),
(469, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:29'),
(470, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:30'),
(471, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:30'),
(472, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:30'),
(473, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:33'),
(474, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslasishc1ofv1aj61gloh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:33'),
(475, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslh1crg1usm1ns8qbi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:33'),
(476, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl18t21pvfcf6c491sebf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:33'),
(477, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslj36188felerv41djhg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:33'),
(478, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:33'),
(479, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:50'),
(480, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:54'),
(481, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslasishc1ofv1aj61gloh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:54'),
(482, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslh1crg1usm1ns8qbi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:54'),
(483, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslj36188felerv41djhg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:54'),
(484, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl18t21pvfcf6c491sebf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:54'),
(485, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:12:54'),
(486, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:01'),
(487, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:03'),
(488, 'user', 'Bid $1100(previous bid was $1000.00) on Item', 4, 7, '185.44.77.51', '2024-04-26 10:13:03'),
(489, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:08'),
(490, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslh1crg1usm1ns8qbi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:08'),
(491, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslasishc1ofv1aj61gloh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:08'),
(492, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl18t21pvfcf6c491sebf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:08'),
(493, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:08'),
(494, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslj36188felerv41djhg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:08'),
(495, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:10'),
(496, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:10'),
(497, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:10'),
(498, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:15'),
(499, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:15'),
(500, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:15'),
(501, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:15'),
(502, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:18'),
(503, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:18'),
(504, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:18'),
(505, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:18'),
(506, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:33'),
(507, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:33'),
(508, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:13:33'),
(509, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:14:24'),
(510, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:14:24'),
(511, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:14:24'),
(512, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:14:28'),
(513, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:14:28'),
(514, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:14:28'),
(515, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:14:28'),
(516, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:14:35'),
(517, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:14:35'),
(518, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:14:35'),
(519, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:14:35'),
(520, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:22:47'),
(521, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '185.44.77.51', '2024-04-26 10:22:47'),
(522, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:42:01'),
(523, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:42:01'),
(524, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:42:01'),
(525, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:42:04'),
(526, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:42:04'),
(527, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:42:04'),
(528, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:42:04'),
(529, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:42:48'),
(530, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:42:48'),
(531, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:42:53'),
(532, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:42:53'),
(533, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:43:40'),
(534, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:43:40'),
(535, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:43:40'),
(536, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:43:41'),
(537, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslh1crg1usm1ns8qbi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:43:41'),
(538, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslasishc1ofv1aj61gloh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:43:41'),
(539, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl18t21pvfcf6c491sebf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:43:42'),
(540, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslj36188felerv41djhg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:43:42'),
(541, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.239.163.98', '2024-04-27 07:43:42'),
(542, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:51:09'),
(543, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:51:09'),
(544, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:51:09'),
(545, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:51:12'),
(546, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:51:12'),
(547, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:51:12'),
(548, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:52:13'),
(549, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:52:13'),
(550, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:52:13'),
(551, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:52:36'),
(552, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:52:36'),
(553, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:52:36'),
(554, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:52:49'),
(555, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslh1crg1usm1ns8qbi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:52:49'),
(556, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslasishc1ofv1aj61gloh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:52:49'),
(557, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslj36188felerv41djhg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:52:49'),
(558, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl18t21pvfcf6c491sebf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:52:49'),
(559, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:52:49'),
(560, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:53:16'),
(561, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslh1crg1usm1ns8qbi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:53:16'),
(562, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslasishc1ofv1aj61gloh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:53:16'),
(563, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl18t21pvfcf6c491sebf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:53:16'),
(564, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslj36188felerv41djhg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:53:16'),
(565, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-04-27 07:53:16'),
(566, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:12:57'),
(567, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:12:57'),
(568, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:12:57'),
(569, 'error', '<b>Warning</b> [2] A non-numeric value encountered on /home/blackdow/public_html/webid/register.php line 32\n', 0, 0, '138.199.29.136', '2024-04-28 07:13:54'),
(570, 'user', 'Registered User', 0, 11, '138.199.29.136', '2024-04-28 07:13:54'),
(571, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.136', '2024-04-28 07:13:54'),
(572, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.136', '2024-04-28 07:23:13'),
(573, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.136', '2024-04-28 07:23:13'),
(574, 'user', 'List Item', 5, 11, '138.199.29.136', '2024-04-28 07:23:13'),
(575, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:02'),
(576, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:02'),
(577, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:02'),
(578, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:02'),
(579, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:07'),
(580, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q17l92es4nmi2a16eg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:07'),
(581, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1q3mt3j23t17lh1efrf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:07'),
(582, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q16il47coj0rij1sg1h.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:07'),
(583, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:07'),
(584, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1el3geq1hvvds91q9ni.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:07'),
(585, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:28'),
(586, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q17l92es4nmi2a16eg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:28'),
(587, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1q3mt3j23t17lh1efrf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:28'),
(588, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q16il47coj0rij1sg1h.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:28'),
(589, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:28'),
(590, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1el3geq1hvvds91q9ni.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:28'),
(591, 'error', '<b>Warning</b> [2] count(): Parameter must be an array or an object that implements Countable on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 199\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:39'),
(592, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:39'),
(593, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:51'),
(594, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q17l92es4nmi2a16eg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:51'),
(595, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1q3mt3j23t17lh1efrf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:51'),
(596, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:51'),
(597, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q16il47coj0rij1sg1h.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:51'),
(598, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1el3geq1hvvds91q9ni.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:30:51'),
(599, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:31:53'),
(600, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:31:53'),
(601, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:31:53'),
(602, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:31:53'),
(603, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:08'),
(604, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q17l92es4nmi2a16eg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:08'),
(605, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1q3mt3j23t17lh1efrf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:08'),
(606, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:08'),
(607, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1el3geq1hvvds91q9ni.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:08'),
(608, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q16il47coj0rij1sg1h.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:08'),
(609, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:30'),
(610, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:30'),
(611, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:30'),
(612, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:30'),
(613, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:34'),
(614, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q17l92es4nmi2a16eg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:34'),
(615, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1q3mt3j23t17lh1efrf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:34'),
(616, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q16il47coj0rij1sg1h.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:34'),
(617, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:34'),
(618, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1el3geq1hvvds91q9ni.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:34'),
(619, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:42'),
(620, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:42'),
(621, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:42'),
(622, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:32:42'),
(623, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.136', '2024-04-28 07:36:36'),
(624, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.136', '2024-04-28 07:36:37'),
(625, 'user', 'List Item', 6, 11, '138.199.29.136', '2024-04-28 07:36:37'),
(626, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:36:52'),
(627, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:36:52');
INSERT INTO `webid_logs` (`id`, `type`, `message`, `action_id`, `user_id`, `ip`, `timestamp`) VALUES
(628, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:36:52'),
(629, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:36:52'),
(630, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:36:52'),
(631, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:36:58'),
(632, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:36:58'),
(633, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:36:58'),
(634, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:36:58'),
(635, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:36:58'),
(636, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:37:16'),
(637, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:37:16'),
(638, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:37:16'),
(639, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:37:16'),
(640, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:37:16'),
(641, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:37:18'),
(642, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:37:18'),
(643, 'error', '<b>Warning</b> [2] fopen(o_1hshq2igeevq1vqdrde1v1n262f.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:37:18'),
(644, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige12171j2bagr135lvi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:37:18'),
(645, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige22s1vhjt3bdj0u1uh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:37:18'),
(646, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige106mj1nam5etno25e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:37:18'),
(647, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:37:31'),
(648, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:37:42'),
(649, 'user', 'Bid $31000(previous bid was $0.00) on Item', 6, 10, '138.199.29.136', '2024-04-28 07:37:52'),
(650, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:37:57'),
(651, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:37:57'),
(652, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige106mj1nam5etno25e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:37:57'),
(653, 'error', '<b>Warning</b> [2] fopen(o_1hshq2igeevq1vqdrde1v1n262f.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:37:57'),
(654, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige22s1vhjt3bdj0u1uh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:37:57'),
(655, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige12171j2bagr135lvi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:37:57'),
(656, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:38:32'),
(657, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:38:32'),
(658, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige106mj1nam5etno25e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:38:32'),
(659, 'error', '<b>Warning</b> [2] fopen(o_1hshq2igeevq1vqdrde1v1n262f.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:38:32'),
(660, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige22s1vhjt3bdj0u1uh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:38:32'),
(661, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige12171j2bagr135lvi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:38:32'),
(662, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:00'),
(663, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:00'),
(664, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:11'),
(665, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q17l92es4nmi2a16eg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:11'),
(666, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1q3mt3j23t17lh1efrf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:11'),
(667, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q16il47coj0rij1sg1h.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:11'),
(668, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:11'),
(669, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1el3geq1hvvds91q9ni.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:11'),
(670, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:21'),
(671, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige106mj1nam5etno25e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:21'),
(672, 'error', '<b>Warning</b> [2] fopen(o_1hshq2igeevq1vqdrde1v1n262f.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:21'),
(673, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:21'),
(674, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige12171j2bagr135lvi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:21'),
(675, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige22s1vhjt3bdj0u1uh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:21'),
(676, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:26'),
(677, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:26'),
(678, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige106mj1nam5etno25e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:26'),
(679, 'error', '<b>Warning</b> [2] fopen(o_1hshq2igeevq1vqdrde1v1n262f.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:26'),
(680, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige22s1vhjt3bdj0u1uh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:26'),
(681, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige12171j2bagr135lvi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:26'),
(682, 'error', '<b>Warning</b> [2] fopen(o_1hshq2igeevq1vqdrde1v1n262f.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:47'),
(683, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:47'),
(684, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:47'),
(685, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige106mj1nam5etno25e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:47'),
(686, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige22s1vhjt3bdj0u1uh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:47'),
(687, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige12171j2bagr135lvi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:47'),
(688, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:56'),
(689, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:56'),
(690, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:56'),
(691, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:56'),
(692, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:42:56'),
(693, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:43:40'),
(694, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:43:40'),
(695, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige106mj1nam5etno25e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:43:40'),
(696, 'error', '<b>Warning</b> [2] fopen(o_1hshq2igeevq1vqdrde1v1n262f.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:43:40'),
(697, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige12171j2bagr135lvi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:43:40'),
(698, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige22s1vhjt3bdj0u1uh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:43:40'),
(699, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.136', '2024-04-28 07:45:26'),
(700, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.136', '2024-04-28 07:45:26'),
(701, 'user', 'List Item', 7, 11, '138.199.29.136', '2024-04-28 07:45:27'),
(702, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:45:31'),
(703, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1k0n1oma7el9591m7vc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:45:31'),
(704, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:45:31'),
(705, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:46:27'),
(706, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:46:27'),
(707, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:46:27'),
(708, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:46:27'),
(709, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:46:27'),
(710, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:49:06'),
(711, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:49:06'),
(712, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:49:06'),
(713, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:49:06'),
(714, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:49:06'),
(715, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:49:06'),
(716, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:49:26'),
(717, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:49:26'),
(718, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:49:35'),
(719, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:49:35'),
(720, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:49:49'),
(721, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.136', '2024-04-28 07:50:00'),
(722, 'user', 'Bid $3850(previous bid was $3800.00) on Item', 2, 11, '138.199.29.136', '2024-04-28 07:50:01'),
(723, 'error', '<b>Warning</b> [2] count(): Parameter must be an array or an object that implements Countable on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 199\n', 0, 0, '138.199.29.136', '2024-04-28 07:57:19'),
(724, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:57:19'),
(725, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:57:24'),
(726, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q17l92es4nmi2a16eg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:57:24'),
(727, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1q3mt3j23t17lh1efrf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:57:24'),
(728, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q16il47coj0rij1sg1h.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:57:24'),
(729, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:57:24'),
(730, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1el3geq1hvvds91q9ni.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 07:57:24'),
(731, 'user', 'List Item', 7, 11, '138.199.29.136', '2024-04-28 08:14:25'),
(732, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:14:32'),
(733, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:14:32'),
(734, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:14:32'),
(735, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:14:32'),
(736, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:14:32'),
(737, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:14:32'),
(738, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:15:02'),
(739, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:15:02'),
(740, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:15:02'),
(741, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:15:02'),
(742, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:15:02'),
(743, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:15:02'),
(744, 'error', '<b>Warning</b> [2] count(): Parameter must be an array or an object that implements Countable on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 199\n', 0, 0, '138.199.29.136', '2024-04-28 08:16:17'),
(745, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:16:17'),
(746, 'user', 'Post Public Message', 2, 11, '138.199.29.136', '2024-04-28 08:17:07'),
(747, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:17:42'),
(748, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:17:42'),
(749, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:17:42'),
(750, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:17:42'),
(751, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:17:42'),
(752, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:17:42'),
(753, 'user', 'Post Public Message', 3, 10, '138.199.29.136', '2024-04-28 08:18:32'),
(754, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:18:52'),
(755, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:18:52'),
(756, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:18:52'),
(757, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:18:52'),
(758, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:18:52'),
(759, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:18:52'),
(760, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:27'),
(761, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:27'),
(762, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:27'),
(763, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:27'),
(764, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:27'),
(765, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:27'),
(766, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:31'),
(767, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:31'),
(768, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:31'),
(769, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:31'),
(770, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:31'),
(771, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:36'),
(772, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:36'),
(773, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:36'),
(774, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:36'),
(775, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:36'),
(776, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:36'),
(777, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:47'),
(778, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:47'),
(779, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:47'),
(780, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:47'),
(781, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:47'),
(782, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:47'),
(783, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:49'),
(784, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:49'),
(785, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:49'),
(786, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:49'),
(787, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:49'),
(788, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.136', '2024-04-28 08:26:49'),
(789, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 03:12:32'),
(790, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 03:12:32'),
(791, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 03:12:32'),
(792, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 03:12:32'),
(793, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 03:12:32'),
(794, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 03:12:32'),
(795, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 03:12:34'),
(796, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 03:12:34'),
(797, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 03:12:34'),
(798, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 03:12:34'),
(799, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '178.238.10.67', '2024-04-29 07:42:35'),
(800, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:42:36'),
(801, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:42:36'),
(802, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:42:36'),
(803, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:42:36'),
(804, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:42:36'),
(805, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:42:36'),
(806, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:45:08'),
(807, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1k0n1oma7el9591m7vc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:45:08'),
(808, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:45:08'),
(809, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:45:52'),
(810, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:45:52'),
(811, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:45:52'),
(812, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:45:52'),
(813, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:45:52'),
(814, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:45:52'),
(815, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:45:58'),
(816, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:46:01'),
(817, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:46:01'),
(818, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige106mj1nam5etno25e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:46:01'),
(819, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige22s1vhjt3bdj0u1uh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:46:01'),
(820, 'error', '<b>Warning</b> [2] fopen(o_1hshq2igeevq1vqdrde1v1n262f.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:46:01'),
(821, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige12171j2bagr135lvi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:46:01'),
(822, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:46:26'),
(823, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:46:26'),
(824, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige106mj1nam5etno25e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:46:26'),
(825, 'error', '<b>Warning</b> [2] fopen(o_1hshq2igeevq1vqdrde1v1n262f.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:46:26'),
(826, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige12171j2bagr135lvi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:46:26'),
(827, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige22s1vhjt3bdj0u1uh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 07:46:26'),
(828, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:17:09'),
(829, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:17:09'),
(830, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:17:09'),
(831, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:17:09'),
(832, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:17:09'),
(833, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:17:09'),
(834, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:17:11'),
(835, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:17:11'),
(836, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:17:11'),
(837, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:17:11'),
(838, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:17:17'),
(839, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:17:17'),
(840, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:17:17'),
(841, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:17:17'),
(842, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:17:17'),
(843, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:17:17'),
(844, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:18:41');
INSERT INTO `webid_logs` (`id`, `type`, `message`, `action_id`, `user_id`, `ip`, `timestamp`) VALUES
(845, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:18:41'),
(846, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:18:49'),
(847, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '178.238.10.67', '2024-04-29 10:18:51'),
(848, 'user', 'Bid $3900(previous bid was $3850.00) on Item', 2, 10, '178.238.10.67', '2024-04-29 10:18:51'),
(849, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:18:54'),
(850, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.67', '2024-04-29 10:18:54'),
(851, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.138', '2024-04-30 13:47:50'),
(852, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:47:51'),
(853, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:47:51'),
(854, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:47:51'),
(855, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:47:51'),
(856, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:47:51'),
(857, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:47:51'),
(858, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:47:58'),
(859, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1k0n1oma7el9591m7vc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:47:58'),
(860, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:47:58'),
(861, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:49:06'),
(862, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:49:06'),
(863, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:49:06'),
(864, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:49:06'),
(865, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:49:44'),
(866, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.138', '2024-04-30 13:49:46'),
(867, 'user', 'Bid $850(previous bid was $800.00) on Item', 3, 10, '138.199.29.138', '2024-04-30 13:49:46'),
(868, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:49:54'),
(869, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:49:54'),
(870, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:49:54'),
(871, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:49:54'),
(872, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:50:12'),
(873, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:50:12'),
(874, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:50:12'),
(875, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:50:12'),
(876, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:50:12'),
(877, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:50:12'),
(878, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:50:25'),
(879, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslh1crg1usm1ns8qbi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:50:25'),
(880, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslasishc1ofv1aj61gloh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:50:25'),
(881, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl18t21pvfcf6c491sebf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:50:25'),
(882, 'error', '<b>Warning</b> [2] fopen(o_1hsct1kslj36188felerv41djhg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:50:25'),
(883, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:50:25'),
(884, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:50:30'),
(885, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.138', '2024-04-30 13:50:32'),
(886, 'user', 'Bid $1150(previous bid was $1100.00) on Item', 4, 10, '138.199.29.138', '2024-04-30 13:50:32'),
(887, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:23'),
(888, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:23'),
(889, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:23'),
(890, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:23'),
(891, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:23'),
(892, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:23'),
(893, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:31'),
(894, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:31'),
(895, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:31'),
(896, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:31'),
(897, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:31'),
(898, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:31'),
(899, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:33'),
(900, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:33'),
(901, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:33'),
(902, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:33'),
(903, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:33'),
(904, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:33'),
(905, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:36'),
(906, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:41'),
(907, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:41'),
(908, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige106mj1nam5etno25e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:41'),
(909, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige12171j2bagr135lvi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:41'),
(910, 'error', '<b>Warning</b> [2] fopen(o_1hshq2igeevq1vqdrde1v1n262f.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:41'),
(911, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige22s1vhjt3bdj0u1uh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:51:41'),
(912, 'error', '<b>Warning</b> [2] count(): Parameter must be an array or an object that implements Countable on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 199\n', 0, 0, '138.199.29.138', '2024-04-30 13:53:11'),
(913, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:53:11'),
(914, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:53:24'),
(915, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:53:24'),
(916, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige106mj1nam5etno25e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:53:24'),
(917, 'error', '<b>Warning</b> [2] fopen(o_1hshq2igeevq1vqdrde1v1n262f.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:53:24'),
(918, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige12171j2bagr135lvi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:53:24'),
(919, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige22s1vhjt3bdj0u1uh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:53:24'),
(920, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:53:27'),
(921, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige106mj1nam5etno25e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:53:27'),
(922, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:53:27'),
(923, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige12171j2bagr135lvi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:53:27'),
(924, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige22s1vhjt3bdj0u1uh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:53:27'),
(925, 'error', '<b>Warning</b> [2] fopen(o_1hshq2igeevq1vqdrde1v1n262f.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:53:27'),
(926, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:54:24'),
(927, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:54:24'),
(928, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:54:24'),
(929, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:54:24'),
(930, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:54:24'),
(931, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:54:24'),
(932, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:54:40'),
(933, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:54:40'),
(934, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:54:40'),
(935, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:54:40'),
(936, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:54:40'),
(937, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:54:40'),
(938, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:54:42'),
(939, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:54:42'),
(940, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:54:42'),
(941, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:54:42'),
(942, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:54:42'),
(943, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:57:38'),
(944, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:57:38'),
(945, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:57:38'),
(946, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:57:38'),
(947, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:57:38'),
(948, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 13:57:38'),
(949, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.138', '2024-04-30 14:01:29'),
(950, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.138', '2024-04-30 14:01:29'),
(951, 'user', 'List Item', 8, 4, '138.199.29.138', '2024-04-30 14:01:29'),
(952, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:01:32'),
(953, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:01:32'),
(954, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:01:50'),
(955, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:01:50'),
(956, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:01:50'),
(957, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:01:50'),
(958, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:01:50'),
(959, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:01:50'),
(960, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:01:50'),
(961, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:02:09'),
(962, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:02:09'),
(963, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:02:09'),
(964, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:02:09'),
(965, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:02:09'),
(966, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:02:09'),
(967, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:02:09'),
(968, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:02:14'),
(969, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:02:14'),
(970, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:02:28'),
(971, 'user', 'Bid $1000(previous bid was $0.00) on Item', 8, 10, '138.199.29.138', '2024-04-30 14:02:35'),
(972, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:02:38'),
(973, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:02:38'),
(974, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:05'),
(975, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:05'),
(976, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:25'),
(977, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:25'),
(978, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:25'),
(979, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:25'),
(980, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:25'),
(981, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:25'),
(982, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:25'),
(983, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:39'),
(984, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:39'),
(985, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:39'),
(986, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:39'),
(987, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:39'),
(988, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:39'),
(989, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:39'),
(990, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:57'),
(991, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:57'),
(992, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:57'),
(993, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:57'),
(994, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:57'),
(995, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:57'),
(996, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:03:57'),
(997, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:04:00'),
(998, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:04:00'),
(999, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:04:29'),
(1000, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:04:29'),
(1001, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:04:29'),
(1002, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:04:29'),
(1003, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:04:29'),
(1004, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:04:29'),
(1005, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:04:29'),
(1006, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:04:33'),
(1007, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:04:33'),
(1008, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:04:41'),
(1009, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.138', '2024-04-30 14:04:47'),
(1010, 'user', 'Bid $1050(previous bid was $1000.00) on Item', 8, 7, '138.199.29.138', '2024-04-30 14:04:47'),
(1011, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:05:02'),
(1012, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:05:02'),
(1013, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:11'),
(1014, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:11'),
(1015, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:11'),
(1016, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:11'),
(1017, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:11'),
(1018, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:11'),
(1019, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:11'),
(1020, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:13'),
(1021, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:13'),
(1022, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:22'),
(1023, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:22'),
(1024, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:22'),
(1025, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:22'),
(1026, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:22'),
(1027, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:22'),
(1028, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:22'),
(1029, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:42'),
(1030, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:42'),
(1031, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:48'),
(1032, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:50'),
(1033, 'user', 'Bid $1100(previous bid was $1050.00) on Item', 8, 10, '138.199.29.138', '2024-04-30 14:06:50'),
(1034, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:51'),
(1035, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:06:51'),
(1036, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:07:11'),
(1037, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:07:11'),
(1038, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:07:11'),
(1039, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:07:11'),
(1040, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:07:11'),
(1041, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:07:11'),
(1042, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:07:11'),
(1043, 'error', '<b>Warning</b> [2] A non-numeric value encountered on /home/blackdow/public_html/webid/register.php line 32\n', 0, 0, '138.199.29.138', '2024-04-30 14:09:18'),
(1044, 'user', 'Registered User', 0, 12, '138.199.29.138', '2024-04-30 14:09:18'),
(1045, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.138', '2024-04-30 14:09:18'),
(1046, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:13:01'),
(1047, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:13:01'),
(1048, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:13:01'),
(1049, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:13:01'),
(1050, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:13:01'),
(1051, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:13:01'),
(1052, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:13:01'),
(1053, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:13:04'),
(1054, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:13:04'),
(1055, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:13:13'),
(1056, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.138', '2024-04-30 14:13:16'),
(1057, 'user', 'Bid $1200(previous bid was $1100.00) on Item', 8, 12, '138.199.29.138', '2024-04-30 14:13:16'),
(1058, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:13:19'),
(1059, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:13:19'),
(1060, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:15:49'),
(1061, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:15:49');
INSERT INTO `webid_logs` (`id`, `type`, `message`, `action_id`, `user_id`, `ip`, `timestamp`) VALUES
(1062, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:20:16'),
(1063, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:20:16'),
(1064, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:20:16'),
(1065, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:20:16'),
(1066, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:20:16'),
(1067, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:20:16'),
(1068, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:20:16'),
(1069, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:20:18'),
(1070, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:20:18'),
(1071, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.138', '2024-04-30 14:21:04'),
(1072, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:21:37'),
(1073, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:21:37'),
(1074, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:21:46'),
(1075, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:21:46'),
(1076, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:21:46'),
(1077, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:21:46'),
(1078, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:21:46'),
(1079, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:21:46'),
(1080, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:21:46'),
(1081, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:21:50'),
(1082, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:21:50'),
(1083, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:22:29'),
(1084, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:22:29'),
(1085, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:22:29'),
(1086, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:22:29'),
(1087, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:22:29'),
(1088, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:22:29'),
(1089, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:22:29'),
(1090, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:22:31'),
(1091, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:22:31'),
(1092, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:22:52'),
(1093, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:22:52'),
(1094, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:22:52'),
(1095, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:22:52'),
(1096, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:22:52'),
(1097, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:22:52'),
(1098, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:22:52'),
(1099, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:23:38'),
(1100, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:23:38'),
(1101, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:23:38'),
(1102, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:23:38'),
(1103, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:23:38'),
(1104, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:23:38'),
(1105, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:23:38'),
(1106, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:23:39'),
(1107, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:23:39'),
(1108, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.138', '2024-04-30 14:24:12'),
(1109, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:24:56'),
(1110, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:24:56'),
(1111, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:25:02'),
(1112, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:25:02'),
(1113, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:25:02'),
(1114, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:25:02'),
(1115, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:25:02'),
(1116, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:25:02'),
(1117, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:25:02'),
(1118, 'user', 'Post Private Message', 2, 4, '138.199.29.138', '2024-04-30 14:26:04'),
(1119, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:26:41'),
(1120, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:26:41'),
(1121, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:26:41'),
(1122, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:26:41'),
(1123, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:26:41'),
(1124, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:26:41'),
(1125, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:26:41'),
(1126, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:26:45'),
(1127, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:26:45'),
(1128, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:27:55'),
(1129, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:27:55'),
(1130, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:28:09'),
(1131, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:28:09'),
(1132, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:28:09'),
(1133, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:28:09'),
(1134, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:28:09'),
(1135, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:28:09'),
(1136, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:28:09'),
(1137, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:28:15'),
(1138, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:28:15'),
(1139, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:28:26'),
(1140, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:28:26'),
(1141, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, id, nick FROM webid_users\' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '138.199.29.138', '2024-04-30 14:29:16'),
(1142, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:31:08'),
(1143, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:31:08'),
(1144, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:31:08'),
(1145, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:31:08'),
(1146, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:31:08'),
(1147, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:31:08'),
(1148, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:31:08'),
(1149, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:31:45'),
(1150, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:31:45'),
(1151, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '138.199.29.138', '2024-04-30 14:32:18'),
(1152, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:32:25'),
(1153, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:32:25'),
(1154, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:32:25'),
(1155, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:32:25'),
(1156, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:32:25'),
(1157, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:32:25'),
(1158, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:32:25'),
(1159, 'user', 'Post Private Message', 4, 4, '138.199.29.138', '2024-04-30 14:33:03'),
(1160, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:33:12'),
(1161, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:33:12'),
(1162, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:33:12'),
(1163, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:33:12'),
(1164, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:33:12'),
(1165, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:33:12'),
(1166, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:33:12'),
(1167, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:33:14'),
(1168, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:33:14'),
(1169, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:34:25'),
(1170, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:34:25'),
(1171, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:34:25'),
(1172, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:34:25'),
(1173, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:34:25'),
(1174, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:34:25'),
(1175, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:34:25'),
(1176, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:34:32'),
(1177, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:34:32'),
(1178, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:34:40'),
(1179, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:34:40'),
(1180, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:35:45'),
(1181, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:35:45'),
(1182, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:35:45'),
(1183, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:35:45'),
(1184, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:35:45'),
(1185, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:35:45'),
(1186, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:35:45'),
(1187, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:36:36'),
(1188, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:36:36'),
(1189, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:36:36'),
(1190, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:36:36'),
(1191, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:36:36'),
(1192, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:36:36'),
(1193, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:36:36'),
(1194, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:36:56'),
(1195, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:36:56'),
(1196, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:36:56'),
(1197, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:36:56'),
(1198, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:36:56'),
(1199, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:36:56'),
(1200, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:36:56'),
(1201, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:37:06'),
(1202, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:37:06'),
(1203, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:37:06'),
(1204, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:37:06'),
(1205, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:37:06'),
(1206, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:37:06'),
(1207, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:37:13'),
(1208, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q17l92es4nmi2a16eg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:37:13'),
(1209, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1q3mt3j23t17lh1efrf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:37:13'),
(1210, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:37:13'),
(1211, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q16il47coj0rij1sg1h.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:37:13'),
(1212, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1el3geq1hvvds91q9ni.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:37:13'),
(1213, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:39:49'),
(1214, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:39:49'),
(1215, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:39:49'),
(1216, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:54:46'),
(1217, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:54:46'),
(1218, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:54:46'),
(1219, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:54:46'),
(1220, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:54:46'),
(1221, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:54:46'),
(1222, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 14:54:46'),
(1223, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 15:00:15'),
(1224, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 15:00:15'),
(1225, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 15:00:15'),
(1226, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 15:00:15'),
(1227, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 15:00:15'),
(1228, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 15:00:15'),
(1229, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '138.199.29.138', '2024-04-30 15:00:15'),
(1230, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:13'),
(1231, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:13'),
(1232, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:13'),
(1233, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:13'),
(1234, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:13'),
(1235, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:13'),
(1236, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:13'),
(1237, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:49'),
(1238, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:49'),
(1239, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:49'),
(1240, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:49'),
(1241, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:49'),
(1242, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:49'),
(1243, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:49'),
(1244, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:55'),
(1245, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:55'),
(1246, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige22s1vhjt3bdj0u1uh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:55'),
(1247, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige12171j2bagr135lvi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:55'),
(1248, 'error', '<b>Warning</b> [2] fopen(o_1hshq2igeevq1vqdrde1v1n262f.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:55'),
(1249, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige106mj1nam5etno25e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:06:55'),
(1250, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:07:39'),
(1251, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:07:39'),
(1252, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:07:39'),
(1253, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:07:39'),
(1254, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:07:39'),
(1255, 'error', '<b>Warning</b> [2] fopen(o_1hsnksskp6mv161l2t115lp12mma.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:07:39'),
(1256, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:07:39'),
(1257, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:07:41'),
(1258, 'error', '<b>Warning</b> [2] fopen(o_1hrqidu5iphi1t4vb111fus19kjg.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:07:41'),
(1259, 'error', '<b>Warning</b> [2] fopen(o_1hrqidbra1sge29pb0rvu5b7aa.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:07:41'),
(1260, 'error', '<b>Warning</b> [2] fopen(o_1hrqidh5e1qifskb5v910tkl3nc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-01 06:07:41'),
(1261, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '217.146.83.102', '2024-05-03 13:07:23'),
(1262, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \') AND no_fees = 1\' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '217.146.83.102', '2024-05-03 13:07:23'),
(1263, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '217.146.83.102', '2024-05-03 13:07:23'),
(1264, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '217.146.83.102', '2024-05-03 13:07:23'),
(1265, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '217.146.83.102', '2024-05-03 13:07:23'),
(1266, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '217.146.83.102', '2024-05-03 13:07:23'),
(1267, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '217.146.83.102', '2024-05-03 13:07:23'),
(1268, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '217.146.83.102', '2024-05-03 13:07:24'),
(1269, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '217.146.83.102', '2024-05-03 13:07:24'),
(1270, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-03 13:07:24'),
(1271, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-03 13:07:24'),
(1272, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-03 13:07:24');
INSERT INTO `webid_logs` (`id`, `type`, `message`, `action_id`, `user_id`, `ip`, `timestamp`) VALUES
(1273, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-03 13:07:24'),
(1274, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-03 13:09:03'),
(1275, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige1mt41spq196mjahnug.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-03 13:09:03'),
(1276, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige106mj1nam5etno25e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-03 13:09:04'),
(1277, 'error', '<b>Warning</b> [2] fopen(o_1hshq2igeevq1vqdrde1v1n262f.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-03 13:09:04'),
(1278, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige12171j2bagr135lvi.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-03 13:09:04'),
(1279, 'error', '<b>Warning</b> [2] fopen(o_1hshq2ige22s1vhjt3bdj0u1uh.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-03 13:09:04'),
(1280, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '217.146.83.102', '2024-05-03 13:09:15'),
(1281, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-03 13:09:15'),
(1282, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-03 13:09:15'),
(1283, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-03 13:09:15'),
(1284, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-03 13:09:15'),
(1285, 'error', '<b>Warning trigger</b> [512] SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'amount\' cannot be null on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '217.146.83.102', '2024-05-03 13:09:43'),
(1286, 'error', '<b>Warning trigger</b> [512] SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'amount\' cannot be null on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '217.146.83.102', '2024-05-03 13:13:11'),
(1287, 'error', '<b>Warning trigger</b> [512] SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'amount\' cannot be null on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '217.146.83.102', '2024-05-04 04:23:48'),
(1288, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 08:45:39'),
(1289, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 08:45:39'),
(1290, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 08:45:39'),
(1291, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 08:45:41'),
(1292, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 08:45:41'),
(1293, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 08:48:48'),
(1294, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 08:48:48'),
(1295, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 08:51:32'),
(1296, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 08:51:32'),
(1297, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 08:51:32'),
(1298, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 08:51:50'),
(1299, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 08:51:50'),
(1300, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 08:51:50'),
(1301, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 08:51:50'),
(1302, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 09:18:56'),
(1303, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 09:18:56'),
(1304, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 09:18:56'),
(1305, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 09:19:02'),
(1306, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1k0n1oma7el9591m7vc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 09:19:02'),
(1307, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.83.102', '2024-05-04 09:19:02'),
(1308, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.209', '2024-05-05 06:42:56'),
(1309, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1k0n1oma7el9591m7vc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.209', '2024-05-05 06:42:56'),
(1310, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.209', '2024-05-05 06:42:56'),
(1311, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.209', '2024-05-05 06:43:01'),
(1312, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1k0n1oma7el9591m7vc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.209', '2024-05-05 06:43:01'),
(1313, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.209', '2024-05-05 06:43:01'),
(1314, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1k0n1oma7el9591m7vc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.209', '2024-05-05 06:43:03'),
(1315, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.209', '2024-05-05 06:43:03'),
(1316, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.209', '2024-05-05 06:43:03'),
(1317, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '178.238.10.209', '2024-05-05 06:43:16'),
(1318, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.209', '2024-05-05 06:43:16'),
(1319, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.209', '2024-05-05 06:43:16'),
(1320, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.209', '2024-05-05 06:43:16'),
(1321, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.209', '2024-05-05 06:43:18'),
(1322, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1q3mt3j23t17lh1efrf.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.209', '2024-05-05 06:43:18'),
(1323, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q17l92es4nmi2a16eg.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.209', '2024-05-05 06:43:18'),
(1324, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q16il47coj0rij1sg1h.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.209', '2024-05-05 06:43:18'),
(1325, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1egvqtt1dva1gvsit3e.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.209', '2024-05-05 06:43:18'),
(1326, 'error', '<b>Warning</b> [2] fopen(o_1hshp9u8q1el3geq1hvvds91q9ni.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '178.238.10.209', '2024-05-05 06:43:18'),
(1327, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-05 15:20:58'),
(1328, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-05 15:20:58'),
(1329, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-05 15:20:58'),
(1330, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-05 15:21:01'),
(1331, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-05 15:21:01'),
(1332, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-05 18:20:07'),
(1333, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-05 18:20:07'),
(1334, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-05 18:20:07'),
(1335, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-05 18:20:09'),
(1336, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-05 18:20:09'),
(1337, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-06 05:30:19'),
(1338, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-06 05:30:19'),
(1339, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-06 05:30:37'),
(1340, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '109.155.35.138', '2024-05-06 05:30:38'),
(1341, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.186', '2024-05-06 10:47:58'),
(1342, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.186', '2024-05-06 10:47:58'),
(1343, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '217.146.82.186', '2024-05-06 12:46:12'),
(1344, 'error', '<b>Warning</b> [2] fopen(o_1hrjp8n3214uc1b589ob1okl1gtna.png): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.186', '2024-05-06 12:46:12'),
(1345, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.186', '2024-05-06 12:46:12'),
(1346, 'error', '<b>Warning</b> [2] fopen(o_1hsct1ksl1ktf1kjgpk1np51r3oe.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.186', '2024-05-06 12:46:12'),
(1347, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.186', '2024-05-06 12:46:17'),
(1348, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1k0n1oma7el9591m7vc.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.186', '2024-05-06 12:46:17'),
(1349, 'error', '<b>Warning</b> [2] fopen(o_1hshqittl1p43161dae7f0tvq3b.jpg): failed to open stream: No such file or directory on /home/blackdow/public_html/webid/getthumb.php line 27\n', 0, 0, '217.146.82.186', '2024-05-06 12:46:17'),
(1350, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '217.146.82.186', '2024-05-07 02:39:44'),
(1351, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '217.146.82.186', '2024-05-07 14:29:30'),
(1352, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups = ?,\r\n                      balance = ?, suspended = 0 WHERE id = ?\' at line 11 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '195.140.213.212', '2024-05-09 06:02:40'),
(1353, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups = ?,\r\n                      balance = ?, suspended = 0 WHERE id = ?\' at line 11 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '195.140.213.212', '2024-05-09 06:03:06'),
(1354, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups = ?,\r\n                      balance = ?, suspended = 0 WHERE id = ?\' at line 11 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '195.140.213.212', '2024-05-09 06:03:20'),
(1355, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups = ?,\r\n                      balance = ?, suspended = 0 WHERE id = ?\' at line 11 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '195.140.213.212', '2024-05-09 06:03:40'),
(1356, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups = ?,\r\n                      balance = ?, suspended = 0 WHERE id = ?\' at line 11 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '195.140.213.212', '2024-05-09 06:03:50'),
(1357, 'error', '<b>Warning trigger</b> [512] SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'groups, id, nick FROM webid_users\' at line 1 on /home/blackdow/public_html/webid/includes/database/DatabasePDO.php line 215\n', 0, 0, '195.140.213.212', '2024-05-09 06:21:54'),
(1358, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '223.233.82.111', '2024-05-09 20:15:54'),
(1359, 'user', 'List Item', 9, 9, '223.233.82.111', '2024-05-09 20:15:55'),
(1360, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '223.233.85.166', '2024-05-10 20:37:29'),
(1361, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '223.233.85.166', '2024-05-10 20:38:22'),
(1362, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '223.233.85.166', '2024-05-10 20:38:26'),
(1363, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '223.233.85.166', '2024-05-10 20:43:35'),
(1364, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '223.233.85.166', '2024-05-10 20:44:05'),
(1365, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '223.233.85.166', '2024-05-10 20:44:08'),
(1366, 'error', '<b>Deprecated notice</b> [8192] implode(): Passing glue string after array is deprecated. Swap the parameters on /home/blackdow/public_html/webid/includes/class_email_handler.php line 70\n', 0, 0, '223.233.85.166', '2024-05-10 20:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `webid_membertypes`
--

CREATE TABLE `webid_membertypes` (
  `id` int NOT NULL,
  `feedbacks` int NOT NULL DEFAULT '0',
  `icon` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_membertypes`
--

INSERT INTO `webid_membertypes` (`id`, `feedbacks`, `icon`) VALUES
(14, 49, 'starY.gif'),
(15, 99, 'starB.gif'),
(16, 999, 'starT.gif'),
(17, 4999, 'starR.gif'),
(19, 24999, 'starFY.gif'),
(20, 49999, 'starFT.gif'),
(21, 99999, 'starFV.gif'),
(22, 999999, 'starFR.gif'),
(23, 9999, 'starG.gif'),
(24, 9, 'transparent.gif'),
(25, 8, 'transparent.gif');

-- --------------------------------------------------------

--
-- Table structure for table `webid_messages`
--

CREATE TABLE `webid_messages` (
  `id` int NOT NULL,
  `sentto` int NOT NULL DEFAULT '0',
  `sentfrom` int NOT NULL DEFAULT '0',
  `fromemail` varchar(255) NOT NULL DEFAULT '',
  `sentat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `message` text NOT NULL,
  `isread` tinyint(1) NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `replied` tinyint(1) NOT NULL DEFAULT '0',
  `reply_of` int NOT NULL DEFAULT '0',
  `question` int NOT NULL DEFAULT '0',
  `public` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_messages`
--

INSERT INTO `webid_messages` (`id`, `sentto`, `sentfrom`, `fromemail`, `sentat`, `message`, `isread`, `subject`, `replied`, `reply_of`, `question`, `public`) VALUES
(1, 4, 12, '', '2024-04-30 14:24:12', 'Hello, I have a question regarding the 8m Ribeye R.I.B.', 1, 'Question about your auction: Ribeye 8m Fast Rib', 1, 0, 2, 1),
(2, 12, 4, '', '2024-04-30 14:26:04', 'Thank you for your question to which my answer is.....<br />\r\nLorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with:<br />\r\n<br />\r\n“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”<br />\r\nThe purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn\'t distract from the layout. A practice not without controversy, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.<br />\r\n<br />\r\nThe passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it\'s seen all around the web; on templates, websites, and stock designs. Use our generator to get your own, or read on for the authoritative history of lorem ipsum.', 0, 'Re: Question about your auction: Ribeye 8m Fast Rib', 0, 1, 2, 0),
(3, 4, 10, '', '2024-04-30 14:32:18', 'Is this boat still for sale?', 1, 'Question about your auction: TEST R.I.B.', 1, 0, 8, 1),
(4, 10, 4, '', '2024-04-30 14:33:03', 'yes, this R.I.B. is still for sale. Go bid on it!', 0, 'Re: Question about your auction: TEST R.I.B.', 0, 3, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `webid_news`
--

CREATE TABLE `webid_news` (
  `id` int NOT NULL,
  `title` varchar(200) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `new_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `suspended` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_news`
--

INSERT INTO `webid_news` (`id`, `title`, `content`, `new_date`, `suspended`) VALUES
(1, 'About to launch Blackdown IT', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2024-03-25 08:04:42', 0),
(2, 'Blackdown IT Going Live!', '<p><em>Lorem ipsum</em>, or&nbsp;<em>lipsum</em>&nbsp;as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s&nbsp;<em>De Finibus Bonorum et Malorum</em>&nbsp;for use in a type specimen book. It usually begins with:</p><p>&ldquo;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&rdquo;</p><p>The purpose of&nbsp;<em>lorem ipsum</em>&nbsp;is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn&#39;t distract from the layout. A practice not without&nbsp;<a href=\"https://loremipsum.io/#controversy\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.</p><p>The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it&#39;s seen all around the web; on templates, websites, and stock designs. Use our&nbsp;<a href=\"https://loremipsum.io/#generator\">generator</a>&nbsp;to get your own, or read on for the authoritative history of&nbsp;<em>lorem ipsum</em>.</p><p><em>Lorem ipsum</em>, or&nbsp;<em>lipsum</em>&nbsp;as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s&nbsp;<em>De Finibus Bonorum et Malorum</em>&nbsp;for use in a type specimen book. It usually begins with:</p><p>&ldquo;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&rdquo;</p><p>The purpose of&nbsp;<em>lorem ipsum</em>&nbsp;is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn&#39;t distract from the layout. A practice not without&nbsp;<a href=\"https://loremipsum.io/#controversy\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.</p><p>The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it&#39;s seen all around the web; on templates, websites, and stock designs. Use our&nbsp;<a href=\"https://loremipsum.io/#generator\">generator</a>&nbsp;to get your own, or read on for the authoritative history of&nbsp;<em>lorem ipsum</em>.</p><p><em>Lorem ipsum</em>, or&nbsp;<em>lipsum</em>&nbsp;as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s&nbsp;<em>De Finibus Bonorum et Malorum</em>&nbsp;for use in a type specimen book. It usually begins with:</p><p>&ldquo;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&rdquo;</p><p>The purpose of&nbsp;<em>lorem ipsum</em>&nbsp;is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn&#39;t distract from the layout. A practice not without&nbsp;<a href=\"https://loremipsum.io/#controversy\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.</p><p>The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it&#39;s seen all around the web; on templates, websites, and stock designs. Use our&nbsp;<a href=\"https://loremipsum.io/#generator\">generator</a>&nbsp;to get your own, or read on for the authoritative history of&nbsp;<em>lorem ipsum</em>.</p><p><em>Lorem ipsum</em>, or&nbsp;<em>lipsum</em>&nbsp;as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s&nbsp;<em>De Finibus Bonorum et Malorum</em>&nbsp;for use in a type specimen book. It usually begins with:</p><p>&ldquo;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&rdquo;</p><p>The purpose of&nbsp;<em>lorem ipsum</em>&nbsp;is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn&#39;t distract from the layout. A practice not without&nbsp;<a href=\"https://loremipsum.io/#controversy\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.</p><p>The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it&#39;s seen all around the web; on templates, websites, and stock designs. Use our&nbsp;<a href=\"https://loremipsum.io/#generator\">generator</a>&nbsp;to get your own, or read on for the authoritative history of&nbsp;<em>lorem ipsum</em>.</p>', '2024-04-30 14:46:43', 0);

-- --------------------------------------------------------

--
-- Table structure for table `webid_news_translated`
--

CREATE TABLE `webid_news_translated` (
  `id` int NOT NULL DEFAULT '0',
  `lang` char(2) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_news_translated`
--

INSERT INTO `webid_news_translated` (`id`, `lang`, `title`, `content`) VALUES
(1, 'EN', 'About to launch Blackdown IT', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(2, 'EN', 'Blackdown IT Going Live!', '<p><em>Lorem ipsum</em>, or&nbsp;<em>lipsum</em>&nbsp;as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s&nbsp;<em>De Finibus Bonorum et Malorum</em>&nbsp;for use in a type specimen book. It usually begins with:</p><p>&ldquo;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&rdquo;</p><p>The purpose of&nbsp;<em>lorem ipsum</em>&nbsp;is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn&#39;t distract from the layout. A practice not without&nbsp;<a href=\"https://loremipsum.io/#controversy\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.</p><p>The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it&#39;s seen all around the web; on templates, websites, and stock designs. Use our&nbsp;<a href=\"https://loremipsum.io/#generator\">generator</a>&nbsp;to get your own, or read on for the authoritative history of&nbsp;<em>lorem ipsum</em>.</p><p><em>Lorem ipsum</em>, or&nbsp;<em>lipsum</em>&nbsp;as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s&nbsp;<em>De Finibus Bonorum et Malorum</em>&nbsp;for use in a type specimen book. It usually begins with:</p><p>&ldquo;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&rdquo;</p><p>The purpose of&nbsp;<em>lorem ipsum</em>&nbsp;is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn&#39;t distract from the layout. A practice not without&nbsp;<a href=\"https://loremipsum.io/#controversy\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.</p><p>The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it&#39;s seen all around the web; on templates, websites, and stock designs. Use our&nbsp;<a href=\"https://loremipsum.io/#generator\">generator</a>&nbsp;to get your own, or read on for the authoritative history of&nbsp;<em>lorem ipsum</em>.</p><p><em>Lorem ipsum</em>, or&nbsp;<em>lipsum</em>&nbsp;as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s&nbsp;<em>De Finibus Bonorum et Malorum</em>&nbsp;for use in a type specimen book. It usually begins with:</p><p>&ldquo;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&rdquo;</p><p>The purpose of&nbsp;<em>lorem ipsum</em>&nbsp;is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn&#39;t distract from the layout. A practice not without&nbsp;<a href=\"https://loremipsum.io/#controversy\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.</p><p>The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it&#39;s seen all around the web; on templates, websites, and stock designs. Use our&nbsp;<a href=\"https://loremipsum.io/#generator\">generator</a>&nbsp;to get your own, or read on for the authoritative history of&nbsp;<em>lorem ipsum</em>.</p><p><em>Lorem ipsum</em>, or&nbsp;<em>lipsum</em>&nbsp;as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s&nbsp;<em>De Finibus Bonorum et Malorum</em>&nbsp;for use in a type specimen book. It usually begins with:</p><p>&ldquo;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&rdquo;</p><p>The purpose of&nbsp;<em>lorem ipsum</em>&nbsp;is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn&#39;t distract from the layout. A practice not without&nbsp;<a href=\"https://loremipsum.io/#controversy\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.</p><p>The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it&#39;s seen all around the web; on templates, websites, and stock designs. Use our&nbsp;<a href=\"https://loremipsum.io/#generator\">generator</a>&nbsp;to get your own, or read on for the authoritative history of&nbsp;<em>lorem ipsum</em>.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `webid_online`
--

CREATE TABLE `webid_online` (
  `ID` bigint NOT NULL,
  `SESSION` varchar(32) NOT NULL DEFAULT '',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_online`
--

INSERT INTO `webid_online` (`ID`, `SESSION`, `time`) VALUES
(168, 'b6f513ffb8c62ac70ca21162adbc6834', '2024-05-10 20:38:26');

-- --------------------------------------------------------

--
-- Table structure for table `webid_payment_options`
--

CREATE TABLE `webid_payment_options` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `displayname` varchar(50) NOT NULL DEFAULT '',
  `is_gateway` tinyint(1) NOT NULL DEFAULT '0',
  `gateway_admin_address` varchar(50) NOT NULL DEFAULT '',
  `gateway_admin_password` varchar(50) NOT NULL DEFAULT '',
  `gateway_required` tinyint(1) NOT NULL DEFAULT '0',
  `gateway_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_payment_options`
--

INSERT INTO `webid_payment_options` (`id`, `name`, `displayname`, `is_gateway`, `gateway_admin_address`, `gateway_admin_password`, `gateway_required`, `gateway_active`) VALUES
(1, 'banktransfer', 'Bank Transfer', 0, '', '', 0, 0),
(2, 'cheque', 'Cheque', 0, '', '', 0, 0),
(3, 'paypal', 'PayPal', 1, 'eugenio@fastmail.com', '', 0, 1),
(4, 'authnet', 'Authorize.net', 1, '', '', 0, 0),
(5, 'worldpay', 'WorldPay', 1, '', '', 0, 0),
(6, 'skrill', 'Skrill', 1, '', '', 0, 1),
(7, 'toocheckout', '2Checkout', 1, '', '', 0, 0),
(8, 'paypal', 'PayPal', 0, '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `webid_pendingnotif`
--

CREATE TABLE `webid_pendingnotif` (
  `id` int NOT NULL,
  `auction_id` int NOT NULL DEFAULT '0',
  `seller_id` int NOT NULL DEFAULT '0',
  `winners` text NOT NULL,
  `auction` text NOT NULL,
  `seller` text NOT NULL,
  `thisdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_pendingnotif`
--

INSERT INTO `webid_pendingnotif` (`id`, `auction_id`, `seller_id`, `winners`, `auction`, `seller`, `thisdate`) VALUES
(1, 1, 1, '', 'a:47:{s:2:\"id\";s:1:\"1\";s:4:\"user\";s:1:\"4\";s:5:\"title\";s:12:\"Thanes TM5.8\";s:8:\"subtitle\";s:0:\"\";s:6:\"starts\";s:19:\"2024-03-31 09:26:50\";s:4:\"ends\";s:19:\"2024-03-31 09:26:50\";s:11:\"description\";s:1014:\"We are offering a new and un-used TM 5.80 metre RIB, ready for the owner to fit out and install their choice of outboard.The boat is offered with:White GRP Deep Vee Hull suitable for an extra-long shaft outboardBlue Hypalon Tubes with a GRP Bow Roller, Lifelines and CleatsBow Locker with CushionSteering Console with Windscreen and RailHelm Seat with Cushon and Rail.Rear Seat with a Large locker below and seat Cushion.Stainless Steel A-FrameStainless Steel Fuel tank with Console GaugeStainless Steel Boarding LadderNavigation Lights and Switch PanelThere is also a Stainless-Steel Back rail with integral Ski Eye and Cushion.The RIB shall require a Steering System to be fitted, as this is not included.In addition, we can offer a range of suitable outboards from Tohatsu and a trailer from Extreme Trailers to complete a package if required.We have two boats available at this special price, which are being sold to make way for new 2024 stock arriving soon.Delivery is available at an extra cost if required.\";s:8:\"pict_url\";s:0:\"\";s:8:\"category\";s:3:\"199\";s:9:\"secondcat\";s:1:\"0\";s:11:\"minimum_bid\";s:7:\"5000.00\";s:13:\"shipping_cost\";s:6:\"200.00\";s:24:\"additional_shipping_cost\";s:4:\"0.00\";s:13:\"reserve_price\";s:4:\"0.00\";s:7:\"buy_now\";s:4:\"0.00\";s:12:\"auction_type\";s:1:\"1\";s:8:\"duration\";s:4:\"0.00\";s:9:\"increment\";s:4:\"0.00\";s:8:\"shipping\";s:1:\"1\";s:7:\"payment\";s:12:\"banktransfer\";s:13:\"international\";s:1:\"0\";s:11:\"current_bid\";s:4:\"0.00\";s:14:\"current_bid_id\";s:1:\"0\";s:6:\"closed\";s:1:\"0\";s:14:\"photo_uploaded\";s:1:\"0\";s:16:\"initial_quantity\";s:1:\"1\";s:8:\"quantity\";s:1:\"1\";s:9:\"suspended\";s:1:\"0\";s:6:\"relist\";s:1:\"5\";s:8:\"relisted\";s:1:\"6\";s:8:\"num_bids\";s:1:\"0\";s:4:\"sold\";s:1:\"n\";s:14:\"shipping_terms\";s:0:\"\";s:7:\"bn_only\";s:1:\"0\";s:4:\"bold\";s:1:\"0\";s:11:\"highlighted\";s:1:\"0\";s:8:\"featured\";s:1:\"0\";s:11:\"current_fee\";s:4:\"0.00\";s:3:\"tax\";s:1:\"0\";s:6:\"taxinc\";s:1:\"0\";s:7:\"bn_sale\";s:1:\"0\";s:5:\"email\";s:20:\"eugenio@fastmail.com\";s:12:\"endemailmode\";s:3:\"cum\";s:4:\"nick\";s:7:\"eugenio\";s:15:\"payment_details\";N;s:4:\"name\";s:15:\"Eugenio Leijten\";s:6:\"groups\";s:3:\"1,2\";}', 'a:7:{s:2:\"id\";s:1:\"4\";s:5:\"email\";s:20:\"eugenio@fastmail.com\";s:12:\"endemailmode\";s:3:\"cum\";s:4:\"nick\";s:7:\"eugenio\";s:15:\"payment_details\";N;s:4:\"name\";s:15:\"Eugenio Leijten\";s:6:\"groups\";s:3:\"1,2\";}', '2024-03-31 09:27:54'),
(2, 1, 1, '', 'a:47:{s:2:\"id\";s:1:\"1\";s:4:\"user\";s:1:\"4\";s:5:\"title\";s:12:\"Thanes TM5.8\";s:8:\"subtitle\";s:0:\"\";s:6:\"starts\";s:19:\"2024-03-31 09:30:50\";s:4:\"ends\";s:19:\"2024-03-31 09:30:50\";s:11:\"description\";s:1014:\"We are offering a new and un-used TM 5.80 metre RIB, ready for the owner to fit out and install their choice of outboard.The boat is offered with:White GRP Deep Vee Hull suitable for an extra-long shaft outboardBlue Hypalon Tubes with a GRP Bow Roller, Lifelines and CleatsBow Locker with CushionSteering Console with Windscreen and RailHelm Seat with Cushon and Rail.Rear Seat with a Large locker below and seat Cushion.Stainless Steel A-FrameStainless Steel Fuel tank with Console GaugeStainless Steel Boarding LadderNavigation Lights and Switch PanelThere is also a Stainless-Steel Back rail with integral Ski Eye and Cushion.The RIB shall require a Steering System to be fitted, as this is not included.In addition, we can offer a range of suitable outboards from Tohatsu and a trailer from Extreme Trailers to complete a package if required.We have two boats available at this special price, which are being sold to make way for new 2024 stock arriving soon.Delivery is available at an extra cost if required.\";s:8:\"pict_url\";s:0:\"\";s:8:\"category\";s:3:\"199\";s:9:\"secondcat\";s:1:\"0\";s:11:\"minimum_bid\";s:7:\"5000.00\";s:13:\"shipping_cost\";s:6:\"200.00\";s:24:\"additional_shipping_cost\";s:4:\"0.00\";s:13:\"reserve_price\";s:4:\"0.00\";s:7:\"buy_now\";s:4:\"0.00\";s:12:\"auction_type\";s:1:\"1\";s:8:\"duration\";s:4:\"0.00\";s:9:\"increment\";s:4:\"0.00\";s:8:\"shipping\";s:1:\"1\";s:7:\"payment\";s:12:\"banktransfer\";s:13:\"international\";s:1:\"0\";s:11:\"current_bid\";s:4:\"0.00\";s:14:\"current_bid_id\";s:1:\"0\";s:6:\"closed\";s:1:\"0\";s:14:\"photo_uploaded\";s:1:\"0\";s:16:\"initial_quantity\";s:1:\"1\";s:8:\"quantity\";s:1:\"1\";s:9:\"suspended\";s:1:\"0\";s:6:\"relist\";s:1:\"5\";s:8:\"relisted\";s:1:\"7\";s:8:\"num_bids\";s:1:\"0\";s:4:\"sold\";s:1:\"n\";s:14:\"shipping_terms\";s:0:\"\";s:7:\"bn_only\";s:1:\"0\";s:4:\"bold\";s:1:\"0\";s:11:\"highlighted\";s:1:\"0\";s:8:\"featured\";s:1:\"0\";s:11:\"current_fee\";s:4:\"0.00\";s:3:\"tax\";s:1:\"0\";s:6:\"taxinc\";s:1:\"0\";s:7:\"bn_sale\";s:1:\"0\";s:5:\"email\";s:20:\"eugenio@fastmail.com\";s:12:\"endemailmode\";s:3:\"cum\";s:4:\"nick\";s:7:\"eugenio\";s:15:\"payment_details\";N;s:4:\"name\";s:15:\"Eugenio Leijten\";s:6:\"groups\";s:3:\"1,2\";}', 'a:7:{s:2:\"id\";s:1:\"4\";s:5:\"email\";s:20:\"eugenio@fastmail.com\";s:12:\"endemailmode\";s:3:\"cum\";s:4:\"nick\";s:7:\"eugenio\";s:15:\"payment_details\";N;s:4:\"name\";s:15:\"Eugenio Leijten\";s:6:\"groups\";s:3:\"1,2\";}', '2024-03-31 09:31:09'),
(3, 1, 1, '', 'a:47:{s:2:\"id\";s:1:\"1\";s:4:\"user\";s:1:\"4\";s:5:\"title\";s:12:\"Thanes TM5.8\";s:8:\"subtitle\";s:0:\"\";s:6:\"starts\";s:19:\"2024-03-31 09:31:43\";s:4:\"ends\";s:19:\"2024-03-31 09:31:43\";s:11:\"description\";s:1014:\"We are offering a new and un-used TM 5.80 metre RIB, ready for the owner to fit out and install their choice of outboard.The boat is offered with:White GRP Deep Vee Hull suitable for an extra-long shaft outboardBlue Hypalon Tubes with a GRP Bow Roller, Lifelines and CleatsBow Locker with CushionSteering Console with Windscreen and RailHelm Seat with Cushon and Rail.Rear Seat with a Large locker below and seat Cushion.Stainless Steel A-FrameStainless Steel Fuel tank with Console GaugeStainless Steel Boarding LadderNavigation Lights and Switch PanelThere is also a Stainless-Steel Back rail with integral Ski Eye and Cushion.The RIB shall require a Steering System to be fitted, as this is not included.In addition, we can offer a range of suitable outboards from Tohatsu and a trailer from Extreme Trailers to complete a package if required.We have two boats available at this special price, which are being sold to make way for new 2024 stock arriving soon.Delivery is available at an extra cost if required.\";s:8:\"pict_url\";s:0:\"\";s:8:\"category\";s:3:\"199\";s:9:\"secondcat\";s:1:\"0\";s:11:\"minimum_bid\";s:7:\"5000.00\";s:13:\"shipping_cost\";s:6:\"200.00\";s:24:\"additional_shipping_cost\";s:4:\"0.00\";s:13:\"reserve_price\";s:4:\"0.00\";s:7:\"buy_now\";s:4:\"0.00\";s:12:\"auction_type\";s:1:\"1\";s:8:\"duration\";s:4:\"0.00\";s:9:\"increment\";s:4:\"0.00\";s:8:\"shipping\";s:1:\"1\";s:7:\"payment\";s:12:\"banktransfer\";s:13:\"international\";s:1:\"0\";s:11:\"current_bid\";s:4:\"0.00\";s:14:\"current_bid_id\";s:1:\"0\";s:6:\"closed\";s:1:\"0\";s:14:\"photo_uploaded\";s:1:\"0\";s:16:\"initial_quantity\";s:1:\"1\";s:8:\"quantity\";s:1:\"1\";s:9:\"suspended\";s:1:\"0\";s:6:\"relist\";s:1:\"5\";s:8:\"relisted\";s:2:\"10\";s:8:\"num_bids\";s:1:\"0\";s:4:\"sold\";s:1:\"n\";s:14:\"shipping_terms\";s:0:\"\";s:7:\"bn_only\";s:1:\"0\";s:4:\"bold\";s:1:\"0\";s:11:\"highlighted\";s:1:\"0\";s:8:\"featured\";s:1:\"0\";s:11:\"current_fee\";s:4:\"0.00\";s:3:\"tax\";s:1:\"0\";s:6:\"taxinc\";s:1:\"0\";s:7:\"bn_sale\";s:1:\"0\";s:5:\"email\";s:20:\"eugenio@fastmail.com\";s:12:\"endemailmode\";s:3:\"cum\";s:4:\"nick\";s:7:\"eugenio\";s:15:\"payment_details\";N;s:4:\"name\";s:15:\"Eugenio Leijten\";s:6:\"groups\";s:3:\"1,2\";}', 'a:7:{s:2:\"id\";s:1:\"4\";s:5:\"email\";s:20:\"eugenio@fastmail.com\";s:12:\"endemailmode\";s:3:\"cum\";s:4:\"nick\";s:7:\"eugenio\";s:15:\"payment_details\";N;s:4:\"name\";s:15:\"Eugenio Leijten\";s:6:\"groups\";s:3:\"1,2\";}', '2024-03-31 09:34:11'),
(4, 1, 1, '', 'a:47:{s:2:\"id\";s:1:\"1\";s:4:\"user\";s:1:\"4\";s:5:\"title\";s:12:\"Thanes TM5.8\";s:8:\"subtitle\";s:0:\"\";s:6:\"starts\";s:19:\"2024-03-31 09:35:06\";s:4:\"ends\";s:19:\"2024-03-31 09:35:06\";s:11:\"description\";s:1014:\"We are offering a new and un-used TM 5.80 metre RIB, ready for the owner to fit out and install their choice of outboard.The boat is offered with:White GRP Deep Vee Hull suitable for an extra-long shaft outboardBlue Hypalon Tubes with a GRP Bow Roller, Lifelines and CleatsBow Locker with CushionSteering Console with Windscreen and RailHelm Seat with Cushon and Rail.Rear Seat with a Large locker below and seat Cushion.Stainless Steel A-FrameStainless Steel Fuel tank with Console GaugeStainless Steel Boarding LadderNavigation Lights and Switch PanelThere is also a Stainless-Steel Back rail with integral Ski Eye and Cushion.The RIB shall require a Steering System to be fitted, as this is not included.In addition, we can offer a range of suitable outboards from Tohatsu and a trailer from Extreme Trailers to complete a package if required.We have two boats available at this special price, which are being sold to make way for new 2024 stock arriving soon.Delivery is available at an extra cost if required.\";s:8:\"pict_url\";s:0:\"\";s:8:\"category\";s:3:\"199\";s:9:\"secondcat\";s:1:\"0\";s:11:\"minimum_bid\";s:7:\"5000.00\";s:13:\"shipping_cost\";s:6:\"200.00\";s:24:\"additional_shipping_cost\";s:4:\"0.00\";s:13:\"reserve_price\";s:4:\"0.00\";s:7:\"buy_now\";s:4:\"0.00\";s:12:\"auction_type\";s:1:\"1\";s:8:\"duration\";s:4:\"0.00\";s:9:\"increment\";s:4:\"0.00\";s:8:\"shipping\";s:1:\"1\";s:7:\"payment\";s:12:\"banktransfer\";s:13:\"international\";s:1:\"0\";s:11:\"current_bid\";s:4:\"0.00\";s:14:\"current_bid_id\";s:1:\"0\";s:6:\"closed\";s:1:\"0\";s:14:\"photo_uploaded\";s:1:\"0\";s:16:\"initial_quantity\";s:1:\"1\";s:8:\"quantity\";s:1:\"1\";s:9:\"suspended\";s:1:\"0\";s:6:\"relist\";s:1:\"5\";s:8:\"relisted\";s:2:\"11\";s:8:\"num_bids\";s:1:\"0\";s:4:\"sold\";s:1:\"n\";s:14:\"shipping_terms\";s:0:\"\";s:7:\"bn_only\";s:1:\"0\";s:4:\"bold\";s:1:\"0\";s:11:\"highlighted\";s:1:\"0\";s:8:\"featured\";s:1:\"0\";s:11:\"current_fee\";s:4:\"0.00\";s:3:\"tax\";s:1:\"0\";s:6:\"taxinc\";s:1:\"0\";s:7:\"bn_sale\";s:1:\"0\";s:5:\"email\";s:20:\"eugenio@fastmail.com\";s:12:\"endemailmode\";s:3:\"cum\";s:4:\"nick\";s:7:\"eugenio\";s:15:\"payment_details\";N;s:4:\"name\";s:15:\"Eugenio Leijten\";s:6:\"groups\";s:3:\"1,2\";}', 'a:7:{s:2:\"id\";s:1:\"4\";s:5:\"email\";s:20:\"eugenio@fastmail.com\";s:12:\"endemailmode\";s:3:\"cum\";s:4:\"nick\";s:7:\"eugenio\";s:15:\"payment_details\";N;s:4:\"name\";s:15:\"Eugenio Leijten\";s:6:\"groups\";s:3:\"1,2\";}', '2024-03-31 09:35:11'),
(5, 1, 1, '', 'a:47:{s:2:\"id\";s:1:\"1\";s:4:\"user\";s:1:\"4\";s:5:\"title\";s:12:\"Thanes TM5.8\";s:8:\"subtitle\";s:0:\"\";s:6:\"starts\";s:19:\"2024-03-31 09:35:22\";s:4:\"ends\";s:19:\"2024-03-31 09:35:22\";s:11:\"description\";s:1014:\"We are offering a new and un-used TM 5.80 metre RIB, ready for the owner to fit out and install their choice of outboard.The boat is offered with:White GRP Deep Vee Hull suitable for an extra-long shaft outboardBlue Hypalon Tubes with a GRP Bow Roller, Lifelines and CleatsBow Locker with CushionSteering Console with Windscreen and RailHelm Seat with Cushon and Rail.Rear Seat with a Large locker below and seat Cushion.Stainless Steel A-FrameStainless Steel Fuel tank with Console GaugeStainless Steel Boarding LadderNavigation Lights and Switch PanelThere is also a Stainless-Steel Back rail with integral Ski Eye and Cushion.The RIB shall require a Steering System to be fitted, as this is not included.In addition, we can offer a range of suitable outboards from Tohatsu and a trailer from Extreme Trailers to complete a package if required.We have two boats available at this special price, which are being sold to make way for new 2024 stock arriving soon.Delivery is available at an extra cost if required.\";s:8:\"pict_url\";s:0:\"\";s:8:\"category\";s:3:\"199\";s:9:\"secondcat\";s:1:\"0\";s:11:\"minimum_bid\";s:7:\"5000.00\";s:13:\"shipping_cost\";s:6:\"200.00\";s:24:\"additional_shipping_cost\";s:4:\"0.00\";s:13:\"reserve_price\";s:4:\"0.00\";s:7:\"buy_now\";s:4:\"0.00\";s:12:\"auction_type\";s:1:\"1\";s:8:\"duration\";s:4:\"0.00\";s:9:\"increment\";s:4:\"0.00\";s:8:\"shipping\";s:1:\"1\";s:7:\"payment\";s:12:\"banktransfer\";s:13:\"international\";s:1:\"0\";s:11:\"current_bid\";s:4:\"0.00\";s:14:\"current_bid_id\";s:1:\"0\";s:6:\"closed\";s:1:\"0\";s:14:\"photo_uploaded\";s:1:\"0\";s:16:\"initial_quantity\";s:1:\"1\";s:8:\"quantity\";s:1:\"1\";s:9:\"suspended\";s:1:\"0\";s:6:\"relist\";s:1:\"5\";s:8:\"relisted\";s:2:\"12\";s:8:\"num_bids\";s:1:\"0\";s:4:\"sold\";s:1:\"n\";s:14:\"shipping_terms\";s:0:\"\";s:7:\"bn_only\";s:1:\"0\";s:4:\"bold\";s:1:\"0\";s:11:\"highlighted\";s:1:\"0\";s:8:\"featured\";s:1:\"0\";s:11:\"current_fee\";s:4:\"0.00\";s:3:\"tax\";s:1:\"0\";s:6:\"taxinc\";s:1:\"0\";s:7:\"bn_sale\";s:1:\"0\";s:5:\"email\";s:20:\"eugenio@fastmail.com\";s:12:\"endemailmode\";s:3:\"cum\";s:4:\"nick\";s:7:\"eugenio\";s:15:\"payment_details\";N;s:4:\"name\";s:15:\"Eugenio Leijten\";s:6:\"groups\";s:3:\"1,2\";}', 'a:7:{s:2:\"id\";s:1:\"4\";s:5:\"email\";s:20:\"eugenio@fastmail.com\";s:12:\"endemailmode\";s:3:\"cum\";s:4:\"nick\";s:7:\"eugenio\";s:15:\"payment_details\";N;s:4:\"name\";s:15:\"Eugenio Leijten\";s:6:\"groups\";s:3:\"1,2\";}', '2024-03-31 09:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `webid_proxybid`
--

CREATE TABLE `webid_proxybid` (
  `itemid` int DEFAULT NULL,
  `userid` int DEFAULT NULL,
  `bid` double(16,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webid_rates`
--

CREATE TABLE `webid_rates` (
  `id` int NOT NULL,
  `ime` tinytext NOT NULL,
  `valuta` tinytext NOT NULL,
  `symbol` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_rates`
--

INSERT INTO `webid_rates` (`id`, `ime`, `valuta`, `symbol`) VALUES
(1, 'Great Britain', 'Pound Sterling ', 'GBP'),
(2, 'Argentina', 'Argentinian Peso', 'ARS'),
(3, 'Australia', 'Australian Dollar ', 'AUD'),
(4, 'Burma', 'Myanmar (Burma) Kyat', 'MMK'),
(5, 'Brazil', 'Brazilian Real ', 'BRL'),
(6, 'Chile', 'Chilean Peso ', 'CLP'),
(7, 'China', 'Chinese Renminbi ', 'CNY'),
(8, 'Colombia', 'Colombian Peso ', 'COP'),
(9, 'Neth. Antilles', 'Neth. Antilles Guilder', 'ANG'),
(10, 'Czech. Republic', 'Czech. Republic Koruna ', 'CZK'),
(11, 'Denmark', 'Danish Krone ', 'DKK'),
(12, 'European Union', 'EURO', 'EUR'),
(13, 'Fiji', 'Fiji Dollar ', 'FJD'),
(14, 'Jamaica', 'Jamaican Dollar', 'JMD'),
(15, 'Trinidad & Tobago', 'Trinidad & Tobago Dollar', 'TTD'),
(16, 'Hong Kong', 'Hong Kong Dollar', 'HKD'),
(17, 'Ghana', 'Ghanaian Cedi', 'GHC'),
(18, 'Iceland', 'Icelandic Krona ', 'INR'),
(19, 'India', 'Indian Rupee', 'INR'),
(20, 'Indonesia', 'Indonesian Rupiah ', 'IDR'),
(21, 'Israel', 'Israeli New Shekel ', 'ILS'),
(22, 'Japan', 'Japanese Yen', 'JPY'),
(23, 'Malaysia', 'Malaysian Ringgit', 'MYR'),
(24, 'Mexico', 'New Peso', 'MXN'),
(25, 'Morocco', 'Moroccan Dirham ', 'MAD'),
(26, 'Honduras', 'Honduras Lempira', 'HNL'),
(27, 'Hungaria', 'Hungarian Forint', 'HUF'),
(28, 'New Zealand', 'New Zealand Dollar', 'NZD'),
(29, 'Norway', 'Norwege Krone', 'NOK'),
(30, 'Pakistan', 'Pakistan Rupee ', 'PKR'),
(31, 'Panama', 'Panamanian Balboa ', 'PAB'),
(32, 'Peru', 'Peruvian New Sol', 'PEN'),
(33, 'Philippine', 'Philippine Peso ', 'PHP'),
(34, 'Poland', 'Polish Zloty', 'PLN'),
(35, 'Russian', 'Russian Rouble', 'RUR'),
(36, 'Singapore', 'Singapore Dollar ', 'SGD'),
(37, 'Slovakia', 'Koruna', 'SKK'),
(38, 'Slovenia', 'Slovenian Tolar', 'SIT'),
(39, 'South Africa', 'South African Rand', 'ZAR'),
(40, 'South Korea', 'South Korean Won', 'KRW'),
(41, 'Sri Lanka', 'Sri Lanka Rupee ', 'LKR'),
(42, 'Sweden', 'Swedish Krona', 'SEK'),
(43, 'Switzerland', 'Swiss Franc', 'CHF'),
(44, 'Taiwan', 'Taiwanese New Dollar ', 'TWD'),
(45, 'Thailand', 'Thailand Thai Baht ', 'THB'),
(46, 'Pacific Financial Community', 'Pacific Financial Community Franc', 'CFP'),
(47, 'Tunisia', 'Tunisisan Dinar', 'TND'),
(48, 'Turkey', 'Turkish Lira', 'TRL'),
(49, 'United States', 'U.S. Dollar', 'USD'),
(50, 'Venezuela', 'Bolivar ', 'VEB'),
(51, 'Bahamas', 'Bahamian Dollar', 'BSD'),
(52, 'Croatia', 'Croatian Kuna', 'HRK'),
(53, 'East Caribe', 'East Caribbean Dollar', 'XCD'),
(54, 'CFA Franc (African Financial Community)', 'African Financial Community Franc', 'CFA'),
(55, 'Canadian', 'Canadian Dollar', 'CAD'),
(56, 'Romanian', 'Romanian Leu', 'RON'),
(57, 'Serbia', 'Serbia Dinars', 'RSD'),
(64, 'EU', 'Euro', '€');

-- --------------------------------------------------------

--
-- Table structure for table `webid_rememberme`
--

CREATE TABLE `webid_rememberme` (
  `userid` int NOT NULL DEFAULT '0',
  `hashkey` char(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webid_reportedauctions`
--

CREATE TABLE `webid_reportedauctions` (
  `id` int NOT NULL,
  `auction_id` int NOT NULL DEFAULT '0',
  `reason` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webid_settings`
--

CREATE TABLE `webid_settings` (
  `fieldname` varchar(30) NOT NULL,
  `fieldtype` varchar(10) NOT NULL,
  `value` text NOT NULL,
  `modifieddate` int NOT NULL,
  `modifiedby` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_settings`
--

INSERT INTO `webid_settings` (`fieldname`, `fieldtype`, `value`, `modifieddate`, `modifiedby`) VALUES
('aboutus', 'bool', 'y', 1710762500, 1),
('aboutustext', 'str', '', 1710762500, 1),
('activationtype', 'int', '1', 1715238034, 2),
('admin_theme', 'str', 'adminModern', 1711353700, 2),
('adminmail', 'str', 'eugenio@fastmail.com', 1715238788, 2),
('ae_extend', 'int', '300', 1715063919, 2),
('ae_status', 'bool', 'n', 1715063919, 2),
('ae_timebefore', 'int', '120', 1715063919, 2),
('alert_emails', 'str', '', 1710938061, 1),
('ao_bi_enabled', 'bool', 'n', 1715063919, 2),
('ao_hi_enabled', 'bool', 'n', 1715063919, 2),
('ao_hpf_enabled', 'bool', 'n', 1715063919, 2),
('archiveafter', 'int', '30', 1715238788, 2),
('auction_moderation', 'int', '0', 1710938138, 1),
('autorelist', 'bool', 'y', 1715063919, 2),
('autorelist_max', 'int', '10', 1715063919, 2),
('banemail', 'str', '', 1710762500, 1),
('banner_height', 'int', '60', 1710762500, 1),
('banner_width', 'int', '468', 1710762500, 1),
('banners', 'int', '1', 1710762500, 1),
('bidding_visable_to_guest', 'bool', '1', 1715238034, 2),
('bn_only', 'bool', 'n', 1710938681, 1),
('bn_only_disable', 'bool', 'n', 1710938681, 1),
('bn_only_percent', 'str', '50', 1710938681, 1),
('boards', 'str', 'y', 1710939299, 1),
('boardsmsgs', 'int', '0', 1710762500, 1),
('buy_now', 'int', '1', 1710938681, 1),
('buyerprivacy', 'bool', 'y', 1711360396, 2),
('cache_theme', 'bool', 'y', 1715238788, 2),
('catsorting', 'str', 'counter', 1715239134, 2),
('catstoshow', 'int', '25', 1715239134, 2),
('contactseller', 'str', 'logged', 1713787438, 2),
('cookiespolicy', 'bool', 'y', 1710762500, 1),
('cookiespolicytext', 'str', '', 1710762500, 1),
('copyright', 'str', '© all rights reserved blackdownit.co.uk', 1715238788, 2),
('counter_auctions', 'bool', 'y', 1710938717, 1),
('counter_online', 'bool', 'y', 1710938717, 1),
('counter_users', 'bool', 'y', 1710938717, 1),
('cron', 'int', '2', 1715238788, 2),
('currency', 'str', 'GBP', 1711374531, 2),
('cust_increment', 'int', '2', 1715063919, 2),
('datesformat', 'str', 'EUR', 1711616377, 2),
('defaultcountry', 'str', 'United Kingdom', 1710938705, 1),
('defaultlanguage', 'str', 'EN', 1710762500, 1),
('descriptiontag', 'str', '', 1710762500, 1),
('displayed_feilds', 'str', 'a:7:{s:17:\"birthdate_regshow\";s:1:\"n\";s:15:\"address_regshow\";s:1:\"n\";s:12:\"city_regshow\";s:1:\"n\";s:12:\"prov_regshow\";s:1:\"n\";s:15:\"country_regshow\";s:1:\"n\";s:11:\"zip_regshow\";s:1:\"n\";s:11:\"tel_regshow\";s:1:\"n\";}', 1715251365, 2),
('edit_endtime', 'int', '1', 1715063919, 2),
('edit_starttime', 'int', '1', 1715063919, 2),
('email_admin_on_signup', 'bool', '1', 1715238034, 2),
('endingsoonnumber', 'int', '0', 1715238857, 2),
('errortext', 'str', '<p>An unexpected error occurred. The error has been forwarded to our technical team and will be fixed shortly</p>', 1710938129, 1),
('extra_cat', 'bool', 'n', 1715063919, 2),
('featuredperpage', 'int', '5', 1715238857, 2),
('fee_disable_acc', 'bool', 'n', 1715239221, 2),
('fee_max_debt', 'str', '25', 1715239221, 2),
('fee_signup_bonus', 'str', '0', 1715239221, 2),
('fee_type', 'int', '2', 1715239221, 2),
('fees', 'bool', 'y', 1715239221, 2),
('gallery_max_width_height', 'int', '1500', 1715063919, 2),
('googleanalytics', 'str', '', 1710762500, 1),
('helpbox', 'int', '1', 1710762500, 1),
('homefeaturednumber', 'int', '12', 1715238857, 2),
('hotitemsnumber', 'int', '3', 1715238857, 2),
('hours_countdown', 'int', '24', 1715063919, 2),
('https', 'bool', 'n', 1715238788, 2),
('https_url', 'str', '', 1715238788, 2),
('invoice_thankyou', 'str', 'Thank you for shopping with us and we hope to see you return soon!', 1710762500, 1),
('invoice_yellow_line', 'str', '', 1710762500, 1),
('keywordstag', 'str', '', 1710762500, 1),
('lastitemsnumber', 'int', '8', 1715238857, 2),
('loginbox', 'int', '2', 1715238857, 2),
('logo', 'str', 'RIBS.AUCTION LOGO.jpg', 1714492793, 2),
('mail_parameter', 'str', '', 1710938061, 1),
('mail_protocol', 'int', '1', 1710938061, 1),
('maintenance_mode_active', 'bool', '0', 1714491941, 2),
('maintenance_text', 'string', '<p><strong>Under maintenance!!!!!!!</strong></p>', 1714491941, 2),
('mandatory_fields', 'str', 'a:7:{s:9:\"birthdate\";s:1:\"n\";s:7:\"address\";s:1:\"n\";s:4:\"city\";s:1:\"n\";s:4:\"prov\";s:1:\"n\";s:7:\"country\";s:1:\"n\";s:3:\"zip\";s:1:\"n\";s:3:\"tel\";s:1:\"n\";}', 1715251365, 2),
('maxpictures', 'int', '20', 1715063919, 2),
('maxuploadsize', 'int', '1024000', 1715063919, 2),
('moneydecimals', 'int', '2', 1711374531, 2),
('moneyformat', 'int', '1', 1711374531, 2),
('moneysymbol', 'int', '1', 1711374531, 2),
('new_auction_moderation', 'int', '0', 1710938138, 1),
('newsbox', 'int', '2', 1715238857, 2),
('newsletter', 'int', '1', 1710762500, 1),
('newstoshow', 'int', '5', 1715238857, 2),
('payment_gateway_sandbox', 'bool', '0', 1715239221, 2),
('perpage', 'int', '30', 1715238857, 2),
('picturesgallery', 'int', '1', 1715063919, 2),
('privacypolicy', 'bool', 'y', 1710762500, 1),
('privacypolicytext', 'str', '', 1710762500, 1),
('proxy_bidding', 'bool', 'n', 1715063919, 2),
('prune_unactivated_users', 'bool', '0', 1715238034, 2),
('prune_unactivated_users_days', 'int', '30', 1715238034, 2),
('recaptcha_private', 'str', '', 1710762500, 1),
('recaptcha_public', 'str', '', 1710762500, 1),
('shipping', 'bool', 'y', 1710762500, 1),
('sitename', 'str', 'Blackdown IT', 1715238788, 2),
('siteurl', 'str', 'https://blackdownit.co.uk/webid/', 1715238788, 2),
('smtp_authentication', 'bool', 'n', 1710762500, 1),
('smtp_host', 'str', '', 1710762500, 1),
('smtp_password', 'str', '', 1710762500, 1),
('smtp_port', 'int', '25', 1710762501, 1),
('smtp_security', 'str', 'none', 1710762501, 1),
('smtp_username', 'str', '', 1710762501, 1),
('spam_blocked_email_domains', 'str', '0-mail.com\n027168.com\n0815.ru\n0815.ry\n0815.su\n0845.ru\n0clickemail.com\n0wnd.net\n0wnd.org\n0x207.info\n1-8.biz\n100likers.com\n10mail.com\n10mail.org\n10minut.com.pl\n10minutemail.cf\n10minutemail.co.uk\n10minutemail.co.za\n10minutemail.com\n10minutemail.de\n10minutemail.ga\n10minutemail.gq\n10minutemail.ml\n10minutemail.net\n10minutesmail.com\n10x9.com\n123-m.com\n12houremail.com\n12minutemail.com\n12minutemail.net\n140unichars.com\n147.cl\n14n.co.uk\n1ce.us\n1chuan.com\n1fsdfdsfsdf.tk\n1mail.ml\n1pad.de\n1st-forms.com\n1to1mail.org\n1zhuan.com\n20email.eu\n20email.it\n20mail.in\n20mail.it\n20minutemail.com\n2120001.net\n21cn.com\n24hourmail.com\n24hourmail.net\n2fdgdfgdfgdf.tk\n2prong.com\n30minutemail.com\n33mail.com\n36ru.com\n3d-painting.com\n3l6.com\n3mail.ga\n3trtretgfrfe.tk\n4-n.us\n418.dk\n4gfdsgfdgfd.tk\n4mail.cf\n4mail.ga\n4warding.com\n4warding.net\n4warding.org\n5ghgfhfghfgh.tk\n5gramos.com\n5mail.cf\n5mail.ga\n5oz.ru\n5x25.com\n60minutemail.com\n672643.net\n675hosting.com\n675hosting.net\n675hosting.org\n6hjgjhgkilkj.tk\n6ip.us\n6mail.cf\n6mail.ga\n6mail.ml\n6paq.com\n6url.com\n75hosting.com\n75hosting.net\n75hosting.org\n7days-printing.com\n7mail.ga\n7mail.ml\n7tags.com\n80665.com\n8127ep.com\n8mail.cf\n8mail.ga\n8mail.ml\n99experts.com\n9mail.cf\n9ox.net\na-bc.net\na.asu.mx\na.betr.co\na.mailcker.com\na.vztc.com\na45.in\nabakiss.com\nabcmail.email\nabusemail.de\nabyssmail.com\nac20mail.in\nacademiccommunity.com\nacentri.com\nadd3000.pp.ua\nadobeccepdm.com\nadpugh.org\nadsd.org\nadvantimo.com\nadwaterandstir.com\naegia.net\naegiscorp.net\naeonpsi.com\nafrobacon.com\nag.us.to\nagedmail.com\nagtx.net\nahk.jp\najaxapp.net\nakapost.com\nakerd.com\nal-qaeda.us\naligamel.com\nalisongamel.com\nalivance.com\nalldirectbuy.com\nallen.nom.za\nallthegoodnamesaretaken.org\nalph.wtf\nama-trade.de\nama-trans.de\namail.com\namail4.me\namazon-aws.org\namelabs.com\namilegit.com\namiri.net\namiriindustries.com\nampsylike.com\nan.id.au\nanappfor.com\nanappthat.com\nandthen.us\nanimesos.com\nano-mail.net\nanon-mail.de\nanonbox.net\nanonmails.de\nanonymail.dk\nanonymbox.com\nanonymized.org\nanonymousness.com\nansibleemail.com\nanthony-junkmail.com\nantireg.com\nantireg.ru\nantispam.de\nantispam24.de\nantispammail.de\napfelkorps.de\naphlog.com\nappc.se\nappinventor.nl\nappixie.com\narmyspy.com\naron.us\narroisijewellery.com\nartman-conception.com\narvato-community.de\naschenbrandt.net\nasdasd.nl\nasdasd.ru\nashleyandrew.com\nass.pp.ua\nastroempires.info\nat0mik.org\natvclub.msk.ru\naugmentationtechnology.com\nauti.st\nautorobotica.com\nautotwollow.com\naver.com\naxiz.org\nazcomputerworks.com\nazmeil.tk\nb.kyal.pl\nb1of96u.com\nb2cmail.de\nbadgerland.eu\nbadoop.com\nbarryogorman.com\nbasscode.org\nbauwerke-online.com\nbaxomale.ht.cx\nbazaaboom.com\nbcast.ws\nbccto.me\nbearsarefuzzy.com\nbeddly.com\nbeefmilk.com\nbelljonestax.com\nbenipaula.org\nbestchoiceusedcar.com\nbidourlnks.com\nbig1.us\nbigprofessor.so\nbigstring.com\nbigwhoop.co.za\nbinkmail.com\nbio-muesli.info\nbio-muesli.net\nblackmarket.to\nbladesmail.net\nblip.ch\nblogmyway.org\nbluedumpling.info\nbluewerks.com\nbobmail.info\nbobmurchison.com\nbodhi.lawlita.com\nbofthew.com\nbonobo.email\nbookthemmore.com\nbootybay.de\nborged.com\nborged.net\nborged.org\nboun.cr\nbouncr.com\nboxformail.in\nboximail.com\nboxtemp.com.br\nbr.mintemail.com\nbrandallday.net\nbreakthru.com\nbrefmail.com\nbrennendesreich.de\nbriggsmarcus.com\nbroadbandninja.com\nbsnow.net\nbspamfree.org\nbspooky.com\nbst-72.com\nbtb-notes.com\nbtc.email\nbu.mintemail.com\nbuffemail.com\nbugmenever.com\nbugmenot.com\nbulrushpress.com\nbum.net\nbumpymail.com\nbunchofidiots.com\nbund.us\nbundes-li.ga\nbunsenhoneydew.com\nburnthespam.info\nburstmail.info\nbusinessbackend.com\nbusinesssuccessislifesuccess.com\nbuspad.org\nbuymoreplays.com\nbuyordie.info\nbuyusedlibrarybooks.org\nbyebyemail.com\nbyespm.com\nbyom.de\nc.lain.ch\nc2.hu\nc51vsgq.com\ncachedot.net\ncaliforniafitnessdeals.com\ncam4you.cc\ncard.zp.ua\ncasualdx.com\ncbair.com\ncc.liamria\nce.mintemail.com\ncek.pm\ncellurl.com\ncentermail.com\ncentermail.net\nchacuo.net\nchammy.info\ncheatmail.de\nchielo.com\nchildsavetrust.org\nchilkat.com\nchithinh.com\nchogmail.com\nchoicemail1.com\nchong-mail.com\nchong-mail.net\nchong-mail.org\nchumpstakingdumps.com\ncigar-auctions.com\nckiso.com\ncl-cl.org\ncl0ne.net\nclandest.in\nclipmail.eu\nclixser.com\nclrmail.com\ncmail.com\ncmail.net\ncmail.org\ncnamed.com\ncnmsg.net\ncnsds.de\ncodeandscotch.com\ncodivide.com\ncoieo.com\ncoldemail.info\ncompareshippingrates.org\ncompletegolfswing.com\ncomwest.de\nconsumerriot.com\ncool.fr.nf\ncoolandwacky.us\ncoolimpool.org\ncorreo.blogos.net\ncosmorph.com\ncourriel.fr.nf\ncourrieltemporaire.com\ncrankhole.com\ncrapmail.org\ncrastination.de\ncrazespaces.pw\ncrazymailing.com\ncrossroadsmail.com\ncszbl.com\ncubiclink.com\ncurryworld.de\ncust.in\ncuvox.de\ncx.de-a.org\nd.cane.pw\nd.dialogus.com\nd3p.dk\ndacoolest.com\ndaemsteam.com\ndaintly.com\ndammexe.net\ndandikmail.com\ndarkharvestfilms.com\ndaryxfox.net\ndash-pads.com\ndataarca.com\ndatafilehost\ndatarca.com\ndatazo.ca\ndavidkoh.net\ndavidlcreative.com\ndayrep.com\ndbunker.com\ndcemail.com\ndeadaddress.com\ndeadchildren.org\ndeadfake.cf\ndeadfake.ga\ndeadfake.ml\ndeadfake.tk\ndeadspam.com\ndeagot.com\ndealja.com\ndealrek.com\ndeekayen.us\ndefomail.com\ndegradedfun.net\ndelayload.com\ndelayload.net\ndelikkt.de\nder-kombi.de\nderkombi.de\nderluxuswagen.de\ndespam.it\ndespammed.com\ndevnullmail.com\ndharmatel.net\ndiapaulpainting.com\ndigitalmariachis.com\ndigitalsanctuary.com\ndildosfromspace.com\ndingbone.com\ndiscard.cf\ndiscard.email\ndiscard.ga\ndiscard.gq\ndiscard.ml\ndiscard.tk\ndiscardmail.com\ndiscardmail.de\ndispo.in\ndispomail.eu\ndisposable-email.ml\ndisposable.cf\ndisposable.ga\ndisposable.ml\ndisposableaddress.com\ndisposableemailaddresses.com\ndisposableemailaddresses.emailmiser.com\ndisposableinbox.com\ndispose.it\ndisposeamail.com\ndisposemail.com\ndispostable.com\ndivermail.com\ndivismail.ru\ndlemail.ru\ndm.w3internet.co.uk\ndm.w3internet.co.ukexample.com\ndodgeit.com\ndodgemail.de\ndodgit.com\ndodgit.org\ndodsi.com\ndoiea.com\ndolphinnet.net\ndomforfb1.tk\ndomforfb18.tk\ndomforfb19.tk\ndomforfb2.tk\ndomforfb23.tk\ndomforfb27.tk\ndomforfb29.tk\ndomforfb3.tk\ndomforfb4.tk\ndomforfb5.tk\ndomforfb6.tk\ndomforfb7.tk\ndomforfb8.tk\ndomforfb9.tk\ndomozmail.com\ndonemail.ru\ndontreg.com\ndontsendmespam.de\ndoquier.tk\ndotman.de\ndotmsg.com\ndotslashrage.com\ndouchelounge.com\ndozvon-spb.ru\ndr.vankin.de\ndrdrb.com\ndrdrb.net\ndrivetagdev.com\ndroolingfanboy.de\ndropcake.de\ndroplar.com\ndropmail.me\ndspwebservices.com\nduam.net\ndudmail.com\ndukedish.com\ndump-email.info\ndumpandjunk.com\ndumpmail.de\ndumpyemail.com\ndurandinterstellar.com\nduskmail.com\ndw.now.im\ndx.abuser.eu\ndx.allowed.org\ndx.awiki.org\ndx.ez.lv\ndx.sly.io\ndx.soon.it\ndx.z86.ru\ndyceroprojects.com\ndz17.net\ne-mail.com\ne-mail.org\ne.brasx.org\ne.coza.ro\ne.ezfill.com\ne.hecat.es\ne.hpc.tw\ne.incq.com\ne.lee.mx\ne.ohi.tw\ne.runi.ca\ne.sino.tw\ne.spr.io\ne.ubm.md\ne3z.de\ne4ward.com\neasy-trash-mail.com\neasytrashmail.com\nebeschlussbuch.de\nebs.com.ar\necallheandi.com\nedinburgh-airporthotels.com\nedv.to\nee1.pl\nee2.pl\neelmail.com\neinmalmail.de\neinrot.com\neinrot.de\neintagsmail.de\nelearningjournal.org\nelectro.mn\nelitevipatlantamodels.com\nemail-fake.cf\nemail-fake.ga\nemail-fake.gq\nemail-fake.ml\nemail-fake.tk\nemail-jetable.fr\nemail.cbes.net\nemail.net\nemail60.com\nemailage.cf\nemailage.ga\nemailage.gq\nemailage.ml\nemailage.tk\nemaildienst.de\nemailgo.de\nemailias.com\nemailigo.de\nemailinfive.com\nemailisvalid.com\nemaillime.com\nemailmiser.com\nemailproxsy.com\nemailresort.com\nemails.ga\nemailsensei.com\nemailsingularity.net\nemailspam.cf\nemailspam.ga\nemailspam.gq\nemailspam.ml\nemailspam.tk\nemailtemporanea.com\nemailtemporanea.net\nemailtemporar.ro\nemailtemporario.com.br\nemailthe.net\nemailtmp.com\nemailto.de\nemailwarden.com\nemailx.at.hm\nemailxfer.com\nemailz.cf\nemailz.ga\nemailz.gq\nemailz.ml\nemeil.in\nemeil.ir\nemil.com\nemkei.cf\nemkei.ga\nemkei.gq\nemkei.ml\nemkei.tk\neml.pp.ua\nemz.net\nenterto.com\nephemail.net\nephemeral.email\ner.fir.hk\ner.moot.es\nericjohnson.ml\nero-tube.org\nesc.la\nescapehatchapp.com\nesemay.com\nesgeneri.com\nesprity.com\nest.une.victime.ninja\netranquil.com\netranquil.net\netranquil.org\nevanfox.info\nevopo.com\nexample.com\nexitstageleft.net\nexplodemail.com\nexpress.net.ua\nextremail.ru\neyepaste.com\nezstest.com\nf.fuirio.com\nf.fxnxs.com\nf.hmh.ro\nf4k.es\nfacebook-email.cf\nfacebook-email.ga\nfacebook-email.ml\nfacebookmail.gq\nfacebookmail.ml\nfadingemail.com\nfag.wf\nfailbone.com\nfaithkills.com\nfake-email.pp.ua\nfake-mail.cf\nfake-mail.ga\nfake-mail.ml\nfakedemail.com\nfakeinbox.cf\nfakeinbox.com\nfakeinbox.ga\nfakeinbox.ml\nfakeinbox.tk\nfakeinformation.com\nfakemail.fr\nfakemailgenerator.com\nfakemailz.com\nfammix.com\nfangoh.com\nfansworldwide.de\nfantasymail.de\nfarrse.co.uk\nfastacura.com\nfastchevy.com\nfastchrysler.com\nfasternet.biz\nfastkawasaki.com\nfastmazda.com\nfastmitsubishi.com\nfastnissan.com\nfastsubaru.com\nfastsuzuki.com\nfasttoyota.com\nfastyamaha.com\nfatflap.com\nfdfdsfds.com\nfer-gabon.org\nfettometern.com\nfictionsite.com\nfightallspam.com\nfigjs.com\nfigshot.com\nfiifke.de\nfilbert4u.com\nfilberts4u.com\nfilm-blog.biz\nfilzmail.com\nfivemail.de\nfixmail.tk\nfizmail.com\nfleckens.hu\nflemail.ru\nflowu.com\nflurred.com\nfly-ts.de\nflyinggeek.net\nflyspam.com\nfoobarbot.net\nfootard.com\nforecastertests.com\nforgetmail.com\nfornow.eu\nforspam.net\nfoxja.com\nfoxtrotter.info\nfr.ipsur.org\nfr33mail.info\nfrapmail.com\nfree-email.cf\nfree-email.ga\nfreebabysittercam.com\nfreeblackbootytube.com\nfreecat.net\nfreedompop.us\nfreefattymovies.com\nfreeletter.me\nfreemail.hu\nfreemail.ms\nfreemails.cf\nfreemails.ga\nfreemails.ml\nfreeplumpervideos.com\nfreeschoolgirlvids.com\nfreesistercam.com\nfreeteenbums.com\nfreundin.ru\nfriendlymail.co.uk\nfront14.org\nfuckedupload.com\nfuckingduh.com\nfudgerub.com\nfunnycodesnippets.com\nfurzauflunge.de\nfux0ringduh.com\nfw.moza.pl\nfyii.de\ng.airsi.de\ng.asu.su\ng.garizo.com\ng.hmail.us\ng.rbb.org\ng.tefl.ro\ng.tiv.cc\ng.vda.ro\ng4hdrop.us\ngalaxy.tv\ngamegregious.com\ngarbagecollector.org\ngarbagemail.org\ngardenscape.ca\ngarliclife.com\ngarrifulio.mailexpire.com\ngarrymccooey.com\ngav0.com\ngawab.com\ngehensiemirnichtaufdensack.de\ngeldwaschmaschine.de\ngelitik.in\ngenderfuck.net\ngeschent.biz\nget-mail.cf\nget-mail.ga\nget-mail.ml\nget-mail.tk\nget.pp.ua\nget1mail.com\nget2mail.fr\ngetairmail.cf\ngetairmail.com\ngetairmail.ga\ngetairmail.gq\ngetairmail.ml\ngetairmail.tk\ngetmails.eu\ngetonemail.com\ngetonemail.net\ngg.nh3.ro\nghosttexter.de\ngiaiphapmuasam.com\ngiantmail.de\nginzi.be\nginzi.co.uk\nginzi.es\nginzi.net\nginzy.co.uk\nginzy.eu\ngirlsindetention.com\ngirlsundertheinfluence.com\ngishpuppy.com\nglitch.sx\nglobaltouron.com\nglucosegrin.com\ngmal.com\ngmial.com\ngmx.us\ngnctr-calgary.com\ngo.arduino.hk\ngo.cdpa.cc\ngo.irc.so\ngo.jmail.ro\ngo.jwork.ru\ngoemailgo.com\ngomail.in\ngorillaswithdirtyarmpits.com\ngothere.biz\ngotmail.com\ngotmail.net\ngotmail.org\ngotti.otherinbox.com\ngowikibooks.com\ngowikicampus.com\ngowikicars.com\ngowikifilms.com\ngowikigames.com\ngowikimusic.com\ngowikinetwork.com\ngowikitravel.com\ngowikitv.com\ngrandmamail.com\ngrandmasmail.com\ngreat-host.in\ngreensloth.com\ngreggamel.com\ngreggamel.net\ngregorsky.zone\ngregorygamel.com\ngregorygamel.net\ngrr.la\ngs-arc.org\ngsredcross.org\ngsrv.co.uk\ngudanglowongan.com\nguerillamail.biz\nguerillamail.com\nguerillamail.de\nguerillamail.info\nguerillamail.net\nguerillamail.org\nguerillamailblock.com\nguerrillamail.biz\nguerrillamail.com\nguerrillamail.de\nguerrillamail.info\nguerrillamail.net\nguerrillamail.org\nguerrillamailblock.com\ngustr.com\ngynzi.co.uk\ngynzi.es\ngynzy.at\ngynzy.es\ngynzy.eu\ngynzy.gr\ngynzy.info\ngynzy.lt\ngynzy.mobi\ngynzy.pl\ngynzy.ro\ngynzy.sk\nh.mintemail.com\nh8s.org\nhabitue.net\nhacccc.com\nhackthatbit.ch\nhahawrong.com\nhaltospam.com\nharakirimail.com\nhartbot.de\nhat-geld.de\nhatespam.org\nhawrong.com\nhazelnut4u.com\nhazelnuts4u.com\nhazmatshipping.org\nheathenhammer.com\nheathenhero.com\nhellodream.mobi\nhelloricky.com\nhelpinghandtaxcenter.org\nherp.in\nherpderp.nl\nhiddentragedy.com\nhidemail.de\nhidzz.com\nhighbros.org\nhmamail.com\nhoanggiaanh.com\nhochsitze.com\nhopemail.biz\nhot-mail.cf\nhot-mail.ga\nhot-mail.gq\nhot-mail.ml\nhot-mail.tk\nhotmai.com\nhotmial.com\nhotpop.com\nhq.okzk.com\nhulapla.de\nhumaility.com\nhumn.ws.gy\nhungpackage.com\nhush.ai\nhush.com\nhushmail.com\nhushmail.me\nhuskion.net\nhvastudiesucces.nl\nhwsye.net\nibnuh.bz\nicantbelieveineedtoexplainthisshit.com\nicx.in\nieatspam.eu\nieatspam.info\nieh-mail.de\nignoremail.com\nihateyoualot.info\niheartspam.org\nikbenspamvrij.nl\nillistnoise.com\nilovespam.com\nimails.info\nimgof.com\nimgv.de\nimstations.com\ninbax.tk\ninbound.plus\ninbox.si\ninbox2.info\ninboxalias.com\ninboxclean.com\ninboxclean.org\ninboxdesign.me\ninboxed.im\ninboxed.pw\ninboxproxy.com\ninboxstore.me\ninclusiveprogress.com\nincognitomail.com\nincognitomail.net\nincognitomail.org\nindieclad.com\nindirect.ws\nineec.net\ninfocom.zp.ua\ninoutmail.de\ninoutmail.eu\ninoutmail.info\ninoutmail.net\ninsanumingeniumhomebrew.com\ninsorg-mail.info\ninstant-mail.de\ninstantemailaddress.com\ninternetoftags.com\ninterstats.org\nintersteller.com\niozak.com\nip.nm7.cc\nip4.pp.ua\nip6.li\nip6.pp.ua\nipoo.org\nirish2me.com\niroid.com\nironiebehindert.de\nirssi.tv\nis.af\nisukrainestillacountry.com\nit7.ovh\nitunesgiftcodegenerator.com\niwi.net\nj-p.us\nj.svxr.org\njafps.com\njdmadventures.com\njellyrolls.com\njetable.com\njetable.fr.nf\njetable.net\njetable.org\njetable.pp.ua\njnxjn.com\njobbikszimpatizans.hu\njobposts.net\njobs-to-be-done.net\njoelpet.com\njoetestalot.com\njopho.com\njourrapide.com\njp.ftp.sh\njsrsolutions.com\njungkamushukum.com\njunk.to\njunk1e.com\njunkmail.ga\njunkmail.gq\nk.aelo.es\nk.avls.pt\nk.bgx.ro\nk.cylab.org\nk.kaovo.com\nk.kon42.com\nk.vesa.pw\nkakadua.net\nkalapi.org\nkamsg.com\nkariplan.com\nkartvelo.com\nkasmail.com\nkaspop.com\nkcrw.de\nkeepmymail.com\nkeinhirn.de\nkeipino.de\nkemptvillebaseball.com\nkennedy808.com\nkillmail.com\nkillmail.net\nkimsdisk.com\nkingsq.ga\nkiois.com\nkir.ch.tc\nkismail.ru\nkisstwink.com\nkitnastar.com\nklassmaster.com\nklassmaster.net\nkloap.com\nkludgemush.com\nklzlk.com\nkmhow.com\nkommunity.biz\nkook.ml\nkopagas.com\nkopaka.net\nkosmetik-obatkuat.com\nkostenlosemailadresse.de\nkoszmail.pl\nkrypton.tk\nkuhrap.com\nkulturbetrieb.info\nkurzepost.de\nkwift.net\nkwilco.net\nl-c-a.us\nl.logular.com\nl33r.eu\nlabetteraverouge.at\nlackmail.net\nlags.us\nlakelivingstonrealestate.com\nlandmail.co\nlaoeq.com\nlastmail.co\nlastmail.com\nlavabit.com\nlawlita.com\nlazyinbox.com\nleeching.net\nlellno.gq\nletmeinonthis.com\nletthemeatspam.com\nlez.se\nlhsdv.com\nliamcyrus.com\nlifebyfood.com\nlifetotech.com\nligsb.com\nlilo.me\nlindenbaumjapan.com\nlink2mail.net\nlinuxmail.so\nlitedrop.com\nlkgn.se\nllogin.ru\nloadby.us\nlocomodev.net\nlogin-email.cf\nlogin-email.ga\nlogin-email.ml\nlogin-email.tk\nloh.pp.ua\nloin.in\nlol.meepsheep.eu\nlol.ovpn.to\nlolfreak.net\nlolmail.biz\nlookugly.com\nlopl.co.cc\nlortemail.dk\nlosemymail.com\nlovemeleaveme.com\nlpfmgmtltd.com\nlr7.us\nlr78.com\nlroid.com\nlru.me\nluckymail.org\nlukecarriere.com\nlukemail.info\nlukop.dk\nluv2.us\nlyfestylecreditsolutions.com\nm.ddcrew.com\nm21.cc\nm4ilweb.info\nma1l.bij.pl\nmaboard.com\nmac.hush.com\nmacromaid.com\nmagamail.com\nmagicbox.ro\nmaidlow.info\nmail-filter.com\nmail-owl.com\nmail-temporaire.com\nmail-temporaire.fr\nmail.bccto.me\nmail.by\nmail.mezimages.net\nmail.zp.ua\nmail114.net\nmail1a.de\nmail21.cc\nmail2rss.org\nmail2world.com\nmail333.com\nmail4trash.com\nmail666.ru\nmail707.com\nmail72.com\nmailback.com\nmailbidon.com\nmailbiz.biz\nmailblocks.com\nmailbucket.org\nmailcat.biz\nmailcatch.com\nmailchop.com\nmailde.de\nmailde.info\nmaildrop.cc\nmaildrop.cf\nmaildrop.ga\nmaildrop.gq\nmaildrop.ml\nmaildu.de\nmaildx.com\nmaileater.com\nmailed.in\nmailed.ro\nmaileimer.de\nmailexpire.com\nmailfa.tk\nmailforspam.com\nmailfree.ga\nmailfree.gq\nmailfree.ml\nmailfreeonline.com\nmailfs.com\nmailguard.me\nmailhazard.com\nmailhazard.us\nmailhz.me\nmailimate.com\nmailin8r.com\nmailinatar.com\nmailinater.com\nmailinator.co.uk\nmailinator.com\nmailinator.gq\nmailinator.info\nmailinator.net\nmailinator.org\nmailinator.us\nmailinator2.com\nmailincubator.com\nmailismagic.com\nmailita.tk\nmailjunk.cf\nmailjunk.ga\nmailjunk.gq\nmailjunk.ml\nmailjunk.tk\nmailmate.com\nmailme.gq\nmailme.ir\nmailme.lv\nmailme24.com\nmailmetrash.com\nmailmoat.com\nmailms.com\nmailnator.com\nmailnesia.com\nmailnull.com\nmailonaut.com\nmailorc.com\nmailorg.org\nmailpick.biz\nmailproxsy.com\nmailquack.com\nmailrock.biz\nmailsac.com\nmailscrap.com\nmailseal.de\nmailshell.com\nmailsiphon.com\nmailslapping.com\nmailslite.com\nmailtemp.info\nmailtemporaire.com\nmailtemporaire.fr\nmailtome.de\nmailtothis.com\nmailtrash.net\nmailtv.net\nmailtv.tv\nmailzi.ru\nmailzilla.com\nmailzilla.org\nmailzilla.orgmbx.cc\nmakemetheking.com\nmalahov.de\nmalayalamdtp.com\nmanifestgenerator.com\nmansiondev.com\nmanybrain.com\nmarkmurfin.com\nmbx.cc\nmcache.net\nmciek.com\nmega.zik.dj\nmeinspamschutz.de\nmeltmail.com\nmessagebeamer.de\nmesswiththebestdielikethe.rest\nmezimages.net\nmfsa.ru\nmiaferrari.com\nmidcoastcustoms.com\nmidcoastcustoms.net\nmidcoastsolutions.com\nmidcoastsolutions.net\nmidlertidig.com\nmidlertidig.net\nmidlertidig.org\nmierdamail.com\nmigmail.net\nmigmail.pl\nmigumail.com\nmijnhva.nl\nmildin.org.ua\nministry-of-silly-walks.de\nmintemail.com\nmisterpinball.de\nmjukglass.nu\nmkpfilm.com\nml8.ca\nmoakt.com\nmobi.web.id\nmobileninja.co.uk\nmoburl.com\nmockmyid.com\nmohmal.com\nmomentics.ru\nmoncourrier.fr.nf\nmonemail.fr.nf\nmoneypipe.net\nmonmail.fr.nf\nmonumentmail.com\nmoonwake.com\nmor19.uu.gl\nmoreawesomethanyou.com\nmoreorcs.com\nmotique.de\nmountainregionallibrary.net\nmox.pp.ua\nms9.mailslite.com\nmsa.minsmail.com\nmsb.minsmail.com\nmsgos.com\nmspeciosa.com\nmswork.ru\nmsxd.com\nmt2009.com\nmt2014.com\nmt2015.com\nmtmdev.com\nmuathegame.com\nmuchomail.com\nmucincanon.com\nmutant.me\nmwarner.org\nmx0.wwwnew.eu\nmxfuel.com\nmy.efxs.ca\nmy10minutemail.com\nmybitti.de\nmycard.net.ua\nmycleaninbox.net\nmycorneroftheinter.net\nmydemo.equipment\nmyecho.es\nmyemailboxy.com\nmykickassideas.com\nmymail-in.net\nmymailoasis.com\nmynetstore.de\nmyopang.com\nmypacks.net\nmypartyclip.de\nmyphantomemail.com\nmysamp.de\nmyspaceinc.com\nmyspaceinc.net\nmyspaceinc.org\nmyspacepimpedup.com\nmyspamless.com\nmytemp.email\nmytempemail.com\nmytempmail.com\nmytrashmail.com\nmywarnernet.net\nmyzx.com\nn.rabin.ca\nn1nja.org\nnabuma.com\nnakedtruth.biz\nnanonym.ch\nnationalgardeningclub.com\nnaver.com\nnegated.com\nneomailbox.com\nnepwk.com\nnervmich.net\nnervtmich.net\nnetmails.com\nnetmails.net\nnetricity.nl\nnetris.net\nnetviewer-france.com\nnetzidiot.de\nnevermail.de\nnew.apps.dj\nnextstopvalhalla.com\nnfast.net\nnguyenusedcars.com\nnice-4u.com\nnicknassar.com\nnincsmail.hu\nniwl.net\nnmail.cf\nnnh.com\nnnot.net\nno-spam.ws\nno-ux.com\nnoblepioneer.com\nnobugmail.com\nnobulk.com\nnobuma.com\nnoclickemail.com\nnodezine.com\nnogmailspam.info\nnokiamail.com\nnomail.pw\nnomail.xl.cx\nnomail2me.com\nnomorespamemails.com\nnonspam.eu\nnonspammer.de\nnoref.in\nnorseforce.com\nnospam.wins.com.br\nnospam.ze.tc\nnospam4.us\nnospamfor.us\nnospamthanks.info\nnothingtoseehere.ca\nnotmailinator.com\nnotrnailinator.com\nnotsharingmy.info\nnowhere.org\nnowmymail.com\nntlhelp.net\nnubescontrol.com\nnullbox.info\nnurfuerspam.de\nnus.edu.sg\nnuts2trade.com\nnwldx.com\nny7.me\no.cavi.mx\no.civx.org\no.cnew.ir\no.jpco.org\no.mm5.se\no.opp24.com\no.rma.ec\no.sin.cl\no.yedi.org\no2stk.org\no7i.net\nobfusko.com\nobjectmail.com\nobobbo.com\nobxpestcontrol.com\nodaymail.com\nodnorazovoe.ru\noerpub.org\noffshore-proxies.net\nohaaa.de\nokclprojects.com\nokrent.us\nolypmall.ru\nomail.pro\nomnievents.org\none-time.email\noneoffemail.com\noneoffmail.com\nonewaymail.com\nonlatedotcom.info\nonline.ms\nonlineidea.info\nonqin.com\nontyne.biz\noolus.com\noopi.org\nopayq.com\nordinaryamerican.net\noshietechan.link\notherinbox.com\nourklips.com\nourpreviewdomain.com\noutlawspam.com\novpn.to\nowlpic.com\nownsyou.de\noxopoha.com\np.mm.my\npa9e.com\npagamenti.tk\npancakemail.com\npaplease.com\npastebitch.com\npcusers.otherinbox.com\npenisgoes.in\npepbot.com\npeterdethier.com\npetrzilka.net\npfui.ru\nphotomark.net\nphpbb.uu.gl\npi.vu\npimpedupmyspace.com\npinehill-seattle.org\npingir.com\npisls.com\npjjkp.com\nplexolan.de\nplhk.ru\nplw.me\npo.bot.nu\npoczta.onet.pl\npoh.pp.ua\npojok.ml\npokiemobile.com\npolitikerclub.de\npooae.com\npoofy.org\npookmail.com\npoopiebutt.club\npopesodomy.com\npopgx.com\npostacin.com\npostonline.me\npoutineyourface.com\npowered.name\npowlearn.com\npp.ua\nprimabananen.net\nprivacy.net\nprivatdemail.net\nprivy-mail.com\nprivy-mail.de\nprivymail.de\npro-tag.org\nprocrackers.com\nprojectcl.com\npropscore.com\nproxymail.eu\nproxyparking.com\nprtnx.com\nprtz.eu\npub.ftpinc.ca\npunkass.com\npuk.us.to\npurcell.email\npurelogistics.org\nput2.net\nputthisinyourspamdatabase.com\npwrby.com\npx.dhm.ro\nq.awatum.de\nq.tic.ec\nqasti.com\nqipmail.net\nqisdo.com\nqisoa.com\nqoika.com\nqs.dp76.com\nqs.grish.de\nquadrafit.com\nquickinbox.com\nquickmail.nl\nqvy.me\nqwickmail.com\nr.ctos.ch\nr4nd0m.de\nradiku.ye.vc\nraetp9.com\nraketenmann.de\nrancidhome.net\nrandomail.net\nraqid.com\nrax.la\nraxtest.com\nrcpt.at\nrcs.gaggle.net\nreallymymail.com\nrealtyalerts.ca\nreceiveee.chickenkiller.com\nreceiveee.com\nrecipeforfailure.com\nrecode.me\nreconmail.com\nrecyclemail.dk\nredfeathercrow.com\nregbypass.com\nregbypass.comsafe-mail.net\nrejectmail.com\nreliable-mail.com\nremail.cf\nremail.ga\nremarkable.rocks\nremote.li\nreptilegenetics.com\nrevolvingdoorhoax.org\nrhyta.com\nriddermark.de\nrisingsuntouch.com\nrk9.chickenkiller.com\nrklips.com\nrmqkr.net\nrnailinator.com\nrobertspcrepair.com\nronnierage.net\nrotaniliam.com\nrowe-solutions.com\nroyal.net\nroyaldoodles.org\nrppkn.com\nrr.ige.es\nrtrtr.com\nruffrey.com\nrumgel.com\nrustydoor.com\nrx.dred.ru\nrx.qc.to\ns.sast.ro\ns.scay.net\ns0ny.net\ns33db0x.com\nsabrestlouis.com\nsackboii.com\nsafe-mail.net\nsafersignup.de\nsafetymail.info\nsafetypost.de\nsaharanightstempe.com\nsamsclass.info\nsandelf.de\nsandwhichvideo.com\nsanfinder.com\nsanim.net\nsanstr.com\nsatukosong.com\nsausen.com\nsaynotospams.com\nscatmail.com\nschachrol.com\nschafmail.de\nschmeissweg.tk\nschrott-email.de\nsd3.in\nsecmail.pw\nsecretemail.de\nsecure-mail.biz\nsecure-mail.cc\nsecured-link.net\nsecurehost.com.es\nseekapps.com\nsejaa.lv\nselfdestructingmail.com\nselfdestructingmail.org\nsendfree.org\nsendingspecialflyers.com\nsendspamhere.com\nsenseless-entertainment.com\nserver.ms\nservices391.com\nsexforswingers.com\nsexical.com\nsharedmailbox.org\nsharklasers.com\nshhmail.com\nshhuut.org\nshieldedmail.com\nshieldemail.com\nshiftmail.com\nshipfromto.com\nshiphazmat.org\nshipping-regulations.com\nshippingterms.org\nshitmail.de\nshitmail.me\nshitmail.org\nshitware.nl\nshmeriously.com\nshortmail.net\nshotmail.ru\nshowslow.de\nshrib.com\nshut.name\nshut.ws\nsibmail.com\nsify.com\nsimpleitsecurity.info\nsinfiltro.cl\nsinglespride.com\nsinnlos-mail.de\nsiteposter.net\nsizzlemctwizzle.com\nskeefmail.com\nskkk.edu.my\nsky-inbox.com\nsky-ts.de\nslapsfromlastnight.com\nslaskpost.se\nslave-auctions.net\nslopsbox.com\nslothmail.net\nslushmail.com\nsmapfree24.com\nsmapfree24.de\nsmapfree24.eu\nsmapfree24.info\nsmapfree24.org\nsmashmail.de\nsmellfear.com\nsmellrear.com\nsmtp99.com\nsmwg.info\nsnakemail.com\nsneakemail.com\nsneakmail.de\nsnkmail.com\nsocialfurry.org\nsofimail.com\nsofort-mail.de\nsofortmail.de\nsoftpls.asia\nsogetthis.com\nsohu.com\nsoisz.com\nsolvemail.info\nsolventtrap.wiki\nsoodmail.com\nsoodomail.com\nsoodonims.com\nspam-be-gone.com\nspam.la\nspam.org.es\nspam.su\nspam4.me\nspamail.de\nspamarrest.com\nspamavert.com\nspambob.com\nspambob.net\nspambob.org\nspambog.com\nspambog.de\nspambog.net\nspambog.ru\nspambooger.com\nspambox.info\nspambox.irishspringrealty.com\nspambox.org\nspambox.us\nspamcero.com\nspamcon.org\nspamcorptastic.com\nspamcowboy.com\nspamcowboy.net\nspamcowboy.org\nspamday.com\nspamdecoy.net\nspamex.com\nspamfighter.cf\nspamfighter.ga\nspamfighter.gq\nspamfighter.ml\nspamfighter.tk\nspamfree.eu\nspamfree24.com\nspamfree24.de\nspamfree24.eu\nspamfree24.info\nspamfree24.net\nspamfree24.org\nspamgoes.in\nspamherelots.com\nspamhereplease.com\nspamhole.com\nspamify.com\nspaminator.de\nspamkill.info\nspaml.com\nspaml.de\nspamlot.net\nspammotel.com\nspamobox.com\nspamoff.de\nspamsalad.in\nspamslicer.com\nspamspot.com\nspamstack.net\nspamthis.co.uk\nspamthisplease.com\nspamtrail.com\nspamtroll.net\nspeed.1s.fr\nspeedgaus.net\nspikio.com\nspoofmail.de\nspritzzone.de\nspybox.de\nsquizzy.de\nsr.ro.lt\nsry.li\nss.hi5.si\nss.icx.ro\nss.undo.it\nssoia.com\nstanfordujjain.com\nstarlight-breaker.net\nstartfu.com\nstartkeys.com\nstatdvr.com\nstathost.net\nstatiix.com\nsteambot.net\nstinkefinger.net\nstop-my-spam.cf\nstop-my-spam.com\nstop-my-spam.ga\nstop-my-spam.ml\nstop-my-spam.pp.ua\nstop-my-spam.tk\nstreetwisemail.com\nstuffmail.de\nstumpfwerk.com\nsub.internetoftags.com\nsuburbanthug.com\nsuckmyd.com\nsudolife.me\nsudolife.net\nsudomail.biz\nsudomail.com\nsudomail.net\nsudoverse.com\nsudoverse.net\nsudoweb.net\nsudoworld.com\nsudoworld.net\nsuioe.com\nsuper-auswahl.de\nsupergreatmail.com\nsupermailer.jp\nsuperplatyna.com\nsuperrito.com\nsuperstachel.de\nsuremail.info\nsvk.jp\nsweetxxx.de\nswift10minutemail.com\nsylvannet.com\nt.psh.me\ntafmail.com\ntafoi.gr\ntagmymedia.com\ntagyourself.com\ntalkinator.com\ntanukis.org\ntapchicuoihoi.com\ntb-on-line.net\nte.adiq.eu\ntechemail.com\ntechgroup.me\nteewars.org\ntelecomix.pl\nteleworm.com\nteleworm.us\ntemp-mail.com\ntemp-mail.de\ntemp-mail.org\ntemp-mail.ru\ntemp.bartdevos.be\ntemp.emeraldwebmail.com\ntemp.headstrong.de\ntempail.com\ntempalias.com\ntempe-mail.com\ntempemail.biz\ntempemail.co.za\ntempemail.com\ntempemail.net\ntempinbox.co.uk\ntempinbox.com\ntempmail.co\ntempmail.eu\ntempmail.it\ntempmail2.com\ntempmaildemo.com\ntempmailer.com\ntempmailer.de\ntempomail.fr\ntemporarily.de\ntemporarioemail.com.br\ntemporaryemail.net\ntemporaryemail.us\ntemporaryforwarding.com\ntemporaryinbox.com\ntemporarymailaddress.com\ntempsky.com\ntempthe.net\ntempymail.com\ntestudine.com\nth.edgex.ru\nthanksnospam.info\nthankyou2010.com\nthc.st\ntheaviors.com\nthebearshark.com\nthecloudindex.com\nthediamants.org\nthelimestones.com\nthembones.com.au\nthemostemail.com\nthereddoors.online\nthescrappermovie.com\ntheteastory.info\nthietbivanphong.asia\nthisisnotmyrealemail.com\nthismail.net\nthisurl.website\nthnikka.com\nthraml.com\nthrma.com\nthroam.com\nthrott.com\nthrowawayemailaddress.com\nthrowawaymail.com\nthunkinator.org\nthxmate.com\ntilien.com\ntimgiarevn.com\ntimkassouf.com\ntinyurl24.com\ntittbit.in\ntizi.com\ntlpn.org\ntm.tosunkaya.com\ntmail.com\ntmail.ws\ntmailinator.com\ntmpjr.me\ntoddsbighug.com\ntoiea.com\ntokem.co\ntokenmail.de\ntonymanso.com\ntoomail.biz\ntop101.de\ntop1mail.ru\ntop1post.ru\ntopofertasdehoy.com\ntopranklist.de\ntoprumours.com\ntormail.org\ntoss.pw\ntotalvista.com\ntotesmail.com\ntp-qa-mail.com\ntradermail.info\ntranceversal.com\ntrash-amil.com\ntrash-mail.at\ntrash-mail.cf\ntrash-mail.com\ntrash-mail.de\ntrash-mail.ga\ntrash-mail.gq\ntrash-mail.ml\ntrash-mail.tk\ntrash2009.com\ntrash2010.com\ntrash2011.com\ntrashcanmail.com\ntrashdevil.com\ntrashdevil.de\ntrashemail.de\ntrashinbox.com\ntrashmail.at\ntrashmail.com\ntrashmail.de\ntrashmail.me\ntrashmail.net\ntrashmail.org\ntrashmail.ws\ntrashmailer.com\ntrashymail.com\ntrashymail.net\ntrasz.com\ntrayna.com\ntrbvm.com\ntrbvn.com\ntrbvo.com\ntrialmail.de\ntrickmail.net\ntrillianpro.com\ntrollproject.com\ntropicalbass.info\ntrungtamtoeic.com\ntryalert.com\nttszuo.xyz\ntualias.com\nturoid.com\nturual.com\ntwinmail.de\ntwoweirdtricks.com\ntxtadvertise.com\nty.ceed.se\ntyldd.com\nu.42o.org\nu.duk33.com\nu.hs.vc\nu.jdz.ro\nu.mji.ro\nu.qibl.at\nu.oroki.de\nu.ozyl.de\nu.rvb.ro\nu.thex.ro\nu.tkitc.de\nu.wef.gr\nubismail.net\nufacturing.com\nuggsrock.com\nuguuchantele.com\nuhhu.ru\numail.net\nunimark.org\nunit7lahaina.com\nunmail.ru\nupliftnow.com\nuplipht.com\nuploadnolimit.com\nurfunktion.se\nuroid.com\nus.af\nusername.e4ward.com\nutiket.us\nuwork4.us\nux.dob.jp\nux.uk.to\nuyhip.com\nvaati.org\nvalemail.net\nvalhalladev.com\nvenompen.com\nverdejo.com\nveryday.ch\nveryday.eu\nveryday.info\nveryrealemail.com\nvfemail.net\nvg.dab.ro\nvictoriantwins.com\nvidchart.com\nviditag.com\nviewcastmedia.com\nviewcastmedia.net\nviewcastmedia.org\nvikingsonly.com\nvinernet.com\nvipmail.name\nvipmail.pw\nvipxm.net\nviralplays.com\nvixletdev.com\nvkcode.ru\nvmailing.info\nvmani.com\nvmpanda.com\nvo.yoo.ro\nvoidbay.com\nvomoto.com\nvorga.org\nvotiputox.org\nvoxelcore.com\nvp.ycare.de\nvpn.st\nvsimcard.com\nvubby.com\nvztc.com\nwakingupesther.com\nwalala.org\nwalkmail.net\nwalkmail.ru\nwasteland.rfc822.org\nwatch-harry-potter.com\nwatchever.biz\nwatchfull.net\nwatchironman3onlinefreefullmovie.com\nwbml.net\nwe.geteit.com\nwe.ldop.com\nwe.ldtp.com\nwe.qq.my\nwe.vrmtr.com\nwe.wallm.com\nweb-mail.pp.ua\nwebemail.me\nwebm4il.info\nwebtrip.ch\nwebuser.in\nwee.my\nwefjo.grn.cc\nweg-werf-email.de\nwegwerf-email-addressen.de\nwegwerf-email-adressen.de\nwegwerf-email.de\nwegwerf-email.net\nwegwerf-emails.de\nwegwerfadresse.de\nwegwerfemail.com\nwegwerfemail.de\nwegwerfemail.net\nwegwerfemail.org\nwegwerfemailadresse.com\nwegwerfmail.de\nwegwerfmail.info\nwegwerfmail.net\nwegwerfmail.org\nwegwerpmailadres.nl\nwegwrfmail.de\nwegwrfmail.net\nwegwrfmail.org\nwelikecookies.com\nwetrainbayarea.com\nwetrainbayarea.org\nwg0.com\nwh4f.org\nwhatiaas.com\nwhatifanalytics.com\nwhatpaas.com\nwhatsaas.com\nwhiffles.org\nwhopy.com\nwhtjddn.33mail.com\nwhyspam.me\nwibblesmith.com\nwickmail.net\nwidget.gg\nwilemail.com\nwillhackforfood.biz\nwillselfdestruct.com\nwimsg.com\nwinemaven.info\nwmail.cf\nwolfsmail.tk\nwollan.info\nworldspace.link\nwovz.cu.cc\nwr.moeri.org\nwralawfirm.com\nwriteme.us\nwronghead.com\nws.yodx.ro\nwuzup.net\nwuzupmail.net\nwww.bccto.me\nwww.e4ward.com\nwww.gishpuppy.com\nwww.mailinator.com\nwwwnew.eu\nx.ip6.li\nx1x.spb.ru\nx24.com\nxagloo.co\nxagloo.com\nxcompress.com\nxcpy.com\nxemaps.com\nxents.com\nxing886.uu.gl\nxjoi.com\nxmail.com\nxmaily.com\nxn--9kq967o.com\nxoxox.cc\nxrho.com\nxwaretech.com\nxwaretech.info\nxwaretech.net\nxww.ro\nxyzfree.net\ny.bcb.ro\ny.epb.ro\ny.gzb.ro\ny.tyhe.ro\nyanet.me\nyapped.net\nyaqp.com\nye.nonze.ro\nyep.it\nyert.ye.vc\nyhg.biz\nynmrealty.com\nyogamaven.com\nyomail.info\nyopmail.com\nyopmail.fr\nyopmail.gq\nyopmail.net\nyopmail.pp.ua\nyou-spam.com\nyougotgoated.com\nyoumail.ga\nyoumailr.com\nyouneedmore.info\nyourdomain.com\nyourewronghereswhy.com\nyourlms.biz\nypmail.webarnak.fr.eu.org\nyspend.com\nyugasandrika.com\nyui.it\nyuurok.com\nyxzx.net\nz1p.biz\nza.com\nze.gally.jp\nzebins.com\nzebins.eu\nzehnminuten.de\nzehnminutenmail.de\nzepp.dk\nzetmail.com\nzippymail.info\nzipsendtest.com\nzoaxe.com\nzoemail.com\nzoemail.net\nzoemail.org\nzoetropes.org\nzombie-hive.com\nzomg.info\nzumpul.com\nzxcv.com\nzxcvbnm.com\nzzz.com', 1710762501, 1),
('spam_blocked_email_enabled', 'bool', '1', 1710762501, 1),
('spam_register', 'int', '1', 1710762501, 1),
('spam_reportitem', 'int', '1', 1710762501, 1),
('spam_sendtofriend', 'int', '1', 1710762501, 1),
('subtitle', 'bool', 'n', 1715063919, 2),
('superuser', 'string', 'eugenio', 1714491941, 2),
('tax', 'bool', 'n', 1710762501, 1),
('taxuser', 'bool', 'n', 1710762501, 1),
('terms', 'bool', 'y', 1710762501, 1),
('termstext', 'str', '', 1710762501, 1),
('theme', 'str', 'modern', 1711353700, 2),
('thumb_list', 'int', '120', 1715238857, 2),
('thumb_show', 'int', '300', 1715063919, 2),
('timezone', 'str', 'Europe/London', 1711616377, 2),
('use_moderation', 'bool', '1', 1710938138, 1),
('user_request_seller_permission', 'bool', '1', 1715238034, 2),
('users_email', 'bool', 'y', 1713787438, 2),
('usersauth', 'bool', 'n', 1715238034, 2),
('version', 'str', '1.2.2.2', 1710762501, 1),
('version_check', 'str', 'stable', 1710762501, 1),
('wordsfilter', 'bool', 'y', 1710762501, 1);

-- --------------------------------------------------------

--
-- Table structure for table `webid_statssettings`
--

CREATE TABLE `webid_statssettings` (
  `activate` enum('y','n') NOT NULL DEFAULT 'y',
  `accesses` enum('y','n') NOT NULL DEFAULT 'y',
  `browsers` enum('y','n') NOT NULL DEFAULT 'y',
  `domains` enum('y','n') NOT NULL DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_statssettings`
--

INSERT INTO `webid_statssettings` (`activate`, `accesses`, `browsers`, `domains`) VALUES
('y', 'y', 'y', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `webid_tax`
--

CREATE TABLE `webid_tax` (
  `id` int NOT NULL,
  `tax_name` varchar(30) NOT NULL,
  `tax_rate` double(16,2) NOT NULL,
  `countries_seller` text NOT NULL,
  `countries_buyer` text NOT NULL,
  `fee_tax` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_tax`
--

INSERT INTO `webid_tax` (`id`, `tax_name`, `tax_rate`, `countries_seller`, `countries_buyer`, `fee_tax`) VALUES
(1, 'Site Fees', 0.00, '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `webid_useraccounts`
--

CREATE TABLE `webid_useraccounts` (
  `useracc_id` int NOT NULL,
  `auc_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `setup` double(8,2) NOT NULL DEFAULT '0.00',
  `featured` double(8,2) NOT NULL DEFAULT '0.00',
  `bold` double(8,2) NOT NULL DEFAULT '0.00',
  `highlighted` double(8,2) NOT NULL DEFAULT '0.00',
  `subtitle` double(8,2) NOT NULL DEFAULT '0.00',
  `relist` double(8,2) NOT NULL DEFAULT '0.00',
  `reserve` double(8,2) NOT NULL DEFAULT '0.00',
  `buynow` double(8,2) NOT NULL DEFAULT '0.00',
  `picture` double(8,2) NOT NULL DEFAULT '0.00',
  `extracat` double(8,2) NOT NULL DEFAULT '0.00',
  `signup` double(8,2) NOT NULL DEFAULT '0.00',
  `buyer` double(8,2) NOT NULL DEFAULT '0.00',
  `finalval` double(8,2) NOT NULL DEFAULT '0.00',
  `balance` double(8,2) NOT NULL DEFAULT '0.00',
  `total` double(8,2) NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_useraccounts`
--

INSERT INTO `webid_useraccounts` (`useracc_id`, `auc_id`, `user_id`, `date`, `setup`, `featured`, `bold`, `highlighted`, `subtitle`, `relist`, `reserve`, `buynow`, `picture`, `extracat`, `signup`, `buyer`, `finalval`, `balance`, `total`, `paid`) VALUES
(1, 1, 4, '2024-03-25 07:55:57', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(2, 2, 4, '2024-04-16 15:45:10', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(3, 3, 4, '2024-04-19 07:00:53', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(4, 4, 5, '2024-04-26 09:53:13', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(5, 5, 11, '2024-04-28 07:23:13', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(6, 6, 11, '2024-04-28 07:36:36', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(7, 7, 11, '2024-04-28 07:45:26', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(8, 7, 11, '2024-04-28 08:14:25', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(9, 8, 4, '2024-04-30 14:01:29', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0),
(10, 9, 9, '2024-05-09 20:15:54', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `webid_usergateways`
--

CREATE TABLE `webid_usergateways` (
  `id` int NOT NULL,
  `gateway_id` int NOT NULL,
  `user_id` int NOT NULL,
  `address` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webid_users`
--

CREATE TABLE `webid_users` (
  `id` int NOT NULL,
  `nick` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL,
  `password_type` int NOT NULL DEFAULT '1',
  `hash` varchar(5) DEFAULT '',
  `name` tinytext,
  `address` tinytext,
  `city` varchar(25) DEFAULT '',
  `prov` varchar(20) DEFAULT '',
  `country` varchar(30) DEFAULT '',
  `zip` varchar(10) DEFAULT '',
  `phone` varchar(40) DEFAULT '',
  `email` varchar(50) DEFAULT '',
  `rate_sum` int NOT NULL DEFAULT '0',
  `rate_num` int NOT NULL DEFAULT '0',
  `birthdate` int DEFAULT '0',
  `suspended` tinyint(1) DEFAULT '0',
  `nletter` tinyint(1) NOT NULL DEFAULT '0',
  `balance` double(16,2) NOT NULL DEFAULT '0.00',
  `auc_watch` text,
  `item_watch` text,
  `endemailmode` enum('one','cum','none') NOT NULL DEFAULT 'one',
  `startemailmode` enum('yes','no') NOT NULL DEFAULT 'yes',
  `emailtype` enum('html','text') NOT NULL DEFAULT 'html',
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastlogin` datetime DEFAULT NULL,
  `payment_details` text,
  `groups` text,
  `bn_only` enum('y','n') NOT NULL DEFAULT 'y',
  `timezone` varchar(50) NOT NULL DEFAULT 'Europe/London',
  `language` char(2) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_users`
--

INSERT INTO `webid_users` (`id`, `nick`, `password`, `password_type`, `hash`, `name`, `address`, `city`, `prov`, `country`, `zip`, `phone`, `email`, `rate_sum`, `rate_num`, `birthdate`, `suspended`, `nletter`, `balance`, `auc_watch`, `item_watch`, `endemailmode`, `startemailmode`, `emailtype`, `reg_date`, `lastlogin`, `payment_details`, `groups`, `bn_only`, `timezone`, `language`) VALUES
(1, 'nick', '62e629b62e7dca2c4cf8254d77687d3b', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0.00, NULL, NULL, 'one', 'yes', 'html', '2024-03-20 17:58:26', NULL, NULL, NULL, 'y', 'Europe/London', 'en'),
(2, 'nick', 'hello', 1, '', 'name', 'Pune', 'Manchester', 'hfjkkds', 'England', '344593', '987635727', 'testemail@gmail.com', 0, 0, 0, 0, 0, 2.00, NULL, NULL, 'one', 'yes', 'html', '2024-03-20 19:52:51', NULL, NULL, 'eee', 'y', 'Europe/London', ''),
(4, 'eugenio', '$2a$08$TR5oTO/1BEbfpsrSAGmqsuiKYudDYYK9P8E4.FFzAe1DBxk4lMgw2', 1, '', 'Eugenio Leijten', '1 Church Barton', 'Taunton', '', 'United Kingdom', 'TA3 7EQ', '07444045759', 'eugenio@fastmail.com', 0, 0, 0, 5, 0, 0.00, NULL, '1', 'cum', 'yes', 'html', '2024-03-25 07:52:29', '2024-04-30 14:35:27', NULL, '1,2', 'y', 'Europe/London', ''),
(5, 'KIMDESYLVA', '$2a$08$UB1G4CCdkfh6TiKfNSdBvuffqvCNDP2mFc7C8goP/NFXvmgjgNyiy', 1, '', 'KIMDESYLVA', '', '', '', '', '', '07444045759', 'kim@i3dmedia.co.uk', 0, 0, 0, 0, 0, 0.00, NULL, NULL, 'one', 'yes', 'html', '2024-04-16 15:50:13', '2024-04-26 10:09:12', NULL, '1,2', 'y', 'Europe/London', ''),
(6, 'diskspace', '$2a$08$L8PJD6S6uYgkmWpIUffdruqWyCohoTlmZDFuzb2NT118FZOK/bOLq', 1, 'kihfb', 'Diskspace To Use', '', '', '', '', '', '9812345678', 'diskspacetouse+1@gmail.com', 0, 0, 0, 0, 2, 0.00, NULL, NULL, 'one', 'yes', 'html', '2024-04-21 00:33:03', '2024-04-21 00:36:37', NULL, '1,2', 'y', 'Asia/Kolkata', 'EN'),
(7, 'John Doe', '$2a$08$oruF3Dt4UP.lUEFWIJukX.xMvB7osFmZ2pZLuX6W64y57qQ2f/34.', 1, '8xv0l', 'John Doe', '', '', '', '', '', '07444045759', 'johndoe@i3dmedia.co.uk', 0, 0, 0, 0, 1, 0.00, 'R.I.B.', NULL, 'cum', 'yes', 'html', '2024-04-22 08:24:09', '2024-04-30 14:03:54', NULL, '1,2', 'y', 'Europe/London', 'EN'),
(8, 'workwithalex247@gmai', '$2a$08$xcRq2gdBd69qKGXao1yIh.5Eba8uk/XNy2Os2xVs3C8WTBpde0wci', 1, '1t5ck', 'Test User', '', '', '', '', '', '8668907537', 'workwithalex247@gmail.com', 0, 0, 0, 8, 2, 0.00, NULL, NULL, 'one', 'yes', 'html', '2024-04-24 21:02:58', NULL, NULL, '1,2', 'y', 'Asia/Kolkata', 'EN'),
(9, 'diskspacetouse@gmail', '$2a$08$F/Ng3oPlXufD7tWCEZ1k/OLDL.3jd/QKOa.jiQNHp.l95ZG2CDzI2', 1, 'u5vca', 'Diskspace To Use', '', '', '', '', '', '09812345678', 'diskspacetouse@gmail.com', 0, 0, 0, 0, 2, 0.00, NULL, NULL, 'one', 'yes', 'html', '2024-04-24 21:09:58', '2024-05-09 20:15:05', NULL, '1,2', 'y', 'Asia/Kolkata', 'EN'),
(10, 'kirsty@i3dmedia.co.u', '$2a$08$YSiqVbCSmylIQuHJECsRM.uggW4bWG/4TwHYrate1EDMoSbu/5olC', 1, 'b1arj', 'Kirsty de Sylva', '', '', '', '', '', '07444045759', 'kirsty@i3dmedia.co.uk', 0, 0, 0, 6, 1, 0.00, NULL, '6', 'one', 'yes', 'html', '2024-04-26 10:03:06', '2024-05-08 16:18:15', NULL, '1,2', 'y', 'Europe/London', 'EN'),
(11, 'test2804@i3dmedia.co', '$2a$08$xbVH9Qb5eDld/cjg3JOy2uNriy1Jdk1rH22jmbZWGNTRL0a1nTGKq', 1, 'z21q5', 'Test 2804', '', '', '', '', '', '07444045759', 'test2804@i3dmedia.co.uk', 0, 0, 0, 5, 1, 0.00, NULL, '5', 'one', 'yes', 'html', '2024-04-28 07:13:54', '2024-04-29 07:44:17', NULL, '1,2', 'y', 'Europe/London', 'EN'),
(12, 'george@i3dmedia.co.u', '$2a$08$fCcWEURv38v6DsTywtVQS.LYXTpDrWcPh8uUK17gL9P0wFONWN95e', 1, 'eb70z', 'George Bannister', '', '', '', 'United Kingdom', '', '07444045759', 'george@i3dmedia.co.uk', 0, 0, 19600830, 6, 1, 0.00, NULL, NULL, 'one', 'yes', 'html', '2024-04-30 14:09:18', '2024-05-04 04:23:44', NULL, '1,2', 'y', 'Europe/London', 'EN');

-- --------------------------------------------------------

--
-- Table structure for table `webid_usersips`
--

CREATE TABLE `webid_usersips` (
  `id` int NOT NULL,
  `user` int DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `type` varchar(255) DEFAULT 'register',
  `action` enum('accept','deny') NOT NULL DEFAULT 'accept'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_usersips`
--

INSERT INTO `webid_usersips` (`id`, `user`, `ip`, `type`, `action`) VALUES
(1, 32, '185.198.190.2', 'register', 'accept'),
(2, 36, '81.152.91.218', 'register', 'accept'),
(3, 40, '81.152.91.218', 'register', 'accept'),
(4, 44, '109.150.104.127', 'register', 'accept'),
(5, 4, '109.150.104.127', 'login', 'accept'),
(6, 4, '178.239.163.126', 'login', 'accept'),
(7, 59, '138.199.29.236', 'register', 'accept'),
(8, 4, '138.199.29.206', 'login', 'accept'),
(9, 4, '185.245.82.81', 'login', 'accept'),
(10, 63, '223.233.82.48', 'register', 'accept'),
(11, 67, '103.133.158.208', 'register', 'accept'),
(12, 4, '217.146.82.196', 'login', 'accept'),
(13, 5, '217.146.82.196', 'login', 'accept'),
(14, 4, '185.44.77.124', 'login', 'accept'),
(15, 5, '185.44.77.124', 'login', 'accept'),
(16, 156, '223.233.82.85', 'register', 'accept'),
(17, 6, '223.233.82.85', 'register', 'accept'),
(18, 7, '138.199.29.148', 'register', 'accept'),
(19, 8, '223.233.82.123', 'register', 'accept'),
(20, 9, '223.233.82.123', 'register', 'accept'),
(21, 5, '185.44.77.51', 'login', 'accept'),
(22, 10, '185.44.77.51', 'register', 'accept'),
(23, 7, '185.44.77.51', 'login', 'accept'),
(24, 4, '109.155.35.138', 'login', 'accept'),
(25, 11, '138.199.29.136', 'register', 'accept'),
(26, 10, '138.199.29.136', 'login', 'accept'),
(27, 11, '178.238.10.67', 'login', 'accept'),
(28, 10, '178.238.10.67', 'login', 'accept'),
(29, 10, '138.199.29.138', 'login', 'accept'),
(30, 4, '138.199.29.138', 'login', 'accept'),
(31, 7, '138.199.29.138', 'login', 'accept'),
(32, 12, '138.199.29.138', 'register', 'accept'),
(33, 10, '217.146.83.102', 'login', 'accept'),
(34, 12, '217.146.83.102', 'login', 'accept'),
(35, 10, '138.199.29.163', 'login', 'accept'),
(36, 9, '223.233.82.111', 'login', 'accept');

-- --------------------------------------------------------

--
-- Table structure for table `webid_winners`
--

CREATE TABLE `webid_winners` (
  `id` int NOT NULL,
  `auction` int NOT NULL DEFAULT '0',
  `seller` int NOT NULL DEFAULT '0',
  `winner` int NOT NULL DEFAULT '0',
  `bid` double(16,2) NOT NULL DEFAULT '0.00',
  `auc_title` varchar(70) DEFAULT NULL,
  `auc_shipping_cost` double(16,2) DEFAULT '0.00',
  `auc_payment` tinytext,
  `closingdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `feedback_win` tinyint(1) NOT NULL DEFAULT '0',
  `feedback_sel` tinyint(1) NOT NULL DEFAULT '0',
  `qty` int NOT NULL DEFAULT '1',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `bf_paid` tinyint(1) NOT NULL DEFAULT '0',
  `ff_paid` tinyint(1) NOT NULL DEFAULT '1',
  `shipped` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webid_winners`
--

INSERT INTO `webid_winners` (`id`, `auction`, `seller`, `winner`, `bid`, `auc_title`, `auc_shipping_cost`, `auc_payment`, `closingdate`, `feedback_win`, `feedback_sel`, `qty`, `paid`, `bf_paid`, `ff_paid`, `shipped`) VALUES
(1, 3, 4, 10, 850.00, 'Ribeye 10M', 0.00, 'banktransfer', '2024-05-03 13:07:23', 0, 0, 1, 0, 0, 0, 0),
(2, 6, 11, 10, 31000.00, 'Dutch Auction R.I.B.', 0.00, 'banktransfer', '2024-05-03 13:07:23', 0, 0, 1, 0, 0, 0, 0),
(3, 8, 4, 12, 1200.00, 'TEST R.I.B.', 200.00, 'banktransfer', '2024-05-03 13:07:23', 0, 0, 1, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `webid_accounts`
--
ALTER TABLE `webid_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_adminusers`
--
ALTER TABLE `webid_adminusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_auccounter`
--
ALTER TABLE `webid_auccounter`
  ADD PRIMARY KEY (`auction_id`);

--
-- Indexes for table `webid_auctions`
--
ALTER TABLE `webid_auctions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_auction_moderation`
--
ALTER TABLE `webid_auction_moderation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_auction_types`
--
ALTER TABLE `webid_auction_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_banners`
--
ALTER TABLE `webid_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_bannersusers`
--
ALTER TABLE `webid_bannersusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_bids`
--
ALTER TABLE `webid_bids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_categories`
--
ALTER TABLE `webid_categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `left_id` (`left_id`,`right_id`,`level`);

--
-- Indexes for table `webid_community`
--
ALTER TABLE `webid_community`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_comm_messages`
--
ALTER TABLE `webid_comm_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_countries`
--
ALTER TABLE `webid_countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `webid_faqs`
--
ALTER TABLE `webid_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_faqscategories`
--
ALTER TABLE `webid_faqscategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_feedbacks`
--
ALTER TABLE `webid_feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_fees`
--
ALTER TABLE `webid_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_groups`
--
ALTER TABLE `webid_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_increments`
--
ALTER TABLE `webid_increments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_logs`
--
ALTER TABLE `webid_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_membertypes`
--
ALTER TABLE `webid_membertypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_messages`
--
ALTER TABLE `webid_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_news`
--
ALTER TABLE `webid_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_online`
--
ALTER TABLE `webid_online`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `webid_payment_options`
--
ALTER TABLE `webid_payment_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_pendingnotif`
--
ALTER TABLE `webid_pendingnotif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_rates`
--
ALTER TABLE `webid_rates`
  ADD KEY `id` (`id`);

--
-- Indexes for table `webid_reportedauctions`
--
ALTER TABLE `webid_reportedauctions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_settings`
--
ALTER TABLE `webid_settings`
  ADD PRIMARY KEY (`fieldname`);

--
-- Indexes for table `webid_tax`
--
ALTER TABLE `webid_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_useraccounts`
--
ALTER TABLE `webid_useraccounts`
  ADD PRIMARY KEY (`useracc_id`);

--
-- Indexes for table `webid_usergateways`
--
ALTER TABLE `webid_usergateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_users`
--
ALTER TABLE `webid_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_usersips`
--
ALTER TABLE `webid_usersips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webid_winners`
--
ALTER TABLE `webid_winners`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `webid_accounts`
--
ALTER TABLE `webid_accounts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webid_adminusers`
--
ALTER TABLE `webid_adminusers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `webid_auctions`
--
ALTER TABLE `webid_auctions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `webid_auction_moderation`
--
ALTER TABLE `webid_auction_moderation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webid_auction_types`
--
ALTER TABLE `webid_auction_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `webid_banners`
--
ALTER TABLE `webid_banners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webid_bannersusers`
--
ALTER TABLE `webid_bannersusers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webid_bids`
--
ALTER TABLE `webid_bids`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `webid_categories`
--
ALTER TABLE `webid_categories`
  MODIFY `cat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `webid_community`
--
ALTER TABLE `webid_community`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `webid_comm_messages`
--
ALTER TABLE `webid_comm_messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `webid_countries`
--
ALTER TABLE `webid_countries`
  MODIFY `country_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `webid_faqs`
--
ALTER TABLE `webid_faqs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `webid_faqscategories`
--
ALTER TABLE `webid_faqscategories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `webid_feedbacks`
--
ALTER TABLE `webid_feedbacks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webid_fees`
--
ALTER TABLE `webid_fees`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `webid_groups`
--
ALTER TABLE `webid_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `webid_increments`
--
ALTER TABLE `webid_increments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `webid_logs`
--
ALTER TABLE `webid_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1367;

--
-- AUTO_INCREMENT for table `webid_membertypes`
--
ALTER TABLE `webid_membertypes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `webid_messages`
--
ALTER TABLE `webid_messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `webid_news`
--
ALTER TABLE `webid_news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `webid_online`
--
ALTER TABLE `webid_online`
  MODIFY `ID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `webid_payment_options`
--
ALTER TABLE `webid_payment_options`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `webid_pendingnotif`
--
ALTER TABLE `webid_pendingnotif`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `webid_rates`
--
ALTER TABLE `webid_rates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `webid_tax`
--
ALTER TABLE `webid_tax`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `webid_useraccounts`
--
ALTER TABLE `webid_useraccounts`
  MODIFY `useracc_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `webid_usergateways`
--
ALTER TABLE `webid_usergateways`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webid_users`
--
ALTER TABLE `webid_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `webid_usersips`
--
ALTER TABLE `webid_usersips`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `webid_winners`
--
ALTER TABLE `webid_winners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
