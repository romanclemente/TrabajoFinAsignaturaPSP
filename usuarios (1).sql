-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-03-2020 a las 15:45:31
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Nombre_pc` varchar(50) NOT NULL,
  `pass` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Nombre_pc`, `pass`) VALUES
('admin', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_malware`
--

CREATE TABLE `usuarios_malware` (
  `Nombre_pc` varchar(50) NOT NULL,
  `nombre_malware` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios_malware`
--

INSERT INTO `usuarios_malware` (`Nombre_pc`, `nombre_malware`) VALUES
('admin', 'SceneBuilder');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_software`
--

CREATE TABLE `usuarios_software` (
  `Nombre_pc` varchar(50) NOT NULL,
  `Nombre_Excepcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios_software`
--

INSERT INTO `usuarios_software` (`Nombre_pc`, `Nombre_Excepcion`) VALUES
('admin', 'cmd');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Nombre_pc`),
  ADD KEY `Nombre_pc` (`Nombre_pc`);

--
-- Indices de la tabla `usuarios_malware`
--
ALTER TABLE `usuarios_malware`
  ADD PRIMARY KEY (`Nombre_pc`,`nombre_malware`),
  ADD KEY `Nombre_pc` (`Nombre_pc`);

--
-- Indices de la tabla `usuarios_software`
--
ALTER TABLE `usuarios_software`
  ADD PRIMARY KEY (`Nombre_pc`,`Nombre_Excepcion`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios_malware`
--
ALTER TABLE `usuarios_malware`
  ADD CONSTRAINT `usuarios_malware_ibfk_1` FOREIGN KEY (`Nombre_pc`) REFERENCES `usuario` (`Nombre_pc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_software`
--
ALTER TABLE `usuarios_software`
  ADD CONSTRAINT `usuarios_software_ibfk_1` FOREIGN KEY (`Nombre_pc`) REFERENCES `usuario` (`Nombre_pc`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
