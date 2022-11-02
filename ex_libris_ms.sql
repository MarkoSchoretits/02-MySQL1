-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 02. Nov 2022 um 15:20
-- Server-Version: 10.4.21-MariaDB
-- PHP-Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `ex_libris_ms`
--

--
-- Daten für Tabelle `book`
--

INSERT INTO `book` (`book_id`, `isbn`, `book_title`, `book_author`, `genre`, `language`, `description`, `fk_location_id`) VALUES
(1, 1234567890123, 'Hitchhiker´s Guide to the Galaxy', 'ADAMS Douglas', 'G1', 'EN', '42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42', 5),
(2, 2234567890123, 'Ravno', 'SCHORETITS Ana', 'G2', 'KR', 'RAVNO - Geradeaus - Poesie in zwei Sprachen', 1);

--
-- Daten für Tabelle `borrow`
--

INSERT INTO `borrow` (`borrow_id`, `fk_book_id`, `borrow_date`, `borrow_return_date`, `fk_friend_id`) VALUES
(1, 2, '2000-01-01', '2001-01-01', 3);

--
-- Daten für Tabelle `friend`
--

INSERT INTO `friend` (`friend_id`, `friend_name`, `friend_contact`) VALUES
(1, 'Ula B', 'anstupsen'),
(2, 'Herald', 'anrufen'),
(3, 'Jutta', 'WhatsApp');

--
-- Daten für Tabelle `lend`
--

INSERT INTO `lend` (`lend_id`, `fk_book_id`, `lend_date`, `lend_return_date`, `fk_friend_id`) VALUES
(1, 1, '2022-11-01', '0000-00-00', 1),
(2, 2, '2022-10-30', '0000-00-00', 2);

--
-- Daten für Tabelle `location`
--

INSERT INTO `location` (`location_id`, `location_name`) VALUES
(1, 'Zagersdorf Stock'),
(2, 'Zagersdorf Wohnzimmer'),
(3, 'Zagersdorf Büro'),
(4, 'Wien Wohnzimmer'),
(5, 'Wien Büro');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
