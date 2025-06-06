-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2025 a las 07:03:56
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `servicios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios01`
--

CREATE TABLE `servicios01` (
  `id` int(11) NOT NULL,
  `nombre_cliente` varchar(100) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `tipo_servicio` varchar(100) DEFAULT NULL,
  `tipo_equipo` varchar(50) DEFAULT NULL,
  `marca_equipo` varchar(50) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `codigo_rastreo` char(8) DEFAULT NULL,
  `estado` enum('En revisión','Completado','Entregado') DEFAULT 'En revisión',
  `fecha_ingreso` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicios01`
--

INSERT INTO `servicios01` (`id`, `nombre_cliente`, `celular`, `tipo_servicio`, `tipo_equipo`, `marca_equipo`, `descripcion`, `codigo_rastreo`, `estado`, `fecha_ingreso`) VALUES
(1, 'carlos', '954478965', 'Mantenimiento de impresora', 'Laptop', 'HP', '', 'JVMR8FD9', '', '2025-06-06 05:00:00'),
(2, 'carlos', '954478965', 'Mantenimiento de impresora', 'Laptop', 'HP', '', '7J13NZCG', '', '2025-06-06 05:00:00'),
(3, 'yordany', '954478965', 'Mantenimiento de impresora', 'Impresora', 'Canon', '', 'R3C4MFTW', '', '2025-06-06 05:00:00'),
(4, 'joel', '324567895', 'Instalacion de programas', 'Laptop', 'HP', '', 'PIX6RWS7', '', '2025-06-06 05:00:00'),
(5, 'joel', '324567895', 'Instalacion de programas', 'Laptop', 'HP', '', 'WVEIBDSU', '', '2025-06-06 05:00:00'),
(6, 'joel', '988765457', 'Revision de laptop', 'Laptop', 'Dell', '', 'BXJ0QVW9', '', '2025-06-06 05:00:00'),
(7, 'yordany13', '954478965', 'Mantenimiento de impresora', 'Impresora', 'Canon', 'cambio de cartucho', 'ULWQ7PF4', '', '2025-06-06 05:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `servicios01`
--
ALTER TABLE `servicios01`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo_rastreo` (`codigo_rastreo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `servicios01`
--
ALTER TABLE `servicios01`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
