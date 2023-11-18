-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2023 at 06:06 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be20_cr4_bryancucho_biglibrary`
--
CREATE DATABASE IF NOT EXISTS `be20_cr4_bryancucho_biglibrary` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be20_cr4_bryancucho_biglibrary`;

-- --------------------------------------------------------

--
-- Table structure for table `media_list`
--

CREATE TABLE `media_list` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `author_lastname` varchar(255) NOT NULL,
  `publisher_name` varchar(255) NOT NULL,
  `publisher_address` varchar(255) NOT NULL,
  `publish_date` date NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `media_list`
--

INSERT INTO `media_list` (`id`, `title`, `isbn`, `description`, `type`, `author_name`, `author_lastname`, `publisher_name`, `publisher_address`, `publish_date`, `price`, `image`) VALUES
(5, 'The Great Gatsby', '9780743273565', 'The Great Gatsby is a 1925 novel by American writer F. Scott Fitzgerald. Set in the Jazz Age on Long Island, the novel depicts narrator Nick Carraway’s interactions with mysterious millionaire Jay Gatsby and Gatsby’s obsession to reunite with his former l', 'book', 'F. Scott', 'Fitzgerald', 'Thalia', '597 Fifth Avenue, New York', '2001-01-02', 11.99, '6558c6e23b893.jpg'),
(7, 'The Silence of the Lambs', '9780312924584', 'The Silence of the Lambs is a psychological horror novel by Thomas Harris. First published in 1988, it is the sequel to Harris’s 1981 novel Red Dragon.', 'book', 'Thomas', 'Harris', 'Thalia', '175 Fifth Avenue, New York', '1988-05-20', 14.99, '6558c6f3ee90b.jpg'),
(8, 'The Beatles (The White Album)', '5099963375929', 'The Beatles, also known as the White Album, is the ninth studio album by the English rock band the Beatles, released on 22 November 1968.', 'cd', 'The Beatles', 'N/A', 'Apple Records', '3 Savile Row, London', '1987-06-10', 12.99, '6558c70449569.jpg'),
(9, 'The Shining', '9780385121675', 'The Shining is a horror novel by American author Stephen King. Published in 1977, it is King’s third published novel and first hardback bestseller.', 'book', 'Stephen', 'King', 'Thalia', '245 Park Avenue, New York', '1977-01-28', 13.99, '6558c72187266.jpg'),
(10, 'The Wall', '5099902988316', 'The Wall is the eleventh studio album by the English rock band Pink Floyd, released on 30 November 1979.', 'cd', 'Pink', 'Floyd', 'Harvest Records', 'Abbey Road, London', '1979-11-30', 10.99, '6558c81391a88.jpg'),
(11, 'The Shining 2', '978-0307743657', 'A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.', 'book', 'Stephen', 'King', 'Anchor', 'New York', '1977-01-28', 12.99, '6558ca2163e51.jpg'),
(12, 'The Exorcist', '978-0062094353', 'When a young girl becomes possessed by a mysterious entity, her mother seeks the help of two priests to save her daughter.', 'dvd', 'William', 'Blatty', 'Harper', 'New York', '1971-06-01', 9.99, '6558ca5f86764.jpg'),
(13, 'The Conjuring', '883929388537', 'Paranormal investigators Ed and Lorraine Warren work to help a family terrorized by a dark presence in their farmhouse.', 'dvd', 'James', 'Wan', 'Warner Bros. Pictures', 'Burbank, California', '2013-07-19', 14.99, '6558ca493a3e7.jpg'),
(14, 'The Ring', '978-0780622672', 'A journalist must investigate a mysterious videotape which seems to cause the death of anyone one week to the day after they view it.', 'book', 'Gore', 'Verbinski', 'DreamWorks Pictures', 'Universal City, California', '2002-10-18', 9.99, '6558c48776c15.webp'),
(16, 'The Lord of the Rings: The Fellowship of the Ring', '978-0780638932', 'A young hobbit, Frodo, who has found the One Ring that belongs to the Dark Lord Sauron, begins his journey with eight companions to Mount Doom, the only place where it can be destroyed.', 'dvd', 'J.R.R.', 'Tolkien', 'New Line Home Entertainment', 'Burbank, California', '2002-08-06', 9.99, '6558c45b9e2ed.jpg'),
(17, 'Harry Potter and the Sorcerers Stone', '880590353427', 'Our hero Harry returns to Hogwarts School for another term, he finds it guarded by fearsome Dementors, the guards of Azkaban prison.', 'dvd', 'J.K.', 'Rowling', 'Warner Bros. Pictures', 'Burbank, California', '2002-05-28', 14.99, '6558ca7cc1022.jpg'),
(21, 'The Two Towers  The Lord of the Rings ', '25469875', 'A legendary fantasy writer best known as the creator of Middle-earth and author of such classic and extraordinary works of fiction as The Hobbit, The Lord of the Rings, The Silmarillion and The Children of Hurin.', 'book', 'J. R. R. ', 'www', 'Waterstones', 'Ketenbruckengasse 99', '2012-01-01', 50.00, '6558c4b5d9ec0.jpg'),
(22, 'The Hobbit', '22123123', 'A legendary fantasy writer best known as the creator of Middle-earth and author of such classic and extraordinary works of fiction as The Hobbit, The Lord of the Rings', 'book', 'J. R. R', 'qweqwe', 'Waterstones', 'Ketenbruckengasse 99', '2012-01-01', 83.00, '6558c4da82fd7.webp'),
(23, 'Meteora', '9781844493043', 'Best hits Of them', 'cd', 'Linkin Park', 'Singers', 'Waterstones', 'Ketenbruckengasse 99', '2002-05-05', 20.00, '6558c5ae7d5dd.jpg'),
(25, 'The Godfather', '6969669', 'An epic tale of family, vengeance and loyalty, The Godfather is a true crime classic.', '', 'Mario', ' Puzo', 'Waterstones', 'Ketenbruckengasse 99', '2012-01-02', 98.00, '6558e141f3ff6.jpg'),
(26, 'Blancanieves', '1234567', 'Not cheap but good', 'book', 'ted', 'Kings', 'Thalia', 'Ketenbruckengasse 99', '2012-01-08', 1.00, '6558e87187155.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `media_list`
--
ALTER TABLE `media_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `media_list`
--
ALTER TABLE `media_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
