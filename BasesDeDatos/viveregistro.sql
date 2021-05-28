-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2021 a las 16:43:50
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
(6, 'Amarilla', 'es una planta amarilla'),
(7, 'enredadera', 'Es una planta grande con gruesas plantas');

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
  `fechaRegistroH` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registrohumedad`
--

INSERT INTO `registrohumedad` (`idH`, `idSensorH`, `porcentajeH`, `estadoH`, `descripcionH`, `fechaRegistroH`) VALUES
(1, 1, '32', 'Activo', 'La humedad es baja', '2021-05-26'),
(2, 2, '43', 'Activo', 'la humedad es media', '2021-05-26'),
(3, 3, '65', 'Activo', 'La humedad es alta', '2021-05-26'),
(4, 4, '43', 'Activo', 'La humedad es alta', '2021-05-26'),
(5, 1, '23', 'Activo', 'La humedad es baja', '2021-05-26'),
(6, 2, '19', 'Activo', 'La humedad es baja', '2021-05-26'),
(7, 3, '34', 'Activo', 'La humedad es media', '2021-05-26'),
(8, 4, '11', 'Activo', 'La humedad es baja', '2021-05-26'),
(9, 1, '21', 'Activo', 'La humedad es alta', '2021-05-26'),
(10, 2, '43', 'Activo', 'La humedad es baja', '2021-05-26'),
(11, 3, '14', 'Activo', 'La humedad es baja', '2021-05-26'),
(12, 4, '34', 'Activo', 'La humedad es media', '2021-05-26'),
(13, 1, '16', 'Activo', 'La humedad es baja', '2021-05-26'),
(14, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(15, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(16, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(17, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(18, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(19, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(20, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(21, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(22, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(23, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(24, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(25, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(26, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(27, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(28, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(29, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(30, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(31, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(32, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(33, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(34, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(35, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(36, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(37, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(38, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(39, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(40, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(41, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(42, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(43, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(44, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(45, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(46, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(47, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(48, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(49, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(50, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(51, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(52, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(53, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(54, 1, '46', 'Activo', 'El suela está seco', '2021-05-27'),
(55, 1, '55', 'Activo', 'El suela está seco', '2021-05-27'),
(56, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(57, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(58, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(59, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(60, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(61, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(62, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(63, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(64, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(65, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(66, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(67, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(68, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(69, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(70, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(71, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(72, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(73, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(74, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(75, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(76, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(77, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(78, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(79, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(80, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(81, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(82, 1, '0', 'Activo', 'El sensor está fuera de la tierra', '2021-05-27'),
(83, 1, '98', 'Activo', '¡El suelo está demasiado humedo!', '2021-05-27'),
(84, 1, '101', 'Activo', '¡El suelo está demasiado humedo!', '2021-05-27'),
(85, 1, '101', 'Activo', '¡El suelo está demasiado humedo!', '2021-05-27'),
(86, 1, '103', 'Activo', '¡El suelo está demasiado humedo!', '2021-05-27'),
(87, 1, '76', 'Activo', 'El suela está humedo', '2021-05-27'),
(88, 1, '72', 'Activo', 'El suela está humedo', '2021-05-27'),
(89, 1, '103', 'Activo', '¡El suelo está demasiado humedo!', '2021-05-27'),
(90, 1, '103', 'Activo', '¡El suelo está demasiado humedo!', '2021-05-27'),
(91, 1, '103', 'Activo', '¡El suelo está demasiado humedo!', '2021-05-27'),
(92, 1, '102', 'Activo', '¡El suelo está demasiado humedo!', '2021-05-27'),
(93, 1, '102', 'Activo', '¡El suelo está demasiado humedo!', '2021-05-27'),
(94, 1, '102', 'Activo', '¡El suelo está demasiado humedo!', '2021-05-27'),
(95, 1, '102', 'Activo', '¡El suelo está demasiado humedo!', '2021-05-27'),
(96, 1, '102', 'Activo', '¡El suelo está demasiado humedo!', '2021-05-27'),
(97, 1, '101', 'Activo', '¡El suelo está demasiado humedo!', '2021-05-27'),
(98, 1, '100', 'Activo', '¡El suelo está demasiado humedo!', '2021-05-27'),
(99, 1, '100', 'Activo', '¡El suelo está demasiado humedo!', '2021-05-27'),
(100, 1, '98', 'Activo', '¡El suelo está demasiado humedo!', '2021-05-27'),
(101, 1, '97', 'Activo', '¡El suelo está demasiado humedo!', '2021-05-27'),
(102, 1, '96', 'Activo', '¡El suelo está demasiado humedo!', '2021-05-27'),
(103, 1, '95', 'Activo', 'El suela está humedo', '2021-05-27'),
(104, 1, '94', 'Activo', 'El suela está humedo', '2021-05-27'),
(105, 1, '94', 'Activo', 'El suela está humedo', '2021-05-27'),
(106, 1, '94', 'Activo', 'El suela está humedo', '2021-05-27'),
(107, 1, '94', 'Activo', 'El suela está humedo', '2021-05-27'),
(108, 1, '94', 'Activo', 'El suela está humedo', '2021-05-27'),
(109, 1, '93', 'Activo', 'El suela está humedo', '2021-05-27'),
(110, 1, '93', 'Activo', 'El suela está humedo', '2021-05-27'),
(111, 1, '57', 'Activo', 'El suela está seco', '2021-05-27'),
(112, 1, '83', 'Activo', 'El suela está humedo', '2021-05-27'),
(113, 1, '85', 'Activo', 'El suela está humedo', '2021-05-27'),
(114, 1, '86', 'Activo', 'El suela está humedo', '2021-05-27'),
(115, 1, '86', 'Activo', 'El suela está humedo', '2021-05-27'),
(116, 1, '86', 'Activo', 'El suela está humedo', '2021-05-27'),
(117, 1, '86', 'Activo', 'El suela está humedo', '2021-05-27'),
(118, 1, '87', 'Activo', 'El suela está humedo', '2021-05-27'),
(119, 1, '87', 'Activo', 'El suela está humedo', '2021-05-27'),
(120, 1, '94', 'Activo', 'El suela está humedo', '2021-05-27'),
(121, 1, '93', 'Activo', 'El suela está humedo', '2021-05-27'),
(122, 1, '92', 'Activo', 'El suela está humedo', '2021-05-27'),
(123, 1, '92', 'Activo', 'El suela está humedo', '2021-05-27'),
(124, 1, '92', 'Activo', 'El suela está humedo', '2021-05-27'),
(125, 1, '92', 'Activo', 'El suela está humedo', '2021-05-27'),
(126, 1, '91', 'Activo', 'El suela está humedo', '2021-05-27'),
(127, 1, '92', 'Activo', 'El suela está humedo', '2021-05-27'),
(128, 1, '92', 'Activo', 'El suela está humedo', '2021-05-27'),
(129, 1, '91', 'Activo', 'El suela está humedo', '2021-05-27'),
(130, 1, '91', 'Activo', 'El suela está humedo', '2021-05-27'),
(131, 1, '92', 'Activo', 'El suela está humedo', '2021-05-27');

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
  `fechaRegistroT` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registrotemperatura`
--

INSERT INTO `registrotemperatura` (`idT`, `idSensorT`, `porcentajeT`, `estadoT`, `descripcionT`, `fechaRegistroT`) VALUES
(1, 1, '23', 'Activo', 'La temperatura es baja', '2021-05-27'),
(2, 1, '34', 'Activo', 'La temperatura es regular', '2021-05-27'),
(3, 1, '54', 'Activo', 'La temperatura es regular', '2021-05-27'),
(4, 1, '12', 'Activo', 'La temperatura es baja', '2021-05-27'),
(5, 1, '22', 'Activo', 'La temperatura es regular', '2021-05-27'),
(6, 2, '26', 'Activo', 'La temperatura es regular', '2021-05-27'),
(7, 2, '18', 'Activo', 'La temperatura es regular', '2021-05-27'),
(8, 2, '10', 'Activo', 'La temperatura es baja', '2021-05-27'),
(9, 2, '17', 'Activo', 'La temperatura es baja', '2021-05-27'),
(10, 2, '32', 'Activo', 'La temperatura es alta', '2021-05-27'),
(11, 3, '19', 'Activo', 'La temperatura es regular', '2021-05-27'),
(12, 3, '24', 'Activo', 'La temperatura es regular', '2021-05-27'),
(13, 3, '14', 'Activo', 'La temperatura es baja', '2021-05-27'),
(14, 3, '9', 'Activo', 'La temperatura es baja', '2021-05-27'),
(15, 3, '38', 'Activo', 'La temperatura es alta', '2021-05-27'),
(16, 4, '23', 'Activo', 'La temperatura es regular', '2021-05-27'),
(17, 4, '11', 'Activo', 'La temperatura es baja', '2021-05-27'),
(18, 4, '19', 'Activo', 'La temperatura es regular', '2021-05-27'),
(19, 4, '32', 'Activo', 'La temperatura es alta', '2021-05-27'),
(21, 1, '24', 'Activo', 'El aire es calido', '2021-05-27'),
(22, 1, '24', 'Activo', 'El aire es calido', '2021-05-27'),
(23, 1, '24', 'Activo', 'El aire es calido', '2021-05-27'),
(24, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(25, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(26, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(27, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(28, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(29, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(30, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(31, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(32, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(33, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(34, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(35, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(36, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(37, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(38, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(39, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(40, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(41, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(42, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(43, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(44, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(45, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(46, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(47, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(48, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(49, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(50, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(51, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(52, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(53, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(54, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(55, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(56, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(57, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(58, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(59, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(60, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(61, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(62, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(63, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(64, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(65, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(66, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(67, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(68, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(69, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(70, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(71, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(72, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(73, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(74, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(75, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(76, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(77, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(78, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(79, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(80, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(81, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(82, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(83, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(84, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(85, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(86, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(87, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(88, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(89, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(90, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(91, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(92, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(93, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(94, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(95, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(96, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(97, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(98, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(99, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(100, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(101, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(102, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(103, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(104, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(105, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(106, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(107, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(108, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(109, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(110, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(111, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(112, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(113, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(114, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(115, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(116, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(117, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(118, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(119, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(120, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(121, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(122, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(123, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(124, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(125, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(126, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(127, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(128, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(129, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(130, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(131, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(132, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(133, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(134, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(135, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(136, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(137, 1, '25', 'Activo', 'El aire es calido', '2021-05-27'),
(138, 1, '25', 'Activo', 'El aire es calido', '2021-05-27');

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
-- AUTO_INCREMENT de la tabla `plantas`
--
ALTER TABLE `plantas`
  MODIFY `id_planta` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `registrohumedad`
--
ALTER TABLE `registrohumedad`
  MODIFY `idH` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT de la tabla `registrotemperatura`
--
ALTER TABLE `registrotemperatura`
  MODIFY `idT` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT de la tabla `sensorh`
--
ALTER TABLE `sensorh`
  MODIFY `idSensorH` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
