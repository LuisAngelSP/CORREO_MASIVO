-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-04-2023 a las 03:15:13
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_masivo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_producto`
--

CREATE TABLE `tm_producto` (
  `prod_id` int(11) NOT NULL,
  `prod_nom` varchar(250) NOT NULL,
  `prod_precion` varchar(20) NOT NULL,
  `prod_preciod` varchar(20) NOT NULL,
  `prod_url` varchar(600) NOT NULL,
  `prod_img` varchar(600) NOT NULL,
  `prod_cupon` varchar(20) NOT NULL,
  `prod_descrip` varchar(600) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `fech_modi` datetime DEFAULT NULL,
  `fech_elim` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_producto`
--

INSERT INTO `tm_producto` (`prod_id`, `prod_nom`, `prod_precion`, `prod_preciod`, `prod_url`, `prod_img`, `prod_cupon`, `prod_descrip`, `fech_crea`, `fech_modi`, `fech_elim`, `est`) VALUES
(1, '\'Vengadores: Infinity War\'', '29.90', '9.99', 'https://blog.mundo-r.com/es', 'https://imgs.search.brave.com/JH3J2kvjPcpb2mb5ApPA4vX4AwpAOVDtbggHaGBEIFE/rs:fit:517:778:1/g:ce/aHR0cHM6Ly9ibG9n/Lm11bmRvLXIuY29t/L3dwLWNvbnRlbnQv/dXBsb2Fkcy8yMDE4/LzExL3ZlbmdhZG9y/ZXMuanBn', '0', '\'Vengadores: Infinity War\', en M. Estrenos - BlogR\r\nblog.mundo-r.com', '2023-04-03 01:18:41', NULL, '2023-04-03 08:00:12', 0),
(4, 'SQL (Structure Query Language)', '15.25', '5.30', 'https://www.aulafacil.com/cursos/programacion/sql-basico/introduccion-l40081', 'https://www.aulafacil.com/uploads/cursos/6407/23603_sq.es.png', '0', 'El lenguaje SQL está compuesto por comandos, cláusulas, operadores y funciones de agregado. Estos elementos se combinan en las instrucciones para crear, actualizar y manipular las bases de datos.', '2023-04-03 01:50:20', NULL, NULL, 1),
(5, 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2023-04-03 09:09:10', NULL, '2023-04-03 09:15:18', 0),
(6, 'test2', 'test2', 'test2', 'test2', 'test2', 'test2', 'test2', '2023-04-03 09:15:10', NULL, '2023-04-03 09:59:27', 0),
(7, 'test3sdsadsad', 'test3dsads', 'test3', 'test3', 'test3', 'test3', 'test3test3test3test3test3test3test3', '2023-04-03 09:49:47', '2023-04-03 09:50:06', NULL, 1),
(8, 'placa', 'placa', 'placa', 'placa', 'placa', 'placa', 'placa', '2023-04-04 21:00:18', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_usuario`
--

CREATE TABLE `tm_usuario` (
  `usu_id` int(11) NOT NULL,
  `usu_nom` varchar(150) DEFAULT NULL,
  `usu_apep` varchar(150) DEFAULT NULL,
  `usu_apem` varchar(150) DEFAULT NULL,
  `correo` varchar(150) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `rol_id` int(11) NOT NULL,
  `usu_pass` int(11) DEFAULT NULL,
  `fech_modi` datetime DEFAULT NULL,
  `fech_elim` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_usuario`
--

INSERT INTO `tm_usuario` (`usu_id`, `usu_nom`, `usu_apep`, `usu_apem`, `correo`, `fech_crea`, `rol_id`, `usu_pass`, `fech_modi`, `fech_elim`, `est`) VALUES
(1, 'Luis', 'Salgueron', 'Prado', 'salgueronprado18@gmail.com', '2023-04-01 21:50:21', 2, 123456, NULL, NULL, 1),
(20, NULL, NULL, NULL, 'lalag8683@gmail.com', '2023-04-06 18:50:55', 1, NULL, NULL, NULL, 1),
(22, NULL, NULL, NULL, 'lasprap18@gmail.com', '2023-04-06 18:52:02', 1, NULL, NULL, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indices de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  ADD PRIMARY KEY (`usu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
