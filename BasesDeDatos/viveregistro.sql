-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2021 a las 06:18:53
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
(1, 1, '24', 'Activo', 'La planta está seca'),
(3, 1, '40', 'Activo', 'El suela está seco'),
(4, 1, '40', 'Activo', 'El suela está seco'),
(5, 1, '40', 'Activo', 'El suela está seco'),
(6, 1, '40', 'Activo', 'El suela está seco'),
(7, 1, '40', 'Activo', 'El suela está seco'),
(8, 1, '40', 'Activo', 'El suela está seco'),
(9, 1, '40', 'Activo', 'El suela está seco'),
(10, 1, '40', 'Activo', 'El suela está seco'),
(11, 1, '40', 'Activo', 'El suela está seco'),
(12, 1, '40', 'Activo', 'El suela está seco'),
(13, 1, '40', 'Activo', 'El suela está seco'),
(14, 1, '40', 'Activo', 'El suela está seco'),
(15, 1, '40', 'Activo', 'El suela está seco'),
(16, 1, '40', 'Activo', 'El suela está seco'),
(17, 1, '40', 'Activo', 'El suela está seco'),
(18, 1, '40', 'Activo', 'El suela está seco'),
(19, 1, '40', 'Activo', 'El suela está seco'),
(20, 1, '40', 'Activo', 'El suela está seco'),
(21, 1, '40', 'Activo', 'El suela está seco'),
(22, 1, '40', 'Activo', 'El suela está seco'),
(23, 1, '40', 'Activo', 'El suela está seco'),
(24, 1, '40', 'Activo', 'El suela está seco'),
(25, 1, '40', 'Activo', 'El suela está seco'),
(26, 1, '40', 'Activo', 'El suela está seco'),
(27, 1, '40', 'Activo', 'El suela está seco'),
(28, 1, '40', 'Activo', 'El suela está seco'),
(29, 1, '40', 'Activo', 'El suela está seco'),
(30, 1, '40', 'Activo', 'El suela está seco'),
(31, 1, '40', 'Activo', 'El suela está seco'),
(32, 1, '40', 'Activo', 'El suela está seco'),
(33, 1, '40', 'Activo', 'El suela está seco'),
(34, 1, '40', 'Activo', 'El suela está seco'),
(35, 1, '76', 'Activo', 'El suelo está humedo'),
(36, 1, '23', 'Activo', 'El suelo está humedo');

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
(1, 3, 'Sensor 1', 'Humedad', '', '#000000', '2021-05-06 11:38:05');

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
(1, '100', 'LLoviendo', '¡Está lloviendo fuerte!');

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
(1, 4, 'Sensor 1', 'Temperatura', '12,43,12', '#c52121', '2021-05-06 12:00:06');

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
  MODIFY `idH` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `registrotemperatura`
--
ALTER TABLE `registrotemperatura`
  MODIFY `idT` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sensorh`
--
ALTER TABLE `sensorh`
  MODIFY `idSensorH` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sensorl`
--
ALTER TABLE `sensorl`
  MODIFY `idL` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sensort`
--
ALTER TABLE `sensort`
  MODIFY `idSensorT` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
