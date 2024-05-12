-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2024 a las 11:44:47
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bananacocktailsreact`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `IDADMINISTRADOR` int(11) NOT NULL,
  `NOMBREU` varchar(100) NOT NULL,
  `APELLIDOU` varchar(100) NOT NULL,
  `FECHANACIMIENTOU` date NOT NULL,
  `CELULARU` varchar(10) NOT NULL,
  `EMAILU` varchar(256) NOT NULL,
  `PASSWORDU` varchar(20) NOT NULL,
  `ESADMINU` tinyint(1) NOT NULL,
  `ACTIVOU` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`IDADMINISTRADOR`, `NOMBREU`, `APELLIDOU`, `FECHANACIMIENTOU`, `CELULARU`, `EMAILU`, `PASSWORDU`, `ESADMINU`, `ACTIVOU`) VALUES
(1, 'Leonardo', 'Yaranga', '2003-11-17', '0995667373', 'leonardo.yaranga@hotmail.com', 'leo123456', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `IDCLIENTE` int(11) NOT NULL,
  `NOMBREU` varchar(100) NOT NULL,
  `APELLIDOU` varchar(100) NOT NULL,
  `FECHANACIMIENTOU` date NOT NULL,
  `CELULARU` varchar(10) NOT NULL,
  `EMAILU` varchar(256) NOT NULL,
  `PASSWORDU` varchar(20) NOT NULL,
  `ESADMINU` tinyint(1) NOT NULL,
  `ACTIVOU` tinyint(1) NOT NULL,
  `DOMICILIOCLI` varchar(150) DEFAULT NULL,
  `CEDULACLI` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`IDCLIENTE`, `NOMBREU`, `APELLIDOU`, `FECHANACIMIENTOU`, `CELULARU`, `EMAILU`, `PASSWORDU`, `ESADMINU`, `ACTIVOU`, `DOMICILIOCLI`, `CEDULACLI`) VALUES
(1, 'Johanna', 'Yaranga', '2003-11-17', '984783585', 'johannaY@hotmail.com', 'joha123', 0, 1, 'Pacha y Calle A, Fajardo', '1751293356'),
(2, 'Paquito', 'Perez', '2005-12-28', '0995667289', 'wqfqwf45FQa@hotmail.com', 'paco123456', 0, 1, 'Sangolqui,fajardo\n', '1751293356');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coctel`
--

CREATE TABLE `coctel` (
  `IDCOCTEL` int(11) NOT NULL,
  `IDSECCION` int(11) DEFAULT NULL,
  `IDADMINISTRADOR` int(11) NOT NULL,
  `NOMBREC` varchar(30) NOT NULL,
  `DESCRIPCIONC` varchar(500) NOT NULL,
  `PRECIOUNITARIOC` float NOT NULL,
  `IMAGENC` varchar(30) NOT NULL,
  `ACTIVOC` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `coctel`
--

INSERT INTO `coctel` (`IDCOCTEL`, `IDSECCION`, `IDADMINISTRADOR`, `NOMBREC`, `DESCRIPCIONC`, `PRECIOUNITARIOC`, `IMAGENC`, `ACTIVOC`) VALUES
(1, 3, 1, 'Whisky Sour', 'El Whisky Sour es un clásico cóctel que combina whisky, jugo de limón, jarabe de azúcar y a veces clara de huevo para darle una textura espumosa. Es agrio, dulce y refrescante, con el equilibrio perfecto entre el whisky robusto y el ácido del limón.', 9, 'whisky-sour.png', 0),
(2, 1, 1, 'Alberto', 'wfqfqwf', 5, 'Alberto.png', 0),
(75, 3, 1, 'Whisky Sour', 'El Whisky Sour es un clásico cóctel que combina whisky, jugo de limón, jarabe de azúcar y a veces clara de huevo para darle una textura espumosa. Es agrio, dulce y refrescante, con el equilibrio perfecto entre el whisky robusto y el ácido del limón.', 8, 'whisky-sour.png', 1),
(76, 3, 1, 'Manhattan', 'El Manhattan es un cóctel clásico hecho con whisky, vermut rojo y amargos, servido en una copa de cóctel con una cereza como adorno.', 10, 'manhattan.png', 1),
(77, 3, 1, 'Mint Julep', 'El Mint Julep es un cóctel clásico sureño hecho con bourbon, azúcar, agua y hojas de menta fresca, servido sobre hielo triturado.', 12, 'mint-julep.png', 1),
(78, 3, 1, 'Padrino', 'El Padrino es un cóctel clásico que combina whisky y amaretto para crear una mezcla equilibrada y suave.', 6, 'Padrino.png', 1),
(79, 3, 1, 'Whisky on the Rocks', 'Whisky on the Rocks es un cóctel simple y clásico que consiste en servir whisky directamente sobre hielo.', 12, 'WhiskyOnTheRocks.png', 1),
(80, 3, 1, 'Rusty Nail', 'El Rusty Nail es un cóctel clásico hecho con whisky escocés y Drambuie, un licor dulce de whisky y hierbas.', 9, 'rusty-nail.png', 1),
(81, 1, 1, 'Corazonada', 'Corazonada es un cóctel con base de ron añejo, anís, sirope de fresa y zumo de fresa, de limón y de naranja.', 7, 'corazonada.png', 1),
(82, 1, 1, 'Cuba Libre', 'El \"Cuba Libre\" es un cóctel clásico que generalmente se prepara con ron, cola y limón.', 10, 'CubaLibre.png', 1),
(83, 1, 1, 'Daikiri Clásico', 'El Daiquiri clásico es un cóctel refrescante compuesto por ron blanco, azúcar y jugo de limón.', 7, 'DaikiriClasico.png', 1),
(84, 1, 1, 'Mojito Clásico', 'El Mojito clásico es un cóctel cubano que combina ron blanco, azúcar, jugo de limón, menta y soda.', 7, 'mojitoClasico.png', 1),
(85, 1, 1, 'Mojito Frutilla', 'El Mojito de fresa es una variante del clásico cóctel cubano que incorpora fresas frescas a la mezcla tradicional de ron blanco, azúcar, jugo de limón, menta y soda.', 15, 'mojitoFrutilla.png', 1),
(86, 1, 1, 'Piña Colada', 'La Piña Colada es un cóctel tropical que combina ron blanco, crema de coco y jugo de piña.', 5, 'pina-colada.png', 1),
(87, 1, 1, 'Caipirinha', 'La Caipirinha es un cóctel brasileño clásico que combina cachaça, azúcar y lima, creando una bebida refrescante y ligeramente dulce.', 7, 'caipirinha.png', 1),
(88, 1, 1, 'Pitufo', 'Este cóctel suele estar compuesto por ron, curaçao azul, jugo de limón o lima, y azúcar o jarabe.', 12, 'pitufo.png', 1),
(89, 2, 1, 'Margarita Blue', 'La Margarita Blue es una variante fresca y colorida del clásico cóctel Margarita, con tequila, licor de naranja, jugo de lima y curaçao azul.', 10, 'margaritaBlue.png', 1),
(90, 2, 1, 'Margarita Clásico', 'La Margarita clásica es una mezcla refrescante de tequila, triple sec y jugo de lima, servida en un vaso escarchado con sal.', 10, 'margaritaClasico.png', 1),
(91, 2, 1, 'Margarita Frutilla', 'La Margarita de fresa combina tequila, licor de naranja, puré de fresas y jugo de lima, creando una variante dulce y refrescante del clásico.', 16, 'MargaritaFrutilla.png', 1),
(92, 2, 1, 'Martini', 'El Martini es un elegante cóctel que generalmente se elabora con ginebra y vermut seco, decorado con una aceituna o piel de limón.', 10, 'martini.png', 1),
(93, 2, 1, 'Martini Frutilla', 'El Martini de fresa es una versión afrutada del clásico Martini, destacando por su toque dulce y refrescante con la adición de puré o licor de fresa.', 11, 'martiniFrutilla.png', 1),
(94, 2, 1, 'Tequila Sunrise', 'El Tequila Sunrise es un cóctel refrescante con tequila, jugo de naranja y un toque de grenadina, destacando por su atractiva apariencia degradada.', 10, 'tequilaSunrise.png', 1),
(95, 4, 1, 'Vodka Tonic', 'El Vodka Tonic es una bebida refrescante que mezcla vodka con agua tónica, destacando por su simplicidad y equilibrio.', 9, 'vodkaTonic.png', 1),
(96, 4, 1, 'Cosmopolitan', 'El Cosmopolitan es un cóctel clásico que combina vodka, triple sec, arándano y jugo de limón, creando una bebida elegante y equilibrada.', 9, 'cosmopolitan.png', 1),
(97, 4, 1, 'Destornillador', 'El Destornillador es un cóctel sencillo que mezcla vodka con jugo de naranja, ofreciendo una bebida refrescante y fácil de disfrutar.', 10, 'destornillador.png', 1),
(98, 4, 1, 'Sex on the Beach', 'Sex on the Beach es un cóctel tropical que combina vodka, licor de durazno, jugo de arándano y jugo de naranja, creando una bebida colorida y sabrosa con un toque frutal.', 9, 'sexOnTheBeach.png', 1),
(99, 4, 1, 'Vodka Sunrise', 'El Vodka Sunrise es una mezcla de vodka, jugo de naranja y grenadina, creando un cóctel colorido y refrescante.', 13, 'vodkaSunrise.png', 1),
(100, 5, 1, 'Gin Tonic', 'Gin Tonic es un refrescante cóctel que combina ginebra y agua tónica, servido sobre hielo y adornado con rodajas de limón o enebro.', 16, 'gin tonic.png', 1),
(101, 5, 1, 'Gin Tonic Frutos Rojos', 'Gin Tonic de frutos rojos es una variante del clásico cóctel, que incorpora ginebra, agua tónica y una mezcla de frutos rojos para un toque fresco y afrutado.', 16, 'GT frutos rojos.png', 1),
(102, 5, 1, 'Floradora', 'El Floradora es un cóctel que mezcla gin, jugo de frambuesa, lima y jarabe de jengibre, servido con hielo y soda.', 16, 'floradora.png', 1),
(103, 5, 1, 'Gimlet', 'Una mezcla de gin con jugo de lima o limón y jarabe de azúcar, a menudo servido en una copa de cóctel.', 16, 'Gimlet.png', 1),
(104, 5, 1, 'Negroni', 'Hecho con partes iguales de gin, vermut rojo y Campari, servido sobre hielo y a menudo decorado con una cáscara de naranja.', 16, 'negroni.png', 1),
(105, 5, 1, 'Southside', 'Gin mezclado con jugo de limón, jarabe de azúcar y hojas de menta, similar a un Mojito pero con gin en lugar de ron.', 16, 'southside.png', 1),
(106, 6, 1, 'Sangría', 'La sangría es una bebida española a base de vino tinto y frutas, ideal para disfrutar en compañía.', 16, 'sangria.png', 1),
(107, 6, 1, 'Tinto de Verano', 'El tinto de verano es una refrescante bebida española elaborada con vino tinto y soda, perfecta para días calurosos.', 12, 'tinto de verano.png', 1),
(108, 6, 1, 'Bellini', 'Una bebida italiana que mezcla puré de durazno o néctar de durazno con vino espumoso.', 13, 'Bellini.png', 1),
(109, 6, 1, 'Kir Royale', 'Una variación del Kir clásico que utiliza vino espumoso, como Champagne o Cava, mezclado con licor de grosella negra.', 16, 'Kir Royale.png', 1),
(110, 6, 1, 'Spritz', 'Una bebida refrescante originaria de Italia que combina vino blanco espumoso con agua con gas o soda y un amargo, como Aperol o Campari.', 14, 'Spritz.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallepedido`
--

CREATE TABLE `detallepedido` (
  `IDCOCTEL` int(11) NOT NULL,
  `IDPEDIDOONLINE` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `infococtelactivo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `infococtelactivo` (
`NOMBREC` varchar(30)
,`NOMBRESEC` varchar(30)
,`DESCRIPCIONC` varchar(500)
,`PRECIOUNITARIOC` float
,`IMAGENC` varchar(30)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidoonline`
--

CREATE TABLE `pedidoonline` (
  `IDPEDIDOONLINE` int(11) NOT NULL,
  `IDCLIENTE` int(11) NOT NULL,
  `FECHAENTREGAPO` date NOT NULL,
  `DIRECCIONPO` varchar(150) NOT NULL,
  `COMENTARIOSPO` varchar(500) NOT NULL,
  `FECHAREALIZADOPO` date NOT NULL,
  `MONTOPO` float NOT NULL,
  `ACTIVOPO` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `IDSECCION` int(11) NOT NULL,
  `NOMBRESEC` varchar(30) NOT NULL,
  `ACTIVASEC` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`IDSECCION`, `NOMBRESEC`, `ACTIVASEC`) VALUES
(1, 'Ron', 1),
(2, 'Tequila', 1),
(3, 'Whisky', 1),
(4, 'Vodka', 1),
(5, 'Gin', 1),
(6, 'Vino', 1);

-- --------------------------------------------------------

--
-- Estructura para la vista `infococtelactivo`
--
DROP TABLE IF EXISTS `infococtelactivo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `infococtelactivo`  AS SELECT `co`.`NOMBREC` AS `NOMBREC`, `sec`.`NOMBRESEC` AS `NOMBRESEC`, `co`.`DESCRIPCIONC` AS `DESCRIPCIONC`, `co`.`PRECIOUNITARIOC` AS `PRECIOUNITARIOC`, `co`.`IMAGENC` AS `IMAGENC` FROM ((select `coctel`.`IDCOCTEL` AS `IDCOCTEL`,`coctel`.`IDSECCION` AS `IDSECCION`,`coctel`.`IDADMINISTRADOR` AS `IDADMINISTRADOR`,`coctel`.`NOMBREC` AS `NOMBREC`,`coctel`.`DESCRIPCIONC` AS `DESCRIPCIONC`,`coctel`.`PRECIOUNITARIOC` AS `PRECIOUNITARIOC`,`coctel`.`IMAGENC` AS `IMAGENC`,`coctel`.`ACTIVOC` AS `ACTIVOC` from `coctel` where `coctel`.`ACTIVOC` = 1) `co` join (select `seccion`.`IDSECCION` AS `IDSECCION`,`seccion`.`NOMBRESEC` AS `NOMBRESEC`,`seccion`.`ACTIVASEC` AS `ACTIVASEC` from `seccion` where `seccion`.`ACTIVASEC` = 1) `sec` on(`co`.`IDSECCION` = `sec`.`IDSECCION`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`IDADMINISTRADOR`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IDCLIENTE`);

--
-- Indices de la tabla `coctel`
--
ALTER TABLE `coctel`
  ADD PRIMARY KEY (`IDCOCTEL`),
  ADD KEY `FK_GESTIONAR` (`IDADMINISTRADOR`),
  ADD KEY `FK_PERTENECER` (`IDSECCION`);

--
-- Indices de la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD PRIMARY KEY (`IDCOCTEL`,`IDPEDIDOONLINE`),
  ADD KEY `FK_DETALLEPEDIDO2` (`IDPEDIDOONLINE`);

--
-- Indices de la tabla `pedidoonline`
--
ALTER TABLE `pedidoonline`
  ADD PRIMARY KEY (`IDPEDIDOONLINE`),
  ADD KEY `FK_REALIZAR` (`IDCLIENTE`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`IDSECCION`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `IDADMINISTRADOR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `IDCLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `coctel`
--
ALTER TABLE `coctel`
  MODIFY `IDCOCTEL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de la tabla `pedidoonline`
--
ALTER TABLE `pedidoonline`
  MODIFY `IDPEDIDOONLINE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `IDSECCION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `coctel`
--
ALTER TABLE `coctel`
  ADD CONSTRAINT `FK_GESTIONAR` FOREIGN KEY (`IDADMINISTRADOR`) REFERENCES `administrador` (`IDADMINISTRADOR`),
  ADD CONSTRAINT `FK_PERTENECER` FOREIGN KEY (`IDSECCION`) REFERENCES `seccion` (`IDSECCION`);

--
-- Filtros para la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD CONSTRAINT `FK_DETALLEPEDIDO` FOREIGN KEY (`IDCOCTEL`) REFERENCES `coctel` (`IDCOCTEL`),
  ADD CONSTRAINT `FK_DETALLEPEDIDO2` FOREIGN KEY (`IDPEDIDOONLINE`) REFERENCES `pedidoonline` (`IDPEDIDOONLINE`);

--
-- Filtros para la tabla `pedidoonline`
--
ALTER TABLE `pedidoonline`
  ADD CONSTRAINT `FK_REALIZAR` FOREIGN KEY (`IDCLIENTE`) REFERENCES `cliente` (`IDCLIENTE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
