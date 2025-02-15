-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2025 a las 01:24:23
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis_02`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carga_academica`
--

CREATE TABLE `carga_academica` (
  `id` int(11) NOT NULL,
  `clase_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carga_academica`
--

INSERT INTO `carga_academica` (`id`, `clase_id`, `alumno_id`, `calificacion`) VALUES
(1, 3, 1, 10),
(2, 4, 1, 8),
(3, 6, 1, 9),
(4, 7, 1, 7),
(5, 8, 1, 10),
(6, 9, 1, 10),
(7, 1, 1, 10),
(8, 2, 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cetis107`
--

CREATE TABLE `cetis107` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `Genero` tinyint(1) NOT NULL,
  `Correo` varchar(20) NOT NULL,
  `Telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cetis107`
--

INSERT INTO `cetis107` (`id`, `Nombre`, `Apellido`, `numero_control`, `fecha_nacimiento`, `Genero`, `Correo`, `Telefono`) VALUES
(1, 'Krisell Bettina', 'Angulo Garcia', '23325061070627', '2008-05-30', 0, 'krisell.angulo23@cet', '6675793242'),
(2, 'Rosselyn', 'Esparza Uriarte', '23325061070528', '2008-12-20', 0, 'rosselyn.esparza23@c', '6674093254'),
(3, 'Frida Sofia ', 'Sanchez Valenzuela', '23325061070611', '2008-01-10', 0, 'frida.sanchez234@cet', '6674766542'),
(4, 'Bayron Uriel', 'Estrada Camacho', '23325061070375', '2008-08-13', 1, 'bayron.estrada23@cet', '9095160134'),
(5, 'Angel Gibran', 'Loaiza Garcia', '23325061070694', '2008-08-23', 1, 'angel.loaiza23@cetis', '6671451436'),
(6, 'Victor Manuel', 'Diaz Gastelum', '23325061070728', '2008-09-28', 1, 'victor.diaz23@cetis1', '6678526412'),
(7, 'Santiago', 'Lopez Aispuro', '23325061070386', '2008-04-20', 1, 'santiago.lopez23@cet', '6673309322'),
(8, 'Paolo Nicholas', 'Valdez Bernal', '233250610703260', '2008-10-30', 1, 'paolo.valdez@cetis10', '6675412714'),
(9, 'Gael', 'Aldapa Leon', '23325061070567', '2008-09-21', 1, 'gael.aldapa23@cetis1', '6672545235'),
(10, 'Diego Johan', 'Dominguez Lizarraga', '23325061070579', '2008-11-10', 1, 'diego.dominguez23@ce', '6671412966'),
(11, 'Jonathan Horus', 'Zazueta Hernandez', '23325061070412', '2008-04-09', 1, 'jonathan.zazueta23@c', '6677592259'),
(12, 'Lizeth Abigail', 'Salcido Ramirez', '23325061070628', '2008-03-13', 0, 'lizeth.salcido23@cet', '6671987119');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `Id` int(11) NOT NULL,
  `Materias_id` int(11) NOT NULL,
  `Maestro_id` int(11) NOT NULL,
  `Hora` time NOT NULL,
  `Aula` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`Id`, `Materias_id`, `Maestro_id`, `Hora`, `Aula`) VALUES
(1, 1, 2, '13:00:00', 'cc1'),
(2, 2, 1, '16:00:00', 'cc1'),
(3, 8, 5, '14:00:00', '15'),
(4, 7, 8, '14:00:00', '15'),
(5, 3, 3, '15:00:00', '15'),
(6, 6, 10, '16:00:00', '15'),
(7, 5, 7, '13:00:00', '15'),
(8, 4, 9, '15:00:00', '15'),
(9, 9, 4, '13:00:00', '15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `descripcion`) VALUES
(1, 'electronica', 'trata con circuitos eléctricos que involucran componentes eléctricos activos como tubos de vacío, transistores, diodos, circuitos integrados'),
(2, 'programacion', 'organizar una secuencia de pasos ordenados a seguir para hacer cierta cosa.'),
(3, 'contabilidad', 'proceso de registrar, clasificar, analizar, interpretar y comunicar la información financiera de una empresa.'),
(4, 'construccion', 'comprende la creación, reforma, reparación o ampliación de activos fijos en forma de edificios, mejora de terrenos de naturaleza ingenieril y otras obras de ingeniería'),
(5, 'ofimatica', 'conjunto de elementos informáticos que se enfocan en automatizar y optimizar las tareas y funciones diarias en la oficina.'),
(6, 'diseño grafico', 'crea imágenes y diseños ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestross`
--

CREATE TABLE `maestross` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Genero` tinyint(1) NOT NULL,
  `Fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `maestross`
--

INSERT INTO `maestross` (`Id`, `Nombre`, `Correo`, `Genero`, `Fecha_nacimiento`) VALUES
(1, 'Luis Carlos ', 'luis.carlos23@cetis107.edu.mx', 1, '0000-00-00'),
(2, 'Jorge Ibarra', 'jorge.ibarra23@cetis107.edu.mx', 1, '1965-02-10'),
(3, 'Maria Guadalupe', 'maria.guada23@cetis107.edu.mx', 0, '1960-01-05'),
(4, 'Jose Francisco', 'jose.franco23@cetis107.edu.mx', 1, '1970-08-07'),
(5, 'Teresa Maria', 'tere.mari23@cetis107.edu.mx', 0, '1980-04-01'),
(6, 'Maria de Jesus', 'maru.jes23@cetis107.edu.mx', 0, '1962-09-03'),
(7, 'Angela Veronica', 'angi.vero23@cetis107.edu.mx', 0, '1985-04-05'),
(8, 'Teresa Sofia', 'tere.sof23@cetis107.edu.mx', 0, '1984-03-07'),
(9, 'Jose Armando', 'joss.armi23@cetis107.edu.mx', 1, '1975-07-07'),
(10, 'Pedro Noe', 'ped.noe23@cetis107.edu.mx', 1, '1962-09-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `semestre`) VALUES
(1, 'BD no relacionales', 4),
(2, 'BD relacionales', 4),
(3, 'Ingles ', 4),
(4, 'Temas mate', 4),
(5, 'Rs', 4),
(6, 'Reacciones quimicas', 4),
(7, 'Historia', 4),
(8, 'Ciencias Sociales', 4),
(9, 'Turorias', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clase_id` (`clase_id`),
  ADD KEY `alumno_id` (`alumno_id`);

--
-- Indices de la tabla `cetis107`
--
ALTER TABLE `cetis107`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Materias_id` (`Materias_id`),
  ADD KEY `Maestro_id` (`Maestro_id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maestross`
--
ALTER TABLE `maestross`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `cetis107`
--
ALTER TABLE `cetis107`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `maestross`
--
ALTER TABLE `maestross`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD CONSTRAINT `carga_academica_ibfk_1` FOREIGN KEY (`clase_id`) REFERENCES `clases` (`Id`),
  ADD CONSTRAINT `carga_academica_ibfk_2` FOREIGN KEY (`alumno_id`) REFERENCES `cetis107` (`id`);

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`Materias_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `clases_ibfk_2` FOREIGN KEY (`Maestro_id`) REFERENCES `maestross` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
