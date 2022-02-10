-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2021 at 02:58 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `opd`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categorieId` int(12) NOT NULL,
  `categorieName` varchar(255) NOT NULL,
  `categorieDesc` text NOT NULL,
  `categorieCreateDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categorieId`, `categorieName`, `categorieDesc`, `categorieCreateDate`) VALUES
(22, 'HEALTH & NUTRITION', 'Nutrition is a critical part of health and development. Better nutrition is related to improved infant, child and maternal health, stronger immune systems, safer pregnancy and childbirth, lower risk of non-communicable diseases (such as diabetes and cardiovascular disease), and longevity. Healthy children learn better.', '2021-11-28 17:54:19'),
(23, 'SKIN CARE', 'Skin Care', '2021-11-29 22:26:16'),
(24, 'URBAN COLOR', 'Urban Color', '2021-11-29 22:26:49'),
(26, 'AGRICULTURE', 'Agriculture', '2021-11-29 22:29:29'),
(27, 'AUTO CARE', 'Auto Care', '2021-11-29 22:30:05'),
(28, 'FOOD & BEVERAGES', 'Food & Beverages', '2021-11-29 22:31:42'),
(29, 'DIVINE', 'Divine', '2021-11-29 22:37:04'),
(30, 'LITERATURE', 'Literature', '2021-11-29 22:37:34'),
(31, 'PERSONAL-CARE', 'Personal-Care', '2021-11-29 22:38:18'),
(32, 'JEWELLERY', 'Jewellery', '2021-11-29 22:38:55'),
(33, 'HOME CARE & BABY CARE', 'Home Care & Baby Care', '2021-12-02 20:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactId` int(21) NOT NULL,
  `userId` int(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phoneNo` bigint(21) NOT NULL,
  `orderId` int(21) NOT NULL DEFAULT 0 COMMENT 'If problem is not related to the order then order id = 0',
  `message` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactId`, `userId`, `email`, `phoneNo`, `orderId`, `message`, `time`) VALUES
(1, 8, 'neelnsoni13@gmail.com', 7874866543, 0, 'nothing', '2021-11-28 12:46:39'),
(2, 8, 'dimplensoni2111@gmail.com', 7041925432, 2, 'I lost my all money', '2021-11-28 12:52:49'),
(3, 9, 'heet@gmail.com', 8745963210, 3, 'Thank you so much', '2021-11-28 13:12:53'),
(4, 12, 'nikunjsoni13@gmail.com', 9427080543, 7, 'My order is not good', '2021-11-28 18:37:43'),
(5, 13, 'jay@gmail.com', 9876543210, 8, 'Taste is not good', '2021-11-29 15:57:53'),
(6, 14, 'vrajpatel@gmail.com', 9876543210, 0, 'Thank you for providing excellent service', '2021-11-29 23:44:18'),
(7, 15, 'neelnsoni13@gmail.com', 7874866543, 0, 'nothing', '2021-11-29 23:55:09'),
(8, 15, 'neelnsoni13@gmail.com', 7874866543, 0, 'HI my friends', '2021-11-30 00:10:32'),
(9, 15, 'neelnsoni13@gmail.com', 7874866543, 0, 'Thank you so much', '2021-11-30 00:19:00'),
(10, 16, 'dhruv@gmail.com', 7845963210, 0, 'Thank you so much', '2021-11-30 10:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `contactreply`
--

CREATE TABLE `contactreply` (
  `id` int(21) NOT NULL,
  `contactId` int(21) NOT NULL,
  `userId` int(23) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactreply`
--

INSERT INTO `contactreply` (`id`, `contactId`, `userId`, `message`, `datetime`) VALUES
(1, 1, 8, 'OK Thanks', '2021-11-28 12:49:11'),
(2, 2, 8, 'OK we will reply soon', '2021-11-28 12:53:21'),
(3, 3, 9, 'OK Most welcome', '2021-11-28 13:13:09'),
(4, 4, 12, 'ok no problem we will take care next time', '2021-11-28 18:38:06'),
(5, 5, 13, 'So sorry we will try best next time', '2021-11-29 15:58:27'),
(6, 6, 14, 'Welcome', '2021-11-29 23:44:43'),
(7, 7, 15, 'Welcome', '2021-11-29 23:56:21'),
(8, 9, 15, 'Most Welcome', '2021-11-30 00:19:16'),
(9, 10, 16, 'Welcome Dhruv', '2021-11-30 10:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `deliverydetails`
--

CREATE TABLE `deliverydetails` (
  `id` int(21) NOT NULL,
  `orderId` int(21) NOT NULL,
  `deliveryBoyName` varchar(35) NOT NULL,
  `deliveryBoyPhoneNo` bigint(25) NOT NULL,
  `deliveryTime` int(200) NOT NULL COMMENT 'Time in minutes',
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliverydetails`
--

INSERT INTO `deliverydetails` (`id`, `orderId`, `deliveryBoyName`, `deliveryBoyPhoneNo`, `deliveryTime`, `dateTime`) VALUES
(1, 1, 'don', 7016211655, 10, '2021-11-28 13:04:29'),
(2, 3, 'Patel Vraj ', 9458763210, 1, '2021-11-28 13:15:38'),
(3, 4, 'Chagan ', 7896543210, 10, '2021-11-28 18:21:27'),
(4, 6, 'Magan Bhai', 7016211655, 5, '2021-11-28 18:28:13'),
(5, 7, 'Chagan', 9457861200, 10, '2021-11-28 18:35:47'),
(6, 8, 'Jay', 9876543210, 60, '2021-11-29 15:55:51'),
(7, 9, 'Chagan', 9876543210, 10, '2021-11-29 23:43:03'),
(8, 10, 'Magan Bhai', 7845123690, 50, '2021-11-29 23:54:52'),
(9, 11, 'Patel Don', 7412589630, 40, '2021-11-30 00:09:38'),
(10, 12, 'Chagan', 7845123695, 50, '2021-11-30 00:18:24'),
(11, 14, 'Magan Bhai', 7845963210, 60, '2021-11-30 10:26:57'),
(12, 22, 'NONE', 0, 10, '2021-12-01 09:04:16'),
(13, 25, 'Self', 9427080543, 20, '2021-12-03 15:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(21) NOT NULL,
  `orderId` int(21) NOT NULL,
  `pizzaId` int(21) NOT NULL,
  `itemQuantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `orderId`, `pizzaId`, `itemQuantity`) VALUES
(1, 1, 1, 15),
(2, 1, 2, 1),
(3, 1, 7, 1),
(4, 1, 22, 1),
(5, 2, 14, 1),
(6, 3, 14, 2),
(7, 3, 44, 1),
(8, 3, 49, 1),
(9, 3, 52, 1),
(10, 3, 1, 1),
(11, 4, 69, 3),
(12, 4, 70, 2),
(13, 5, 70, 2),
(14, 6, 38, 1),
(15, 6, 39, 1),
(16, 6, 40, 1),
(17, 7, 69, 10),
(18, 7, 70, 3),
(19, 8, 2, 1),
(20, 8, 4, 1),
(21, 8, 69, 10),
(22, 9, 69, 1),
(23, 9, 70, 1),
(24, 10, 69, 1),
(25, 10, 71, 1),
(26, 10, 72, 1),
(27, 11, 72, 1),
(28, 12, 69, 1),
(29, 13, 69, 1),
(30, 13, 70, 1),
(31, 14, 69, 1),
(32, 15, 69, 1),
(33, 16, 70, 1),
(34, 16, 71, 1),
(35, 17, 72, 2),
(36, 18, 71, 1),
(37, 18, 72, 1),
(38, 19, 70, 1),
(39, 19, 71, 1),
(40, 19, 72, 1),
(41, 20, 70, 1),
(42, 20, 71, 1),
(43, 21, 69, 1),
(44, 21, 71, 1),
(45, 22, 69, 1),
(46, 23, 69, 1),
(47, 23, 70, 1),
(48, 24, 69, 2),
(49, 24, 70, 1),
(50, 25, 74, 3),
(51, 25, 87, 1),
(52, 25, 95, 1),
(53, 25, 96, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(21) NOT NULL,
  `username1` varchar(21) NOT NULL,
  `userId` int(21) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipCode` int(21) NOT NULL,
  `phoneNo` bigint(21) NOT NULL,
  `amount` int(200) NOT NULL,
  `paymentMode` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=cash on delivery, \r\n1=online ',
  `orderStatus` enum('0','1','2','3','4','5','6') NOT NULL DEFAULT '0' COMMENT '0=Order Placed.\r\n1=Order Confirmed.\r\n2=Preparing your Order.\r\n3=Your order is on the way!\r\n4=Order Delivered.\r\n5=Order Denied.\r\n6=Order Cancelled.',
  `orderDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `username1`, `userId`, `address`, `zipCode`, `phoneNo`, `amount`, `paymentMode`, `orderStatus`, `orderDate`) VALUES
(21, 'neelsoni', 15, '59/Shriji charan society / Opp Reliance Petrol Pump. Modasa Road / Bayad / Aravalli / Gujarat , Gujarat', 383325, 9427080543, 570, '0', '0', '2021-11-30 20:42:48'),
(22, 'neelsoni', 15, '59/Shriji charan society / Opp Reliance Petrol Pump. Modasa Road / Bayad / Aravalli / Gujarat , Gujarat', 383325, 7845963210, 185, '0', '4', '2021-12-01 09:02:35'),
(23, 'neelsoni', 15, '59/Shriji charan society / Opp Reliance Petrol Pump. Modasa Road / Bayad / Aravalli / Gujarat , Gujarat', 383325, 7041925435, 1085, '0', '0', '2021-12-01 09:32:11'),
(24, 'neelsoni', 15, '59/Shriji charan society / Opp Reliance Petrol Pump. Modasa Road / Bayad / Aravalli / Gujarat , Gujarat', 383325, 7874866543, 1270, '0', '0', '2021-12-01 09:52:01'),
(25, 'neelsoni', 15, '59/Shriji charan society / Opp Reliance Petrol Pump. Modasa Road / Bayad / Aravalli / Gujarat , Gujarat', 383325, 7874866543, 2650, '0', '4', '2021-12-03 15:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `pizza`
--

CREATE TABLE `pizza` (
  `pizzaId` int(12) NOT NULL,
  `pizzaName` varchar(255) NOT NULL,
  `pizzaPrice` int(12) NOT NULL,
  `pizzaPrice1` float NOT NULL,
  `pizzaPrice2` float NOT NULL,
  `pizzaDesc` text NOT NULL,
  `pizzaCategorieId` int(12) NOT NULL,
  `pizzaPubDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pizza`
--

INSERT INTO `pizza` (`pizzaId`, `pizzaName`, `pizzaPrice`, `pizzaPrice1`, `pizzaPrice2`, `pizzaDesc`, `pizzaCategorieId`, `pizzaPubDate`) VALUES
(69, 'Well Amla', 185, 82.5, 10, 'Well Amla contains fruit extract of Emblica officinalis standardized for 30% tannins. Amla helps boost immunity by building the bodyâ€™s natural defense system to fight infections. It is a natural source of Vitamin C and antioxidants that helps fight free radicals. Amla can help delay the signs of ageing and improve the appearance of skin and hair. It helps in detoxification and supports the digestive system.\r\n\r\n100 % Natural, Gluten Free, Vegan and Vegetarian\r\n\r\nContains no added colour, flavours or preservatives\r\n\r\n \r\n\r\nName & Address of the Manufacturer\r\nPrakruti Products Pvt. Ltd.,\r\nB 1/2,Navagadde, Agsoor, Ankola, Karnataka-581314\r\nName & Address of the Marketer:\r\nModicare Ltd., 5 Community Centre, New Friends Colony, New Delih-110025', 22, '2021-11-28 17:57:40'),
(70, 'Well Turmeric', 900, 0, 0, 'Well Turmeric contains turmeric extract standardized for 95% curcuminoids. It provides the most important active constituents â€“ Curcumin, Demethoxycurcumin, Biodemethoxycurcumin. They are known to possess anti-inflammatory and antioxidant properties; Curcumin is considered anti-ageing and helps to protect cells against free radicals. It helps to improve immunity, supports cardiovascular, joint, and skin health. It also contains Piperine derived from black pepper extract and standardized to 95%. Piperine is known to increase the bioavailability of nutrients in the body.\r\n\r\nOne Tumeric tablet is equivalent to 33 Turmeric roots\r\n\r\n100 % Natural, Gluten Free, Vegan and Vegetarian\r\n\r\nContains no added colour, flavours or preservatives\r\n\r\n \r\n\r\nName & Address of the Manufacturer\r\nPrakruti Products Pvt. Ltd.,\r\nB 1/2,Navagadde, Agsoor, Ankola, Karnataka-581314\r\nName & Address of the Marketer:\r\nModicare Ltd., 5 Community Centre, New Friends Colony, New Delih-110025', 22, '2021-11-28 18:01:23'),
(71, 'Well Brahmi', 385, 0, 0, 'Well Brahmi contains Bacopa extract standardized for 20% bacosides to give you all the natural benefits of the herb.  Brahmi helps to calm the mind, promotes clarity of thought, supports cognition and improves the memory. It is considered ideal for improving mental agility, concentration and alertness. It helps to support the functioning of the central nervous system.\r\n\r\n100 % Natural, Gluten Free, Vegan and Vegetarian\r\n\r\nContains no added colour, flavours or preservatives\r\n\r\nName & Address of the Manufacturer\r\nPrakruti Products Pvt. Ltd.,\r\nB 1/2,Navagadde, Agsoor, Ankola, Karnataka-581314\r\nName & Address of the Marketer:\r\nModicare Ltd., 5 Community Centre, New Friends Colony, New Delih-110025', 22, '2021-11-29 22:44:52'),
(72, 'Well Brain Activ', 999, 0, 0, 'Well BrainActiv supports brain function, improves memory, concentration and recall. A powerful combination of ingredients â€“ Bacopa, Ginkgo biloba, Rosemary and Soy Lecithin are known to provide nourishment to the brain.\r\n\r\nIt promotes mental clarity and assists to reduce age-related memory loss. It contains antioxidants that help to reduce free radicals formed in the body, and helps to promote healthy blood circulation, levels of oxygen and nutrients to the brain. \r\n\r\n100 % Natural, Gluten Free, Vegan and Vegetarian\r\n\r\nContains no added colours or flavours \r\n\r\n \r\n\r\nName & Address of the Manufacturer\r\nPrakruti Products Pvt. Ltd.,\r\nB 1/2,Navagadde, Agsoor, Ankola, Karnataka-581314\r\nName & Address of the Marketer:\r\nModicare Ltd., 5 Community Centre, New Friends Colony, New Delih-110025', 22, '2021-11-29 22:45:59'),
(74, 'Well Multivitamin-Multimineral Tablets', 350, 7.78, 0, 'The modern and hectic life style often leads to unhealthy eating habits. This could be in the form of skipped meals, crash diets or eating highly processed foods that may be low on nutrition. Our regular diets may also lack in proper nutrition due to food being highly cooked or fried that destroys the nutritional value of food. A nutritional gap may exist between what we eat and what our body requires. Well Multivitamin Multimineral provides the necessary nutrients that helps in bridging the nutritional gap. It provides 12 essential vitamins, 11 important minerals with additional benefits of phytonutrients and amino acids that are essential for the growth, maintenance and repair of the body.', 22, '2021-12-02 14:43:32'),
(86, 'Amrit Shakti', 300, 150.3, 20.34, 'Amrit Shakti', 22, '2021-12-02 18:47:55'),
(87, 'Ashwgandha', 500, 250.25, 25, 'Ashwgandha', 22, '2021-12-02 19:59:21'),
(88, 'Calcium', 466, 395, 15.56, 'Calcium', 22, '2021-12-02 20:00:44'),
(89, 'Cardio Active', 521, 435, 25, 'Cardio Active', 22, '2021-12-02 20:01:29'),
(90, 'Intelecte', 600, 300, 25, 'Intelecte', 22, '2021-12-02 20:02:41'),
(91, 'Omega', 600, 300, 25, 'Omega', 22, '2021-12-02 20:03:41'),
(92, 'Dtox', 535, 457, 15.56, 'Dtox', 22, '2021-12-02 20:04:44'),
(93, 'Dtox', 535, 457, 15.56, 'Dtox', 22, '2021-12-02 20:04:44'),
(94, 'Shilajit Ojas Red', 599, 499, 52, 'Shilajit Ojas Red', 22, '2021-12-02 20:05:55'),
(95, 'Well Vitamin D3', 500, 250, 10, 'Well Vitamin D3', 22, '2021-12-02 20:06:44'),
(96, 'Well Vitamin C', 600, 300, 20, 'Well Vitamin C', 22, '2021-12-02 20:07:45'),
(97, 'Well Triphala', 600, 300, 20, 'Well Triphala', 22, '2021-12-02 20:09:05'),
(98, 'Well Vitamin B', 500, 250, 10, 'Well Vitamin B', 22, '2021-12-02 20:10:49'),
(99, 'Well Phudina', 500, 250, 10, 'Well Phudina', 22, '2021-12-02 20:11:57'),
(100, 'Well Protein Crest', 1114, 600, 26, 'Well Protein Crest', 22, '2021-12-02 20:14:20'),
(101, 'Well Korean', 900, 450, 25, 'Well Korean', 22, '2021-12-02 20:15:43'),
(102, 'Well Chyawanprash', 565, 250, 13, 'Well Chyawanprash', 22, '2021-12-02 20:17:40'),
(103, 'Well Flax Oil', 600, 200, 10, 'Well Flax Oil', 22, '2021-12-02 20:18:38'),
(104, 'Noni', 465, 25, 10, 'Noni', 22, '2021-12-02 20:25:39'),
(105, 'Well Iron Folic Acid', 600, 100, 25, 'Well Iron Folic Acid', 22, '2021-12-02 20:26:56'),
(106, 'Cow Ghee', 600, 300, 10, 'Cow Ghee', 22, '2021-12-02 20:27:47'),
(107, 'Aloe Vera', 280, 140, 10, 'Aloe Vera', 22, '2021-12-02 20:29:55'),
(111, 'Coffee Yellow', 135, 60, 25, 'Coffee Yellow', 22, '2021-12-02 20:57:09'),
(112, 'Well Karela Jamun', 600, 300, 20, 'Well Karela Jamun', 22, '2021-12-02 20:59:02'),
(113, 'Well Glucosamine', 1225, 600, 30, 'Well Glucosamine', 22, '2021-12-02 21:00:51'),
(114, 'Well Garlic Perl', 292, 185, 20.34, 'Well Garlic Perl', 22, '2021-12-02 21:01:31'),
(115, 'Well GIloy', 500, 250, 154, 'Well GIloy', 22, '2021-12-02 21:03:21'),
(117, 'Rice Brain Oil', 250, 125, 105, 'Rice Brain Oil', 22, '2021-12-02 21:06:57'),
(118, 'Baby Spa Moturise Lotion', 147, 80, 2.53, 'Baby Spa Moturise Lotion', 33, '2021-12-02 21:09:21'),
(119, 'Baby Soap', 205, 105, 10.5, 'Baby Soap', 33, '2021-12-02 21:10:05'),
(121, 'Baby Talc Powder', 68, 58, 24, 'Baby Talc Powder', 33, '2021-12-02 21:11:03'),
(122, 'Body Spray', 170, 85, 20.5, 'Body Spray', 31, '2021-12-02 21:12:21'),
(123, 'Body Lotion', 140, 70, 10, 'Body Lotion', 31, '2021-12-02 21:13:18'),
(124, 'Fresh Moments Blue Toothpaste PC2000', 62, 30, 10, 'Fresh Moments Blue Toothpaste PC2000', 31, '2021-12-02 21:15:05'),
(125, 'Modicare Environ Chip Laptop', 2000, 1000, 20, 'Modicare Environ Chip Laptop', 31, '2021-12-02 21:16:46'),
(126, 'Modicare Environ Router Chip', 583, 583, 20, 'Modicare Environ Router Chip', 31, '2021-12-02 21:18:38'),
(127, 'Modicare Environ Pink Magneta Chip', 583, 200, 20, 'Modicare Environ Pink Magneta Chip', 31, '2021-12-02 21:19:36'),
(128, 'Modicare Anti Radiation Environ Blue Chip', 583, 200, 20, 'Modicare Anti Radiation Environ Blue Chip', 31, '2021-12-02 21:20:27'),
(129, 'Modicare Anti Radiation Environ Black Chip', 583, 25, 25, 'Modicare Anti Radiation Environ Black Chip', 31, '2021-12-02 21:21:06'),
(130, 'Modicare Anti Radiation Environ Silver Chip', 583, 250, 22, 'Modicare Anti Radiation Environ Silver Chip', 31, '2021-12-02 21:21:55'),
(131, 'Glycerine Orange Soap', 150, 75, 20, 'Glycerine Orange Soap', 31, '2021-12-02 21:23:25'),
(132, 'Saloon Hair Oil', 98, 49, 1.81, 'Saloon Hair Oil', 31, '2021-12-03 14:00:24'),
(133, 'Anti Bacterial Soap 75g', 40, 10, 0.74, 'Anti Bacterial Soap (75g)', 31, '2021-12-03 14:02:17'),
(134, 'Washmate Popular Detergent Powder 1Kg', 143, 50, 1.85, 'Washmate Popular Detergent Powder 1Kg', 31, '2021-12-03 14:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `sitedetail`
--

CREATE TABLE `sitedetail` (
  `tempId` int(11) NOT NULL,
  `systemName` varchar(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `contact1` bigint(21) NOT NULL,
  `contact2` bigint(21) DEFAULT NULL COMMENT 'Optional',
  `address` text NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sitedetail`
--

INSERT INTO `sitedetail` (`tempId`, `systemName`, `email`, `contact1`, `contact2`, `address`, `dateTime`) VALUES
(1, 'DPBillingEasy', 'neelnsoni13@gmail.com', 7874866543, 9427080543, 'Aravalli / Gujarat', '2021-03-23 19:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(21) NOT NULL,
  `username` varchar(21) NOT NULL,
  `firstName` varchar(21) NOT NULL,
  `lastName` varchar(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `userType` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=user\r\n1=admin',
  `password` varchar(255) NOT NULL,
  `joinDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `phone`, `userType`, `password`, `joinDate`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@gmail.com', 1111111111, '1', '$2y$10$AAfxRFOYbl7FdN17rN3fgeiPu/xQrx6MnvRGzqjVHlGqHAM4d9T1i', '2021-04-11 11:40:58'),
(14, 'vrajpatel', 'Vraj', 'Patel', 'vrajpatel@gmail.com', 9876543210, '0', '$2y$10$4nzvljQ5SJi/nOjftceThuTeZNBqGcC0PmzWUzvvMWTlqVXcpF75W', '2021-11-29 23:40:43'),
(15, 'neelsoni', 'Neel', 'Soni', 'neelnsoni13@gmail.com', 7874866543, '0', '$2y$10$V6TvIb9tkulNck9IFT54YOdMs2YUNh8TfHZX87Jz1eeeQxVtHAQ0i', '2021-11-29 23:53:07'),
(16, 'DHRUV', 'DHRUV', 'PATEL', 'dhruv@gmail.com', 7845963210, '0', '$2y$10$zZrI5538jLNJciH/dxSyH.thRAt70ETTeX4i4kBXA79YMA7p/LOX6', '2021-11-30 10:25:06'),
(18, 'admin1', 'admin1', 'admin1', 'admin1@gmail.com', 9876543210, '1', '$2y$10$9NDC5GU46OzxwIhSsqB9Ee9.CXzNWNjcguAXTiYaYviL72xX1WWfy', '2021-11-30 19:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `viewcart`
--

CREATE TABLE `viewcart` (
  `cartItemId` int(11) NOT NULL,
  `pizzaId` int(11) NOT NULL,
  `itemQuantity` int(100) NOT NULL,
  `userId` int(11) NOT NULL,
  `addedDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categorieId`);
ALTER TABLE `categories` ADD FULLTEXT KEY `categorieName` (`categorieName`,`categorieDesc`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactId`);

--
-- Indexes for table `contactreply`
--
ALTER TABLE `contactreply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderId` (`orderId`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`pizzaId`);
ALTER TABLE `pizza` ADD FULLTEXT KEY `pizzaName` (`pizzaName`,`pizzaDesc`);

--
-- Indexes for table `sitedetail`
--
ALTER TABLE `sitedetail`
  ADD PRIMARY KEY (`tempId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `viewcart`
--
ALTER TABLE `viewcart`
  ADD PRIMARY KEY (`cartItemId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categorieId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactId` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contactreply`
--
ALTER TABLE `contactreply`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pizza`
--
ALTER TABLE `pizza`
  MODIFY `pizzaId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `sitedetail`
--
ALTER TABLE `sitedetail`
  MODIFY `tempId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `viewcart`
--
ALTER TABLE `viewcart`
  MODIFY `cartItemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
