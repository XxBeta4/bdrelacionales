-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2025 a las 00:42:41
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
-- Base de datos: `cetis107`
--

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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `maestross`
--
ALTER TABLE `maestross`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `maestross`
--
ALTER TABLE `maestross`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
