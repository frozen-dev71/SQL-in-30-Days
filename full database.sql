-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: internal-db.s168432.gridserver.com
-- Generation Time: Apr 21, 2020 at 08:26 PM
-- Server version: 5.6.34-79.1
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- Setting character set
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Database: `db168432_sql`

-- --------------------------------------------------------

-- Table structure for table `comments`
CREATE TABLE `comments` (
  `ID` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `comment_author` varchar(256) NOT NULL,
  `comment_author_email` varchar(256) NOT NULL,
  `comment_content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `comments`
INSERT INTO `comments` (`ID`, `post_id`, `comment_author`, `comment_author_email`, `comment_content`) VALUES
(1, 6, 'jessica', 'jessica@gmail.com', 'Great post!'),
(2, 2, 'mike', 'mike@gmail.com', 'Love it! Write more like this.'),
(3, 2, 'jamie', 'jamie@gmail.com', 'I disagree!'),
(4, 2, 'caleb', 'caleb@gmail.com', 'First');

-- --------------------------------------------------------

-- Table structure for table `facebook_users`
CREATE TABLE `facebook_users` (
  `ID` int(11) NOT NULL,
  `name` varchar(256) CHARACTER SET utf8 NOT NULL,
  `email` varchar(256) CHARACTER SET utf8 NOT NULL,
  `password` varchar(256) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `facebook_users`
INSERT INTO `facebook_users` (`ID`, `name`, `email`, `password`) VALUES
(1, 'chris', 'chris@gmail.com', '1234'),
(3, 'mattan', 'mattan@gmail.com', '1234e41234e41234e41234e41234e4');

-- --------------------------------------------------------

-- Table structure for table `posts`
CREATE TABLE `posts` (
  `ID` int(11) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `posts`
INSERT INTO `posts` (`ID`, `post_author`, `post_content`, `post_title`, `post_status`) VALUES
(1, '2', 'What is the toughest part of learning to code? ...', '6 Reasons Why You’ll Never Learn to Code', 'published'),
(2, '2', 'Python is one of the best coding languages to learn ...', 'What You Need to Know Before You Learn Python', 'published'),
(3, '5', '<p data-id="block-ember1597" ...', '63 MBA Students Learn to Code', 'published'),
(4, '7', '<span style="font-weight: 400;">Joel Califa ...', 'How I Got Hired at GitHub', 'draft'),
(5, '4', '<img class="alignnone size-full wp-image-2384" ...', '6 Jobs You Can Land If You Learn Python', 'published'),
(6, '2', 'I’m 100% sure that 100% of you are addicted to the internet ...', 'The History of The Internet', 'published'),
(7, '5', '<span style="font-weight: 400;">Welcome to the Learn to Code podcast ...', 'How I Learned to Code in 6 Months', 'draft');

-- --------------------------------------------------------

-- Table structure for table `products`
CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `book_name` varchar(256) NOT NULL,
  `author` varchar(256) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `products`
INSERT INTO `products` (`ID`, `book_name`, `author`, `price`, `quantity`) VALUES
(1, 'The Overstory', 'Richard Powers', '11.99', 4),
(2, 'Sapiens', 'Yuval Noah Harari', '18.99', 14),
(3, 'Letters to a Young Poet', 'Rainer Marie Rilke', '5.00', 40),
(4, 'Tropic of Cancer (First Edition)', 'Henry Miller', '39.00', 1),
(5, 'Pilot G-Tec-C4 Pens', '', '4.99', 8),
(6, 'Big Magic', 'Elizabeth Gilbert', '12.99', 6),
(7, 'Wild', 'Cheryl Strayed', '11.99', 5),
(8, 'Homo Dues', 'Yuval Noah Harari', '15.99', 5),
(9, 'The Bullet Journal ', 'Ryder Carroll', '19.99', 10),
(10, 'Denial of Death', 'Ernest Becker', '12.99', 6),
(11, 'Harry Potter And The Goblet Of Fire', 'J. K. Rowling', '9.99', 4);

-- --------------------------------------------------------

-- Table structure for table `purchases`
CREATE TABLE `purchases` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `purchases`
INSERT INTO `purchases` (`ID`, `user_id`, `product_id`, `quantity`) VALUES
(1, 2, 2, 1),
(2, 2, 1, 1),
(3, 1, 7, 1),
(4, 3, 9, 1);

-- --------------------------------------------------------

-- Table structure for table `states`
CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `state` varchar(255) NOT NULL,
  `drink` varchar(255) NOT NULL,
  `year` int(10) NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `states`
INSERT INTO `states` (`id`, `state`, `drink`, `year`, `image`) VALUES
(1, 'Alabama', 'Whiskey', 2004, 'whiskey.jpeg'),
(2, 'Arizona', 'Lemonade', 2019, 'lemonade.jpg'),
(5, 'Arkansas', 'Milk', 1985, 'milk.jpeg'),
(6, 'Delaware', 'Chocolate Oat Milk', 1983, 'milk.jpeg'),
(8, 'Indiana', 'Water', 2007, 'water.jpeg'),
(9, 'Kentucky', 'Milk', 2005, 'milk.jpeg'),
(10, 'Louisiana', 'Milk', 1983, 'milk.jpeg'),
(11, 'Maine', 'Moxie', 2005, 'moxie.jpeg'),
(12, 'Maryland', 'Milk', 1998, 'milk.jpeg'),
(13, 'Massachusetts', 'Cranberry Juice', 1970, 'cranberry-juice.jpeg'),
(14, 'Minnesota', 'Milk', 1984, 'milk.jpeg'),
(15, 'Mississippi', 'Milk', 1984, 'milk.jpeg'),
(16, 'Nebraska', 'Kool-Aid', 1998, 'kool-aid.jpeg'),
(17, 'New Hampshire', 'Apple Cider', 2010, 'apple-cider.jpeg'),
(18, 'New York', 'Milk', 1981, 'milk.jpeg'),
(19, 'North Carolina', 'Milk', 1987, 'milk.jpeg'),
(20, 'North Dakota', 'Milk', 1983, 'milk.jpeg'),
(21, 'Ohio', 'Tomato Juice', 1965, 'tomato-juice.jpeg'),
(22, 'Oklahoma', 'Milk', 2002, 'milk.jpeg'),
(23, 'Oregon', 'Milk', 1997, 'milk.jpeg'),
(24, 'Pennsylvania', 'Milk', 1982, 'milk.jpeg'),
(25, 'Rhode Island', 'Coffee Milk', 1993, 'coffee-milk.jpeg'),
(26, 'South Carolina', 'Milk', 1984, 'milk.jpeg'),
(27, 'South Dakota', 'Milk', 1986, 'milk.jpeg'),
(28, 'Tennessee', 'Milk', 2009, 'milk.jpeg'),
(29, 'Vermont', 'Milk', 1983, 'milk.jpeg'),
(30, 'Virginia', 'Milk', 1982, 'milk.jpeg'),
(31, 'West Virginia', 'Milk', 1998, 'milk.jpeg'),
(32, 'Wisconsin', 'Milk', 1987, 'milk.jpeg');

-- --------------------------------------------------------

-- Table structure for table `users`
CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `first_name` varchar(256) NOT NULL,
  `last_name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `users`
INSERT INTO `users` (`ID`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Chris', 'North', 'chris@gmail.com', '1234'),
(2, 'Mattan', 'Griffel', 'mattan@gmail.com', '1234'),
(3, 'Daniel', 'Aronoff', 'daniel@gmail.com', '1234'),
(4, 'Avidor', 'Klein', 'avidor@gmail.com', '1234'),
(5, 'Bob', 'Smith', 'bob@gmail.com', '1234'),
(6, 'Matt', 'Lane', 'matt@gmail.com', '1234'),
(7, 'Jim', 'Crowley', 'jim@gmail.com', '1234');

-- --------------------------------------------------------

-- Indexes for dumped tables
--
-- Indexes for table `comments`
ALTER TABLE `comments`
  ADD PRIMARY KEY (`ID`);

-- Indexes for table `facebook_users`
ALTER TABLE `facebook_users`
  ADD PRIMARY KEY (`ID`);

-- Indexes for table `posts`
ALTER TABLE `posts`
  ADD PRIMARY KEY (`ID`);

-- Indexes for table `products`
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

-- Indexes for table `purchases`
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`ID`);

-- Indexes for table `states`
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

-- Indexes for table `users`
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

-- AUTO_INCREMENT for dumped tables
--
-- AUTO_INCREMENT for table `comments`
ALTER TABLE `comments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

-- AUTO_INCREMENT for table `facebook_users`
ALTER TABLE `facebook_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

-- AUTO_INCREMENT for table `posts`
ALTER TABLE `posts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

-- AUTO_INCREMENT for table `products`
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

-- AUTO_INCREMENT for table `purchases`
ALTER TABLE `purchases`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

-- AUTO_INCREMENT for table `states`
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

-- AUTO_INCREMENT for table `users`
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

-- Setting back character set and collation
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

COMMIT;
