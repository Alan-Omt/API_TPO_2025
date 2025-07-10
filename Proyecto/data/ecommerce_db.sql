-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2025 a las 08:07:45
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
-- Base de datos: `ecommerce_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Remera'),
(2, 'Pantalón'),
(3, 'Campera'),
(4, 'Buzo'),
(5, 'Shorts'),
(6, 'Camisa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` bigint(20) NOT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  `detalle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `precio` double NOT NULL,
  `stock` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `line` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `talle` varchar(255) DEFAULT NULL,
  `usuario_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`precio`, `stock`, `id`, `nombre`, `brand`, `descripcion`, `imagen`, `line`, `model`, `categoria`, `estado`, `marca`, `talle`, `usuario_id`) VALUES
(29.99, 45, 1, 'Remera Clásica Blanca', 'Urban Style', 'Remera blanca confeccionada en 100% algodón peinado de primera calidad.', 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?ixlib=rb-1.2.1', 'Essential Collection', 'Classic Fit 2025', NULL, NULL, NULL, NULL, NULL),
(59.99, 32, 2, 'Pantalón Jean Clásico', 'DenimCo', 'Jean clásico de corte recto confeccionado en denim premium.', 'https://images.unsplash.com/photo-1542272604-787c3835535d?ixlib=rb-1.2.1', 'Premium Denim', 'Regular Comfort', NULL, NULL, NULL, NULL, NULL),
(129.99, 18, 3, 'Campera de Cuero', 'Leather Elite', 'Campera de cuero sintético premium con acabado mate.', 'https://images.unsplash.com/photo-1551028719-00167b16eac5?ixlib=rb-1.2.1', 'Urban Riders', 'Classic Biker', NULL, NULL, NULL, NULL, NULL),
(49.99, 8, 5, 'Camisa Manga Larga', 'Executive Wear', 'Camisa formal en poplin de algodón 100% con acabado anti-arrugas. Diseño slim fit con pinzas en espalda para mejor ajuste.', 'https://images.unsplash.com/photo-1598033129183-c4f50c736f10?ixlib=rb-1.2.1', 'Business Collection', 'Professional Fit', NULL, NULL, NULL, NULL, NULL),
(39.99, 53, 6, 'Pantalón Jean', 'SportFlex', 'Pantalón Jean confeccionado en poliéster de alta calidad con tecnología DryFit. Material transpirable con control de humedad y secado rápido.', 'https://images.unsplash.com/photo-1605518216938-7c31b7b14ad0?ixlib=rb-1.2.1', 'Performance Pro', 'Training Elite', NULL, NULL, NULL, NULL, NULL),
(34.99, 41, 7, 'Remera Polo', 'Polo Elite', 'Polo confeccionado en piqué de algodón peinado 100%. Tejido de 220g que garantiza excelente caída y durabilidad.', 'https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?ixlib=rb-1.2.1', 'Classic Sport', 'Premium Cotton', NULL, NULL, NULL, NULL, NULL),
(55.99, 29, 8, 'Buzo con Capucha', 'UrbanComfort', 'Buzo confeccionado en felpa de algodón premium de 350g. Interior cepillado para mayor calidez y confort.', 'https://images.unsplash.com/photo-1556821840-3a63f95609a7?ixlib=rb-1.2.1', 'Streetwear Premium', 'Hoodie Max', NULL, NULL, NULL, NULL, NULL),
(29.99, 64, 9, 'Shorts Deportivos', 'SportFlex', 'Shorts deportivos ultralivianos con tecnología QuickDry. Malla interior de compresión con tratamiento antibacterial.', 'https://images.unsplash.com/photo-1591195853828-11db59a44f6b?ixlib=rb-1.2.1', 'Performance Pro', 'Runner Light', NULL, NULL, NULL, NULL, NULL),
(32.99, 47, 10, 'Remera Deportiva', 'SportFlex', 'Remera deportiva con tecnología avanzada de control de humedad. Tejido ultraliviano de microfibra con tratamiento antibacterial permanente.', 'https://images.unsplash.com/photo-1581655353564-df123a1eb820?ixlib=rb-1.2.1', 'Performance Pro', 'DryTech Elite', NULL, NULL, NULL, NULL, NULL),
(54.99, 35, 11, 'Pantalón Chino', 'Urban Style', 'Pantalón chino confeccionado en algodón stretch premium. Corte slim fit moderno con tiro medio.', 'https://images.unsplash.com/photo-1473966968600-fa801b869a1a?ixlib=rb-1.2.1', 'Casual Premium', 'Slim Comfort', NULL, NULL, NULL, NULL, NULL),
(45.99, 45, 12, 'Pantalon Jean', 'Ardidas', 'Pantalon confeccionado', 'https://images.unsplash.com/photo-1555689502-c4b22d76c56f', 'Collection', 'Classic 2025', NULL, NULL, NULL, NULL, NULL),
(350, 0, 16, 'Bufanda', 'prenda artesanal', 'Una bufanda mono color, distintos colores existentes', NULL, '', '', '4', 'nuevo', NULL, '', NULL),
(350, 0, 19, 'Remera', 'prenda artesanal', 'Remera verde, distintos colores existentes', NULL, '', '', '4', 'nuevo', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_categorias`
--

CREATE TABLE `productos_categorias` (
  `categoria_id` bigint(20) NOT NULL,
  `producto_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos_categorias`
--

INSERT INTO `productos_categorias` (`categoria_id`, `producto_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(6, 5),
(2, 6),
(1, 7),
(4, 8),
(5, 9),
(1, 10),
(2, 11),
(4, 16),
(4, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('ADMIN','USER') DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `apellido`, `email`, `nombre`, `password`, `role`, `telefono`, `usuario`) VALUES
(2, 'Dominguez', 'Juandominguez@gmail.com', 'Juan', '$2a$10$VpJ33ETAm7uou/mp49Mb8eXWxshPFoKxLrb5N7PYvwSzt7AmBj3NW', 'USER', '1154221014', 'JuanDominguez1'),
(6, 'Cristiano', 'arielcristiano@gmail.com', 'Ariel', '$2a$10$iRFciuCMK1Ck4RGvWczaOOrrZ0jwkXM9Rbh81c1byK0W/eqrErFiG', 'ADMIN', '1154141022', 'arielcristiano'),
(8, 'Perez', 'robeperez@gmail.com', 'Rober', '$2a$10$dGsroVuTTvrpW5wW8OAITuDpxwjO2n3VaTEfKO0hJiuQy6nV.pQMy', 'ADMIN', '11565461022', 'robeperez'),
(10, 'Fernandez', 'matifern@gmail.com', 'Matias', '$2a$10$rFKnAUyt..YtTvzrisKvJePgUHoIoSb452tphtYRoZnDxhhDhbxX.', 'USER', '1153087022', 'matifernandez');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5g0es69v35nmkmpi8uewbphs2` (`usuario_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKo8g0kqq9awvgh4elqai7tdhu` (`usuario_id`);

--
-- Indices de la tabla `productos_categorias`
--
ALTER TABLE `productos_categorias`
  ADD KEY `FKipxexj2s4qwcrnishh90p5qh4` (`categoria_id`),
  ADD KEY `FKtgspcohp2fev7ejxpdr1n3ul` (`producto_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `FK5g0es69v35nmkmpi8uewbphs2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FKo8g0kqq9awvgh4elqai7tdhu` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `productos_categorias`
--
ALTER TABLE `productos_categorias`
  ADD CONSTRAINT `FKipxexj2s4qwcrnishh90p5qh4` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `FKtgspcohp2fev7ejxpdr1n3ul` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
