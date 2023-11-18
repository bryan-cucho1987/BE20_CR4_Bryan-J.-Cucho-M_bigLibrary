-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2023 at 01:03 PM
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
-- Database: `BE20_CR4_BryanCucho_Biglibrary`
--

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
  `publish_date` varchar(255) NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `media_list`
--

INSERT INTO `media_list` (`id`, `title`, `isbn`, `description`, `type`, `author_name`, `author_lastname`, `publisher_name`, `publisher_address`, `publish_date`, `price`, `image`) VALUES
(1, 'The Catcher in the Rye', '9780316769488', 'The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945, 1946 and as a novel in 1951.', 'Book', 'J. D.', 'Salinger', 'Little, Brown and Company', '34 Beacon Street, Boston', '1951-07-16', 12.99, NULL),
(2, 'The Dark Side of the Moon', '5099902988019', 'The Dark Side of the Moon is the eighth studio album by English rock band Pink Floyd, released on 1 March 1973.', 'CD', 'Pink', 'Floyd', 'Harvest Records', 'Abbey Road, London', '1973-03-01', 9.99, NULL),
(3, 'The Godfather', '9780451205766', 'The Godfather is a crime novel by American author Mario Puzo. Originally published in 1969 by G. P. Putnam\'s Sons, the novel details the story of a fictional Mafia family based in New York City.', 'Book', 'Mario', 'Puzo', 'G. P. Putnam\'s Sons', '200 Madison Avenue, New York', '1969-03-10', 15.99, NULL),
(4, 'The Shawshank Redemption', '883929088462', 'The Shawshank Redemption is a 1994 American drama film written and directed by Frank Darabont, based on the 1982 Stephen King novella Rita Hayworth and Shawshank Redemption.', 'DVD', 'Frank', 'Darabont', 'Columbia Pictures', '10202 West Washington Boulevard, Culver City', '1994-09-23', 7.99, NULL),
(5, 'The Great Gatsby', '9780743273565', 'The Great Gatsby is a 1925 novel by American writer F. Scott Fitzgerald. Set in the Jazz Age on Long Island, the novel depicts narrator Nick Carraways interactions with mysterious millionaire Jay Gatsby and Gatsbys obsession to reunite with his former l', 'Book', 'F. Scott', 'Fitzgerald', 'Charles Scribners Sons', '597 Fifth Avenue, New York', '1925-04-10', 11.99, NULL),
(6, 'Thriller', '0746438112', 'Thriller is the sixth studio album by American singer Michael Jackson, released on November 30, 1982.', 'CD', 'Michael', 'Jackson', 'Epic Records', '550 Madison Avenue, New York', '1982-11-30', 8.99, NULL),
(7, 'The Silence of the Lambs', '9780312924584', 'The Silence of the Lambs is a psychological horror novel by Thomas Harris. First published in 1988, it is the sequel to Harris 1981 novel Red Dragon.', 'DVD', 'Thomas', 'Harris', 'St. Martins Press', '175 Fifth Avenue, New York', '1988-05-20', 14.99, NULL),
(8, 'The Beatles (The White Album)', '5099963375929', 'The Beatles, also known as the White Album, is the ninth studio album by the English rock band the Beatles, released on 22 November 1968.', 'CD', 'The Beatles', 'N/A', 'Apple Records', '3 Savile Row, London', '1968-11-22', 12.99, NULL),
(9, 'The Shining', '9780385121675', 'The Shining is a horror novel by American author Stephen King. Published in 1977, it is Kings third published novel and first hardback bestseller.', 'Book', 'Stephen', 'King', 'Doubleday', '245 Park Avenue, New York', '1977-01-28', 13.99, NULL),
(10, 'The Wall', '5099902988316', 'The Wall is the eleventh studio album by the English rock band Pink Floyd, released on 30 November 1979.', 'CD', 'Pink', 'Floyd', 'Harvest Records', 'Abbey Road, London', '1979-11-30', 10.99, NULL),
(11, 'The Shining 2', '978-0307743657', 'A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.', 'book', 'Stephen', 'King', 'Anchor', 'New York', '1977-01-28', 12.99, NULL),
(12, 'The Exorcist', '978-0062094353', 'When a young girl becomes possessed by a mysterious entity, her mother seeks the help of two priests to save her daughter.', 'book', 'William', 'Blatty', 'Harper', 'New York', '1971-06-01', 9.99, NULL),
(13, 'The Conjuring', '883929388537', 'Paranormal investigators Ed and Lorraine Warren work to help a family terrorized by a dark presence in their farmhouse.', 'DVD', 'James', 'Wan', 'Warner Bros. Pictures', 'Burbank, California', '2013-07-19', 14.99, NULL),
(14, 'The Ring', '978-0780622672', 'A journalist must investigate a mysterious videotape which seems to cause the death of anyone one week to the day after they view it.', 'DVD', 'Gore', 'Verbinski', 'DreamWorks Pictures', 'Universal City, California', '2002-10-18', 9.99, NULL),
(15, 'The Silence of the Lambs', '978-0312924584', 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.', 'book', 'Thomas', 'Harris', 'St. Martin\'s Press', 'New York', '1988-05-20', 11.99, NULL),
(16, 'The Lord of the Rings, The Fellowship of the Ring', '978-0780638932', 'A young hobbit, Frodo, who has found the One Ring that belongs to the Dark Lord Sauron, begins his journey with eight companions to Mount Doom, the only place where it can be destroyed.', 'DVD', 'J.R.R.', 'Tolkien', 'New Line Home Entertainment', 'Burbank, California', '2002-08-06', 9.99, NULL),
(17, 'Harry Potter and the Sorcerers Stone', '978-0590353427', 'An orphaned boy enrolls in a school of wizardry, where he learns the truth about himself, his family and the terrible evil that haunts the magical world.', 'DVD', 'J.K.', 'Rowling', 'Warner Bros. Pictures', 'Burbank, California', '2002-05-28', 14.99, NULL),
(18, 'The Chronicles of Narnia: The Lion, the Witch and the Wardrobe', '978-0064404990', 'Four kids travel through a wardrobe to the land of Narnia and learn of their destiny to free it with the guidance of a mystical lion.', 'DVD', 'C.S.', 'Lewis', 'Walt Disney Home Entertainment', 'Burbank, California', '2006-04-04', 12.99, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
