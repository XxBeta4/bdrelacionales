-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2025 a las 02:23:39
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
-- Base de datos: `alumnos`
--

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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cetis107`
--
ALTER TABLE `cetis107`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cetis107`
--
ALTER TABLE `cetis107`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
