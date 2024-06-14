-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2024 a las 20:04:24
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
-- Base de datos: `api_usuarios`
--
CREATE DATABASE IF NOT EXISTS `api_usuarios` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `api_usuarios`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `edad` int(11) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);
--
-- Base de datos: `auth_system`
--
CREATE DATABASE IF NOT EXISTS `auth_system` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `auth_system`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `birth_date` text DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `social_media` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `birth_date`, `bio`, `location`, `social_media`, `profile_picture`) VALUES
(1, NULL, 'henrycujcuj42@gmail.com', '$2b$10$bWBT.gqaAktqI5nBnGC5mekRsw6R8XaoAs/AYQIs2U2M/vD424iLW', NULL, NULL, NULL, NULL, NULL),
(2, NULL, 'alvin@gmail.com', '$2b$10$kuy2ccJF0LXjeSjMpWHXOuyTD3JZYstPaJX0HQLiFze1qXGncHOhm', NULL, NULL, NULL, NULL, NULL),
(3, NULL, 'testes@estosifuncina.com', '$2b$10$89EIR4B3VcLvxT0qFTyVZus/mg6H89cj83YNp9pbSB0fisVZMudJ2', NULL, NULL, NULL, NULL, NULL),
(4, NULL, 'nuevo@gmail.com', '$2b$10$ggmXUkX1NaUBk3ChU7z4jutRZur0uG/2xifWi1N2nvxQXs.ijeYY6', NULL, NULL, NULL, NULL, NULL),
(5, NULL, 'henrycujcuj4@gmail.com', '$2b$10$oRQTk1htRpn.gqTAD9NGvepvYN5bDxLDwqLgrTM0rd8CEXaWwKhIq', NULL, NULL, NULL, NULL, NULL),
(6, NULL, 'nuevo1@gmail.com', '$2b$10$6tuhn6SZbCo4q6AP22eFwuW5MnzXj/uHlR6kT666Oiwj1.Xl9qc.u', NULL, NULL, NULL, NULL, NULL),
(7, NULL, 'nuevo2@gmail.com', '$2b$10$rxdMkfRQkQWKqXJDfBbKiue/mytjbYiZXCBoKeVBwqrTJD0xwYSqa', NULL, NULL, NULL, NULL, NULL),
(8, NULL, 'nuevo3@gmail.com', '$2b$10$hqmSJV/MGCoPHH.YYCWRuehsaeYBJdWTAApHNQUsOtzTFhf95dgIO', NULL, NULL, NULL, NULL, NULL),
(9, NULL, 'nuevo4@gmail.com', '$2b$10$hIYSWmqK2e2KvPE75a9Ng.0d7Knmkar9SpxjDUeGeogWrxmuu4rYe', NULL, NULL, NULL, NULL, NULL),
(10, NULL, 'henrycujcuj2@gmail.com', '$2b$10$K3PuzzwJDErRdN2jBR3HUO714TG9D7wSbRu61GOIkoivauALsUzii', NULL, NULL, NULL, NULL, NULL),
(11, NULL, 'nuevo5@gmail.com', '$2b$10$0znJ.INYRWg8VcbACwUsT.cdARsme8A/1VZa/5VwzsJwZtMdwr.XC', NULL, NULL, NULL, NULL, NULL),
(12, NULL, 'henrycujcuj3@gmail.com', '$2b$10$KEIRqR3tJf5nmBE5ua56P.evnNgLhTaEvv2stQ5b7JW93kpMgdmzi', NULL, NULL, NULL, NULL, NULL),
(13, NULL, 'henrycujcuj5@gmail.com', '$2b$10$qPrlI95n1kvqgczI2sErNOJEB7F4qAhf9JXRz9A/fUiYUOXzUoHJS', NULL, NULL, NULL, NULL, NULL),
(14, NULL, 'henrycujcuj6@gmail.com', '$2b$10$z9LuYtK9L3nVM1Pv5yBDw.3iEV2/RBTwxRWg8wj3MA4bgrH62fdTO', NULL, NULL, NULL, NULL, NULL),
(15, NULL, 'henrycujcuj7@gmail.com', '$2b$10$LeoCNLJoYmduydYvj8dmQOX3dVysMXnW21MzHuWMZfEA1nKsbOpri', NULL, NULL, NULL, NULL, NULL),
(16, NULL, 'henrycujcuj8@gmail.com', '$2b$10$bo7fLnSq5woq/ek3T4AyQ.SpmLMcHALT99wlNvyNAhMZAf5jjZAY.', NULL, NULL, NULL, NULL, NULL),
(17, NULL, 'nuevo9@gmail.com', '$2b$10$5HCtYGdlJokRG/gpiYiOpewNGKdIyJ7XTxghWylU2Jm8jasgTfjJS', NULL, NULL, NULL, NULL, NULL),
(18, 'Usuario Actualizado 3', 'nuevo12@gmail.com', '$2b$10$guAcLr/TkJyIbtV.vpG7Y.WmFFOcLuHJFY5AwLyaxT6LqlF.TZ3au', '2000-01-02', 'Si funciona desde la actualizacion', 'Guatemala', 'facebook', 'uploads/1716785937070-perfil.jpeg'),
(19, NULL, 'nuevo13@gmail.com', '$2b$10$sH7JlGnp5D6mFU1sZ8XZIuktdxUzx0Uayt4u/tDlwhG/K6W1I/1F2', NULL, NULL, NULL, NULL, NULL),
(20, NULL, 'test@testprueba.com', '$2b$10$QWKaOee7lVplHTfi0q3w7ubk6Ii1otmHN0TqHrfhW4MxLFCw7c5Z.', NULL, NULL, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Base de datos: `base_de_datos_tarea_3`
--
CREATE DATABASE IF NOT EXISTS `base_de_datos_tarea_3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `base_de_datos_tarea_3`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `edad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `nombre`, `edad`) VALUES
(1, 'Henry', '24'),
(2, 'Alvin', '02'),
(3, 'Toto', '14'),
(4, 'Alejandro', '28'),
(5, 'Beatriz', '34'),
(6, 'Carlos', '45'),
(7, 'Daniela', '26'),
(8, 'Eduardo', '33'),
(9, 'Fernanda', '29'),
(10, 'Gabriel', '40'),
(11, 'Helena', '37'),
(12, 'Ignacio', '22'),
(13, 'Julia', '31'),
(14, 'Kevin', '25'),
(15, 'Lorena', '38'),
(16, 'Miguel', '42'),
(17, 'Natalia', '27'),
(18, 'Oscar', '36'),
(19, 'Patricia', '39'),
(20, 'Quintín', '44'),
(21, 'Rosa', '30'),
(22, 'Santiago', '24'),
(23, 'Teresa', '41'),
(24, 'Ulises', '35'),
(25, 'Viviana', '32'),
(26, 'Walter', '46'),
(27, 'Ximena', '23'),
(28, 'Yolanda', '48'),
(29, 'Zacarías', '47'),
(30, 'Aaron', '21'),
(31, 'Brenda', '49'),
(32, 'Cecilio', '50'),
(33, 'Diana', '20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Base de datos: `base_de_datos_tarea_4`
--
CREATE DATABASE IF NOT EXISTS `base_de_datos_tarea_4` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `base_de_datos_tarea_4`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cliente_id` int(11) DEFAULT NULL,
  `cliente_nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cliente_id`, `cliente_nombre`, `direccion`) VALUES
(1, 'Juan Perez', 'Calle Falsa 123'),
(2, 'Ana Gomez', 'Avenida Siempre Viva 456'),
(3, 'Carlos Ruiz', 'Calle del Olvido 789'),
(4, 'Lucia Diaz', 'Plaza Central 101'),
(5, 'Marco Antonio', 'Boulevard de los Sueños 202');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`customerID`, `name`, `age`) VALUES
(1, 'Juan Perez', 30),
(2, 'Maria Lopez', 25),
(3, 'Carlos Ruiz', 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_pedido`
--

CREATE TABLE `detalles_pedido` (
  `detalle_id` int(11) DEFAULT NULL,
  `pedido_id` int(11) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `detalles_pedido`
--

INSERT INTO `detalles_pedido` (`detalle_id`, `pedido_id`, `producto_id`, `cantidad`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 2, 3, 1),
(4, 3, 4, 1),
(5, 4, 5, 1),
(6, 5, 1, 1),
(7, 5, 2, 1),
(8, 5, 3, 2),
(9, 5, 4, 2),
(10, 5, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

CREATE TABLE `employees` (
  `employeeID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `employees`
--

INSERT INTO `employees` (`employeeID`, `name`, `salary`) VALUES
(1, 'John Smith', 500.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `customerID` int(11) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`orderID`, `customerID`, `product`, `quantity`) VALUES
(1, 1, 'Laptop', 1),
(2, 1, 'Mouse', 2),
(3, 2, 'Teclado', 1),
(4, 3, 'Monitor', 1),
(5, 1, 'Escritorio', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders2`
--

CREATE TABLE `orders2` (
  `orderID` int(11) NOT NULL,
  `customerName` varchar(255) DEFAULT NULL,
  `orderDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `orders2`
--

INSERT INTO `orders2` (`orderID`, `customerName`, `orderDate`) VALUES
(3, 'Carlos Ruiz', '2022-01-05'),
(4, 'Lucia Diaz', '2022-02-10'),
(6, 'Sofia Castillo', '2022-03-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `pedido_id` int(11) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `fecha_pedido` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`pedido_id`, `cliente_id`, `fecha_pedido`) VALUES
(1, 1, '2023-03-01'),
(2, 2, '2023-03-02'),
(3, 3, '2023-03-03'),
(4, 4, '2023-03-04'),
(5, 5, '2023-03-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `producto_id` int(11) DEFAULT NULL,
  `producto_nombre` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`producto_id`, `producto_nombre`, `precio`) VALUES
(1, 'Laptop', 1200.00),
(2, 'Smartphone', 800.00),
(3, 'Teclado', 100.00),
(4, 'Mouse', 50.00),
(5, 'Monitor', 300.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`productID`, `name`, `price`) VALUES
(1, 'Laptop', 1100.00),
(2, 'Smartphone', 550.00),
(3, 'Tablet', 330.00),
(4, 'Monitor', 220.00),
(5, 'Mouse', 27.50),
(6, 'Teclado', 55.00),
(7, 'Webcam', 88.00),
(8, 'Auriculares', 66.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerID`);

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeID`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indices de la tabla `orders2`
--
ALTER TABLE `orders2`
  ADD PRIMARY KEY (`orderID`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `employees`
--
ALTER TABLE `employees`
  MODIFY `employeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `orders2`
--
ALTER TABLE `orders2`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`);
--
-- Base de datos: `blog_db`
--
CREATE DATABASE IF NOT EXISTS `blog_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`) VALUES
(1, 'Tecnología'),
(2, 'Salud'),
(3, 'Viajes'),
(4, 'Gastronomía'),
(5, 'Deporte'),
(7, 'Programacion'),
(8, 'Arte'),
(9, 'Noticias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` int(11) NOT NULL,
  `contenido` varchar(255) NOT NULL,
  `fechaCreacion` date NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_publicacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id_comentario`, `contenido`, `fechaCreacion`, `id_usuario`, `id_publicacion`) VALUES
(1, 'Primer Comentario en tu publicacion', '2024-04-03', 5, 1),
(2, 'comentario en una publicacion', '2024-04-03', 5, 4),
(4, 'comentario', '2024-04-03', 5, 5),
(6, 'Comentario sobre la AI', '2024-04-04', 16, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id_publicacion` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `contenido` varchar(255) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id_publicacion`, `titulo`, `contenido`, `id_usuario`, `fecha_creacion`, `fecha_actualizacion`) VALUES
(1, 'Título Actualizado', 'Contenido actualizado de la publicación.', 1, '2024-04-02 22:19:18', '2024-04-03 05:36:21'),
(2, 'Explorando el Espacio', 'Hoy vamos a hablar sobre los últimos avances en exploración espacial.', 5, '2024-04-02 23:05:18', '2024-04-02 23:05:18'),
(3, 'La Revolución de la IA', 'La inteligencia artificial está cambiando el mundo tal y como lo conocemos.', 7, '2024-04-02 23:05:38', '2024-04-02 23:05:38'),
(4, 'Recetas Saludables para el Desayuno', 'Descubre recetas fáciles y saludables para empezar tu día con energía.', 8, '2024-04-02 23:06:06', '2024-04-02 23:06:06'),
(5, 'Consejos para una Vida Sostenible', 'Pequeños cambios en tu día a día que pueden hacer una gran diferencia para el planeta.', 9, '2024-04-02 23:06:20', '2024-04-02 23:06:20'),
(6, 'Los Mejores Destinos de Viaje en 2024', 'Una lista de lugares increíbles que debes considerar visitar el próximo año.', 5, '2024-04-03 04:43:18', '2024-04-03 04:43:18'),
(7, 'Guía de Iniciación al Yoga', 'Todo lo que necesitas saber para empezar tu práctica de yoga, desde posturas básicas hasta consejos para principiantes.', 1, '2024-04-03 05:11:15', '2024-04-03 05:11:15'),
(9, 'Viajar en Tiempos de Pandemia', 'Consejos y mejores prácticas para viajar de manera segura durante la pandemia de COVID-19.', 1, '2024-04-03 05:13:13', '2024-04-03 05:13:13'),
(10, 'Mi nueva publicación', 'Contenido de la publicación aquí.', 1, '2024-04-03 16:06:23', '2024-04-03 16:06:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones_categorias`
--

CREATE TABLE `publicaciones_categorias` (
  `id_publicacion` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `publicaciones_categorias`
--

INSERT INTO `publicaciones_categorias` (`id_publicacion`, `id_categoria`) VALUES
(10, 1),
(10, 2),
(10, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre`) VALUES
(1, 'administrador'),
(2, 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `profilePhoto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `userName`, `email`, `password`, `id_rol`, `profilePhoto`) VALUES
(1, 'Admin', 'admin@example.com', 'pass0102', 1, NULL),
(5, 'H', 'adminH@example.com', 'pass0102', 2, NULL),
(7, 'UsuarioUno', 'usuario1@example.com', 'Contraseña1', 2, NULL),
(8, 'UsuarioDos', 'usuario2@example.com', 'Contraseña2', 1, NULL),
(9, 'UsuarioTres', 'usuario3@example.com', 'Contraseña3', 2, NULL),
(10, 'UsuarioCuatro', 'usuario4@example.com', 'Contraseña4', 2, NULL),
(11, 'UsuarioCinco', 'usuario5@example.com', 'Contraseña5', 2, NULL),
(16, 'Usuario 16', 'u16@example.com', 'pass16', 2, NULL),
(17, 'usuario 17', 'u17@example.com', 'pass17', 2, NULL),
(18, 'usuario 18', 'u18@example.com', 'pass18', 2, 'uploads\\profilePhoto-1712259696713-352884942.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_publicacion` (`id_publicacion`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id_publicacion`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `publicaciones_categorias`
--
ALTER TABLE `publicaciones_categorias`
  ADD PRIMARY KEY (`id_publicacion`,`id_categoria`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id_publicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`id_publicacion`) REFERENCES `publicaciones` (`id_publicacion`);

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `publicaciones_categorias`
--
ALTER TABLE `publicaciones_categorias`
  ADD CONSTRAINT `publicaciones_categorias_ibfk_1` FOREIGN KEY (`id_publicacion`) REFERENCES `publicaciones` (`id_publicacion`),
  ADD CONSTRAINT `publicaciones_categorias_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`);
--
-- Base de datos: `company`
--
CREATE DATABASE IF NOT EXISTS `company` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `company`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `apellido` varchar(200) DEFAULT NULL,
  `correo` varchar(250) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `apellido`, `correo`, `direccion`) VALUES
(1, 'Hedwiga', 'Titmuss', 'htitmuss0@cpanel.net', '2 5th Plaza'),
(2, 'Thadeus', 'Burchill', 'tburchill1@mozilla.org', '97497 Butterfield Pass'),
(3, 'Shannah', 'Stuehmeier', 'sstuehmeier2@freewebs.com', '66391 Acker Park'),
(4, 'Cooper', 'Sondland', 'csondland3@nifty.com', '12222 Scoville Junction'),
(5, 'Rollins', 'Emlyn', 'remlyn4@geocities.jp', '83679 Hooker Drive'),
(6, 'Alicia', 'Wooller', 'awooller5@mlb.com', '56496 Dennis Circle'),
(7, 'Ingaborg', 'Sanzio', 'isanzio6@ucsd.edu', '59 Florence Circle'),
(8, 'Tadeas', 'Jentges', 'tjentges7@sun.com', '15259 Londonderry Center'),
(9, 'Fern', 'Weiner', 'fweiner8@amazon.de', '9 Orin Way'),
(10, 'Everett', 'Paulot', 'epaulot9@eventbrite.com', '5813 Basil Street'),
(11, 'Eirena', 'Buffey', 'ebuffeya@theglobeandmail.com', '3782 Crest Line Circle'),
(12, 'Erna', 'Lightwing', 'elightwingb@newyorker.com', '9409 Emmet Alley'),
(13, 'Aurie', 'Falck', 'afalckc@gizmodo.com', '5858 Boyd Way'),
(14, 'Tiff', 'Gush', 'tgushd@facebook.com', '236 Schlimgen Road'),
(15, 'Rafael', 'Force', 'rforcee@gov.uk', '6421 Knutson Street'),
(16, 'Nathan', 'Seathwright', 'nseathwrightf@prlog.org', '4 Fisk Center'),
(17, 'Gavan', 'Samter', 'gsamterg@posterous.com', '9 Pearson Lane'),
(18, 'Bernadene', 'Duckers', 'bduckersh@google.fr', '67 Caliangt Pass'),
(19, 'Alexandra', 'Creswell', 'acreswelli@chronoengine.com', '1 Warbler Parkway'),
(20, 'Fleming', 'Peckitt', 'fpeckittj@foxnews.com', '11 Messerschmidt Crossing'),
(21, 'Wyatt', 'Dericut', 'wdericutk@ebay.co.uk', '1681 Spenser Parkway'),
(22, 'Kristofor', 'Petch', 'kpetchl@opensource.org', '19 Carioca Trail'),
(23, 'Erna', 'Huggon', 'ehuggonm@fda.gov', '43589 Elka Place'),
(24, 'Elnora', 'Waddup', 'ewaddupn@wp.com', '23 Manitowish Pass'),
(25, 'Carrie', 'Lindell', 'clindello@wufoo.com', '5 Sunfield Trail'),
(26, 'Dillie', 'Trapp', 'dtrappp@ft.com', '7 Scott Lane'),
(27, 'Jemima', 'Gallop', 'jgallopq@mtv.com', '487 7th Avenue'),
(28, 'Odessa', 'O\'Hartagan', 'oohartaganr@mapy.cz', '1 Shelley Terrace'),
(29, 'Jasun', 'Figliovanni', 'jfigliovannis@soup.io', '135 Mandrake Junction'),
(30, 'Emmit', 'Strond', 'estrondt@github.com', '662 Dryden Way'),
(31, 'Wendeline', 'Clendennen', 'wclendennenu@1688.com', '35 Oak Valley Center'),
(32, 'Lanni', 'Roycroft', 'lroycroftv@dagondesign.com', '65 Buhler Terrace'),
(33, 'Seline', 'Rableau', 'srableauw@blogspot.com', '6915 Granby Avenue'),
(34, 'Davide', 'Kiddie', 'dkiddiex@chronoengine.com', '401 Sugar Street'),
(35, 'Wolfy', 'Dunridge', 'wdunridgey@1688.com', '88582 Canary Road'),
(36, 'Dud', 'Ubanks', 'dubanksz@jiathis.com', '006 Oak Drive'),
(37, 'Saunder', 'Palmby', 'spalmby10@seesaa.net', '7 Eagan Place'),
(38, 'Errick', 'Kalkhoven', 'ekalkhoven11@163.com', '6 Hoffman Circle'),
(39, 'Cairistiona', 'Kield', 'ckield12@trellian.com', '54068 Monica Lane'),
(40, 'Dode', 'Mayte', 'dmayte13@lulu.com', '9 Thierer Trail'),
(41, 'Peria', 'Sinnatt', 'psinnatt14@theguardian.com', '719 Sherman Parkway'),
(42, 'Oralia', 'Lush', 'olush15@dot.gov', '66645 Porter Pass'),
(43, 'Clio', 'Wehden', 'cwehden16@cbc.ca', '8970 Novick Plaza'),
(44, 'Osborn', 'Stidworthy', 'ostidworthy17@linkedin.com', '45274 Dovetail Trail'),
(45, 'Tresa', 'Mongin', 'tmongin18@mlb.com', '95 3rd Center'),
(46, 'Egan', 'Indruch', 'eindruch19@myspace.com', '1 Huxley Center'),
(47, 'Jackelyn', 'D\'Acth', 'jdacth1a@vkontakte.ru', '0463 Union Alley'),
(48, 'Theadora', 'Glencros', 'tglencros1b@paginegialle.it', '7399 Pearson Alley'),
(49, 'Milt', 'Arrigo', 'marrigo1c@nyu.edu', '2355 Luster Pass'),
(50, 'Jennica', 'Horder', 'jhorder1d@webnode.com', '32316 Randy Center'),
(51, 'Sherlock', 'Heikkinen', 'sheikkinen1e@howstuffworks.com', '512 Kinsman Pass');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- Base de datos: `companydb`
--
CREATE DATABASE IF NOT EXISTS `companydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `companydb`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `salary` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `employee`
--

INSERT INTO `employee` (`id`, `name`, `salary`) VALUES
(1, 'Ryan Ray', 20000),
(2, 'Joe McMillan', 40000),
(3, 'John Carter', 50000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Base de datos: `db_usuarios`
--
CREATE DATABASE IF NOT EXISTS `db_usuarios` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_usuarios`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(200) NOT NULL,
  `apellidos` varchar(200) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `correo` varchar(200) NOT NULL,
  `dni` varchar(200) NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `fecha_creacion` date NOT NULL,
  `telefono` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `direccion`, `correo`, `dni`, `edad`, `fecha_creacion`, `telefono`) VALUES
(1, 'Juan', 'Perez', 'Calle Falsa 123', 'juan.perez@mail.com', '12345678A', 28, '2023-03-01', '600111222'),
(2, 'Ana', 'Gomez', 'Avenida Real 456', 'ana.gomez@mail.com', '87654321B', 34, '2023-03-02', '601222333'),
(3, 'Carlos', 'Ruiz', 'Calle Nueva 789', 'carlos.ruiz@mail.com', '23456789C', 45, '2023-03-03', '602333444'),
(4, 'Lucia', 'Díaz', 'Plaza Central 101', 'lucia.diaz@mail.com', '34567890D', 26, '2023-03-04', '603444555'),
(5, 'Marco', 'Fernandez', 'Avenida Libertad 202', 'marco.fernandez@mail.com', '45678901E', 33, '2023-03-05', '604555666'),
(6, 'Sofia', 'Castillo', 'Calle Sol 303', 'sofia.castillo@mail.com', '56789012F', 29, '2023-03-06', '605666777'),
(7, 'David', 'López', 'Avenida Luna 404', 'david.lopez@mail.com', '67890123G', 40, '2023-03-07', '606777888'),
(8, 'Natalia', 'Morales', 'Calle Estrella 505', 'natalia.morales@mail.com', '78901234H', 37, '2023-03-08', '607888999'),
(9, 'Oscar', 'Jimenez', 'Avenida Sol 123', 'oscar.jimenez@mail.com', '89012345I', 22, '2023-03-09', '608999000'),
(10, 'Patricia', 'Navarro', 'Calle Luna 456', 'patricia.navarro@mail.com', '90123456J', 31, '2023-03-10', '609000111'),
(11, 'Roberto', 'Garcia', 'Avenida Estrella 789', 'roberto.garcia@mail.com', '01234567K', 25, '2023-03-11', '610111222'),
(12, 'Sandra', 'Sánchez', 'Calle Río 101', 'sandra.sanchez@mail.com', '12345678L', 38, '2023-03-12', '611222333'),
(13, 'Tomás', 'Martínez', 'Avenida Bosque 202', 'tomas.martinez@mail.com', '23456789M', 42, '2023-03-13', '612333444'),
(14, 'Ursula', 'Vega', 'Calle Mar 303', 'ursula.vega@mail.com', '34567890N', 27, '2023-03-14', '613444555'),
(15, 'Victor', 'Blanco', 'Avenida Jardín 404', 'victor.blanco@mail.com', '45678901O', 36, '2023-03-15', '614555666'),
(16, 'Ximena', 'Torres', 'Calle Bosque 505', 'ximena.torres@mail.com', '56789012P', 39, '2023-03-16', '615666777'),
(17, 'Yolanda', 'Ruiz', 'Avenida Río 606', 'yolanda.ruiz@mail.com', '67890123Q', 44, '2023-03-17', '616777888'),
(18, 'Zacarias', 'Mendez', 'Calle Jardín 707', 'zacarias.mendez@mail.com', '78901234R', 30, '2023-03-18', '617888999'),
(19, 'Alejandro', 'Nieto', 'Avenida Mar 123', 'alejandro.nieto@mail.com', '89012345S', 23, '2023-03-19', '618999000'),
(20, 'Beatriz', 'Campos', 'Calle Sol 456', 'beatriz.campos@mail.com', '90123456T', 48, '2023-03-20', '619000111');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- Base de datos: `empresa`
--
CREATE DATABASE IF NOT EXISTS `empresa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `empresa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`, `fecha_creacion`) VALUES
(1, 'Juan', 'juan@juan', 'juan123', '2024-05-13 13:40:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de datos: `facebook`
--
CREATE DATABASE IF NOT EXISTS `facebook` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `facebook`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actors`
--

CREATE TABLE `actors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actors`
--

INSERT INTO `actors` (`id`, `name`) VALUES
(1, 'Leonardo Dicaprio'),
(2, 'Keany Reeves'),
(3, 'George Clooney'),
(4, 'Tom Hanks'),
(5, 'Tim Allen'),
(6, 'Harrison Ford'),
(7, 'Carrie Fisher');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actors_movies`
--

CREATE TABLE `actors_movies` (
  `id` int(11) NOT NULL,
  `actor_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actors_movies`
--

INSERT INTO `actors_movies` (`id`, `actor_id`, `movie_id`) VALUES
(1, 4, 1),
(2, 5, 1),
(3, 6, 2),
(4, 7, 2),
(5, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_types`
--

CREATE TABLE `media_types` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `media_types`
--

INSERT INTO `media_types` (`id`, `name`) VALUES
(1, 'DVD'),
(2, 'Blu-ray');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `media_type_id` int(11) DEFAULT NULL,
  `year_released` date DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `movies`
--

INSERT INTO `movies` (`id`, `title`, `media_type_id`, `year_released`, `price`) VALUES
(1, 'Toy Story', 1, '1995-11-22', 19.95),
(2, 'The Empires Strikes Back', NULL, '1980-05-21', 35.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `Id` int(11) NOT NULL,
  `Contenido` varchar(200) DEFAULT NULL,
  `Likes` int(11) DEFAULT NULL,
  `Compartidos` int(11) DEFAULT NULL,
  `Comentarios` varchar(100) DEFAULT NULL,
  `Img` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userName` varchar(25) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `nombre` varchar(15) DEFAULT NULL,
  `edad` varchar(5) DEFAULT NULL,
  `imagen` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `userName`, `correo`, `nombre`, `edad`, `imagen`) VALUES
(1, 'bhinstock0', 'bhinstock0@cisco.com', 'Benedikta Hinst', '100', NULL),
(2, 'fjanikowski1', 'fjanikowski1@geocities.jp', 'Fey Janikowski', '43', NULL),
(3, 'bpacitti2', 'bpacitti2@clickbank.net', 'Bradan Pacitti', '75', NULL),
(4, 'fleadbeatter3', 'fleadbeatter3@quantcast.com', 'Fabio Leadbeatt', '21', NULL),
(5, 'chucker4', 'chucker4@tamu.edu', 'Christophe Huck', '38', NULL),
(6, 'daers5', 'daers5@nydailynews.com', 'Daphene Aers', '36', NULL),
(7, 'fredmile6', 'fredmile6@businessinsider.com', 'Findley Redmile', '13', NULL),
(8, 'camber7', 'camber7@reuters.com', 'Clementius Ambe', '85', NULL),
(9, 'fsollam8', 'fsollam8@cafepress.com', 'Forrester Solla', '81', NULL),
(10, 'lcraigie9', 'lcraigie9@ask.com', 'Lawry Craigie', '31', NULL),
(11, 'fsymmonsa', 'fsymmonsa@cargocollective.com', 'Florenza Symmon', '87', NULL),
(12, 'cbulterb', 'cbulterb@hubpages.com', 'Cherin Bulter', '56', NULL),
(13, 'drozetc', 'drozetc@sina.com.cn', 'Duane Rozet', '76', NULL),
(14, 'ylidgleyd', 'ylidgleyd@ifeng.com', 'Yale Lidgley', '93', NULL),
(15, 'eklimshuke', 'eklimshuke@moonfruit.com', 'Ebonee Klimshuk', '72', NULL),
(16, 'miacobettof', 'miacobettof@google.com.br', 'Marcos Iacobett', '22', NULL),
(17, 'lgabeg', 'lgabeg@biglobe.ne.jp', 'Leonardo Gabe', '20', NULL),
(18, 'vwoolertonh', 'vwoolertonh@oracle.com', 'Vinny Woolerton', '89', NULL),
(19, 'apridmorei', 'apridmorei@hud.gov', 'Aleksandr Pridm', '19', NULL),
(20, 'semanuelovj', 'semanuelovj@squidoo.com', 'Selestina Emanu', '86', NULL),
(21, 'kfurbyk', 'kfurbyk@sitemeter.com', 'Kelley Furby', '11', NULL),
(22, 'ekivellel', 'ekivellel@ucoz.com', 'Estelle Kivelle', '30', NULL),
(23, 'mpauerm', 'mpauerm@columbia.edu', 'Margette Pauer', '53', NULL),
(24, 'aprieln', 'aprieln@weebly.com', 'Arlinda Priel', '75', NULL),
(25, 'blambetho', 'blambetho@prweb.com', 'Birgit Lambeth', '27', NULL),
(26, 'wnucatorp', 'wnucatorp@storify.com', 'Wynn Nucator', '44', NULL),
(27, 'rchallenerq', 'rchallenerq@vimeo.com', 'Ronny Challener', '32', NULL),
(28, 'gattarger', 'gattarger@nydailynews.com', 'Genevra Attarge', '12', NULL),
(29, 'fsilcocks', 'fsilcocks@mlb.com', 'Felicdad Silcoc', '69', NULL),
(30, 'kellisst', 'kellisst@unesco.org', 'Kimmy Elliss', '66', NULL),
(31, 'mthurlowu', 'mthurlowu@dion.ne.jp', 'Marieann Thurlo', '82', NULL),
(32, 'vgodspeedev', 'vgodspeedev@buzzfeed.com', 'Vic Godspeede', '43', NULL),
(33, 'mbrassillw', 'mbrassillw@mail.ru', 'Marieann Brassi', '74', NULL),
(34, 'psteedx', 'psteedx@clickbank.net', 'Phelia Steed', '94', NULL),
(35, 'ldronsfieldy', 'ldronsfieldy@jimdo.com', 'Lettie Dronsfie', '80', NULL),
(36, 'zstreatleyz', 'zstreatleyz@timesonline.co.uk', 'Zechariah Strea', '71', NULL),
(37, 'stapner10', 'stapner10@squarespace.com', 'Saba Tapner', '62', NULL),
(38, 'jstell11', 'jstell11@liveinternet.ru', 'Jesselyn Stell', '42', NULL),
(39, 'ntarbin12', 'ntarbin12@utexas.edu', 'Ned Tarbin', '46', NULL),
(40, 'xwaud13', 'xwaud13@statcounter.com', 'Ximenez Waud', '6', NULL),
(41, 'asnalom14', 'asnalom14@sohu.com', 'Allie Snalom', '37', NULL),
(42, 'ewoodyear15', 'ewoodyear15@jugem.jp', 'Ewen Woodyear', '30', NULL),
(43, 'dcallington16', 'dcallington16@cbsnews.com', 'Dionis Callingt', '35', NULL),
(44, 'mskeech17', 'mskeech17@scribd.com', 'Marga Skeech', '10', NULL),
(45, 'thawker18', 'thawker18@delicious.com', 'Thacher Hawker', '64', NULL),
(46, 'lrobic19', 'lrobic19@csmonitor.com', 'Lucie Robic', '9', NULL),
(47, 'mmacarthur1a', 'mmacarthur1a@theatlantic.com', 'Michel MacArthu', '19', NULL),
(48, 'eaucott1b', 'eaucott1b@sogou.com', 'Edin Aucott', '95', NULL),
(49, 'bpodbury1c', 'bpodbury1c@nyu.edu', 'Bryana Podbury', '84', NULL),
(50, 'vde1d', 'vde1d@nps.gov', 'Valera De Filip', '72', NULL),
(51, 'rcamp1e', 'rcamp1e@ft.com', 'Roy Camp', '51', NULL),
(52, 'mholywell1f', 'mholywell1f@redcross.org', 'Malena Holywell', '36', NULL),
(53, 'mblakiston1g', 'mblakiston1g@wired.com', 'Meryl Blakiston', '75', NULL),
(54, 'cmarking1h', 'cmarking1h@hao123.com', 'Carey Marking', '84', NULL),
(55, 'bdenys1i', 'bdenys1i@nifty.com', 'Bryant Denys', '78', NULL),
(56, 'ftynnan1j', 'ftynnan1j@google.co.uk', 'Frederich Tynna', '28', NULL),
(57, 'esimkovich1k', 'esimkovich1k@behance.net', 'Ebenezer Simkov', '9', NULL),
(58, 'fkirsch1l', 'fkirsch1l@yale.edu', 'Farand Kirsch', '73', NULL),
(59, 'hfourman1m', 'hfourman1m@nature.com', 'Hallie Fourman', '10', NULL),
(60, 'nlange1n', 'nlange1n@google.com.au', 'Nicol Lange', '1', NULL),
(61, 'cjosowitz1o', 'cjosowitz1o@thetimes.co.uk', 'Claudius Josowi', '17', NULL),
(62, 'dmaryet1p', 'dmaryet1p@tamu.edu', 'Demetrius Marye', '81', NULL),
(63, 'tchina1q', 'tchina1q@cisco.com', 'Tawnya China', '61', NULL),
(64, 'acawkill1r', 'acawkill1r@java.com', 'Amble Cawkill', '19', NULL),
(65, 'arodgers1s', 'arodgers1s@who.int', 'Adrianna Rodger', '47', NULL),
(66, 'agillmor1t', 'agillmor1t@state.gov', 'Alene Gillmor', '36', NULL),
(67, 'jagney1u', 'jagney1u@drupal.org', 'Junina Agney', '48', NULL),
(68, 'cstannus1v', 'cstannus1v@bigcartel.com', 'Clotilda Stannu', '75', NULL),
(69, 'kcammacke1w', 'kcammacke1w@ed.gov', 'Kinny Cammacke', '15', NULL),
(70, 'mlafranconi1x', 'mlafranconi1x@who.int', 'Muhammad Lafran', '11', NULL),
(71, 'lpillans1y', 'lpillans1y@reuters.com', 'Lizbeth Pillans', '31', NULL),
(72, 'lle1z', 'lle1z@seesaa.net', 'Lorilee Le feuv', '75', NULL),
(73, 'rvon20', 'rvon20@wikimedia.org', 'Rozamond Von He', '72', NULL),
(74, 'adederick21', 'adederick21@ycombinator.com', 'Arlana Dederick', '86', NULL),
(75, 'bivimy22', 'bivimy22@smugmug.com', 'Burlie Ivimy', '86', NULL),
(76, 'amontez23', 'amontez23@printfriendly.com', 'Alie Montez', '56', NULL),
(77, 'struwert24', 'struwert24@diigo.com', 'Sutherland Truw', '46', NULL),
(78, 'cfiander25', 'cfiander25@nih.gov', 'Cristen Fiander', '46', NULL),
(79, 'rsmeed26', 'rsmeed26@istockphoto.com', 'Reggis Smeed', '54', NULL),
(80, 'sarchibald27', 'sarchibald27@ucoz.ru', 'Sherwynd Archib', '86', NULL),
(81, 'brubbert28', 'brubbert28@github.com', 'Brit Rubbert', '52', NULL),
(82, 'aclubbe29', 'aclubbe29@europa.eu', 'Ailina Clubbe', '99', NULL),
(83, 'damberson2a', 'damberson2a@de.vu', 'Danny Amberson', '100', NULL),
(84, 'pwilding2b', 'pwilding2b@blogs.com', 'Pinchas Wilding', '60', NULL),
(85, 'rnorgan2c', 'rnorgan2c@scribd.com', 'Redford Norgan', '51', NULL),
(86, 'dcameron2d', 'dcameron2d@odnoklassniki.ru', 'Dierdre Cameron', '83', NULL),
(87, 'pmillions2e', 'pmillions2e@yahoo.com', 'Penni Millions', '42', NULL),
(88, 'vventon2f', 'vventon2f@zimbio.com', 'Valaree Venton', '18', NULL),
(89, 'fterbeck2g', 'fterbeck2g@bigcartel.com', 'Fina Terbeck', '4', NULL),
(90, 'twatting2h', 'twatting2h@hubpages.com', 'Tuckie Watting', '36', NULL),
(91, 'gbannester2i', 'gbannester2i@smh.com.au', 'Goldie Banneste', '34', NULL),
(92, 'aabrahamoff2j', 'aabrahamoff2j@printfriendly.co', 'Angelle Abraham', '45', NULL),
(93, 'klapthorne2k', 'klapthorne2k@smh.com.au', 'Kevina Lapthorn', '38', NULL),
(94, 'cglasebrook2l', 'cglasebrook2l@dropbox.com', 'Cecelia Glasebr', '89', NULL),
(95, 'gbrilleman2m', 'gbrilleman2m@reddit.com', 'Gerry Brilleman', '96', NULL),
(96, 'nluckhurst2n', 'nluckhurst2n@addthis.com', 'Nils Luckhurst', '3', NULL),
(97, 'lbennett2o', 'lbennett2o@nasa.gov', 'Larine Bennett', '12', NULL),
(98, 'palmeida2p', 'palmeida2p@facebook.com', 'Pamelina Almeid', '61', NULL),
(99, 'jsteger2q', 'jsteger2q@cisco.com', 'Juliann Steger', '53', NULL),
(100, 'rnewband2r', 'rnewband2r@npr.org', 'Rosene Newband', '23', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `actors_movies`
--
ALTER TABLE `actors_movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actor_id` (`actor_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indices de la tabla `media_types`
--
ALTER TABLE `media_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_type_id` (`media_type_id`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `actors_movies`
--
ALTER TABLE `actors_movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `media_types`
--
ALTER TABLE `media_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actors_movies`
--
ALTER TABLE `actors_movies`
  ADD CONSTRAINT `actors_movies_ibfk_1` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`),
  ADD CONSTRAINT `actors_movies_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Filtros para la tabla `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`);
--
-- Base de datos: `funval_db`
--
CREATE DATABASE IF NOT EXISTS `funval_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `funval_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `profilePicture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `profilePicture`) VALUES
(1, 'John Doe', 'john@example.com', '$2a$10$ouPYmZV3zAYnmTnL4.WcEOHB2bSvNjQzp9GbS0nPniJwrQXdbTDGa', 'controller', 'https://example.com/john.jpg'),
(2, 'Jane Smith', 'jane@example.com', '$2a$10$3DyAJpTMpu5IaZi1gahcDOOm4DqEaDp1ppTqEMJ/hYPDN6MYZzCHm', 'Controller', 'https://example.com/jane.jpg'),
(3, 'Michael Johnson', 'michael@example.com', '$2a$10$g3j.XD6v9sF5y3Fy5zVz3utKhxGxfGIIcJa1X9zqT2Hl2kD2WZVj2', 'Maestro', 'https://example.com/michael.jpg'),
(4, 'Emily Davis', 'emily@example.com', '$2a$10$N.05dqrZq.6dg/9zsDC3NOZ2jWIIOEqQttnAgNYQblg8vBnWeY.tO', 'Supervisor', NULL),
(5, 'David Wilson', 'david@example.com', '$2a$10$yL/n2X.NzRImy6ftG0unb.dB4I5i4GcUUNNbjYk7LpfTREWpLPW5O', 'Controller', NULL),
(9, 'Henry Alonzo', 'testes@estosifuncina.com', '123456789', 'supervisor', NULL),
(11, 'Henry Alonzo', 'nuevo@gmail.com', '124354879', 'controller', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Base de datos: `gestion_incidencias`
--
CREATE DATABASE IF NOT EXISTS `gestion_incidencias` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestion_incidencias`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `incidence_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `incidence_id`, `content`, `created_at`) VALUES
(3, 3, 2, 'El problema parece ser más grave de lo pensado.', '2024-06-10 22:32:27'),
(4, 3, 2, 'El problema parece ser más grave de lo pensado.', '2024-06-11 00:13:15'),
(5, 3, 2, 'El problema parece ser más grave de lo pensado.', '2024-06-11 00:14:21'),
(6, 3, 2, 'El problema parece ser más grave de lo pensado. otra vez', '2024-06-11 00:17:40'),
(7, 3, 2, 'El problema parece ser más grave de lo pensado. otra vez', '2024-06-11 00:24:35'),
(8, 3, 2, 'El problema parece ser más grave de lo pensado. otra vez 1', '2024-06-11 15:04:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidences`
--

CREATE TABLE `incidences` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `status` enum('pending','in_progress','resolved') DEFAULT 'pending',
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `incidences`
--

INSERT INTO `incidences` (`id`, `user_id`, `title`, `description`, `location`, `status`, `image_url`, `created_at`, `updated_at`) VALUES
(2, 1, 'Fuga de agua', '.... reparar', 'Apt 101', 'pending', 'uploads\\image-1718043332671-448486306.jpeg', '2024-06-10 18:15:32', '2024-06-10 18:15:32'),
(10, 3, 'Fuga Agua', 'tuberia rota', 'guate', 'resolved', 'uploads\\image-1718300193185-618688371.jpeg', '2024-06-13 17:36:33', '2024-06-13 23:23:36'),
(11, 3, 'Fuego', 'Hay fuego ', 'en mi casa', 'in_progress', 'uploads\\image-1718319892148-499536073.jpeg', '2024-06-13 23:04:52', '2024-06-14 04:43:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('resident','admin') DEFAULT 'resident',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@example.com', '$2b$10$0NNoWFEIUqzE1mxGCQyN7e/YUzQp13IKGGHoQHUnb/3ZZEozZTYLu', 'admin', '2024-06-10 18:04:12', '2024-06-10 18:57:13'),
(3, 'test1', 'test1@example.com', '$2b$10$kIHuUFCRLeUI7SbUra5p7eeAiaVD6TBnujK.7rHPqmIAXYVTuwFpa', 'resident', '2024-06-10 21:13:15', '2024-06-10 21:13:15'),
(4, 'Henry', 'Henry@gmail.com', '$2b$10$0MdBLj86/N3nqRCFIULFJOmEoP7pvkxHM0yk87hTkitIf9.HN/uRa', 'resident', '2024-06-11 17:44:03', '2024-06-11 17:44:03'),
(5, 'HenryOrlando', 'testH@correo.com', '$2b$10$dgGrKl1ZlJI5ccG6Fw5QdeUtg5rThWgM5wbNx7.JlfoHxfRCk7Ddq', 'resident', '2024-06-11 19:16:16', '2024-06-11 19:16:16'),
(6, 'Heal', 'heal@gmail.com', '$2b$10$yx92F6SNeoNfO0QmJkPVKex3pG6iuzgeN49zxabyYvMW6OQfNvCpi', 'resident', '2024-06-12 18:54:12', '2024-06-12 18:54:12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `incidence_id` (`incidence_id`);

--
-- Indices de la tabla `incidences`
--
ALTER TABLE `incidences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `incidences`
--
ALTER TABLE `incidences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`incidence_id`) REFERENCES `incidences` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `incidences`
--
ALTER TABLE `incidences`
  ADD CONSTRAINT `incidences_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
--
-- Base de datos: `market`
--
CREATE DATABASE IF NOT EXISTS `market` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `market`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `precio` decimal(6,2) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen` varchar(250) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `descripcion`, `imagen`, `stock`) VALUES
(1, 'Neumatico', 100.00, 'Descripcion del procunto 1', 'https://www.firestone.com.mx/content/dam/consumer/fst/la/mx/tips/comprar-llantas/LlantasBridgestone-01_big.jpg', 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de datos: `movies`
--
CREATE DATABASE IF NOT EXISTS `movies` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `movies`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actors`
--

CREATE TABLE `actors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `actors`
--

INSERT INTO `actors` (`id`, `name`) VALUES
(1, 'Leonardo Dicaprio'),
(2, 'Keany Reeves'),
(3, 'George Clooney'),
(4, 'Tom Hanks'),
(5, 'Tim Allen'),
(6, 'Harrison Ford'),
(7, 'Carrie Fisher');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actors_movies`
--

CREATE TABLE `actors_movies` (
  `id` int(11) NOT NULL,
  `actor_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `actors_movies`
--

INSERT INTO `actors_movies` (`id`, `actor_id`, `movie_id`) VALUES
(1, 4, 1),
(2, 5, 1),
(3, 6, 2),
(4, 7, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_types`
--

CREATE TABLE `media_types` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `media_types`
--

INSERT INTO `media_types` (`id`, `name`) VALUES
(1, 'DVD'),
(2, 'Blu-ray');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `media_type_id` int(11) DEFAULT NULL,
  `year_released` date DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `movies`
--

INSERT INTO `movies` (`id`, `title`, `media_type_id`, `year_released`, `price`) VALUES
(1, 'Toy Story', 1, '1995-11-22', 19.95),
(2, 'The Empires Strikes Back', 2, '1980-05-21', 35.00),
(3, 'The Empires Strikes Back', 2, '1980-05-21', 35.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `actors_movies`
--
ALTER TABLE `actors_movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actor_id` (`actor_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indices de la tabla `media_types`
--
ALTER TABLE `media_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_type_id` (`media_type_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `actors_movies`
--
ALTER TABLE `actors_movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `media_types`
--
ALTER TABLE `media_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actors_movies`
--
ALTER TABLE `actors_movies`
  ADD CONSTRAINT `actors_movies_ibfk_1` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`),
  ADD CONSTRAINT `actors_movies_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Filtros para la tabla `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`);
--
-- Base de datos: `movies_market`
--
CREATE DATABASE IF NOT EXISTS `movies_market` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `movies_market`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actors`
--

CREATE TABLE `actors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actors`
--

INSERT INTO `actors` (`id`, `name`) VALUES
(1, 'Leonardo Dicaprio'),
(2, 'Keany Reeves'),
(3, 'George Clooney'),
(4, 'Tom Hanks'),
(5, 'Tim Allen'),
(6, 'Harrison Ford'),
(7, 'Carrie Fisher');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actors_movies`
--

CREATE TABLE `actors_movies` (
  `id` int(11) NOT NULL,
  `actor_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actors_movies`
--

INSERT INTO `actors_movies` (`id`, `actor_id`, `movie_id`) VALUES
(1, 4, 1),
(2, 5, 1),
(3, 6, 2),
(4, 7, 2),
(5, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_types`
--

CREATE TABLE `media_types` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `media_types`
--

INSERT INTO `media_types` (`id`, `name`) VALUES
(1, 'DVD'),
(2, 'Blu-ray');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `media_type_id` int(11) DEFAULT NULL,
  `year_released` date DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `movies`
--

INSERT INTO `movies` (`id`, `title`, `media_type_id`, `year_released`, `price`) VALUES
(1, 'Toy Story', 1, '1995-11-22', 19.95),
(2, 'The Empires Strikes Back', NULL, '1980-05-21', 35.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `actors_movies`
--
ALTER TABLE `actors_movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actor_id` (`actor_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indices de la tabla `media_types`
--
ALTER TABLE `media_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_type_id` (`media_type_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `actors_movies`
--
ALTER TABLE `actors_movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `media_types`
--
ALTER TABLE `media_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actors_movies`
--
ALTER TABLE `actors_movies`
  ADD CONSTRAINT `actors_movies_ibfk_1` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`),
  ADD CONSTRAINT `actors_movies_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Filtros para la tabla `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"gestion_incidencias\",\"table\":\"incidences\"},{\"db\":\"gestion_incidencias\",\"table\":\"users\"},{\"db\":\"gestion_incidencias\",\"table\":\"comments\"},{\"db\":\"auth_system\",\"table\":\"users\"},{\"db\":\"blog_db\",\"table\":\"categorias\"},{\"db\":\"blog_db\",\"table\":\"comentarios\"},{\"db\":\"blog_db\",\"table\":\"publicaciones\"},{\"db\":\"blog_db\",\"table\":\"publicaciones_categorias\"},{\"db\":\"blog_db\",\"table\":\"roles\"},{\"db\":\"blog_db\",\"table\":\"usuarios\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'base_de_datos_tarea_3', 'datos', '{\"CREATE_TIME\":\"2024-02-29 13:29:47\"}', '2024-03-06 18:06:38'),
('root', 'blog_db', 'usuarios', '[]', '2024-04-02 15:04:03'),
('root', 'funval_db', 'users', '{\"sorted_col\":\"`id` ASC\"}', '2024-03-23 05:22:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-06-14 15:40:24', '{\"Console\\/Mode\":\"show\",\"lang\":\"es\",\"Console\\/Height\":-19.00999999999999,\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de datos: `usuarios`
--
CREATE DATABASE IF NOT EXISTS `usuarios` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `usuarios`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `correo` varchar(255) NOT NULL,
  `dni` varchar(255) NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `fechaCreacion` date NOT NULL,
  `telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
