-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 16 2021 г., 16:23
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dikidi_test`
--
CREATE DATABASE IF NOT EXISTS `dikidi_test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `dikidi_test`;

-- --------------------------------------------------------

--
-- Структура таблицы `motorcycles`
--

CREATE TABLE `motorcycles` (
  `row_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `issued` tinyint(1) NOT NULL,
  `type_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `motorcycles`
--

INSERT INTO `motorcycles` (`row_id`, `name`, `issued`, `type_id`) VALUES
(1, 'Ducati Monster S4', 1, 1),
(2, 'Suzuki Bandit 250-1250', 1, 1),
(3, 'Jawa 350', 0, 1),
(4, 'Ducati 749', 1, 2),
(5, 'Honda CBR600F Hurricane', 1, 2),
(6, 'Kawasaki Ninja ZX-6R', 0, 2),
(7, 'Honda CBR600RR', 1, 3),
(8, 'Kawasaki Ninja ZX-6RR', 1, 3),
(9, 'Triumph Daytona 675', 0, 3),
(10, 'BMW K1200GT', 1, 4),
(11, 'Honda Blackbird', 1, 4),
(12, 'Kawasaki ZZR', 0, 4),
(13, 'BMW R1200RT', 1, 5),
(14, 'Harley-Davidson Tour Glide', 1, 5),
(15, 'Honda Gold Wing', 0, 5),
(16, 'Honda Magna 250', 1, 6),
(17, 'Honda Rebel 500', 1, 6),
(18, 'Honda Shadow 600', 0, 6),
(19, 'Yamaha Drag Star 2021', 1, 7),
(20, 'Suzuki VZ 800 Boulevard M50', 1, 7),
(21, 'Honda steed 400', 0, 7),
(22, 'Harley-Davidson Softail', 1, 8),
(23, 'BMW K 100 RS', 1, 8),
(24, 'Kawasaki VN Vulcan 400 Classic', 0, 8),
(25, 'Yamaha F155', 1, 9),
(26, 'BMW Definition CE 04', 1, 9),
(27, 'Moto Guzzi Stornello 850', 0, 9),
(28, 'Suzuki TL1000', 1, 10),
(29, 'Yamaha XVS650A', 1, 10),
(30, 'Yamaha Dragstar 1100', 0, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `motorcycles_type`
--

CREATE TABLE `motorcycles_type` (
  `row_id` int NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `motorcycles_type`
--

INSERT INTO `motorcycles_type` (`row_id`, `name`) VALUES
(1, 'Классик'),
(2, 'Спорт'),
(3, 'Суперспорт'),
(4, 'Спорт-турер'),
(5, 'Турер'),
(6, 'Чоппер'),
(7, 'Боббер'),
(8, 'Кастом'),
(9, 'Концепт'),
(10, 'Драгстер');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `motorcycles`
--
ALTER TABLE `motorcycles`
  ADD PRIMARY KEY (`row_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Индексы таблицы `motorcycles_type`
--
ALTER TABLE `motorcycles_type`
  ADD PRIMARY KEY (`row_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `motorcycles`
--
ALTER TABLE `motorcycles`
  MODIFY `row_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `motorcycles_type`
--
ALTER TABLE `motorcycles_type`
  MODIFY `row_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `motorcycles`
--
ALTER TABLE `motorcycles`
  ADD CONSTRAINT `motorcycles_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `motorcycles_type` (`row_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
