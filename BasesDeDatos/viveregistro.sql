-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2021 a las 18:32:03
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `viveregistro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadosistema`
--

CREATE TABLE `estadosistema` (
  `idSistema` int(12) NOT NULL,
  `estadoSistema` tinyint(1) DEFAULT NULL,
  `estadoLinea1` tinyint(1) DEFAULT NULL,
  `estadoLinea2` tinyint(1) DEFAULT NULL,
  `estadoLinea3` tinyint(1) DEFAULT NULL,
  `estadoLinea4` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estadosistema`
--

INSERT INTO `estadosistema` (`idSistema`, `estadoSistema`, `estadoLinea1`, `estadoLinea2`, `estadoLinea3`, `estadoLinea4`) VALUES
(1, 1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantas`
--

CREATE TABLE `plantas` (
  `id_planta` int(12) NOT NULL,
  `nombre_planta` varchar(200) NOT NULL,
  `descripcion_planta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `plantas`
--

INSERT INTO `plantas` (`id_planta`, `nombre_planta`, `descripcion_planta`) VALUES
(2, 'Millonaria', 'Es una planta con grandes caracteristicas'),
(3, 'Suculenta ', 'Es una pequeña planta y bonita'),
(4, 'Menta', 'Es una planta suave, que sirve para hacer chicles'),
(7, 'enredadera', 'Es una planta grande con gruesas plantas'),
(8, 'Girasol', 'Es una planta pequeña de color amarillo'),
(12, 'rosa', 'es una flor con petalos rojos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrohumedad`
--

CREATE TABLE `registrohumedad` (
  `idH` int(12) NOT NULL,
  `idSensorH` int(12) NOT NULL,
  `porcentajeH` varchar(100) NOT NULL,
  `estadoH` varchar(255) NOT NULL,
  `descripcionH` varchar(255) NOT NULL,
  `fechaRegistroH` time NOT NULL DEFAULT current_timestamp(),
  `fechaRegistroH2` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registrohumedad`
--

INSERT INTO `registrohumedad` (`idH`, `idSensorH`, `porcentajeH`, `estadoH`, `descripcionH`, `fechaRegistroH`, `fechaRegistroH2`) VALUES
(1, 1, '32', 'Activo', 'La humedad es baja', '09:26:51', '2021-06-22 09:27:44'),
(2, 2, '43', 'Activo', 'la humedad es media', '09:26:51', '2021-06-22 09:27:44'),
(3, 3, '65', 'Activo', 'La humedad es alta', '09:26:51', '2021-06-22 09:27:44'),
(4, 4, '43', 'Activo', 'La humedad es alta', '09:26:51', '2021-06-22 09:27:44'),
(5, 1, '23', 'Activo', 'La humedad es baja', '09:26:51', '2021-06-22 09:27:44'),
(6, 2, '19', 'Activo', 'La humedad es baja', '09:26:51', '2021-06-22 09:27:44'),
(7, 3, '34', 'Activo', 'La humedad es media', '09:26:51', '2021-06-22 09:27:44'),
(8, 4, '11', 'Activo', 'La humedad es baja', '09:26:51', '2021-06-22 09:27:44'),
(9, 1, '21', 'Activo', 'La humedad es alta', '09:26:51', '2021-06-22 09:27:44'),
(10, 2, '43', 'Activo', 'La humedad es baja', '09:26:51', '2021-06-22 09:27:44'),
(11, 3, '14', 'Activo', 'La humedad es baja', '09:26:51', '2021-06-22 09:27:44'),
(12, 4, '34', 'Activo', 'La humedad es media', '09:26:51', '2021-06-22 09:27:44'),
(132, 2, '34', 'Activo', 'La humedad es media', '09:26:51', '2021-06-22 09:27:44'),
(133, 2, '45', 'Activo', 'La humedad es media', '09:26:51', '2021-06-22 09:27:44'),
(138, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '09:26:51', '2021-06-22 09:27:44'),
(139, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '09:26:51', '2021-06-22 09:27:44'),
(140, 1, '99', 'Activo', '¡El suelo está demasiado humedo!', '09:26:51', '2021-06-22 09:27:44'),
(141, 1, '99', 'Activo', '¡El suelo está demasiado humedo!', '09:26:51', '2021-06-22 09:27:44'),
(142, 1, '101', 'Activo', '¡El suelo está demasiado humedo!', '09:26:51', '2021-06-22 09:27:44'),
(143, 1, '100', 'Activo', '¡El suelo está demasiado humedo!', '09:26:51', '2021-06-22 09:27:44'),
(144, 1, '100', 'Activo', '¡El suelo está demasiado humedo!', '09:26:51', '2021-06-22 09:27:44'),
(145, 1, '18', 'Activo', 'El suela está seco', '09:26:51', '2021-06-22 09:27:44'),
(146, 1, '71', 'Activo', 'El suela está seco', '09:26:51', '2021-06-22 09:27:44'),
(147, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '09:26:51', '2021-06-22 09:27:44'),
(148, 1, '4', 'Activo', 'El sensor está fuera de la tierra', '09:26:51', '2021-06-22 09:27:44'),
(149, 1, '2', 'Activo', 'El sensor está fuera de la tierra', '09:26:51', '2021-06-22 09:27:44'),
(150, 1, '1', 'Activo', 'El sensor está fuera de la tierra', '09:26:51', '2021-06-22 09:27:44'),
(151, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '09:26:51', '2021-06-22 09:27:44'),
(152, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '09:26:51', '2021-06-22 09:27:44'),
(153, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '09:26:51', '2021-06-22 09:27:44'),
(154, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '09:26:51', '2021-06-22 09:27:44'),
(155, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '09:26:51', '2021-06-22 09:27:44'),
(156, 1, '1', 'Activo', 'El sensor está fuera de la tierra', '09:26:51', '2021-06-22 09:27:44'),
(157, 1, '100', 'Activo', '¡El suelo está demasiado humedo!', '09:26:51', '2021-06-22 09:27:44'),
(158, 1, '100', 'Activo', '¡El suelo está demasiado humedo!', '09:26:51', '2021-06-22 09:27:44'),
(159, 1, '99', 'Activo', '¡El suelo está demasiado humedo!', '09:26:51', '2021-06-22 09:27:44'),
(160, 1, '99', 'Activo', '¡El suelo está demasiado humedo!', '09:26:51', '2021-06-22 09:27:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrotemperatura`
--

CREATE TABLE `registrotemperatura` (
  `idT` int(12) NOT NULL,
  `idSensorT` int(12) NOT NULL,
  `porcentajeT` varchar(100) NOT NULL,
  `estadoT` varchar(255) NOT NULL,
  `descripcionT` varchar(255) NOT NULL,
  `fechaRegistroT` time NOT NULL DEFAULT current_timestamp(),
  `fechaRegistroT2` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registrotemperatura`
--

INSERT INTO `registrotemperatura` (`idT`, `idSensorT`, `porcentajeT`, `estadoT`, `descripcionT`, `fechaRegistroT`, `fechaRegistroT2`) VALUES
(6, 2, '26', 'Activo', 'La temperatura es regular', '09:31:04', '2021-06-22 09:31:41'),
(7, 2, '18', 'Activo', 'La temperatura es regular', '09:31:04', '2021-06-22 09:31:41'),
(8, 2, '10', 'Activo', 'La temperatura es baja', '09:31:04', '2021-06-22 09:31:41'),
(9, 2, '17', 'Activo', 'La temperatura es baja', '09:31:04', '2021-06-22 09:31:41'),
(10, 2, '32', 'Activo', 'La temperatura es alta', '09:31:04', '2021-06-22 09:31:41'),
(11, 3, '19', 'Activo', 'La temperatura es regular', '09:31:04', '2021-06-22 09:31:41'),
(12, 3, '24', 'Activo', 'La temperatura es regular', '09:31:04', '2021-06-22 09:31:41'),
(13, 3, '14', 'Activo', 'La temperatura es baja', '09:31:04', '2021-06-22 09:31:41'),
(14, 3, '9', 'Activo', 'La temperatura es baja', '09:31:04', '2021-06-22 09:31:41'),
(15, 3, '38', 'Activo', 'La temperatura es alta', '09:31:04', '2021-06-22 09:31:41'),
(16, 4, '23', 'Activo', 'La temperatura es regular', '09:31:04', '2021-06-22 09:31:41'),
(17, 4, '11', 'Activo', 'La temperatura es baja', '09:31:04', '2021-06-22 09:31:41'),
(18, 4, '19', 'Activo', 'La temperatura es regular', '09:31:04', '2021-06-22 09:31:41'),
(19, 4, '32', 'Activo', 'La temperatura es alta', '09:31:04', '2021-06-22 09:31:41'),
(126, 1, '25', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(137, 1, '25', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(138, 1, '25', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(139, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(140, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(141, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(142, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(143, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(144, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(145, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(146, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(147, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(148, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(149, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(150, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(151, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(152, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(153, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(154, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(155, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(156, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(157, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(158, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(159, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(160, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41'),
(161, 1, '23', 'Activo', 'El aire es calido', '09:31:04', '2021-06-22 09:31:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sensorh`
--

CREATE TABLE `sensorh` (
  `idSensorH` int(12) NOT NULL,
  `plantaSensorH` varchar(255) NOT NULL,
  `nombreSensorH` varchar(255) NOT NULL,
  `tipoSensorH` varchar(255) NOT NULL,
  `colorSensorH` varchar(255) NOT NULL,
  `fechaCreacionH` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sensorh`
--

INSERT INTO `sensorh` (`idSensorH`, `plantaSensorH`, `nombreSensorH`, `tipoSensorH`, `colorSensorH`, `fechaCreacionH`) VALUES
(1, 'Suculenta 2', 'sensor 1', 'Humedad', '#26ffae', '2021-05-26 21:39:53'),
(2, 'Menta', 'sensor 2', 'Humedad', '#59c2e1', '2021-05-26 21:41:02'),
(3, 'Amarilla', 'sensor 3', 'Humedad', '#4d64ff', '2021-05-26 21:53:17'),
(4, 'Menta', 'sensor 4', 'Humedad', '#a12eee', '2021-05-26 21:53:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sensorl`
--

CREATE TABLE `sensorl` (
  `idL` int(12) NOT NULL,
  `porcentajeL` varchar(255) NOT NULL,
  `estadoL` varchar(100) NOT NULL,
  `descripcionL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sensorl`
--

INSERT INTO `sensorl` (`idL`, `porcentajeL`, `estadoL`, `descripcionL`) VALUES
(1, '50', 'Lloviendo', 'La lluvia es moderada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sensort`
--

CREATE TABLE `sensort` (
  `idSensorT` int(12) NOT NULL,
  `plantaSensorT` varchar(255) NOT NULL,
  `nombreSensorT` varchar(255) NOT NULL,
  `tipoSensorT` varchar(255) NOT NULL,
  `colorSensorT` varchar(255) NOT NULL,
  `fechaCreacionT` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sensort`
--

INSERT INTO `sensort` (`idSensorT`, `plantaSensorT`, `nombreSensorT`, `tipoSensorT`, `colorSensorT`, `fechaCreacionT`) VALUES
(1, 'tulipan', 'sensor 1', 'Temperatura', '#30ff86', '2021-05-26 21:47:43'),
(2, 'Amarilla', 'sensor 2', 'Temperatura', '#ff6a6a', '2021-05-26 21:49:54'),
(3, 'enredadera', 'sensor 3', 'Temperatura', '#770041', '2021-05-26 22:47:04'),
(4, 'Menta', 'sensor 4', 'Temperatura', '#ff8abb', '2021-05-26 22:47:38');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estadosistema`
--
ALTER TABLE `estadosistema`
  ADD PRIMARY KEY (`idSistema`);

--
-- Indices de la tabla `plantas`
--
ALTER TABLE `plantas`
  ADD PRIMARY KEY (`id_planta`);

--
-- Indices de la tabla `registrohumedad`
--
ALTER TABLE `registrohumedad`
  ADD PRIMARY KEY (`idH`),
  ADD KEY `idSensorH` (`idSensorH`);

--
-- Indices de la tabla `registrotemperatura`
--
ALTER TABLE `registrotemperatura`
  ADD PRIMARY KEY (`idT`),
  ADD KEY `idSensorT` (`idSensorT`);

--
-- Indices de la tabla `sensorh`
--
ALTER TABLE `sensorh`
  ADD PRIMARY KEY (`idSensorH`);

--
-- Indices de la tabla `sensorl`
--
ALTER TABLE `sensorl`
  ADD PRIMARY KEY (`idL`);

--
-- Indices de la tabla `sensort`
--
ALTER TABLE `sensort`
  ADD PRIMARY KEY (`idSensorT`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estadosistema`
--
ALTER TABLE `estadosistema`
  MODIFY `idSistema` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `plantas`
--
ALTER TABLE `plantas`
  MODIFY `id_planta` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `registrohumedad`
--
ALTER TABLE `registrohumedad`
  MODIFY `idH` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `registrotemperatura`
--
ALTER TABLE `registrotemperatura`
  MODIFY `idT` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT de la tabla `sensorh`
--
ALTER TABLE `sensorh`
  MODIFY `idSensorH` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `sensorl`
--
ALTER TABLE `sensorl`
  MODIFY `idL` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sensort`
--
ALTER TABLE `sensort`
  MODIFY `idSensorT` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registrohumedad`
--
ALTER TABLE `registrohumedad`
  ADD CONSTRAINT `registrohumedad_ibfk_1` FOREIGN KEY (`idSensorH`) REFERENCES `sensorh` (`idSensorH`);

--
-- Filtros para la tabla `registrotemperatura`
--
ALTER TABLE `registrotemperatura`
  ADD CONSTRAINT `registrotemperatura_ibfk_1` FOREIGN KEY (`idSensorT`) REFERENCES `sensort` (`idSensorT`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
