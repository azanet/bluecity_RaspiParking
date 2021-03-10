-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 10-03-2021 a las 16:21:53
-- Versión del servidor: 10.5.8-MariaDB-3
-- Versión de PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parking_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boxes`
--

CREATE TABLE `boxes` (
  `id_box` int(10) UNSIGNED NOT NULL,
  `id_patineta` int(10) UNSIGNED DEFAULT NULL,
  `id_parking` int(10) UNSIGNED DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  `email` varchar(100) DEFAULT NULL,
  `accion` enum('sacar','aparcar') DEFAULT NULL,
  `estado_puerta` int(11) DEFAULT NULL,
  `estado_box` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `boxes`
--

INSERT INTO `boxes` (`id_box`, `id_patineta`, `id_parking`, `fecha`, `email`, `accion`, `estado_puerta`, `estado_box`) VALUES
(1, 1, 1, '2021-03-01 15:06:34', 'pepito@gmail.com', 'aparcar', 0, 0),
(2, 2, 2, '2021-03-01 16:41:15', 'rtrtrt@gamil.com', 'sacar', 2, 0),
(3, NULL, 2, '2021-03-10 13:26:21', 'pp@email.com', NULL, 1, -1),
(4, NULL, 1, '2021-03-10 13:26:21', 'kk@email.com', NULL, 0, -1),
(5, NULL, 2, '2021-03-10 13:28:27', 'asdfasd@email.com', NULL, 1, 0),
(6, NULL, 1, '2021-03-10 13:28:27', 'juan@email.com', NULL, 1, -1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `boxes`
--
ALTER TABLE `boxes`
  ADD PRIMARY KEY (`id_box`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `boxes`
--
ALTER TABLE `boxes`
  MODIFY `id_box` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
