-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2022 a las 00:56:43
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tpsql`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `idDepto` int(11) NOT NULL COMMENT 'Numero_depto',
  `NomDepto` varchar(50) NOT NULL COMMENT 'Nombre_depto',
  `PresuDepto` int(20) NOT NULL COMMENT 'Presupuesto_depto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`idDepto`, `NomDepto`, `PresuDepto`) VALUES
(11, 'Calidad', 36364),
(14, 'Informática', 72727),
(15, 'Gestión', 86364),
(16, 'Comunicación', 68182),
(37, 'Desarrollo', 59091),
(77, 'Investigación', 36364);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `IdDni` int(11) NOT NULL COMMENT 'DNI_Empleados',
  `Nombre` varchar(100) NOT NULL COMMENT 'Nombre_empleados',
  `Apellido` varchar(100) NOT NULL COMMENT 'Apellido_Empleados',
  `Numdepto` int(11) NOT NULL COMMENT 'Numero_Dpto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`IdDni`, `Nombre`, `Apellido`, `Numdepto`) VALUES
(32369854, 'Bernardo', 'pantera', 37),
(42369854, 'Abril', 'Sanchez', 37),
(89267109, 'Esther', 'Vazquez', 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`idDepto`),
  ADD KEY `NomDepto` (`NomDepto`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`IdDni`),
  ADD KEY `Numdepto` (`Numdepto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `IdDni` int(11) NOT NULL AUTO_INCREMENT COMMENT 'DNI_Empleados', AUTO_INCREMENT=89267110;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`Numdepto`) REFERENCES `departamentos` (`idDepto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
