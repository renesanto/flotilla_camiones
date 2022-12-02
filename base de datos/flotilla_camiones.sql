-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2022 a las 10:08:16
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `flotilla_camiones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido1` varchar(255) NOT NULL,
  `apellido2` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `estatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido1`, `apellido2`, `correo`, `clave`, `foto`, `estatus`) VALUES
(14, 'JOSE', 'reyes', 'lopez', 'admin@gmail.com', '1234', 'watssap logo 11.png', 'Inactivo'),
(18, 'RENE', 'ELENA', 'SANTOS', 'rene@gmail.com', '123', 'INLGES 3.PNG', 'Activo'),
(19, 'XIMENA', 'ELENA', 'SANTOS', 'XIMENA1234', '123', 'watssap logo 11.png', 'Activo'),
(22, 'JOSE', 'ELENA', 'SANTOS', 'rene125@gmail.com', '3456', 'rick y morty.jpg', 'Activo'),
(23, 'RENE', 'ELENA', 'SANTOS', 'rene@gmail.com', 'rene123', 'rick y morty.jpg', 'Activo'),
(24, 'HECTOR', 'ELENA', 'SANTOS', 'admin@gmail.com', '123', 'rick y morty.jpg', 'Activo'),
(25, 'DAVID', 'HERNANDEZ', 'ZEPEDA', 'david12345', '123', 'instagram 3D.png', 'Activo'),
(26, 'DAVID', 'HERNANDEZ', 'ZEPEDA', 'david12345', '123', 'instagram 3D.png', 'Activo'),
(27, 'ROSA', 'ELENA', 'SANTOS', 'ROSA@123', '123', 'Gasper 1.jpg', 'Activo'),
(29, '3.5', 'ELENA', 'MERCEDES', 'rene@gmail.com', '123', 'RENE.jpg', 'Activo'),
(30, 'ariel', 'reyes', 'reyes', 'ariel@123', '123', 'instagram 3D.png', 'Activo'),
(31, 'Elias', 'Galicia', 'Sanchez', 'elias@123', '123', 'Gasper 1.jpg', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido1` varchar(255) NOT NULL,
  `apellido2` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `estatus` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `apellido1`, `apellido2`, `correo`, `clave`, `estatus`, `foto`) VALUES
(2, 'Hector', 'Hernandez', 'Zepeda', 'renesantos127@gmail.com', 'rene123', 'Activo', 'watsapp 3D.jpg'),
(4, 'legaspi', 'reyes', 'lopez', 'renesantos127@soy.utj.edu.mx', '6789', 'Activo', 'rick y morty.jpg'),
(5, 'Juan', 'Estrada', 'Savala', 'renesantos127@soy.utj.edu.mx', '98798', 'Activo', 'rick y morty.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rentas`
--

CREATE TABLE `rentas` (
  `id` int(11) NOT NULL,
  `fecha_renta` varchar(355) NOT NULL,
  `fecha_termino` varchar(255) NOT NULL,
  `costo` varchar(255) NOT NULL,
  `estatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` int(255) NOT NULL,
  `contraseña` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `contraseña`) VALUES
(1, '123456'),
(2, 'Elena123'),
(3, '654321');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` int(11) NOT NULL,
  `capacidad` double NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `matricula` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `poliza` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `costo_mensual` int(11) NOT NULL,
  `estatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `capacidad`, `modelo`, `matricula`, `color`, `poliza`, `foto`, `costo_mensual`, `estatus`) VALUES
(1, 0, 'f', 'ff', 'ff', 'f', 'logo - copia.jpg', 0, 'Activo'),
(2, 3.5, 'mercedez', 'erer434', 'rojo', '33232', 'INLGES 3.PNG', 0, 'Activo'),
(3, 4.5, 'mercedez', 'jbsd76', 'blanco', '123537', 'watsapp 3D.jpg', 0, 'Activo'),
(4, 4.5, 'kango express', 'JRT34567', 'VERDE', '163844', 'watssap logo 11.png', 0, 'Activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rentas`
--
ALTER TABLE `rentas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rentas`
--
ALTER TABLE `rentas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
