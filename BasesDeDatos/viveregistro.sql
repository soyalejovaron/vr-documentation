-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2021 a las 10:24:04
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
(3, 'Suculenta 2', 'Es una pequeña planta y bonita'),
(4, 'Menta', 'Es una planta suave, que sirve para hacer chicles'),
(5, 'tulipan', 'es un cactus'),
(6, 'Amarilla', 'es una planta amarilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrohumedad`
--

CREATE TABLE `registrohumedad` (
  `idH` int(12) NOT NULL,
  `idSensorH` int(12) NOT NULL,
  `porcentajeH` varchar(100) NOT NULL,
  `estadoH` varchar(255) NOT NULL,
  `descripcionH` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registrohumedad`
--

INSERT INTO `registrohumedad` (`idH`, `idSensorH`, `porcentajeH`, `estadoH`, `descripcionH`) VALUES
(77, 1, '40', 'Activo', 'El suela está seco'),
(78, 1, '40', 'Activo', 'El suela está seco'),
(79, 1, '40', 'Activo', 'El suela está seco'),
(80, 1, '40', 'Activo', 'El suela está seco'),
(81, 1, '40', 'Activo', 'El suela está seco'),
(82, 1, '40', 'Activo', 'El suela está seco'),
(83, 1, '40', 'Activo', 'El suela está seco'),
(84, 1, '40', 'Activo', 'El suela está seco'),
(85, 1, '40', 'Activo', 'El suela está seco'),
(86, 1, '40', 'Activo', 'El suela está seco'),
(87, 1, '40', 'Activo', 'El suela está seco'),
(88, 1, '40', 'Activo', 'El suela está seco'),
(89, 1, '40', 'Activo', 'El suela está seco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrotemperatura`
--

CREATE TABLE `registrotemperatura` (
  `idT` int(12) NOT NULL,
  `idSensorT` int(12) NOT NULL,
  `porcentajeT` varchar(200) NOT NULL,
  `estadoT` varchar(100) NOT NULL,
  `descripcionT` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registrotemperatura`
--

INSERT INTO `registrotemperatura` (`idT`, `idSensorT`, `porcentajeT`, `estadoT`, `descripcionT`) VALUES
(1, 1, '43', 'Activo', 'La planta está calida'),
(2, 1, '38', 'Activo', 'El aire está muy caliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sensorh`
--

CREATE TABLE `sensorh` (
  `idSensorH` int(12) NOT NULL,
  `id_planta` int(12) NOT NULL,
  `nombreSensorH` varchar(255) NOT NULL,
  `tipoSensorH` varchar(255) NOT NULL,
  `datosSensorH` varchar(255) NOT NULL,
  `colorSensorH` varchar(255) NOT NULL,
  `fechaCreacionH` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sensorh`
--

INSERT INTO `sensorh` (`idSensorH`, `id_planta`, `nombreSensorH`, `tipoSensorH`, `datosSensorH`, `colorSensorH`, `fechaCreacionH`) VALUES
(1, 3, 'Sensor 1', 'Humedad', '', '#41ff6f', '2021-05-06 11:38:05'),
(2, 2, 'Sensor 2', 'Humedad', '12,33,44,23,65,43,32', '#0303c3', '2021-05-11 14:43:59'),
(6, 4, 'sensor 4', 'Humedad', '32,12,54,54,32,12', '#d0ff25', '2021-05-11 15:00:32'),
(7, 2, 'sensor 3', 'Humedad', '21,14,53,12,23,43,23,35', '#ffc53c', '2021-05-11 17:53:40'),
(8, 6, 'sensor 5', 'Humedad', '15,65,32,12,32,12,32', '#f80087', '2021-05-11 17:53:54');

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
  `id_planta` int(12) DEFAULT NULL,
  `nombreSensorT` varchar(255) NOT NULL,
  `tipoSensorT` varchar(255) NOT NULL,
  `datosSensorT` varchar(255) DEFAULT NULL,
  `colorSensorT` varchar(255) NOT NULL,
  `fechaCreacionT` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sensort`
--

INSERT INTO `sensort` (`idSensorT`, `id_planta`, `nombreSensorT`, `tipoSensorT`, `datosSensorT`, `colorSensorT`, `fechaCreacionT`) VALUES
(1, 5, 'Sensor 1', 'Temperatura', '', '#ff6e6e', '2021-05-06 12:00:06'),
(2, 5, 'Sensor 2', 'Temperatura', '32,12,54,32,12,33,23,1', '#ff4242', '2021-05-13 02:20:07'),
(3, 5, 'Sensor 3', 'Temperatura', '2,32,12,54,22,12,43,23', '#ffe63e', '2021-05-13 02:20:49'),
(4, 2, 'Sensor 4', 'Temperatura', '23,12,43,12,33,42,16,18', '#39ffad', '2021-05-13 02:21:28'),
(5, 5, 'Sensor 5', 'Temperatura', '12,43,12,43,23', '#4cffa5', '2021-05-13 02:31:20');

--
-- Índices para tablas volcadas
--

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
  ADD PRIMARY KEY (`idSensorH`),
  ADD KEY `id_planta` (`id_planta`);

--
-- Indices de la tabla `sensorl`
--
ALTER TABLE `sensorl`
  ADD PRIMARY KEY (`idL`);

--
-- Indices de la tabla `sensort`
--
ALTER TABLE `sensort`
  ADD PRIMARY KEY (`idSensorT`),
  ADD KEY `id_planta` (`id_planta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `plantas`
--
ALTER TABLE `plantas`
  MODIFY `id_planta` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `registrohumedad`
--
ALTER TABLE `registrohumedad`
  MODIFY `idH` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `registrotemperatura`
--
ALTER TABLE `registrotemperatura`
  MODIFY `idT` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sensorh`
--
ALTER TABLE `sensorh`
  MODIFY `idSensorH` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `sensorl`
--
ALTER TABLE `sensorl`
  MODIFY `idL` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sensort`
--
ALTER TABLE `sensort`
  MODIFY `idSensorT` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  ADD CONSTRAINT `registrotemperatura_ibfk_1` FOREIGN KEY (`idSensorT`) REFERENCES `sensort` (`idSensorT`);

--
-- Filtros para la tabla `sensorh`
--
ALTER TABLE `sensorh`
  ADD CONSTRAINT `sensorh_ibfk_1` FOREIGN KEY (`id_planta`) REFERENCES `plantas` (`id_planta`);

--
-- Filtros para la tabla `sensort`
--
ALTER TABLE `sensort`
  ADD CONSTRAINT `sensort_ibfk_1` FOREIGN KEY (`id_planta`) REFERENCES `plantas` (`id_planta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
