-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-03-2025 a las 02:18:00
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
-- Base de datos: `spotify_1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artisacanciones`
--

CREATE TABLE `artisacanciones` (
  `id` int(11) NOT NULL,
  `Artista_id` int(11) NOT NULL,
  `Canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artisacanciones`
--

INSERT INTO `artisacanciones` (`id`, `Artista_id`, `Canciones_id`) VALUES
(1, 1, 6),
(3, 1, 30),
(4, 1, 29),
(5, 2, 4),
(6, 2, 26),
(7, 2, 27),
(8, 4, 12),
(9, 4, 1),
(10, 4, 11),
(11, 6, 16),
(12, 6, 38),
(13, 6, 18),
(14, 7, 34),
(15, 7, 14),
(16, 7, 36),
(17, 8, 35),
(18, 8, 15),
(19, 8, 8),
(20, 3, 17),
(21, 3, 32),
(22, 3, 7),
(23, 5, 40),
(24, 5, 23),
(25, 5, 37);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `Nombre`, `Descripcion`) VALUES
(1, 'Maluma', 'Juan Luis Londoño Arias (28 de enero de 1994, Medellín), conocido universalmente como Maluma, es un cantante colombiano'),
(2, 'Ozuna', 'Juan Carlos Ozuna Rosado, cantante puertorriqueño'),
(3, 'Lana del rey', 'Cantante, compositora, modelo, actriz, escritora, productora y poetisa estadounidense'),
(4, 'Cris mj', 'Cantante y compositor chileno aupado al éxito internacional en 2021'),
(5, 'The weekend', 'The Weeknd es una de las mayores estrellas del pop del siglo XXI. Es conocido globalmente por sus canciones oscuras y explícitas'),
(6, 'Ariana Grande', 'Artista femenina de una mayor repercusión comercial de la década de 2010'),
(7, 'Billie Eilish', 'Billie Eilish Pirate Baird O\'Connell ( 18 de diciembre de 2001, Los Angeles) es una cantante pop norteamericana'),
(8, 'Kanye West', 'Kanye Omari West (8 de junio de 1977, Atlanta), también conocido como Ye, es un uno de los artistas más importantes de la historia del rap y el hip-hop');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Genero_id` int(11) NOT NULL,
  `Duracion` time NOT NULL,
  `Fecha` date NOT NULL,
  `Activo` tinyint(1) NOT NULL,
  `Foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `Nombre`, `Genero_id`, `Duracion`, `Fecha`, `Activo`, `Foto`) VALUES
(1, 'Ponte bonita', 5, '00:03:14', '2019-11-05', 1, 'pontebonita.jpg'),
(2, 'El bueno y el malo', 2, '00:04:13', '2020-05-04', 1, 'elbuenoyelmalo.jpg'),
(3, 'I wanna be yours', 1, '00:03:20', '2018-01-06', 1, 'iwannabeyours.jpg'),
(4, 'Dile que tu me quieres', 5, '00:03:04', '2018-07-09', 1, 'dilequetumequieres.jpg'),
(5, 'A lo mejor', 2, '00:04:22', '2020-02-05', 1, 'alomejor.jpg'),
(6, 'Borro cassete', 5, '00:04:27', '2018-05-08', 1, 'borrocassete.jpg'),
(7, 'La lampara', 8, '00:05:22', '2019-04-01', 1, 'lalampara.jpg'),
(8, 'We dont talk anymore', 1, '00:02:14', '2022-04-01', 1, 'wedonttalkanymore.jpg'),
(9, 'La noche esta', 5, '00:03:07', '2020-02-01', 1, 'Lanocheesta.jpg'),
(10, 'Locura y maldad', 5, '00:02:10', '2018-05-01', 1, 'locuraymaldad.jpg'),
(11, 'pensandote', 5, '00:03:25', '2019-01-04', 1, 'pensandote.jpg'),
(12, 'No ponga excusas', 5, '00:02:45', '2021-05-06', 1, 'nopongaexcusas.jpg'),
(13, 'Una noche en Medellin', 5, '00:04:01', '2022-01-04', 1, 'unanocheenmedellin.jpg'),
(14, 'Knee Socks', 6, '00:04:05', '2021-05-09', 1, 'kneesocks.jpg'),
(15, 'RU Mine', 6, '00:03:14', '2019-01-05', 1, 'rumine.jpg'),
(16, 'Do i wanna know', 6, '00:05:22', '2017-07-01', 1, 'doiwannaknow.jpg'),
(17, 'Party Anthem', 6, '00:04:09', '2024-01-07', 1, 'partyanthem.jpg'),
(18, 'Fireside', 6, '00:02:55', '2019-05-07', 1, 'fireside.jpg'),
(19, 'Soy un desmadre', 2, '00:02:44', '2020-01-08', 1, 'soyundesmadre.jpg'),
(20, 'No me quede con las ganas', 2, '00:06:07', '2021-05-08', 1, 'nomequedeconlasganas.jpg'),
(21, 'Permiteme', 2, '00:04:12', '2023-07-05', 1, 'permiteme.jpg'),
(22, 'Mentiras baratas', 2, '00:03:54', '2018-09-03', 1, 'mentirasbaratas.jpg'),
(23, 'El shot', 2, '00:04:08', '2023-04-08', 1, 'elshot.jpg'),
(24, 'Razones', 5, '00:04:05', '2021-05-07', 1, 'razones.jpg'),
(25, 'Se preparo', 5, '00:02:07', '2017-05-01', 1, 'sepreparo.jpg'),
(26, 'Diles', 5, '00:02:55', '2016-05-07', 1, 'diles.jpg'),
(27, 'Escapate conmigo', 5, '00:02:01', '2019-02-08', 1, 'escapateconmigo.jpg'),
(28, 'El farsante', 5, '00:04:08', '2020-08-04', 1, 'elfarsante.jpg'),
(29, 'Cuatro babys', 5, '00:04:55', '2019-08-02', 1, 'cuatrobabys.jpg'),
(30, 'Felices los 4', 5, '00:06:04', '2021-05-10', 1, 'feliceslos4.jpg'),
(31, 'Hola perdida', 5, '00:04:12', '2020-12-07', 1, 'holaperdida.jpg'),
(32, 'Creeme', 5, '00:04:59', '2020-01-11', 1, 'creeme-jpg'),
(33, 'Segun quien', 5, '00:04:22', '2019-04-09', 1, 'segunquien.jpg'),
(34, 'Attention', 1, '00:00:00', '2020-08-12', 1, 'attention.jpg'),
(35, 'How long', 1, '00:03:24', '2017-06-01', 1, 'howlong.jpg'),
(36, 'One call away', 1, '00:00:00', '2018-04-07', 1, 'onecallaway.jpg'),
(37, 'River', 1, '00:03:44', '2022-01-09', 1, 'river.jpg'),
(38, 'Hero', 1, '00:04:25', '2021-05-03', 1, 'hero.jpg'),
(39, 'Mejor me voy', 2, '00:00:00', '2017-02-05', 1, 'mejormevoy.jpg'),
(40, 'Dos gotas de agua', 2, '00:06:25', '2021-05-11', 1, 'dosgotasdeagua.jpg'),
(41, 'Las cuentas claras', 2, '00:04:55', '2018-04-11', 1, 'lascuentasclaras.jpg'),
(42, 'Al ver que te vas', 2, '00:02:55', '2018-09-12', 1, 'alverquetevas.jpg'),
(43, 'A cambio de que', 2, '00:02:44', '2016-01-02', 1, 'acambiodeque.jpg'),
(44, 'La quebradora', 2, '00:03:44', '2019-08-02', 1, 'laquebradora.jpg'),
(45, 'La mejor de todas', 2, '00:02:22', '2021-05-11', 1, 'lamejordetodas.jpg'),
(46, 'Yo se que te acordaras', 2, '00:03:25', '2023-07-05', 1, 'yosequeteacordaras.jpg'),
(47, 'Y llegaste tu', 2, '00:03:59', '2021-01-10', 1, 'yllegastetu.jpg'),
(48, 'Me gusta todo de ti', 2, '00:04:08', '2020-08-04', 1, 'megustatododeti.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `Canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`id`, `usuario_id`, `Canciones_id`) VALUES
(1, 4, 29),
(2, 6, 32),
(3, 7, 34),
(4, 8, 18),
(5, 5, 26),
(6, 2, 4),
(7, 3, 18),
(8, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `Nombre`) VALUES
(1, 'pop'),
(2, 'banda'),
(3, 'kpop'),
(4, 'corridos'),
(5, 'reguetton'),
(6, 'rock'),
(7, 'metal'),
(8, 'rancheras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `Descripcion`, `Precio`) VALUES
(1, 'Premium Individual 1 cuenta para una persona', 129),
(2, 'Premium Duo 2 cuentas para parejas que viven en el mismo domicilio', 169),
(3, 'Premium Familiar 6 cuentas para familiares que viven en el mismo domicilio', 199);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Usuario_id` int(11) NOT NULL,
  `Duracion` time NOT NULL,
  `totalcanciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id`, `Nombre`, `Usuario_id`, `Duracion`, `totalcanciones`, `descripcion`, `publico`) VALUES
(1, 'Canciones para llorar', 7, '02:25:14', 40, 'Canciones sad para desahogarse y llorar', 1),
(2, 'Canciones para bailar', 5, '04:12:00', 60, 'baila y disfruta las canciones de esta playlist', 0),
(3, 'Cancion para limpiar', 1, '02:23:21', 39, 'Increibles canciones para mover el bote mientras barres y trapeas', 1),
(4, 'Canciones para jugar', 4, '04:55:17', 75, 'Escucha estas canciones para jugar mejor y ser un master en videojuegos', 0),
(5, 'Canciones para tu novio', 8, '10:30:15', 199, 'Escucha esta playlist para dedicar canciones y recordar momentos felices con esa persona especial', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `Canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlistcanciones`
--

INSERT INTO `playlistcanciones` (`id`, `playlist_id`, `Canciones_id`, `usuario_id`) VALUES
(1, 2, 29, 4),
(2, 4, 26, 7),
(3, 1, 28, 2),
(4, 5, 16, 2),
(5, 3, 34, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Correo` varchar(300) NOT NULL,
  `Membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `Nombre`, `Correo`, `Membresia_id`) VALUES
(1, 'Rosselyn Esparza Uriarte', 'rosselyn.esparza23@cetis107.edu.mx', 1),
(2, 'Luis Angel Moya Preciado', 'luis.moya23@cetis107.edu.mx', 2),
(3, 'Luis Angel Perez Lozano', 'luis.perez23@cetis107.edu.mx', 2),
(4, 'Ana Sofia Delgado German', 'ana.delgado23@cetis107.edu.mx', 3),
(5, 'Diego Joan Dominguez Lizarraga', 'diego.dominguez23@cetis107.edu.mx', 1),
(6, 'Angel Gibran Loaiza Garcia', 'angel.loaiza23@cetis107.edu.mx', 1),
(7, 'Bayron Uriel Estrada Camacho', 'bayron.estrada23@cetis107,edu.mx', 3),
(8, 'Carolina Simone Figueroa Carraza', 'carolina.figueroa23@cetis107.edu.mx', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Artista_id` (`Artista_id`),
  ADD KEY `Canciones_id` (`Canciones_id`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Genero_id` (`Genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `Canciones_id` (`Canciones_id`),
  ADD KEY `usuario_id_2` (`usuario_id`),
  ADD KEY `Canciones_id_2` (`Canciones_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Usuario_id` (`Usuario_id`);

--
-- Indices de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `Canciones_id` (`Canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Membresia_id` (`Membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  ADD CONSTRAINT `artisacanciones_ibfk_1` FOREIGN KEY (`Artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artisacanciones_ibfk_2` FOREIGN KEY (`Canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`Genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`Canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`Usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD CONSTRAINT `playlistcanciones_ibfk_1` FOREIGN KEY (`Canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
