-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-04-2023 a las 18:22:42
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_agenda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `idcarrera` varchar(4) NOT NULL,
  `nom-carrera` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`idcarrera`, `nom-carrera`) VALUES
('', NULL),
('LITS', 'LICENCIATURA EN INGENIERIA EN TECNOLOGIAS DE SOFTWARE'),
('LSC', 'LICENCIATURA EN SISTEMAS COMPUTACIONALES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE `lugar` (
  `idlugar` varchar(4) NOT NULL,
  `nom-lugar` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`idlugar`, `nom-lugar`) VALUES
('1', 'Salón A1'),
('2', 'Salón A2'),
('3', 'Salón A3'),
('4', 'Salón A4'),
('5', 'Salón A5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `idmateria` varchar(4) NOT NULL,
  `nom-materia` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`idmateria`, `nom-materia`) VALUES
('1', 'ADMINISTRACION DE BASES DE DATOS'),
('2', 'COMPILADORES'),
('3', 'CONTABILIDAD'),
('4', 'INGLES V'),
('5', 'INVESTIGACION DE OPERACIONES II');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `idprofesor` varchar(4) NOT NULL,
  `nom-profesor` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`idprofesor`, `nom-profesor`) VALUES
('1', 'NURICUMBO CASTRO HECTOR ROBERTO, D'),
('2', 'TEVERA MANDUJANO JUAN JOSE, DR.'),
('3', 'CRUZ GOMEZ JOSE CARLOS, MTRO.'),
('4', 'MORALES GALDAMEZ SANDRA GUADALUPE, '),
('5', 'VELAZQUEZ TRUJILLO SABINO, DR.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `idcalendario` int(5) NOT NULL,
  `idmateria` varchar(4) DEFAULT NULL,
  `idprofesor` varchar(4) DEFAULT NULL,
  `idlugar` varchar(4) DEFAULT NULL,
  `temas` varchar(50) DEFAULT NULL,
  `gradogrupo` varchar(2) DEFAULT NULL,
  `idcarrera` varchar(4) DEFAULT NULL,
  `idusuario` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`idcalendario`, `idmateria`, `idprofesor`, `idlugar`, `temas`, `gradogrupo`, `idcarrera`, `idusuario`) VALUES
(1, '1', '1', '1', 'Analizador léxico', '5J', 'LITS', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(7) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `usuario`, `pass`) VALUES
(1, 'Lisandro', '12345'),
(2, 'Jerry', '12345'),
(3, 'Chepe', '12345'),
(4, 'Lucho', '$2y$10$Zi3FZacU3ej127UKIW2OYud6hT/H4sYVqeh6N5O4A4.ZK/cg7YSYK'),
(5, 'Italiano', '12345'),
(6, 'Hugo', '12345'),
(7, '', '$2y$10$iFDKf59e9.Jl4S3GlAMdS.YMXGBPmEMO/z4TZZpwbt9u62g3KgQA2'),
(8, '', '$2y$10$RCYnt6jdMoOhFDK2BJ4hb.B239/ONhmctM7oMUXvBNu/Jp8WZ1SVy'),
(9, '', '$2y$10$9I3D03f0Eqj7LuCfUK2mJu4Pg4mwIfh0PIZjWTWCiGOQExxX9PcI2'),
(10, 'Sam', '$2y$10$p58bCdQibAN.eEDmw5zU2uOH.awFfKXWm.FQv7m6t/tTPgx76V3.y'),
(11, 'pepe', '$2y$10$xgcbrEGrnJqg2DXHjR2hneF5Byj3aV1lf52.zNPtfXVQX2dIUXksu'),
(12, '1', '$2y$10$EVwk4EuInN59h6Sx60UpCuTtXmrynYuciIdEgNV1OBkAb35ofmzu2'),
(13, 'aa', '$2y$10$l5TPF5bNqtUoKw8x7x1hbuY0LZkqJKsWSiNQjzJOb32714zHP.Zhe'),
(14, 'sergio', '$2y$10$xNU8ZOR7EP7/njtoCoYHkO0Rjc/4kl3EoUv5TIgVUNtAlIiGaMO9C'),
(15, 'aaaa', '$2y$10$J9bEjI1DZx2on.BpNaVTWeM7.pWKQR0cBl2LH7RqwqMBY2BEeLgM.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`idcarrera`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`idlugar`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`idmateria`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`idprofesor`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`idcalendario`),
  ADD KEY `idlugar` (`idlugar`),
  ADD KEY `idmateria` (`idmateria`),
  ADD KEY `idprofesor` (`idprofesor`),
  ADD KEY `idcarrera` (`idcarrera`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `idcalendario` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `registro_ibfk_1` FOREIGN KEY (`idlugar`) REFERENCES `lugar` (`idlugar`),
  ADD CONSTRAINT `registro_ibfk_2` FOREIGN KEY (`idmateria`) REFERENCES `materia` (`idmateria`),
  ADD CONSTRAINT `registro_ibfk_3` FOREIGN KEY (`idprofesor`) REFERENCES `profesor` (`idprofesor`),
  ADD CONSTRAINT `registro_ibfk_4` FOREIGN KEY (`idcarrera`) REFERENCES `carrera` (`idcarrera`),
  ADD CONSTRAINT `registro_ibfk_5` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
