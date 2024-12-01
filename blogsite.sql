-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2024 at 01:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(12) NOT NULL,
  `authorID` int(12) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`tags`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(12) NOT NULL,
  `postD` int(12) NOT NULL,
  `userID` int(12) NOT NULL,
  `commentTxt` text NOT NULL,
  `posted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` text NOT NULL,
  `subject` mediumtext NOT NULL,
  `datewritten` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `firstname`, `lastname`, `username`, `email`, `country`, `subject`, `datewritten`) VALUES
(1, 'Frazer', 'Harness', 'FrazerGTFC', 'frazergtfc9@outlook.com', '', 'Hello I think Euan&#039;s website is better ', '0000-00-00 00:00:00'),
(2, 'Frazer', 'Harness', 'FrazerGTFC', 'frazergtfc9@gmail.com', 'uk', 'Hello!', '2024-11-30 22:43:14'),
(10, 'feg', 'ghgjhg', 'EuanSmells', 'frazergtfc9@outlook.com', 'canada', 'ho ', '2024-11-30 22:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(12) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `post_txt` mediumtext NOT NULL,
  `created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `post_txt`, `created`) VALUES
(2, 'What we have learned ', 'Learning project 1 ', '<h1> Hello <br> Over the past few weeks we have been introduced to many things </h1> \r\n<p> On our first week we looked at VS Code and how start to use HTML</p> \r\n<p> We Then used Mimo at home <br> to learn how to use HTML CSS and Javascript </p> \r\n<p> We then the next week downloaded GITHUB Desktop and Xampp which is the file server </p> \r\n<p> Then Next week we started creating a film site with trailors for Films in 2024 </p>', '2024-09-26'),
(8, 'Football: The Beautiful Game', 'A post about the global phenomenon of football.', 'Football, known as soccer in some parts of the world, is the most popular sport globally. With its simple rules and minimal equipment, it is accessible to people of all ages and backgrounds. The sport\'s rich history dates back to ancient civilizations, but the modern game as we know it began in the 19th century in England. Today, football is more than just a game; it\'s a global phenomenon that brings people together. Major tournaments like the FIFA World Cup and the UEFA Champions League captivate millions of fans worldwide. The sport\'s greatest players, such as Pelé, Diego Maradona, and Lionel Messi, have become legends, inspiring future generations. Whether played in a professional stadium or a local park, football\'s universal appeal continues to grow.', '2024-10-03'),
(9, 'Films: A Journey Through Cinema', 'A post about the evolution and impact of films.', 'Films have been a significant part of human culture for over a century. From the silent films of the early 20th century to the blockbuster hits of today, cinema has evolved dramatically. The magic of movies lies in their ability to transport audiences to different worlds, evoke emotions, and tell compelling stories. Directors like Alfred Hitchcock, Steven Spielberg, and Christopher Nolan have pushed the boundaries of filmmaking, creating masterpieces that stand the test of time. Genres such as drama, comedy, horror, and science fiction offer something for everyone. The film industry continues to innovate with advancements in technology, such as CGI and virtual reality, enhancing the cinematic experience. Whether enjoyed in a theater or streamed at home, films remain a beloved form of entertainment.', '2024-10-03'),
(10, 'Music: The Universal Language', 'A post about the power and diversity of music.', 'Music is a universal language that transcends cultural and linguistic barriers. It has the power to evoke emotions, create memories, and bring people together. From classical compositions by Beethoven and Mozart to contemporary hits by artists like Beyoncé and Ed Sheeran, music\'s diversity is vast. Each genre, whether it\'s rock, jazz, hip-hop, or classical, offers a unique listening experience. Music festivals, concerts, and streaming platforms have made it easier than ever to discover and enjoy music from around the world. The evolution of music technology, from vinyl records to digital downloads, has transformed how we consume music. Despite these changes, the essence of music remains the same: a powerful form of expression and connection.', '2024-10-03'),
(13, 'What did Euan Do Yesterday', 'feg', 'fdfdf', '2024-10-10'),
(19, 'Grimsby Town FC: A Rollercoaster Season in 2024/25', 'Here&rsquo;s a look at what&rsquo;s been happening at Blundell Park this season:', 'As of now, the 2024/25 season for Grimsby Town is still in progress, and a detailed review may not be fully available. However, I can provide an overview of the club&amp;#039;s general situation based on its recent history and season trends. Grimsby Town, competing in League Two (the fourth tier of English football), has been facing challenges in maintaining consistency and pushing for higher league positions after their promotion in the 2022/23 season.\r\n\r\n### Key Aspects of Grimsby Town&amp;#039;s 2024/25 Season:\r\n1. **League Position**: \r\n   The Mariners are likely aiming to stabilize their position in League Two. Having just been promoted, they would be seeking to avoid relegation and possibly aim for mid-table safety or even a push for the playoffs.\r\n\r\n2. **Transfers &amp;amp; Squad**: \r\n   Any significant movements in the transfer window, such as key player signings or departures, will have a major impact on their performance. Grimsby Town&amp;#039;s squad has often had a mix of experienced players and younger talents looking to make a name.\r\n\r\n3. **Managerial Approach**: \r\n   Under their manager (likely Paul Hurst, given his involvement with the club), Grimsby Town will focus on a balanced style, blending defensive solidity with counter-attacking football. The manager&amp;rsquo;s ability to adapt to League Two&amp;#039;s demands and manage squad rotation will be crucial.\r\n\r\n4. **Form &amp;amp; Key Players**: \r\n   The form of key players&amp;mdash;strikers and midfielders&amp;mdash;will dictate much of their success. If top players remain injury-free and in form, they could help propel the team to a strong league position.\r\n\r\n5. **Cup Runs**: \r\n   Grimsby Town&amp;#039;s progress in the FA Cup or League Cup will also be important. Historically, cup runs have provided the club with both financial rewards and a morale boost.\r\n\r\n### General Outlook:\r\nThe club&amp;#039;s primary goal for the 2024/25 season will likely be securing their League Two status while developing a competitive squad. A successful season could involve avoiding relegation, strengthening their squad for the next season, and possibly launching a run in one of the domestic cups.\r\n\r\nIf you&amp;#039;re interested in the most up-to-date performance, I recommend checking out live match reports or club-specific sources like their official website or social media for current results and detailed reviews.\r\n\r\n', '2024-11-28'),
(23, 'What did Euan Do Todaay', 'Hi hh', 'Harry scared euan forcing him to react ', '2024-11-28'),
(24, 'Euan makes me happy', 'he makes me laugh and his glasses are so good ', 'he is very very nice  \r\nhe is a nice person who makes me feel welcome ', '2024-11-28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(12) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `region` mediumtext NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `role` enum('admin','regular_usr') NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`, `birthdate`, `region`, `status`, `role`, `email`) VALUES
(1, 'FrazerGTFC', '$2y$10$y7kAtlLGtnm3Gobu4bKonezUZT3YoUEpIrXI2Dg2YnvDbMbZDRtgu', '', '', '1990-01-01', '', 'active', 'admin', 'frazergtfc9@outlook.com'),
(2, 'EuanSmells', '$2y$10$OoI11Ca8LgLPwLbcd1EkIuvETxZt5WuDipogDidI8ILdvmPSM2K0e', '', '', '1990-01-01', '', 'active', 'regular_usr', 'frazergtfc9@gmail.com'),
(3, 'EuanGlynnRobertParry', '$2y$10$fpfTdH6QGxVB.EYVqlZVZ.an4R8gD4pqILGz6HbMoYsjPIiGwJuv2', 'Euan', 'Parry', '2007-06-07', 'United Kingdom', 'active', 'admin', 'euan@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
