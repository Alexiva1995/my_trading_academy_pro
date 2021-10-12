-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-10-2021 a las 13:20:45
-- Versión del servidor: 8.0.26
-- Versión de PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mytrady_office`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addres_ip`
--

CREATE TABLE `addres_ip` (
  `id` int NOT NULL,
  `ip` text NOT NULL,
  `padre` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradorgastos`
--

CREATE TABLE `administradorgastos` (
  `id` int NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` longtext NOT NULL,
  `tipo` tinyint DEFAULT NULL,
  `date` date DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradorlista`
--

CREATE TABLE `administradorlista` (
  `id` int NOT NULL,
  `nombre` text NOT NULL,
  `tipo` tinyint DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncios`
--

CREATE TABLE `anuncios` (
  `id` int NOT NULL,
  `titulo` longtext,
  `contenido` longtext,
  `color` varchar(250) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `vencimiento` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `id` int UNSIGNED NOT NULL,
  `titulo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contenido` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `archivo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `imagen_muestra` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Artículo número 1', '<p><span style=\"font-size:16px\"><span style=\"color:#3498db\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </span></span></p>\r\n\r\n<p>Mauris semper tortor a sagittis gravida. Quisque mi nulla, varius id condimentum a, pellentesque vitae ex. Cras diam odio, porttitor non tincidunt ut, dictum a justo. Phasellus tristique enim ut dolor efficitur, in malesuada turpis posuere. Nunc accumsan lectus nec porttitor fermentum. Cras ultricies velit egestas pulvinar lobortis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac nisi dictum, dignissim odio a, sodales..</p>', '2020-11-25 16:06:50', '2020-11-26 18:02:04'),
(2, 'Artículo número 2', '<p><span style=\"font-size:16px\"><span style=\"color:#3498db\">Etiam malesuada sem a urna laoreet tempor. </span></span></p>\r\n\r\n<p>Donec interdum aliquet ex, mollis pulvinar felis pulvinar eget. Quisque id fringilla nisl. Donec sagittis diam ligula, iaculis congue sapien faucibus ut. In non ante dui. Nam purus arcu, iaculis vel fringilla a, facilisis a nisl.</p>', '2020-11-25 16:08:35', '2020-11-26 17:54:02'),
(3, 'Artículo número 3', '<p><span style=\"font-size:16px\"><span style=\"color:#3498db\">Curabitur vestibulum</span></span></p>\r\n\r\n<p>Curabitur vestibulum, augue vel volutpat congue, urna erat mattis eros, vel vulputate odio felis id libero. Vestibulum at nulla in mauris pellentesque scelerisque eu ut ex. In dignissim ipsum elit, vel vulputate felis egestas at. Morbi non rutrum arcu, a vulputate velit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus elementum consectetur diam, at pharetra sem tristique sed.</p>', '2020-11-25 16:17:52', '2020-11-25 16:17:52'),
(4, 'Artículo número 4', '<p><span style=\"font-size:16px\"><span style=\"color:#3498db\">Integer eu commodo diam.</span></span></p>\r\n\r\n<p>Fusce ut mi in nibh viverra dignissim eu vel lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In imperdiet rhoncus commodo. Duis facilisis dictum sollicitudin. Proin vulputate tellus dui. Nam pharetra condimentum est, nec venenatis tellus. Curabitur ut nisi sem. Aliquam imperdiet consectetur metus in tempor.</p>', '2020-11-25 16:26:45', '2020-11-25 16:26:45'),
(5, 'Artículo número 5', '<p><span style=\"color:#3498db\"><span style=\"font-size:16px\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span></span></p>\r\n\r\n<p>Sed consectetur quis velit quis mattis. Nunc sed leo tempor odio fermentum gravida. Morbi maximus pellentesque volutpat. Phasellus nec nulla arcu. Nulla blandit vitae metus vitae hendrerit. In gravida nisi at congue commodo</p>', '2020-12-03 10:40:20', '2020-12-03 10:40:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avatares`
--

CREATE TABLE `avatares` (
  `id` int NOT NULL,
  `avatar` longtext,
  `activo_mujer` varchar(300) DEFAULT NULL,
  `activo_hombre` varchar(300) DEFAULT NULL,
  `inactivo_mujer` varchar(300) DEFAULT NULL,
  `inactivo_hombre` varchar(300) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `avatares`
--

INSERT INTO `avatares` (`id`, `avatar`, `activo_mujer`, `activo_hombre`, `inactivo_mujer`, `inactivo_hombre`, `updated_at`) VALUES
(1, '[{\"avatar\":\"avatar_1576185092.png\"},{\"avatar\":\"avatar_1576189159.png\"},{\"avatar\":\"avatar_1576189177.png\"},{\"avatar\":\"avatar_1576189187.png\"},{\"avatar\":\"avatar_1576189196.png\"},{\"avatar\":\"avatar_1576189203.png\"},{\"avatar\":\"avatar_1576189213.png\"},{\"avatar\":\"avatar_15762497471.png\"},{\"avatar\":\"avatar_15762497472.png\"},{\"avatar\":\"avatar_15762497473.png\"},{\"avatar\":\"avatar_15762497474.png\"},{\"avatar\":\"avatar_15763101171.png\"}]', 'avatar_1576189196.png', 'avatar_1576189187.png', 'avatar_1576189213.png', 'avatar_1576189203.png', '2019-12-14 12:55:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `page` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 = No Visible. 1 = Visible',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `binario`
--

CREATE TABLE `binario` (
  `id` int NOT NULL,
  `binario` double DEFAULT NULL,
  `pata` varchar(250) DEFAULT NULL,
  `autobinario` int DEFAULT NULL COMMENT '1 - automitico 0 - semiautomatico',
  `inicio` varchar(250) DEFAULT NULL,
  `tipo` varchar(250) DEFAULT NULL,
  `auto` varchar(250) DEFAULT NULL COMMENT 'automatico - se paga de una ves - semi - se guarda en la base de datos y el admin decide si la acepta',
  `puntos_inicio` varchar(250) DEFAULT NULL,
  `patrocinador` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonoinicio`
--

CREATE TABLE `bonoinicio` (
  `id` int NOT NULL,
  `usuario` varchar(250) NOT NULL,
  `iduser` int NOT NULL,
  `idcomision` int NOT NULL,
  `total` varchar(250) NOT NULL,
  `correo` varchar(250) NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendarios`
--

CREATE TABLE `calendarios` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `event_id` int NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `contenido` longtext NOT NULL,
  `color` varchar(250) DEFAULT '#28a745',
  `inicio` date NOT NULL,
  `vence` datetime DEFAULT NULL,
  `time` time DEFAULT NULL,
  `lugar` varchar(250) NOT NULL,
  `tipo` varchar(250) DEFAULT NULL,
  `especifico` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `calendarios`
--

INSERT INTO `calendarios` (`id`, `iduser`, `event_id`, `titulo`, `contenido`, `color`, `inicio`, `vence`, `time`, `lugar`, `tipo`, `especifico`, `created_at`, `updated_at`) VALUES
(1, 10125, 1, 'Evento de Prueba', '<p>Esto es una prueba para la clonaci&oacute;n de la vista de transmisi&oacute;n y verificaci&oacute;n del sistema de streaming</p>', '#28a745', '2021-01-21', NULL, '14:00:00', 'Ninguno', NULL, NULL, '2021-01-21 08:57:47', '2021-01-21 08:57:47'),
(2, 10125, 2, 'Transmisión de Prueba', '<p>Esto es una prueba para la transmisi&oacute;n del evento</p>', '#28a745', '2021-01-21', NULL, '20:21:00', 'Ninguno', NULL, NULL, '2021-01-21 15:19:40', '2021-01-21 15:19:40'),
(3, 10126, 0, 'Transmisión de Prueba', '<p>Esto es una prueba para la transmisi&oacute;n del evento</p>', '#28a745', '2021-01-21', NULL, '20:21:00', 'Ninguno', NULL, NULL, '2021-01-21 15:21:19', '2021-01-21 15:21:19'),
(4, 10125, 3, 'nuevo evento', '<p>dsjfhdjsghfhbsdhbfgshdbfsgh fgsvdhgfbsdghfsghdfskdhjfnshfsnfd</p>', '#28a745', '2021-01-26', NULL, '14:00:00', 'Ninguno', NULL, NULL, '2021-01-25 18:21:38', '2021-01-25 18:21:38'),
(5, 10125, 4, 'Evento de Prueba', '<p>esto es una prueba para el limite de descripcion</p>', '#28a745', '2021-01-26', NULL, '22:32:00', 'Ninguno', NULL, NULL, '2021-01-26 16:32:38', '2021-01-26 16:32:38'),
(6, 10125, 5, 'Prueba 29-01', '<p>Esto es una prueba de funcionamiento del eqiuipo t&eacute;cnico</p>', '#28a745', '2021-01-29', NULL, '13:00:00', 'Ninguno', NULL, NULL, '2021-01-29 07:59:04', '2021-01-29 07:59:04'),
(7, 10125, 6, 'Prueba 30-01', '<p>sdfnjkdsnjfk dkfjhnjkghjkfdhgajkfgfd gjkfgjkfdhjkhjghjkdfgs</p>', '#28a745', '2021-01-30', NULL, '14:18:00', 'Ninguno', NULL, NULL, '2021-01-30 09:18:16', '2021-01-30 09:18:16'),
(8, 10126, 0, 'Prueba 30-01', '<p>sdfnjkdsnjfk dkfjhnjkghjkfdhgajkfgfd gjkfgjkfdhjkhjghjkdfgs</p>', '#28a745', '2021-01-30', NULL, '14:18:00', 'Ninguno', NULL, NULL, '2021-01-30 09:23:28', '2021-01-30 09:23:28'),
(9, 10125, 7, 'Prueba 22-02', '<p>Esto es una prueba del equipo t&eacute;cnico</p>', '#28a745', '2021-02-22', NULL, '15:45:00', 'Ninguno', NULL, NULL, '2021-02-22 10:44:49', '2021-02-22 10:44:49'),
(10, 10126, 0, 'Prueba 22-02', '<p>Esto es una prueba del equipo t&eacute;cnico</p>', '#28a745', '2021-02-22', NULL, '15:45:00', 'Ninguno', NULL, NULL, '2021-02-22 10:55:27', '2021-02-22 10:55:27'),
(11, 10131, 8, 'Revisión Plataformas', '<p>Prueba y revisi&oacute;n de plataformas econsistema Fenttix Network</p>\r\n\r\n<p>Revisi&oacute;n de Streaming, Landing Pages y otros.</p>', '#28a745', '2021-02-26', NULL, '23:45:00', 'Ninguno', NULL, NULL, '2021-02-26 18:41:18', '2021-02-26 18:41:18'),
(12, 10125, 9, 'Prueba Final 11-03', '<p>Esto es una prueba para verificar el funcionamiento despu&eacute;s de la actualizaci&oacute;n del sistema de streaming...</p>', '#28a745', '2021-03-11', NULL, '20:35:00', 'Ninguno', NULL, NULL, '2021-03-11 15:33:18', '2021-03-11 15:33:18'),
(13, 1, 0, 'Prueba Final 11-03', '<p>Esto es una prueba para verificar el funcionamiento despu&eacute;s de la actualizaci&oacute;n del sistema de streaming...</p>', '#28a745', '2021-03-11', NULL, '20:35:00', 'Ninguno', NULL, NULL, '2021-03-11 15:34:17', '2021-03-11 15:34:17'),
(14, 10125, 10, 'Evento Prueba 12-03', '<p>Esto es una prueba del equipo t&eacute;cnico para verificar el sistema de streaming</p>', '#28a745', '2021-03-12', NULL, '13:59:00', 'Ninguno', NULL, NULL, '2021-03-12 08:55:35', '2021-03-12 08:55:35'),
(15, 10126, 0, 'Evento Prueba 12-03', '<p>Esto es una prueba del equipo t&eacute;cnico para verificar el sistema de streaming</p>', '#28a745', '2021-03-12', NULL, '13:59:00', 'Ninguno', NULL, NULL, '2021-03-12 08:59:01', '2021-03-12 08:59:01'),
(16, 10131, 11, 'Test DE EVENTO', '<p>hola esto es una pruebadfghjkl&ntilde;&acute;lkjhgfdsadfghjkljlhhfgdsasDAFSGHJK</p>', '#28a745', '2021-04-18', NULL, '19:20:00', 'Ninguno', NULL, NULL, '2021-04-18 18:16:29', '2021-04-18 18:22:31'),
(17, 10138, 0, 'Test DE EVENTO', '<p>hola esto es una pruebadfghjkl&ntilde;&acute;lkjhgfdsadfghjkljlhhfgdsasDAFSGHJK</p>', '#28a745', '2021-04-18', NULL, '19:20:00', 'Ninguno', NULL, NULL, '2021-04-18 18:53:41', '2021-04-18 18:53:41'),
(18, 10131, 12, 'Test DE EVENTO', '<p>sdfgdhfgjhjn-kjhkjghfdgafsdsfghgjLKjhgfjdsafsdafgdhj,.-</p>', '#28a745', '2021-04-18', NULL, '19:09:00', 'Ninguno', NULL, NULL, '2021-04-18 18:58:41', '2021-04-18 18:58:41'),
(19, 10138, 0, 'Test DE EVENTO', '<p>sdfgdhfgjhjn-kjhkjghfdgafsdsfghgjLKjhgfjdsafsdafgdhj,.-</p>', '#28a745', '2021-04-18', NULL, '19:09:00', 'Ninguno', NULL, NULL, '2021-04-18 19:00:53', '2021-04-18 19:00:53'),
(20, 1, 0, 'Test DE EVENTO', '<p>sdfgdhfgjhjn-kjhkjghfdgafsdsfghgjLKjhgfjdsafsdafgdhj,.-</p>', '#28a745', '2021-04-18', NULL, '19:09:00', 'Ninguno', NULL, NULL, '2021-04-18 19:06:46', '2021-04-18 19:06:46'),
(21, 10131, 13, 'PRUEBA DOMINGUERA CON DOUG MTA', '<p><strong>Lorem Ipsum</strong>&nbsp;es simplemente texto ficticio de la industria de la impresi&oacute;n y la composici&oacute;n tipogr&aacute;fica.&nbsp;Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de la industria desde el siglo XVI, cuando un impresor desconocido tom&oacute; una galera de tipos y la mezcl&oacute; para hacer un libro de muestras tipogr&aacute;ficas.&nbsp;Ha sobrevivido no solo a cinco siglos, sino tambi&eacute;n al salto a la composici&oacute;n tipogr&aacute;fica electr&oacute;nica, permaneciendo esencialmente sin cambios.&nbsp;Se populariz&oacute; en la d&eacute;cada de 1960 con el lanzamiento de hojas de Letraset que conten&iacute;an pasajes de Lorem Ipsum y, m&aacute;s recientemente, con software de autoedici&oacute;n como Aldus PageMaker que inclu&iacute;a versiones de Lorem Ipsum.</p>', '#28a745', '2021-04-19', NULL, '01:16:00', 'Ninguno', NULL, NULL, '2021-04-18 19:17:07', '2021-04-18 19:17:07'),
(22, 10131, 14, 'Streaming', '<p>Prueba de funcionamiento y testeo de streaming mytrading academy pro, funcionamiento y operacionalidad.</p>', '#28a745', '2021-04-19', NULL, '15:05:00', 'Ninguno', NULL, NULL, '2021-04-19 09:57:54', '2021-04-19 09:57:54'),
(23, 10131, 15, 'Streaming 20 abril 2021', '<p>Test Streaming, Test webinar, videoconference, chat, share file, screen share and more</p>', '#28a745', '2021-04-20', NULL, '20:47:00', 'Ninguno', NULL, NULL, '2021-04-20 15:42:48', '2021-04-20 15:42:48'),
(24, 10131, 16, 'Streaming Sinergy Team Demo', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '#28a745', '2021-04-21', NULL, '14:27:00', 'Ninguno', NULL, NULL, '2021-04-21 09:29:25', '2021-04-21 09:29:25'),
(25, 10133, 0, 'Streaming Sinergy Team Demo', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '#28a745', '2021-04-21', NULL, '14:27:00', 'Ninguno', NULL, NULL, '2021-04-21 09:32:57', '2021-04-21 09:32:57'),
(26, 10134, 0, 'Streaming Sinergy Team Demo', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '#28a745', '2021-04-21', NULL, '14:27:00', 'Ninguno', NULL, NULL, '2021-04-21 09:39:44', '2021-04-21 09:39:44'),
(27, 10135, 0, 'Streaming Sinergy Team Demo', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '#28a745', '2021-04-21', NULL, '14:27:00', 'Ninguno', NULL, NULL, '2021-04-21 09:46:50', '2021-04-21 09:46:50'),
(28, 10125, 17, 'Evento de Soporte Técnico', '<p>Esto es una prueba de soporte t&eacute;cnico para afinar detalles de la pantalla de transmisi&oacute;n</p>', '#28a745', '2021-04-26', NULL, '19:45:00', 'Ninguno', NULL, NULL, '2021-04-26 14:45:00', '2021-04-26 14:45:00'),
(29, 10126, 0, 'Evento de Soporte Técnico', '<p>Esto es una prueba de soporte t&eacute;cnico para afinar detalles de la pantalla de transmisi&oacute;n</p>', '#28a745', '2021-04-26', NULL, '19:45:00', 'Ninguno', NULL, NULL, '2021-04-26 14:47:27', '2021-04-26 14:47:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canjes`
--

CREATE TABLE `canjes` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `cantidad` double NOT NULL,
  `total` double DEFAULT NULL COMMENT 'total en pesos',
  `tipo` int NOT NULL COMMENT '0 - puntos propios 1 - puntos grupales ',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capital`
--

CREATE TABLE `capital` (
  `id` int NOT NULL,
  `nombre` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `departa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `costo` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carritos`
--

CREATE TABLE `carritos` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `producto` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` double NOT NULL,
  `idproducto` int NOT NULL,
  `cantidad` int NOT NULL,
  `total` double NOT NULL,
  `iva` double DEFAULT NULL,
  `ip` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referido` int DEFAULT NULL,
  `info` double DEFAULT NULL,
  `porcentaje` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `uuid` varchar(40) DEFAULT NULL,
  `membership_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(40) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `cover_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `uuid`, `membership_id`, `title`, `slug`, `icon`, `cover`, `cover_name`, `created_at`, `updated_at`) VALUES
(1, 'da3816d7-6ac3-48d8-b0ff-c646b95abb58', 1, 'Análisis Técnico y Financiero en Bolsa de Valores', 'analisis-tecnico-y-financiero-en-bolsa-de-valores', 'fa fa-user', '1.jpg', '1.jpg', '2021-01-20 10:05:37', '2021-01-20 10:05:37'),
(2, '4a44c5ac-3d31-4ef9-8e9a-f87041e58027', 1, 'Intercambio de Divisas Forex y Análisis Econométrico', 'intercambio-de-divisas-forex-y-analisis-econometrico', 'fa fa-check', '2.jpg', '2.jpg', '2021-01-20 10:14:53', '2021-01-20 10:14:53'),
(3, 'd1c7d424-d748-4469-a526-5bfb58a8e2fc', 2, 'Análisis Avanzado y Gestión de Riesgo', 'analisis-avanzado-y-gestion-de-riesgo', 'fa fa-wrench', '3.jpg', '3.jpg', '2021-01-20 10:18:00', '2021-01-20 10:18:00'),
(4, 'af1470e2-f37a-4d24-96d5-99f33b2c6b19', 2, 'Opi y Valuación', 'opi-y-valuacion', 'fas fa-chart-line', '4.jpg', '4.jpg', '2021-01-20 10:20:38', '2021-01-20 10:20:38'),
(5, '51a2e3ee-6ddd-493e-8a01-babff795037f', 3, 'Inteligencia Artificial', 'inteligencia-artificial', 'fas fa-robot', '5.jpg', '1.jpg', '2021-04-26 14:24:32', '2021-04-26 14:24:32'),
(6, '8cfce072-0e5e-41e8-967b-22904a0611c9', 3, 'Criptomonedas (Crypto Trading)', 'criptomonedas-crypto-trading', 'fab fa-bitcoin', '6.jpg', '2.jpg', '2021-04-26 14:27:52', '2021-04-26 14:27:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chats`
--

CREATE TABLE `chats` (
  `id` int NOT NULL,
  `contenido` longtext,
  `origen` int DEFAULT NULL,
  `destino` int DEFAULT NULL,
  `codigo` varchar(250) DEFAULT NULL,
  `status` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_codigo`
--

CREATE TABLE `chat_codigo` (
  `id` int NOT NULL,
  `usuario_id` int DEFAULT NULL,
  `codigo` varchar(250) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coinpayment_transactions`
--

CREATE TABLE `coinpayment_transactions` (
  `id` int UNSIGNED NOT NULL,
  `txn_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amountf` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirms_needed` int DEFAULT NULL,
  `payment_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qrcode_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receivedf` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recv_confirms` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeout` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int UNSIGNED NOT NULL,
  `tickets_id` int NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `comentario` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `archivo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int UNSIGNED NOT NULL,
  `comment` varchar(250) NOT NULL,
  `lesson_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commissions`
--

CREATE TABLE `commissions` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `compra_id` int NOT NULL,
  `date` date NOT NULL,
  `total` double NOT NULL,
  `referred_email` varchar(100) NOT NULL,
  `referred_level` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `edo_liquidacion` tinyint(1) NOT NULL DEFAULT '0',
  `concepto` varchar(100) NOT NULL,
  `tipo_comision` varchar(200) NOT NULL,
  `eliminada` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - activa, 1 - eliminada',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `commissions`
--

INSERT INTO `commissions` (`id`, `user_id`, `compra_id`, `date`, `total`, `referred_email`, `referred_level`, `status`, `edo_liquidacion`, `concepto`, `tipo_comision`, `eliminada`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '2021-01-23', 3, 'luisanaelenamarin@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido Luisanaelena Marín por la Membresia Oferta 1', 'membresias', 0, '2021-01-23 15:12:30', '2021-01-23 15:12:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `component`
--

CREATE TABLE `component` (
  `id` int NOT NULL,
  `slider` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `component`
--

INSERT INTO `component` (`id`, `slider`, `updated_at`) VALUES
(1, 'drop_1608311506.jpg', '2020-12-18 10:11:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentenoticias`
--

CREATE TABLE `componentenoticias` (
  `id` int NOT NULL,
  `noticias` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentestransf`
--

CREATE TABLE `componentestransf` (
  `id` int NOT NULL,
  `tipotransferencia` int DEFAULT NULL COMMENT '0 - monto fijo 1 - monto por porcentaje',
  `comisiontransf` double DEFAULT NULL COMMENT 'esta es para el metodo de pago, es la comision por transferencia de dinero en la billetera',
  `valor_conversion` double DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `componentestransf`
--

INSERT INTO `componentestransf` (`id`, `tipotransferencia`, `comisiontransf`, `valor_conversion`, `updated_at`) VALUES
(1, 1, 0, 0, '2020-03-01 23:47:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentestransferencias`
--

CREATE TABLE `componentestransferencias` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `usuario` varchar(250) NOT NULL,
  `descripcion` longtext NOT NULL,
  `debito` float NOT NULL,
  `credito` float NOT NULL,
  `balance` float NOT NULL,
  `descuento` float NOT NULL,
  `tipotransacion` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compradirectas`
--

CREATE TABLE `compradirectas` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `idcompra` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `precio` double DEFAULT NULL,
  `referido_correo` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultacrypto`
--

CREATE TABLE `consultacrypto` (
  `id` int NOT NULL,
  `idcompra` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `idconsulta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenidos`
--

CREATE TABLE `contenidos` (
  `id` int UNSIGNED NOT NULL,
  `titulo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contenido` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `imagen` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costo`
--

CREATE TABLE `costo` (
  `id` int NOT NULL,
  `iduser` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `localidad` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idlocalidad` int DEFAULT NULL,
  `provincia` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `costo` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id` int NOT NULL,
  `mentor_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int NOT NULL,
  `subcategory_id` int NOT NULL,
  `membership_id` int NOT NULL DEFAULT '1',
  `description` text,
  `cover` varchar(255) DEFAULT NULL,
  `cover_name` varchar(255) DEFAULT NULL,
  `thumbnail_cover` varchar(255) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `featured_cover` varchar(255) DEFAULT NULL,
  `featured_cover_name` varchar(255) DEFAULT NULL,
  `featured_at` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = No Disponible. 1 = Disponible',
  `likes` int UNSIGNED DEFAULT '0' COMMENT 'Para guardar el numero de likes que tiene ese curso',
  `shares` int UNSIGNED DEFAULT '0' COMMENT 'Para guardar el numero de veces que ha sido compartido',
  `views` int UNSIGNED DEFAULT '0' COMMENT 'Para guardar el numero de visualizaciones',
  `duration` varchar(50) DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id`, `mentor_id`, `title`, `slug`, `category_id`, `subcategory_id`, `membership_id`, `description`, `cover`, `cover_name`, `thumbnail_cover`, `featured`, `featured_cover`, `featured_cover_name`, `featured_at`, `status`, `likes`, `shares`, `views`, `duration`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10125, 'Curso de Prueba', 'curso-de-prueba', 1, 0, 1, '<p>Esto es una prueba</p>', '1.jpg', '14.jpg', '2-thumbnail.png', 0, NULL, NULL, NULL, 0, 0, 0, 0, '2 Horas', 0, '2021-01-26 16:25:46', '2021-03-01 16:50:45', NULL),
(2, 10131, 'Aprende Sobre la últimas tendencias en trading', 'aprende-sobre-la-ultimas-tendencias-en-trading', 1, 0, 1, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2.jpg', 'Portada Streaming1.jpg', '3-thumbnail.png', 0, NULL, NULL, NULL, 1, 0, 0, 0, '60min', 0, '2021-03-01 16:52:43', '2021-03-01 16:52:43', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses_orden`
--

CREATE TABLE `courses_orden` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `total` float NOT NULL,
  `detalles` text,
  `type_product` varchar(50) NOT NULL DEFAULT 'membresia',
  `idtransacion_stripe` varchar(100) DEFAULT NULL,
  `idtransacion_coinpaymen` varchar(100) DEFAULT NULL,
  `idtransacion_paypal` text,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0 - procesando, 1 - completado, 2 - cancelado',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `courses_orden`
--

INSERT INTO `courses_orden` (`id`, `user_id`, `total`, `detalles`, `type_product`, `idtransacion_stripe`, `idtransacion_coinpaymen`, `idtransacion_paypal`, `status`, `created_at`, `updated_at`) VALUES
(1, 10125, 10, '{\"idmembresia\":1,\"nombre\":\"Oferta 1\",\"precio\":10,\"tipo\":\"\",\"img\":\"https:\\/\\/mytradingacademypro.com\\/office\\/uploads\\/images\\/offers\\/offer_1_1611258545.jpg\",\"links\":1}', 'oferta', NULL, NULL, NULL, 0, '2021-01-21 13:03:24', '2021-01-21 13:03:24'),
(2, 10125, 10, '{\"idmembresia\":1,\"nombre\":\"Oferta 1\",\"precio\":10,\"tipo\":\"\",\"img\":\"https:\\/\\/mytradingacademypro.com\\/office\\/uploads\\/images\\/offers\\/offer_1_1611258545.jpg\",\"links\":1}', 'oferta', NULL, NULL, '20210121150348', 0, '2021-01-21 13:03:48', '2021-01-21 13:03:48'),
(3, 10125, 10, '{\"idmembresia\":1,\"nombre\":\"Oferta 1\",\"precio\":10,\"tipo\":\"\",\"img\":\"https:\\/\\/mytradingacademypro.com\\/office\\/uploads\\/images\\/offers\\/offer_1_1611258545.jpg\",\"links\":1}', 'oferta', NULL, NULL, '20210121150659', 0, '2021-01-21 13:06:59', '2021-01-21 13:06:59'),
(4, 10125, 10, '{\"idmembresia\":1,\"nombre\":\"Oferta 1\",\"precio\":10,\"tipo\":\"\",\"img\":\"https:\\/\\/mytradingacademypro.com\\/office\\/uploads\\/images\\/offers\\/offer_1_1611258545.jpg\",\"links\":1}', 'oferta', NULL, NULL, NULL, 1, '2021-01-21 13:09:00', '2021-01-21 13:09:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses_tags`
--

CREATE TABLE `courses_tags` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `tag_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `courses_tags`
--

INSERT INTO `courses_tags` (`id`, `course_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses_users`
--

CREATE TABLE `courses_users` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `user_id` int NOT NULL,
  `progress` int NOT NULL DEFAULT '0',
  `start_date` date NOT NULL,
  `finish_date` date DEFAULT NULL,
  `certificate` tinyint(1) NOT NULL DEFAULT '0',
  `favorite` int UNSIGNED DEFAULT NULL,
  `language` varchar(2) NOT NULL DEFAULT 'es',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `courses_users`
--

INSERT INTO `courses_users` (`id`, `course_id`, `user_id`, `progress`, `start_date`, `finish_date`, `certificate`, `favorite`, `language`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 0, '2021-01-28', NULL, 0, 0, 'es', '2021-01-28 16:16:42', '2021-01-28 16:16:42', NULL),
(2, 1, 10125, 0, '2021-02-03', NULL, 0, 0, 'es', '2021-02-03 08:40:32', '2021-02-03 08:40:32', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int NOT NULL,
  `nombre` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id` int NOT NULL,
  `titulo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `descripcion_completa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen_destacada` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`id`, `titulo`, `autor`, `descripcion`, `descripcion_completa`, `imagen_destacada`, `banner`, `created_at`, `updated_at`) VALUES
(4, 'El Código del Dinero', 'Tania Tostado', '<p>Para conseguir algo distinto es preciso antes ser una persona distinta y hacer cosas diferentes. Cualquier &aacute;mbito de nuestra vida mejora cuando nosotros mejoramos, pero no antes. Siempre en este mismo orden. <strong>El dinero no es ajeno a esa regla.&nbsp;</strong>', '<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Para conseguir algo distinto es preciso antes ser una persona distinta y hacer cosas diferentes. Cualquier &aacute;mbito de nuestra vida mejora cuando nosotros mejoramos, pero no antes. Siempre en este mismo orden. <strong>El dinero no es ajeno a esa regla.&nbsp;</strong></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">&mdash; Raimon Sams&oacute;, El c&oacute;digo del dinero</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">En esta ocasi&oacute;n vamos a conocer un poco m&aacute;s de este muy famoso libro, te resultara ameno y muy ilustrativo sobre todo si ya has le&iacute;do otros del g&eacute;nero como <em>Padre rico padre pobre</em>, el <strong><u>C&oacute;digo del dinero</u></strong>, es una obra con un toque espiritual que explica por qu&eacute; la mayor&iacute;a de la gente tiene problemas econ&oacute;micos y vive al borde de la ruina, en&nbsp;este resumen abordare 5 puntos importantes que encontr&eacute; en el libro y que te cuento a continuaci&oacute;n:</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">1.- Ser responsable.</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">El primer paso para mejorar tu situaci&oacute;n econ&oacute;mica es aceptar el &uacute;nico responsable de ella eres t&uacute;, y que ni al gobierno ni a tu banco les importa que no tengas trabajo o que apenas consigas llegar a fin de mes, teniendo esto en cuenta, si quieres mejorar tus finanzas tienes dos opciones:</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"color:#444444\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Esperar a que alguien venga a salvarte</span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"color:#444444\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Agarrar el toro por los cuernos y empezar a actuar</span></span></span></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:48px; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">2.- Tus creencias sobre el dinero.</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Tus creencias gobiernan tu comportamiento. Si en lo m&aacute;s profundo de ti crees que algo es malo, deshonesto o poco importante, tu subconsciente se ocupar&aacute; de que no pierdas el tiempo persigui&eacute;ndolo, por eso, para cambiar tu situaci&oacute;n econ&oacute;mica es necesario que primero cambies tu opini&oacute;n sobre el dinero.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">3.- Los 3 roles econ&oacute;micos.</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">El libro dedica un cap&iacute;tulo a definir los tres roles econ&oacute;micos que puedes elegir para generar ingresos y estos son:</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"color:#444444\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Empleado o asalariado</span></span></strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">. Vendes tu tiempo a una empresa a cambio de un sueldo mensual. Tienes que cumplir un horario establecido y obedecer a tu jefe, que es el que te dice lo qu&eacute; es lo que debes hacer.</span></span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px; text-align:justify\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"color:#444444\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Auto empleado&nbsp;o aut&oacute;nomo</span></span></strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">. Tambi&eacute;n vendes tu tiempo por dinero, con la importante diferencia de que en este caso t&uacute; eres tu propio jefe. T&uacute; eliges tu oficina, tu horario, tu sueldo y tus clientes.</span></span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px; text-align:justify\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"color:#444444\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Emprendedor o empresario</span></span></strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">. En vez de vender tu tiempo por dinero, lo inviertes en crear una que genera ingresos por si misma de forma recurrente.</span></span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">4.- La nueva econom&iacute;a.&nbsp;</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">En este punto el autor nos dice que &ldquo;<em>Estamos transitando a una econom&iacute;a de servicios en la que la materia prima ser&aacute;: el talento, la innovaci&oacute;n, la tecnolog&iacute;a y el conocimiento&rdquo;&nbsp;</em>para enfrentar esta nueva era nos comparte estos consejos:</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"color:#444444\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Se &uacute;til</span></span></strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">. Tu licenciatura en historia y tu m&aacute;ster en marketing digital no te servir&aacute;n de nada si no eres capaz de resolver los problemas de otras personas.</span></span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px; text-align:justify\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"color:#444444\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Aprende a hacer algo que una m&aacute;quina no pueda hacer</span></span></strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">. De esta manera no te podr&aacute;n remplazar por un robot o un programa inform&aacute;tico.</span></span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px; text-align:justify\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"color:#444444\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Diferenciarte&nbsp;de tu competencia</span></span></strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">. Lo que ofrezcas debe ser &uacute;nico, tener un sello personal insustituible que ninguna otra persona pueda imitar.</span></span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">5.- Lo &uacute;nico que necesitas saber para triunfar.</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">&ldquo;Las habilidades de promocionarse y de vender son el coraz&oacute;n del &eacute;xito financiero.&rdquo;</span></span></span></em></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Hay muchas habilidades &uacute;tiles a la hora de llevar un negocio, pero s&oacute;lo hay dos imprescindibles:&nbsp;<strong><em>vender y promocionarse</em></strong>.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Como podemos ver este libro nos comparte interesantes datos y gu&iacute;as para enfrentar nuestras situaciones financieras, aqu&iacute; presente solo un resumen de las que me parecen m&aacute;s interesantes sin embargo recomiendo ampliamente que leas el libro completo, estoy segura que encontraras importantes ense&ntilde;anzas con respecto al dinero y tu relaci&oacute;n con &eacute;l.</span></span></span></span></span></span></p>', 'entrada_1614890010.jpg', 'banner_entrada_1611075683.jpg', '2021-01-19 10:01:23', '2021-03-04 13:33:30'),
(5, 'José Gordo', 'José Gordo', '<p>Jos&eacute; Gordo es un empresario que ha utilizado las disciplinas que aprendi&oacute; en el ej&eacute;rcito para alcanzar sus objetivos...</p>', '<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Jos&eacute; Gordo</span></span></strong>&nbsp;<span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">es un empresario que ha utilizado las disciplinas que aprendi&oacute; en el ej&eacute;rcito para alcanzar sus objetivos y proporcionar el mejor servicio posible a los clientes. Tiene negocios en m&uacute;ltiples industrias como Plataformas de Educaci&oacute;n de Alto Rendimiento, Bienes Ra&iacute;ces, inversiones en sectores industriales y de tecnolog&iacute;a, deporte, medio ambiente, entre muchos otros proyectos.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Jos&eacute; </span></span></strong><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">ve el valor de la expansi&oacute;n en la suma de habilidades y fortalezas del gran equipo que lo rodea en sus m&uacute;ltiples negocios, en donde promueve la difusi&oacute;n del conocimiento, mientras crea m&uacute;ltiples fuentes de ingresos tambi&eacute;n.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Es tambi&eacute;n es autor de 4 libros, 2 de ellos Best Seller, en los que se detalla en</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">sus respectivas biograf&iacute;as quien es Jos&eacute; como persona y todo lo que ha aprendido a trav&eacute;s del proceso de dejar un trabajo estable y buscar el &eacute;xito por su propia cuenta. </span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Jos&eacute; Gordo</span></span></strong><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">,&nbsp;le da una gran importancia la independencia financiera, la educaci&oacute;n y el progreso personal y profesional de todo aquel que lo sigue, por ello esta tan comprometido con el desarrollo de habilidades tanto t&eacute;cnicas como human&iacute;sticas y por ello es que fund&oacute;: </span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><u><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">My Business Academy Pro:</span></span></u><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\"> Academia para emprendedores globales.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><u><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">FTX Live:</span></span></u><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\"> Un gran espacio de entrenamientos en vivo</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><u><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">My Trading Academy Pro:</span></span></u></strong><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\"> La mejor academia de negocios para emprendedores financieros digitales.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><u><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Revolutte:</span></span></u><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\"> Una extraordinaria oportunidad de inversiones con un rendimiento inigualable, seguridad de operaci&oacute;n y diversificaci&oacute;n.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Para continuar junto a los esfuerzos empresariales y futuros de Jos&eacute; Gordo, s&iacute;ganlo en sus redes sociales: </span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Instagram: @josegordo.oficial</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Facebook: @byjosegordo</span></span></span></span></span></p>', 'entrada_1615491822.jpg', 'banner_entrada_1615491822.jpg', '2021-03-11 12:43:42', '2021-03-11 12:43:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluations`
--

CREATE TABLE `evaluations` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluations_users`
--

CREATE TABLE `evaluations_users` (
  `id` int NOT NULL,
  `evaluation_id` int NOT NULL,
  `user_id` int NOT NULL,
  `score` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluations_users_answers`
--

CREATE TABLE `evaluations_users_answers` (
  `id` int NOT NULL,
  `evaluation_user_id` int NOT NULL COMMENT 'Id de la tabla evaluations_users',
  `question_id` int NOT NULL,
  `selected_answer` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` int NOT NULL,
  `uuid` varchar(40) NOT NULL,
  `user_id` int DEFAULT NULL,
  `category_id` int NOT NULL,
  `subcategory_id` int UNSIGNED NOT NULL DEFAULT '1',
  `streaming_type` varchar(30) NOT NULL DEFAULT 'Webinar',
  `title` varchar(255) NOT NULL,
  `description` text,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `duration` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '0 = No Disponible. 1 = Disponible',
  `correos` int NOT NULL DEFAULT '0' COMMENT '0 - no se a enviado correos 1 - se envio correo 1 hora nates de empezar 2 - se envio correo al iniciar',
  `type` varchar(100) DEFAULT NULL,
  `url_streaming` varchar(255) DEFAULT NULL,
  `url_video` varchar(255) DEFAULT NULL,
  `miniatura` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`id`, `uuid`, `user_id`, `category_id`, `subcategory_id`, `streaming_type`, `title`, `description`, `date`, `time`, `duration`, `image`, `status`, `correos`, `type`, `url_streaming`, `url_video`, `miniatura`, `created_at`, `updated_at`) VALUES
(11, 'a01e75e0-2976-4c83-b9e6-e141cb642e89', 10131, 1, 1, 'Webinar', 'Test DE EVENTO', '<p>hola esto es una pruebadfghjkl&ntilde;&acute;lkjhgfdsadfghjkljlhhfgdsasDAFSGHJK</p>', '2021-04-18', '19:20:00', 30, '11.jpg', '2', 0, NULL, 'https://streaming.mytradingacademypro.com/app/live/meetings/a01e75e0-2976-4c83-b9e6-e141cb642e89', NULL, '11.jpg', '2021-04-18 15:16:29', '2021-04-18 15:56:16'),
(12, 'd97e1765-770d-4b4b-bce7-998ad804366f', 10131, 1, 1, 'Webinar', 'Test DE EVENTO', '<p>sdfgdhfgjhjn-kjhkjghfdgafsdsfghgjLKjhgfjdsafsdafgdhj,.-</p>', '2021-04-18', '19:09:00', 30, '12.png', '0', 0, NULL, 'https://streaming.mytradingacademypro.com/app/live/meetings/d97e1765-770d-4b4b-bce7-998ad804366f', NULL, '12.png', '2021-04-18 15:58:41', '2021-04-18 22:00:02'),
(13, 'b2f264c5-6740-43d8-be87-2390800334ca', 10131, 4, 1, 'Webinar', 'PRUEBA DOMINGUERA CON DOUG MTA', '<p><strong>Lorem Ipsum</strong>&nbsp;es simplemente texto ficticio de la industria de la impresi&oacute;n y la composici&oacute;n tipogr&aacute;fica.&nbsp;Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de la industria desde el siglo XVI, cuando un impresor desconocido tom&oacute; una galera de tipos y la mezcl&oacute; para hacer un libro de muestras tipogr&aacute;ficas.&nbsp;Ha sobrevivido no solo a cinco siglos, sino tambi&eacute;n al salto a la composici&oacute;n tipogr&aacute;fica electr&oacute;nica, permaneciendo esencialmente sin cambios.&nbsp;Se populariz&oacute; en la d&eacute;cada de 1960 con el lanzamiento de hojas de Letraset que conten&iacute;an pasajes de Lorem Ipsum y, m&aacute;s recientemente, con software de autoedici&oacute;n como Aldus PageMaker que inclu&iacute;a versiones de Lorem Ipsum.</p>', '2021-04-19', '01:16:00', 15, '13.jpg', '0', 0, NULL, 'https://streaming.mytradingacademypro.com/app/live/meetings/b2f264c5-6740-43d8-be87-2390800334ca', NULL, '13.jpg', '2021-04-18 16:17:07', '2021-04-19 04:00:01'),
(14, 'ebb77063-edc9-433c-b30f-4fb38cbd13ba', 10131, 3, 1, 'Webinar', 'Streaming', '<p>Prueba de funcionamiento y testeo de streaming mytrading academy pro, funcionamiento y operacionalidad.</p>', '2021-04-19', '15:05:00', 30, '14.jpg', '0', 0, NULL, 'https://streaming.mytradingacademypro.com/app/live/meetings/ebb77063-edc9-433c-b30f-4fb38cbd13ba', NULL, '14.jpg', '2021-04-19 06:57:54', '2021-04-19 18:00:02'),
(15, '0a1c6697-74f9-4ee3-bc99-6c56abda8f27', 10131, 2, 1, 'Webinar', 'Streaming 20 abril 2021', '<p>Test Streaming, Test webinar, videoconference, chat, share file, screen share and more</p>', '2021-04-20', '20:47:00', 30, '15.png', '0', 0, NULL, 'https://streaming.mytradingacademypro.com/app/live/meetings/0a1c6697-74f9-4ee3-bc99-6c56abda8f27', NULL, '15.png', '2021-04-20 12:42:48', '2021-04-20 23:00:02'),
(16, '7a6eabf2-329f-49ab-87a1-033dd0e91032', 10131, 3, 1, 'Webinar', 'Streaming Sinergy Team Demo', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '2021-04-21', '14:27:00', 30, '16.png', '0', 0, NULL, 'https://streaming.mytradingacademypro.com/app/live/meetings/7a6eabf2-329f-49ab-87a1-033dd0e91032', NULL, '16.png', '2021-04-21 06:29:25', '2021-04-21 17:00:02'),
(17, '1bf712b8-4190-4e4a-ac4c-dc10ebfab08a', 10125, 5, 1, 'Webinar', 'Evento de Soporte Técnico', '<p>Esto es una prueba de soporte t&eacute;cnico para afinar detalles de la pantalla de transmisi&oacute;n</p>', '2021-04-26', '19:45:00', 45, '17.png', '0', 0, NULL, 'https://streaming.mytradingacademypro.com/app/live/meetings/1bf712b8-4190-4e4a-ac4c-dc10ebfab08a', NULL, '17.jpg', '2021-04-26 11:45:00', '2021-04-26 22:00:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events_users`
--

CREATE TABLE `events_users` (
  `id` int NOT NULL,
  `event_id` int NOT NULL,
  `user_id` int NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `favorite` int UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `events_users`
--

INSERT INTO `events_users` (`id`, `event_id`, `user_id`, `date`, `time`, `favorite`, `created_at`, `updated_at`) VALUES
(1, 11, 10131, '2021-04-18', '19:20:00', NULL, '2021-04-18 18:16:29', '2021-04-18 18:22:31'),
(2, 11, 10138, '2021-04-18', '19:20:00', NULL, '2021-04-18 18:53:41', '2021-04-18 18:53:41'),
(3, 12, 10131, '2021-04-18', '19:09:00', NULL, '2021-04-18 18:58:41', '2021-04-18 18:58:41'),
(4, 12, 10138, '2021-04-18', '19:09:00', NULL, '2021-04-18 19:00:53', '2021-04-18 19:00:53'),
(5, 12, 1, '2021-04-18', '19:09:00', NULL, '2021-04-18 19:06:46', '2021-04-18 19:06:46'),
(6, 13, 10131, '2021-04-19', '01:16:00', NULL, '2021-04-18 19:17:07', '2021-04-18 19:17:07'),
(7, 14, 10131, '2021-04-19', '15:05:00', NULL, '2021-04-19 09:57:54', '2021-04-19 09:57:54'),
(8, 15, 10131, '2021-04-20', '20:47:00', NULL, '2021-04-20 15:42:48', '2021-04-20 15:42:48'),
(9, 16, 10131, '2021-04-21', '14:27:00', NULL, '2021-04-21 09:29:25', '2021-04-21 09:29:25'),
(10, 16, 10133, '2021-04-21', '14:27:00', NULL, '2021-04-21 09:32:57', '2021-04-21 09:32:57'),
(11, 16, 10134, '2021-04-21', '14:27:00', NULL, '2021-04-21 09:39:44', '2021-04-21 09:39:44'),
(12, 16, 10135, '2021-04-21', '14:27:00', NULL, '2021-04-21 09:46:50', '2021-04-21 09:46:50'),
(13, 17, 10125, '2021-04-26', '19:45:00', NULL, '2021-04-26 14:45:00', '2021-04-26 14:45:00'),
(14, 17, 10126, '2021-04-26', '19:45:00', NULL, '2021-04-26 14:47:27', '2021-04-26 14:47:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_content`
--

CREATE TABLE `event_content` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `event_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `event_content`
--

INSERT INTO `event_content` (`id`, `title`, `type`, `url`, `event_id`, `created_at`, `updated_at`) VALUES
(1, 'null', 'survey', NULL, 17, '2021-04-26 17:42:42', '2021-04-26 17:42:42'),
(2, 'FTX LIVE.pdf', 'presentation', 'presentation_17_1619470420.pdf', 17, '2021-04-26 17:53:40', '2021-04-26 17:53:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_countries`
--

CREATE TABLE `event_countries` (
  `id` int NOT NULL,
  `event_id` int NOT NULL,
  `country_id` int NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `event_countries`
--

INSERT INTO `event_countries` (`id`, `event_id`, `country_id`, `date`, `time`) VALUES
(1, 11, 1, '2021-04-18', '12:25:00'),
(2, 11, 12, '2021-04-18', '15:25:00'),
(3, 11, 44, '2021-04-18', '15:25:00'),
(4, 11, 48, '2021-04-18', '13:25:00'),
(5, 11, 52, '2021-04-18', '12:25:00'),
(6, 11, 62, '2021-04-18', '13:25:00'),
(7, 11, 140, '2021-04-18', '15:25:00'),
(8, 11, 167, '2021-04-18', '13:25:00'),
(9, 11, 170, '2021-04-18', '13:25:00'),
(10, 11, 199, '2021-04-18', '20:25:00'),
(11, 11, 232, '2021-04-18', '14:25:00'),
(12, 12, 1, '2021-04-18', '13:09:00'),
(13, 12, 12, '2021-04-18', '16:09:00'),
(14, 12, 44, '2021-04-18', '16:09:00'),
(15, 12, 48, '2021-04-18', '14:09:00'),
(16, 12, 52, '2021-04-18', '13:09:00'),
(17, 12, 62, '2021-04-18', '14:09:00'),
(18, 12, 140, '2021-04-18', '16:09:00'),
(19, 12, 167, '2021-04-18', '14:09:00'),
(20, 12, 170, '2021-04-18', '14:09:00'),
(21, 12, 199, '2021-04-18', '21:09:00'),
(22, 12, 232, '2021-04-18', '15:09:00'),
(23, 13, 140, '2021-04-18', '22:16:00'),
(24, 13, 167, '2021-04-18', '20:16:00'),
(25, 14, 1, '2021-04-19', '09:05:00'),
(26, 14, 12, '2021-04-19', '12:05:00'),
(27, 14, 44, '2021-04-19', '12:05:00'),
(28, 14, 48, '2021-04-19', '10:05:00'),
(29, 14, 52, '2021-04-19', '09:05:00'),
(30, 14, 62, '2021-04-19', '10:05:00'),
(31, 14, 140, '2021-04-19', '12:05:00'),
(32, 14, 167, '2021-04-19', '10:05:00'),
(33, 14, 170, '2021-04-19', '10:05:00'),
(34, 14, 199, '2021-04-19', '17:05:00'),
(35, 14, 232, '2021-04-19', '11:05:00'),
(36, 15, 1, '2021-04-20', '14:47:00'),
(37, 15, 12, '2021-04-20', '17:47:00'),
(38, 15, 44, '2021-04-20', '17:47:00'),
(39, 15, 48, '2021-04-20', '15:47:00'),
(40, 15, 52, '2021-04-20', '14:47:00'),
(41, 15, 62, '2021-04-20', '15:47:00'),
(42, 15, 140, '2021-04-20', '17:47:00'),
(43, 15, 167, '2021-04-20', '15:47:00'),
(44, 15, 170, '2021-04-20', '15:47:00'),
(45, 15, 199, '2021-04-20', '22:47:00'),
(46, 15, 232, '2021-04-20', '16:47:00'),
(47, 16, 1, '2021-04-21', '08:27:00'),
(48, 16, 12, '2021-04-21', '11:27:00'),
(49, 16, 44, '2021-04-21', '11:27:00'),
(50, 16, 48, '2021-04-21', '09:27:00'),
(51, 16, 52, '2021-04-21', '08:27:00'),
(52, 16, 62, '2021-04-21', '09:27:00'),
(53, 16, 140, '2021-04-21', '11:27:00'),
(54, 16, 167, '2021-04-21', '09:27:00'),
(55, 16, 170, '2021-04-21', '09:27:00'),
(56, 16, 199, '2021-04-21', '16:27:00'),
(57, 16, 232, '2021-04-21', '10:27:00'),
(58, 17, 232, '2021-04-26', '15:45:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_resources`
--

CREATE TABLE `event_resources` (
  `id` int NOT NULL,
  `resources_id` int NOT NULL,
  `event_id` int NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `event_resources`
--

INSERT INTO `event_resources` (`id`, `resources_id`, `event_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 11, '1', '2021-04-18 18:16:29', '2021-04-18 18:16:29'),
(2, 2, 11, '1', '2021-04-18 18:16:29', '2021-04-18 18:16:29'),
(3, 3, 11, '1', '2021-04-18 18:16:29', '2021-04-18 18:16:29'),
(4, 1, 12, '1', '2021-04-18 18:58:41', '2021-04-18 18:58:41'),
(5, 2, 12, '1', '2021-04-18 18:58:41', '2021-04-18 18:58:41'),
(6, 3, 12, '1', '2021-04-18 18:58:41', '2021-04-18 18:58:41'),
(7, 1, 13, '1', '2021-04-18 19:17:07', '2021-04-18 19:17:07'),
(8, 2, 13, '1', '2021-04-18 19:17:07', '2021-04-18 19:17:07'),
(9, 3, 13, '1', '2021-04-18 19:17:07', '2021-04-18 19:17:07'),
(10, 1, 14, '1', '2021-04-19 09:57:54', '2021-04-19 09:57:54'),
(11, 2, 14, '1', '2021-04-19 09:57:54', '2021-04-19 09:57:54'),
(12, 3, 14, '1', '2021-04-19 09:57:54', '2021-04-19 09:57:54'),
(13, 1, 15, '1', '2021-04-20 15:42:48', '2021-04-20 15:42:48'),
(14, 2, 15, '1', '2021-04-20 15:42:48', '2021-04-20 15:42:48'),
(15, 3, 15, '1', '2021-04-20 15:42:48', '2021-04-20 15:42:48'),
(16, 1, 16, '1', '2021-04-21 09:29:25', '2021-04-21 09:29:25'),
(17, 2, 16, '1', '2021-04-21 09:29:25', '2021-04-21 09:29:25'),
(18, 3, 16, '1', '2021-04-21 09:29:25', '2021-04-21 09:29:25'),
(19, 1, 17, '1', '2021-04-26 14:45:00', '2021-04-26 14:45:00'),
(20, 2, 17, '1', '2021-04-26 14:45:00', '2021-04-26 14:45:00'),
(21, 3, 17, '1', '2021-04-26 14:45:00', '2021-04-26 14:45:00'),
(22, 4, 17, '1', '2021-04-26 20:42:42', '2021-04-26 20:42:42'),
(23, 5, 17, '1', '2021-04-26 20:53:40', '2021-04-26 20:53:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario`
--

CREATE TABLE `formulario` (
  `id` int NOT NULL,
  `label` varchar(250) NOT NULL,
  `nameinput` varchar(200) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `requerido` tinyint(1) NOT NULL DEFAULT '0',
  `input_edad` tinyint(1) NOT NULL DEFAULT '0',
  `tipo` varchar(200) NOT NULL DEFAULT 'text',
  `min` int DEFAULT NULL,
  `max` int DEFAULT NULL,
  `desactivable` tinyint(1) NOT NULL DEFAULT '1',
  `unico` int DEFAULT NULL,
  `tip` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ganancias`
--

CREATE TABLE `ganancias` (
  `id` int NOT NULL,
  `configuracion` longtext,
  `tipo` varchar(250) DEFAULT NULL,
  `nota` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacionbancaria`
--

CREATE TABLE `informacionbancaria` (
  `id` int NOT NULL,
  `titulo` varchar(250) DEFAULT NULL,
  `contenido` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insignia`
--

CREATE TABLE `insignia` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `course_name` varchar(40) NOT NULL,
  `nivel_id` int NOT NULL,
  `nivel_name` varchar(40) NOT NULL,
  `insignia` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insignia_user`
--

CREATE TABLE `insignia_user` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  `insignia_id` int NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iva`
--

CREATE TABLE `iva` (
  `id` int NOT NULL,
  `configuracion` longtext NOT NULL,
  `tipo` varchar(250) NOT NULL,
  `tipocalculo` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `legal_clauses`
--

CREATE TABLE `legal_clauses` (
  `id` int NOT NULL,
  `legal_tab_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `clause` text NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 = Oculto. 1 = Visible',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `legal_clauses`
--

INSERT INTO `legal_clauses` (`id`, `legal_tab_id`, `title`, `clause`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '1.- Introducción', '<p>Al convertirse en un representante de My Trading Academy PRO, acepta respetar nuestro C&oacute;digo de &Eacute;tica y conducta. Gracias a estas reglas, su participaci&oacute;n en la red de MTA PRO se llevar&aacute; a cabo de acuerdo con nuestros valores de equidad, moralidad e integridad.<br />\r\n<br />\r\nEste C&oacute;digo de &Eacute;tica rige el comportamiento y las relaciones de los representantes con clientes y prospectos.<br />\r\n<br />\r\nEste C&oacute;digo de &Eacute;tica es un anexo al contrato de My Trading Academy PRO.<br />\r\n<br />\r\nLos representantes de MTA PRO, deben cumplir con las reglas de este C&oacute;digo de &Eacute;tica en todo momento en sus tratos comerciales. Cualquier violaci&oacute;n de las reglas de este C&oacute;digo de &Eacute;tica conlleva sanciones como se describe a continuaci&oacute;n.</p>', 1, '2021-04-21 10:12:46', '2021-04-21 10:12:46'),
(2, 1, '2.- Códigos de Conducta', '<p>- HACIA EL CLIENTE EXTERNO<br />\r\n<br />\r\nLos afiliados y promotores del sistema educativo MTA PRO deben ofrecer al cliente final excelente servicio. En este contexto, cada afiliado y promotor se compromete a:<br />\r\n2.1: Adoptar un m&eacute;todo de trabajo saludable y leal hacia My Trading Academy PRO<br />\r\n2.2: Representar a My Trading Academy PRO de manera seria y profesional ante terceros en el contexto de presentaciones, videos y otros medios comunicados a terceros;<br />\r\n2.3: Proporcione solo informaci&oacute;n y documentos oficiales de My Trading Academy PRO. La informaci&oacute;n del producto solo se proporciona en la medida en que cumpla con los datos y declaraciones oficiales de My Trading Academy PRO.<br />\r\n2.4: Sea honesto en sus relaciones con las personas suscritas y br&iacute;ndeles la informaci&oacute;n necesaria que les permita tomar una decisi&oacute;n plenamente informada, en particular sobre el precio y las condiciones de pago;<br />\r\n2.5: No realice declaraciones falsas o exageradas en la plataforma My Trading Academy PRO (mytradingacademypro.com) y / o las suscripciones ofrecidas en esta plataforma;<br />\r\n2.6: No d&eacute; ninguna garant&iacute;a sobre los ingresos esperados;<br />\r\n2.7: Respetar la privacidad de los clientes finales y, por ejemplo, presentarles la oferta de My Trading Academy PRO solo con su consentimiento expreso y en horarios razonables para llamadas telef&oacute;nicas;<br />\r\n2.8: No se acerque a terceros de manera agresiva o demasiado insistente;<br />\r\n2.9: Favorecer los intercambios personalizados con los clientes finales y no enviar correos electr&oacute;nicos o mensajes promocionando la actividad de My Trading Academy PRO de forma masiva;<br />\r\n2.10: No abusar de la confianza de los clientes finales y, en particular, no explotar la falta de experiencia, enfermedades, edad o habilidades ling&uuml;&iacute;sticas limitadas de los clientes finales;<br />\r\n2.11: No solicite con firmeza, agresividad o insistencia la suscripci&oacute;n de clientes finales a productos My Trading Academy PRO . Est&aacute; prohibido el uso de fuerza f&iacute;sica, acoso o cualquier otro medio opresivo;<br />\r\n2.12: No condicione la suscripci&oacute;n de un cliente final a la oferta My Trading Academy PRO o al cumplimiento de otra obligaci&oacute;n. Por ejemplo, la compra de otro producto por parte del cliente final, el pago de una suma de dinero, etc. ;<br />\r\n2.13: Esforzarse por trabajar con vestimenta correcta y adoptar un lenguaje distinguido para presentar My Trading Academy PRO .<br />\r\n<br />\r\n- HACIA EL CLIENTE INTERNO<br />\r\n<br />\r\nTodos los representantes de My Trading Academy PRO deben respetarse mutuamente en todo sentido. Teniendo esto en cuenta, todos los afiliados nos comprometemos a respetar y sumar a la organizaci&oacute;n bajo el estricto seguimiento de las siguientes reglas:<br />\r\n3.1: Queda expresamente prohibido a los representantes y promotores de My Trading Academy PRO, robar material de otros socios comerciales.<br />\r\n3.2: Queda expresamente prohibido a los representantes y promotores de My Trading Academy PRO promover junto con MTA PRO el unirse a otra organizaci&oacute;n comercial prometiendo una mejor supervisi&oacute;n o mejores resultados, es decir, mencionar nuestra academia como beneficio del paquete educativo de otra organizaci&oacute;n.<br />\r\n3.3: Queda expresamente prohibido a los representantes y promotores de My Trading Academy PRO hacer comentarios negativos y / o degradantes sobre otros representantes y promotores de MTA PRO<br />\r\n3.4: Queda expresamente prohibido a los representantes y promotores de My Trading Academy PRO, tratar p&uacute;blicamente en las redes sociales, las disputas con otros representantes y promotores de MTA PRO<br />\r\n4. Queda expresamente prohibido a los representantes y promotores de My Trading Academy PRO, tener actividad competitiva o fraudulenta<br />\r\nLos representantes y promotores de My Trading Academy PRO, deben comportarse con un alto sentido de lealtad.- Sin embargo, el ejercicio de la actividad de los representantes y promotores no es exclusivo. No obstante, se abstienen de participar en actividades concurrentes o fraudulentas. Por lo tanto, los socios de My Trading Academy PRO se comprometen a:<br />\r\n4.1: Queda expresamente prohibido a los representantes y promotores de My Trading Academy PRO, participar en una red del tipo &ldquo;marketing relacional&rdquo; del gremio educativo o de formaci&oacute;n online (E-Learning) o similar, o participar simult&aacute;neamente con alg&uacute;n competidor de My Trading Academy PRO, en particular<br />\r\n4.2: Queda expresamente prohibido a los representantes y promotores de My Trading Academy PRO, participar en una red de tipo &quot;marketing relacional&quot; o similar, en sectores financieros de riesgo, como comercio, divisas, inversiones de riesgo o criptomonedas;<br />\r\n4.3: Queda expresamente prohibido a los representantes y promotores de My Trading Academy PRO, participar en una actividad fraudulenta, como venta piramidal, cadena de reclutamiento de afiliados o esquema Ponzi;</p>', 1, '2021-04-21 10:14:07', '2021-04-21 10:14:07'),
(3, 1, '3.- Comunicaciones', '<p>Todos los contactos con la prensa, la televisi&oacute;n y la radio relacionados con My Trading Academy PRO est&aacute;n reservados para MTA PRO, a menos que la direcci&oacute;n de la organizaci&oacute;n acepte alguna excepci&oacute;n y bajo un estricto acuerdo por escrito.<br />\r\n<br />\r\nMy Trading Academy PRO, informa a representantes, promotores y afiliados, que las comunicaciones a trav&eacute;s de las redes sociales no est&aacute;n exentas de riesgos y los invita a estar atentos al respecto.</p>', 1, '2021-04-21 10:14:24', '2021-04-21 10:14:24'),
(4, 1, '4.- Reportes y Sanciones', '<p>Dependiendo de su gravedad, la (s) violaci&oacute;n (es) de una o m&aacute;s de las reglas mencionadas en este C&oacute;digo de &Eacute;tica podr&iacute;an ser primero objeto de una o m&aacute;s advertencias. My Trading Academy PRO tambi&eacute;n se reserva el derecho, a su sola discreci&oacute;n, de aplicar las sanciones que se mencionan a continuaci&oacute;n en funci&oacute;n de la gravedad del incumplimiento y bajo previa y estricta investigaci&oacute;n: 1.- Bajar de categor&iacute;a, posponer por un per&iacute;odo fijo o cancelar permanentemente una afiliaci&oacute;n. 2.- Posponer por un per&iacute;odo fijo o cancelar definitivamente el pago de una solicitud de retiro de comisiones. 3. Suspender por un per&iacute;odo fijo su cuenta My Trading Academy PRO y las comisiones adeudadas durante este per&iacute;odo. Cualquier persona puede denunciar bajo estricta confidencialidad toda practica que atente contra este c&oacute;digo de &eacute;tica o en general los intereses de la organizaci&oacute;n. Con cualquier denuncia abriremos un proceso de investigaci&oacute;n sobre el cual se tomar&aacute;n las medidas pertinentes. Tenga en cuenta que si My Trading Academy PRO considera que el incumplimiento de las reglas mencionadas en este C&oacute;digo de &Eacute;tica es particularmente grave, My Trading Academy PRO se reserva el derecho de rescindir unilateralmente el Contrato MTA PRO y cerrar su cuenta en el sitio: www.mytradingacademypro.com sin previo aviso. Cualquier solicitud de aclaraci&oacute;n sobre las normas descritas en este C&oacute;digo &Eacute;tico y / o reclamaci&oacute;n sobre su aplicaci&oacute;n deber&aacute; realizarse a la direcci&oacute;n de correo electr&oacute;nico indicada en su Contrato MTA PRO.</p>', 1, '2021-04-21 10:14:42', '2021-04-21 10:14:42'),
(5, 2, '1.- Introducción', '<p>1.1 - FENTTIX CORP, con domicilio en Panam&aacute; City y bajo el nombre comercial de: Fenttix Presentan a continuaci&oacute;n las siguientes condiciones de relaci&oacute;n entre la marca y producto: My Trading Academy PRO, referenciadas en estas especificaciones como: MTA PRO, proporcionando un marco legal para los t&eacute;rminos de prestaci&oacute;n de sus servicios de educaci&oacute;n en l&iacute;nea al sitio web: www.mytradingacademypro.com , denominado como: el &quot;Sitio&quot; y definiendo las condiciones de acceso y uso de los servicios del Sitio por &quot;el Usuario&quot;.<br />\r\nLa organizaci&oacute;n es representada, administrada y operada desde Guadalajara, Jalisco, M&eacute;xico por la Lic. Noemy Alem&aacute;n Cabrera y en lo sucesivo, &quot;My Trading Academy PRO&quot; por un lado, y<br />\r\n1.2 - La persona f&iacute;sica o jur&iacute;dica abajo firmante y, en adelante, el &quot;Instructor MTA PRO&quot; por otro lado, en lo sucesivo denominadas colectivamente las &quot;Partes&quot; o individualmente una &quot;Parte&quot;.<br />\r\n<br />\r\n<strong>Lo siguiente se explica de antemano:</strong><br />\r\n<br />\r\nMy Trading Academy PRO (MTA PRO) es una plataforma de e-learning que ofrece un cat&aacute;logo de cursos de formaci&oacute;n variados accesibles en el sitio web: www.mytradingacademypro.com en adelante, la &ldquo;Plataforma&rdquo;) dise&ntilde;ada para el desarrollo personal, profesional y financiero, la cual facilita su contenido a trav&eacute;s de diferentes f&oacute;rmulas de suscripci&oacute;n en funci&oacute;n de las opciones suscritas por los suscriptores (en adelante: en lo sucesivo denominados conjuntamente la &quot;Suscripci&oacute;n&quot;).<br />\r\n<br />\r\nEntre las Suscripciones que ofrece MTA PRO, se encuentra la Suscripciones y categor&iacute;as denominadas &quot;FIND&quot; &ldquo;BUY&rdquo; y &ldquo;WIN&rdquo;, que permiten a su beneficiario acceso limitado al contenido correspondiente a cada paquete (incluidos los streaming de MTA PRO y de nuestro partner FTX Live ) ofrecido en la Plataforma al vencimiento de su Suscripci&oacute;n para todo el contenido publicado en esa fecha (en adelante, la &ldquo;Suscripci&oacute;n MTA PRO&rdquo;). MTA PRO tambi&eacute;n ofrece a los titulares de cualquiera de sus suscripciones, la posibilidad de obtener ventajas y beneficios, denominadas en el presente documento como &ldquo;comisiones y bonos&rdquo; particularmente establecidos en cada membres&iacute;a y a adquirirse bajo el ejercicio de promoci&oacute;n y venta de una nueva Suscripci&oacute;n gracias a su intervenci&oacute;n o referencia.<br />\r\n<br />\r\n<strong>Pre&aacute;mbulo:</strong><br />\r\n<br />\r\nEl instructor trabaja como instructor y especialista en un campo de acci&oacute;n, en particular y desea poner videos de capacitaci&oacute;n a disposici&oacute;n de MTA PRO. Las Partes desean comprometerse mutuamente con lo siguiente:</p>', 1, '2021-04-21 10:16:38', '2021-04-21 10:16:38'),
(6, 2, '2.- Objeto del Contrato', '<p>Las Partes acuerdan que el objeto de este Contrato es regular contractualmente los servicios de capacitaci&oacute;n, instrucci&oacute;n y apoyo a las personas orientados al desarrollo de habilidades espec&iacute;ficas en el sector personal, profesional o financiero; los videos de capacitaci&oacute;n est&aacute;n disponibles para los suscriptores en la plataforma de aprendizaje electr&oacute;nico de My Trading Academy PRO (la &quot;Plataforma&quot;) proporcionada por el Instructor (el &quot;Contenido&quot;) y la remuneraci&oacute;n por este Contenido es cobrada por MTA PRO.</p>', 1, '2021-04-21 10:16:50', '2021-04-21 10:16:50'),
(7, 2, '3.- Remuneración', '<p>Las Partes acuerdan que la remuneraci&oacute;n que MTA PRO pagar&aacute; al Instructor por el Contenido Contratado resultar&aacute; del reparto mensual del 10% del valor de la membres&iacute;a mensual/anual/vitalicia correspondiente a su modulo, siempre y cuando cumpla con el # m&iacute;nimo de vistas y compras requeridas, el cual deber&aacute; ser mayor a 50 tickets generados por la venta y la renovaci&oacute;n de planes educativos cada mes, excluyendo los USD49 (cuarenta y nueve d&oacute;lares estadounidenses) correspondientes a la licencia My Trading Academy PRO y destinados a la gesti&oacute;n y administraci&oacute;n de las herramientas del programa MTA PRO, cargos bancarios, impuestos y cualquier tarifa relacionada con la producci&oacute;n del Contenido.<br />\r\n<br />\r\nCada mes, los resultados del Instructor se calcular&aacute;n de acuerdo con la cantidad de personas que han seguido y comprado la (s) formaci&oacute;n (es) del Instructor, facilitada en el m&oacute;dulo y bajo el costo correspondiente a su expertiz., seg&uacute;n un algoritmo y reglas definidas por MTA PRO, que pueden causar fluctuaciones que el Instructor acepta, y que pueden ser modificado por MTA PRO. Al comienzo de cada mes, MTA PRO enviar&aacute; por correo electr&oacute;nico al Instructor un informe detallado de los resultados generados por la (s) formaci&oacute;n (es) del Instructor durante el mes anterior (el &quot;Informe mensual&quot;).<br />\r\n<br />\r\nAl recibir el Informe Mensual, el Instructor debe emitir la factura correspondiente a MTA PRO. La contraprestaci&oacute;n se abonar&aacute; mensualmente, a partir del d&iacute;a 15 de cada mes siguiente al env&iacute;o de la correspondiente factura, a la cuenta bancaria del Instructor, una vez que su formaci&oacute;n haya sido puesta en la plataforma por un per&iacute;odo m&iacute;nimo de 30 (treinta ) d&iacute;as. El monto m&iacute;nimo por cada pago realizado por MTA PRO es USD149 (ciento cuarenta y nueve d&oacute;lares estadounidenses). Si el monto indicado en una factura mensual es menor a USD 149, este monto ser&aacute; transferido a las pr&oacute;ximas facturas mensuales y ser&aacute; liquidado por MTA PRO cuando el monto total de facturas adeudadas al Instructor haya alcanzado los USD 149.</p>', 1, '2021-04-21 10:17:20', '2021-04-21 10:17:20'),
(8, 2, '4.- Naturaleza del Contrato', '<p>Dada la naturaleza de este Acuerdo, la relaci&oacute;n entre MTA PRO y el Instructor es la de un contratista independiente y ambas Partes acuerdan que no se consideran ni deben considerarse agentes o empleados del otro. Este Contrato no establece una relaci&oacute;n de subordinaci&oacute;n como la de un empleador y un empleado, una asociaci&oacute;n o una empresa conjunta.</p>', 1, '2021-04-21 10:17:34', '2021-04-21 10:17:34'),
(9, 2, '5.- Obligaciones del Instructor', '<p>Bajo este Contrato, el Instructor tendr&aacute; las siguientes obligaciones: Proporcionar el Contenido con total responsabilidad, integridad y diligencia. No distribuya gratuitamente los cursos de formaci&oacute;n encomendados a MTA PRO en ning&uacute;n medio.<br />\r\n<br />\r\nNo vender el Contenido producido por MTA PRO o contenido similar por sus propios medios a un tercero en cualquier medio.<br />\r\n<br />\r\nEn el caso de la producci&oacute;n personal por parte del Instructor de los entrenamientos puestos en la Plataforma, no vender sus entrenamientos sin informar a MTA PRO por escrito para generar los acuerdos correspondientes y mantener siempre la mejor relaci&oacute;n y distinci&oacute;n de la propuesta de valor de MTA PRO.<br />\r\n<br />\r\nOtorgar a MTA PRO una licencia exclusiva para todo el mundo, exclusiva, libre de derechos, transferible y asignable para usar el Contenido, el derecho a reproducirlo, alojarlo, crear copias t&eacute;cnicas, distribuirlo, comunicarlo al p&uacute;blico, modificarlo, analizarlo, visualizarlo y ejecutarlo con el &uacute;nico fin de operar, promover y mejorar la Plataforma.<br />\r\n<br />\r\nGarantizar a MTA PRO frente a cualquier recurso o acci&oacute;n que se le pueda interponer por cualquier causa, con motivo de la cesi&oacute;n cedida, a los autores, beneficiarios, editores y en general a cualquier persona que considere tener alg&uacute;n derecho para hacer valer sobre todo o parte del Contenido o sobre su uso.<br />\r\n<br />\r\nGarantizar a MTA PRO el ejercicio pac&iacute;fico de los derechos cedidos y en particular que no introducir&aacute; en su obra reminiscencias o semejanzas que vulneren los derechos de un tercero; que no ha realizado ni har&aacute; ning&uacute;n acto que pueda impedir o interferir con el pleno disfrute por MTA PRO de los derechos que le confiere esta cesi&oacute;n. En general, el Instructor deber&aacute; abstenerse de cualquier hecho que pueda obstaculizar la explotaci&oacute;n de la obra por parte de MTA PRO.</p>', 1, '2021-04-21 10:17:48', '2021-04-21 10:17:48'),
(10, 2, '6.- Derechos del Instructor', '<p>Bajo este Contrato, el Instructor tiene los siguientes derechos:<br />\r\n<br />\r\nRecibir el pago dentro de los plazos especificados en la cl&aacute;usula 2 de este Contrato. Tener acceso en la Plataforma a su formaci&oacute;n.<br />\r\n<br />\r\nEn el caso de la producci&oacute;n personal por parte del Instructor de sus entrenamientos colocados en la Plataforma de My Trading Academy PRO, el Instructor puede revender el contenido de estos entrenamientos siempre que haya notificado a MTA PRO por escrito y obtenido su aprobaci&oacute;n previa por escrito con las condiciones de venta definidas y en particular el precio de venta, el comprador y / o la plataforma en la que estar&aacute; disponible la formaci&oacute;n.<br />\r\n<br />\r\nUtilizar el contenido intelectual del Contenido (es decir, el conocimiento / know-how del Instructor y su conocimiento que hizo posible la producci&oacute;n del Contenido) en medios y formas distintas del Contenido y la Plataforma.<br />\r\n<br />\r\nMTA PRO proh&iacute;be estrictamente cualquier contenido que infrinja los derechos de autor en su Plataforma y eliminar&aacute; cualquier Contenido de este tipo que viole los derechos de propiedad intelectual o derechos de imagen de otros.</p>', 1, '2021-04-21 10:18:06', '2021-04-21 10:18:06'),
(11, 2, '7.- Obligaciones de MTA PRO', '<p>Bajo este Acuerdo, MTA PRO tiene las siguientes obligaciones:<br />\r\n<br />\r\nPagar oportunamente la contraprestaci&oacute;n a que se refiere la cl&aacute;usula 2 de este Acuerdo. No ofrezca ni venda la formaci&oacute;n del Instructor fuera de su Plataforma.<br />\r\n<br />\r\nProteja la informaci&oacute;n personal del Instructor de acuerdo con las leyes y regulaciones aplicables en materia de protecci&oacute;n de datos personales y nunca la comunique a un tercero sin el consentimiento por escrito del Instructor.<br />\r\n<br />\r\nTodo el contenido, fotos, cursos de instructor, solo se utilizar&aacute;n en el contexto definido por MTA PRO a trav&eacute;s de su sitio web y / o redes sociales.<br />\r\n<br />\r\nMTA PRO nunca promover&aacute; ni utilizar&aacute; la imagen del Instructor o del experto fuera de este contexto sin su consentimiento por escrito.</p>', 1, '2021-04-21 10:18:26', '2021-04-21 10:18:26'),
(12, 2, '8.- Derechos de MTA PRO', '<p>MTA PRO tiene los siguientes derechos:<br />\r\n<br />\r\nRecibir el Contenido amparado por este Contrato, con diligencia, honestidad, prontitud y profesionalismo en la ejecuci&oacute;n del mismo;<br />\r\n<br />\r\nQue cualquier anomal&iacute;a que pueda surgir en el contexto del Contenido ser&aacute; tratada por el Instructor, incluidos los problemas de derechos de autor;<br />\r\n<br />\r\nEditar los videos producidos a su conveniencia, de acuerdo con las reglas de edici&oacute;n y cualidades que estime adecuadas.<br />\r\n<br />\r\nObtener del Instructor durante toda la duraci&oacute;n del Contrato un derecho y una licencia limitados, exclusivos, no sublicenciables, intransferibles e intransferibles para utilizar la propiedad intelectual del contenido de la formaci&oacute;n del Instructor de acuerdo con las condiciones definidas por este Contrato.</p>', 1, '2021-04-21 10:20:08', '2021-04-21 10:20:08'),
(13, 2, '9.- Duración del Contrato', 'Este Contrato se concluye por un período de un (1) año a partir de la fecha de firma. Puede ser prorrogado por acuerdo tácito por períodos sucesivos de un (1) año cada uno. Podrá ser rescindido unilateralmente por cualquiera de las Partes, sujeto al cumplimiento de una notificación previa en las condiciones descritas en la cláusula 9.', 1, '2021-04-21 10:20:26', '2021-04-21 10:20:26'),
(14, 2, '10.- Terminación del Contrato', '<p>En el caso de que, por cualquier motivo, MTA PRO decida renunciar a todo o parte del Contenido amparado por este Acuerdo, deber&aacute; informar al Instructor con 15 (quince) d&iacute;as de anticipaci&oacute;n por correo electr&oacute;nico con acuse de recibo. El Contrato se rescindir&aacute; autom&aacute;ticamente dentro de los 15 (quince) d&iacute;as posteriores al env&iacute;o del correo electr&oacute;nico.<br />\r\n<br />\r\nEl Instructor que por cualquier motivo decida renunciar a todo o parte del Contenido amparado por este Contrato se encuentra en la misma situaci&oacute;n y deber&aacute; informar a MTA PRO con 15 (quince) d&iacute;as de antelaci&oacute;n por correo electr&oacute;nico con acuse de recibo enviado a la direcci&oacute;n indicada en este Acuerdo. El Contrato se rescindir&aacute; autom&aacute;ticamente dentro de los 15 (quince) d&iacute;as posteriores al env&iacute;o del correo electr&oacute;nico.<br />\r\n<br />\r\nEn el caso de que el servicio del Instructor no cumpla con los requisitos de calidad definidos por MTA PRO bajo este Contrato o de vez en cuando por escrito, o el servicio del Instructor no cumpla con el plan de entrenamiento y Aspectos pedag&oacute;gicos definidos por escrito con el equipo de producci&oacute;n de vez en cuando, MTA PRO se reserva el derecho de no publicar la formaci&oacute;n del Instructor en su Plataforma.<br />\r\n<br />\r\nEl Instructor podr&aacute; entonces obtener los videos sin procesar de su entrenamiento sujeto a pagarle a MTA PRO los costos de producci&oacute;n, correspondientes a una suma global de USD 1.000</p>', 1, '2021-04-21 10:22:43', '2021-04-21 10:22:43'),
(15, 2, '11.- Modificación del Contrato', '<p>MTA PRO se reserva el derecho de modificar unilateralmente cualquier estipulaci&oacute;n de este Contrato que se considere no sustancial, mediante el env&iacute;o de una notificaci&oacute;n por escrito al Instructor, que el Instructor acepta.<br />\r\n<br />\r\nCualquier modificaci&oacute;n contractual considerada sustancial solo es v&aacute;lida de mutuo acuerdo por escrito y firmada por ambas Partes.</p>', 1, '2021-04-21 10:24:04', '2021-04-21 10:24:04'),
(16, 2, '12.- Capacidad', '<p>El Instructor y MTA PRO reconocen y garantizan que:<br />\r\n<br />\r\nEste Acuerdo y el cumplimiento de sus respectivas obligaciones en virtud de este Acuerdo no constituyen ni constituir&aacute;n una violaci&oacute;n de ninguna otra consulta, no divulgaci&oacute;n, confidencialidad u otro acuerdo del que sean partes;<br />\r\n<br />\r\nTienen plena capacidad, poder y jurisdicci&oacute;n para ejecutar este Acuerdo y cumplir sus t&eacute;rminos;<br />\r\n<br />\r\nDurante la ejecuci&oacute;n del Contrato, las Partes no deben infringir, desviar o violar ninguna patente, derecho de autor, secreto comercial, marca registrada o cualquier otro derecho de propiedad intelectual de terceros;<br />\r\n<br />\r\nEl Instructor garantiza que es el propietario de los derechos de propiedad intelectual relacionados con las capacitaciones que ofrece a MTA PRO y que estas capacitaciones no violan los derechos de propiedad intelectual de terceros. El Instructor se compromete a indemnizar y proteger a MTA PRO contra todos los reclamos, acciones, responsabilidades, da&ntilde;os, p&eacute;rdidas, multas, sanciones, costos y gastos, incluidos los honorarios razonables de abogados y expertos, que surjan de una violaci&oacute;n. real o alegado de esta cl&aacute;usula 11.</p>', 1, '2021-04-21 10:24:19', '2021-04-21 10:24:19'),
(17, 2, '13.- Datos Personales', '<p>El Instructor acepta que MTA PRO recopila, almacena y procesa datos, incluidos los datos personales relacionados con el Instructor, en el contexto de la ejecuci&oacute;n de este Contrato y para las necesidades del funcionamiento de la Plataforma dentro del marco de las leyes y regulaciones aplicables y Las pol&iacute;ticas de privacidad de MTA PRO est&aacute;n disponibles para el instructor.</p>', 1, '2021-04-21 10:24:45', '2021-04-21 10:24:45'),
(18, 2, '14.- Divisibilidad', '<p>Si una de las disposiciones de este Contrato se considera inv&aacute;lida o inaplicable, la validez y aplicabilidad de las dem&aacute;s disposiciones del Contrato no se ver&aacute;n afectadas.</p>', 1, '2021-04-21 10:25:02', '2021-04-21 10:25:02'),
(19, 2, '15.- Ley Aplicable', '<p>La ejecuci&oacute;n e interpretaci&oacute;n de este Acuerdo se realiza de conformidad con las leyes de M&eacute;xico, pa&iacute;s donde se lleva a cabo la representaci&oacute;n, administraci&oacute;n, producci&oacute;n y operaci&oacute;n de la plataforma.</p>', 1, '2021-04-21 10:25:14', '2021-04-21 10:25:14'),
(20, 2, '16.- Jurisdicción', '<p>El contrato est&aacute; sujeto a la ley mexicana. Para todas las disputas que surjan del Contrato, incluidas las relacionadas con su validez, interpretaci&oacute;n, ejecuci&oacute;n, terminaci&oacute;n y / o las consecuencias de su terminaci&oacute;n, las Partes otorgan jurisdicci&oacute;n al Tribunal Comercial de M&eacute;xico.<br />\r\n<br />\r\nDespu&eacute;s de haber le&iacute;do este Acuerdo en su totalidad y conocer su contenido y alcance legal, las Partes aceptan sus t&eacute;rminos y condiciones.</p>', 1, '2021-04-21 10:27:59', '2021-04-21 10:27:59'),
(21, 3, '1.- Antecedentes entre los firmantes', '<p>1.1 - FENTTIX CORP, con domicilio en Panama City y bajo el nombre comercial de: Fenttix Presentan a continuaci&oacute;n las siguientes condiciones generales de uso y venta, conocidas como CGUV de la marca y producto: My Trading Academy PRO, referenciadas en estas especificaciones como: MTA PRO, proporcionando un marco legal para los t&eacute;rminos de prestaci&oacute;n de sus servicios de educaci&oacute;n en l&iacute;nea al sitio web: www.tradingacademypro.com , denominado como: el &quot;Sitio&quot; y definiendo las condiciones de acceso y uso de los servicios del Sitio por &quot;el Usuario&quot;.<br />\r\n<br />\r\nLa organizaci&oacute;n es representada, administrada y operada desde Guadalajara, Jalisco, M&eacute;xico por la Lic. Noemy Alem&aacute;n Cabrera y en lo sucesivo, &quot;My Trading Academy PRO&quot; por un lado, y<br />\r\n1.2 - La persona f&iacute;sica o jur&iacute;dica abajo firmante y, en adelante, el &quot;Asociado MTA PRO&quot; por otro lado, en lo sucesivo denominadas colectivamente las &quot;Partes&quot; o individualmente una &quot;Parte&quot;.<br />\r\n<br />\r\n<strong>Lo siguiente se explica de antemano:</strong><br />\r\n<br />\r\nMy Trading Academy PRO (MTA PRO) es una plataforma de e-learning que ofrece un cat&aacute;logo de cursos de formaci&oacute;n variados accesibles en el sitio web: www.mytradingacademypro.com en adelante, la &ldquo;Plataforma&rdquo;) dise&ntilde;ada para el desarrollo personal, profesional y financiero, la cual facilita su contenido a trav&eacute;s de diferentes f&oacute;rmulas de suscripci&oacute;n en funci&oacute;n de las opciones suscritas por los suscriptores (en adelante: en lo sucesivo denominados conjuntamente la &quot;Suscripci&oacute;n&quot;).<br />\r\n<br />\r\nEntre las Suscripciones que ofrece MTA PRO, se encuentra la Suscripciones y categor&iacute;as denominadas &quot;FIND&quot; &ldquo;BUY&rdquo; y &ldquo;WIN&rdquo;, que permiten a su beneficiario acceso limitado al contenido correspondiente a cada paquete (incluidos los streaming de MTA PRO y de nuestro partner FTX Live ) ofrecido en la Plataforma al vencimiento de su Suscripci&oacute;n para todo el contenido publicado en esa fecha (en adelante, la &ldquo;Suscripci&oacute;n MTA PRO&rdquo;). MTA PRO tambi&eacute;n ofrece a los titulares de cualquiera de sus suscripciones, la posibilidad de obtener ventajas y beneficios, denominadas en el presente documento como &ldquo;comisiones y bonos&rdquo; particularmente establecidos en cada membres&iacute;a y a adquirirse bajo el ejercicio de promoci&oacute;n y venta de una nueva Suscripci&oacute;n gracias a su intervenci&oacute;n o referencia.<br />\r\nEl asociado de MTA PRO que ha contratado una Suscripci&oacute;n MTA PRO para para beneficiarse del acceso a la Plataforma, y ha manifestado el deseo de poder beneficiarse de las ventajas mencionadas anteriormente en el caso de que las Suscripciones sean contratadas por terceros gracias a su intervenci&oacute;n o referencia.<br />\r\nLas Partes se han unido para definir los t&eacute;rminos y condiciones bajo los cuales el Asociado MTA PRO se beneficia de ciertas ventajas en este contexto.<br />\r\nSe especifica en este documento que cada una de las partes ha tenido tiempo que considera suficiente para examinar y analizar este contrato, negociado de com&uacute;n acuerdo, en caso de ser necesario, recurriendo al asesoramiento de su elecci&oacute;n si fuera necesario. Por lo tanto, despu&eacute;s de haber tenido toda la informaci&oacute;n &uacute;til para aclarar su consentimiento, MTA PRO y el asociado MTA PRO se acercaron para concluir este contrato de intermediaci&oacute;n (en adelante, el &ldquo;Contrato&rdquo;).<br />\r\n<br />\r\nDicho esto, se acord&oacute; lo siguiente:</p>', 1, '2021-04-21 10:35:59', '2021-04-21 10:35:59'),
(22, 3, '2.- Objeto del Contrato', 'MTA PRO encomienda al asociado de MTA PRO que lo acepte, la posibilidad de promocionar las Suscripciones a personas o empresas susceptibles de estar interesadas en ellas. La dirección comercial de MTA PRO pondrá en contacto con los nuevos suscriptores de la Plataforma. No tendrá el poder de negociar y/o celebrar contratos adicionales a este sin el consentimiento de la dirección general de MTA PRO y dichos suscriptores ni dará beneficios exclusivos ni fuera de los ya marcados en cada membresía y especificados en este y los contratos establecidos en la parte legal de la plataforma.\r\n\r\nEn cualquier caso, MTA PRO conservará plena libertad para aceptar o rechazar, sin tener que justificarlo, contratar uno o más suscriptores potenciales presentados por el asociado MTA PRO, denominándolos bajo el rol de: Mentor y formalizando su relación bajo un estricto criterio legal establecido en su respectivo contrato. De acuerdo con lo dispuesto entre ambas partes, el asociado MTA PRO tiene la calidad de promotor y comerciante, ejerciendo su profesión con total independencia y libertad y, por lo tanto, puede desplegar cualquier actividad de su elección, realizar cualquier negocio y otras operaciones por cuenta propia fuera de su actividad en los términos del Contrato, sujeto a las estipulaciones previstas en el Contrato.\r\n\r\nEn consecuencia, el asociado MTA PRO declara que nunca ha sido objeto de condena penal, ni de ninguna de las medidas encaminadas a restringir su capacidad comercial, lo que MTA PRO reconoce en base a esta declaración.\r\n\r\nEl Asociado MTA PRO no podrá en ningún caso reclamar el desconocimiento de ninguna de las cláusulas establecidas en este contrato u otros anexos a la sección legal del sitio: www.mytradingacademypro.com asumiendo este último todos los costos y gastos relacionados con el desempeño de su misión y declarando estar plenamente satisfecho con las condiciones. resultados financieros derivados del Contrato.\r\n\r\nComo corredor que ejerce una profesión comercial independiente, el Asociado MTA PRO hará su propio negocio y asumirá el costo de todos los impuestos y aranceles fiscales y parafiscales, así como todas las contribuciones sociales que correspondan en el país de residencia y comercialización.', 1, '2021-04-21 10:36:15', '2021-04-21 10:36:15'),
(23, 3, '3.- Condiciones de ejecución del contrato', '<p>3.1.- El Asociado MTA PRO deber&aacute; realizar todos los pasos y tr&aacute;mites que sean &uacute;tiles y necesarios para el cumplimiento de su misi&oacute;n seg&uacute;n se define en el art&iacute;culo &ldquo;Objeto del Contrato&rdquo;.<br />\r\n<br />\r\nPor lo tanto, el Asociado MTA PRO debe informar a los posibles suscriptores de todas las condiciones comerciales, administrativas, legales y financieras relacionadas con las Suscripciones, sean esquemas de comisiones, bonificaciones, pagos, pol&iacute;ticas y en general todos los requerimientos que deber&aacute; aceptar para incorporarse a la plataforma.<br />\r\n<br />\r\nEl asociado MTA PRO determinar&aacute; por s&iacute; solo sus m&eacute;todos de trabajo, de forma independiente y sin ning&uacute;n v&iacute;nculo de subordinaci&oacute;n con MTA PRO. En consecuencia, el asociado MTA PRO asegurar&aacute; los riesgos inherentes a su actividad personal. El Asociado MTA PRO ser&aacute; as&iacute; personalmente responsable de las p&oacute;lizas de seguro necesarias para el ejercicio de su profesi&oacute;n, en particular en materia de responsabilidad civil.<br />\r\n<br />\r\nLos precios y condiciones de las Suscripciones son establecidos por MTA PRO, especific&aacute;ndose que estas &uacute;ltimas son escalables. Todos los cambios en las condiciones de las Suscripciones, as&iacute; como las variaciones de precio relacionadas, se comunicar&aacute;n al Asociado MTA PRO antes de su implementaci&oacute;n.<br />\r\n<br />\r\nAdem&aacute;s, el asociado MTA PRO debe asegurarse en particular de que ni la apariencia de sus instalaciones profesionales, ni el estado de su equipo o la calidad de su servicio, puedan dar al p&uacute;blico y suscriptores o suscriptores potenciales un Imagen desfavorable de MTA PRO. El Asociado MTA PRO se compromete a comportarse siempre con My Trading Academy PRO como un asociado leal y de buena fe.<br />\r\n<br />\r\n3.2.- El Asociado MTA PRO se compromete a respetar la &eacute;tica y la moralidad en el marco de la actividad que desarrolla en aplicaci&oacute;n de la presente, y en particular al respeto de la &ldquo;Carta de &eacute;tica&rdquo; MTA PRO del que declara haber cursado. conocimiento previo a la firma del presente, que aparece en la secci&oacute;n de &ldquo;informaci&oacute;n legal&rdquo; de la Plataforma, y que describe los comportamientos que el Asociado MTA PRO debe asegurarse de respetar en el contexto de sus intercambios con prospectos suscritos.<br />\r\n<br />\r\n3.3.- MTA PRO proporcionar&aacute; al asociado de MTA PRO el material publicitario y la documentaci&oacute;n necesaria para su actividad en formato digital, as&iacute; como varias herramientas de formaci&oacute;n dedicadas, dentro del &aacute;rea del back office de &ldquo;MTA PRO&rdquo; que aparece dentro de la Plataforma. El Asociado MTA PRO se compromete a velar por la conservaci&oacute;n de los elementos as&iacute; puestos a su disposici&oacute;n y a evitar su divulgaci&oacute;n a terceros. No se podr&aacute; realizar el uso o difusi&oacute;n por parte del Asociado MTA PRO de otros medios y / o herramientas de comunicaci&oacute;n o cualquier otro documento que mencione a MTA PRO, sus marcas, logotipos o servicios y / o cualquier modificaci&oacute;n de los medios existentes por parte del Asociado MTA PRO. que en el respeto de la imagen de marca de MTA PRO.<br />\r\n<br />\r\nComo tal, el asociado MTA PRO se compromete a cesar todo uso de un medio de comunicaci&oacute;n que MTA PRO considere no acorde con la imagen de la red y / o su &eacute;tica, en un plazo m&aacute;ximo de 48 horas desde la notificaci&oacute;n de MTA PRO y para eliminar dicho contenido contencioso dentro de un per&iacute;odo m&aacute;ximo de 15 d&iacute;as desde esta notificaci&oacute;n. En caso contrario, MTA PRO podr&aacute; reclamar la rescisi&oacute;n del Contrato en las condiciones definidas en el art&iacute;culo &quot;Rescisi&oacute;n anticipada&quot;.<br />\r\n<br />\r\n3.4.- Por la presente, MTA PRO otorga al Asociado de MTA PRO un link de referidos disponible en el Backoffice y que probablemente otorgue reducciones en los costos de las membres&iacute;as a los nuevos suscriptores.</p>\r\n\r\n<table>\r\n	<thead>\r\n		<tr>\r\n			<th>Tipo de Membres&iacute;a</th>\r\n			<th>Costo Mensual con Link de Referido MTA PRO</th>\r\n			<th>Comisi&oacute;n mensual para el asociado MTA PRO</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del FIND<br />\r\n			(con link de referencia MTA PRO)</td>\r\n			<td>$ 9.99 / mes</td>\r\n			<td>$ 2.99 / mes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del BUY<br />\r\n			(con link de referencia MTA PRO)</td>\r\n			<td>$ 19.99 / mes</td>\r\n			<td>$ 5.99 / mes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del WIN<br />\r\n			(con link de referencia MTA PRO)</td>\r\n			<td>$ 29.99 / mes</td>\r\n			<td>$ 8.99 / mes</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>A solicitud del asociado de MTA PRO, MTA PRO se compromete a saldar todas las comisiones comprobables por las ventas efectivas bajo los links de referidos de cada asociado y para lo cual se configura un c&oacute;digo espec&iacute;fico incrustado en el mismo link de referencia, el cual permite mayor control y seguridad.<br />\r\n<br />\r\n3.5: En general y bajo el compromiso de actuar con la mayor &eacute;tica establecida y ser parte de la comunidad, el asociado MTA PRO debe brindar informaci&oacute;n exacta sobre el avance de su misi&oacute;n y justificar su debida diligencia ante la primera solicitud de MTA PRO.<br />\r\n<br />\r\nLa colaboraci&oacute;n del asociado MTA PRO y MTA PRO requiere un intercambio regular de informaci&oacute;n, por cualquier medio apropiado, en particular por el Backoffice, el correo electr&oacute;nico, la herramienta Telegram Messenger, el grupo dedicado de Facebook y otras redes sociales, pero tambi&eacute;n las videoconferencias / reuniones telef&oacute;nicas a las que las partes participar&aacute;n, teniendo en cuenta su respectiva disponibilidad.</p>', 1, '2021-04-21 10:36:48', '2021-04-21 10:36:48'),
(24, 3, '4.- Independencia de las partes', 'Todos los actos realizados por el Asociado MTA PRO en el marco de la ejecución del Contrato se realizan con total independencia y con exclusión de cualquier relación de subordinación, siendo cada una de las Partes responsable del cumplimiento de la normativa aplicable, relativa a la actividad que su propio.\r\n\r\nEl Asociado de MTA PRO reconoce que MTA PRO de ninguna manera le ha otorgado un mandato representativo y, en consecuencia, se reserva el derecho de elegir cuidadosamente a sus socios, representantes, comisionistas, agentes, promotores, influencer, mentores, afiliados o asociados de MTA PRO para actuar en nombre y / o en nombre de My Trading Academy PRO.\r\n\r\nEl Asociado MTA PROA no debe recibir fondos bajo ninguna circunstancia a nombre y / o en representación de MTA PRO, salvo las establecidas en este documento y/o la sección legal de la plataforma por concepto de comisiones y bonos correspondientes a la promoción con venta efectiva de las membresías “Ser”, “Hacer”, “Tener” y “Trascender” o cualquier otra derivada del mismo contenido y programa de compensaciones.', 1, '2021-04-21 10:37:08', '2021-04-21 10:37:08'),
(25, 3, '5.- Comisiones pagadas al asociado MTA PRO', '<p>A cambio de ejecuci&oacute;n exitosa de la referencia del asociado MTA PRO resultante del presente, MTA PRO se compromete a pagar al asociado MTA PRO las comisiones definidas en la cl&aacute;usula 3.4 del Contrato sobre una billetera digital y accesible en el Backoffice de la plataforma. El Asociado MTA PRO solo adquirir&aacute; el derecho a la comisi&oacute;n si la transacci&oacute;n es por una venta efectiva, proporcionado exclusivamente a trav&eacute;s de la intervenci&oacute;n del comit&eacute; de administraci&oacute;n de MTA PRO confirmado y auditado por el departamento de calidad de la organizaci&oacute;n.<br />\r\n<br />\r\nEl pago de las comisiones adeudadas se realizar&aacute; despu&eacute;s de la deducci&oacute;n de los impuestos adeudados o de la retenci&oacute;n en origen. El Asociado MTA PRO se compromete as&iacute; a declarar a las autoridades competentes la compensaci&oacute;n recibida en este contexto, y a pagar todos los derechos e impuestos relacionados, sin que MTA PRO pueda preocuparse.<br />\r\n<br />\r\nEl Asociado MTA PRO tendr&aacute; la opci&oacute;n de transferir los fondos disponibles en billetera a su cuenta bancaria, registrada desde su inscripci&oacute;n a la plataforma, disponible en el Backoffice, siendo dicha transferencia efectiva dentro de los 7 d&iacute;as a partir de la fecha en que el Asociado MTA PRO realiza la solicitud. Tambi&eacute;n se aplicar&aacute;n cargos adicionales equivalentes a US $10 si la solicitud de transferencia del Asociado MTA PRO es a paypal o alg&uacute;n otro banco fuera del convenio y solo ocurre cuando el saldo disponible en su billetera es inferior a US $ 49. Estos costos adicionales no se aplican en caso de rescisi&oacute;n del Contrato en las condiciones definidas en el art&iacute;culo &ldquo;Terminaci&oacute;n anticipada&rdquo; del Contrato.<br />\r\n<br />\r\nEl pago de las comisiones adeudadas al Asociado MTA PRO se realiza en d&oacute;lares estadounidenses o en la moneda local aplicable en el pa&iacute;s del Asociado MTA PRO cuando esta moneda sea admitida por MTA PRO y si el Asociado MTA PRO as&iacute; lo elige. En su caso, la conversi&oacute;n del importe a abonar en la cuenta bancaria del Asociado MTA PRO en moneda local se realizar&aacute; mediante la herramienta que especifique la organizaci&oacute;n de My Trading Academy PRO, a la tasa vigente el d&iacute;a en que MTA PRO inicie la transferencia.<br />\r\n<br />\r\nEn caso de cancelaci&oacute;n de una compra por parte de un suscriptor proporcionada por el asociado de MTA PRO, las comisiones relacionadas, si las hubiera, recibidas por el Asociado MTA PRO deben devolverse a MTA PRO. En caso de que se incumpla alguna de las condiciones previstas en el Contrato, las comisiones relacionadas recibidas por el Asociado MTA PRO deber&aacute;n devolverse a MTA PRO.<br />\r\n<br />\r\nLas Partes acuerdan expresamente a este efecto que la compensaci&oacute;n puede tener lugar de pleno derecho entre todas las sumas adeudadas por MTA PRO al Asociado de MTA PRO en aplicaci&oacute;n del presente, y todas las sumas adeudadas por el Asociado de MTA PRO a MTA PRO. Esta compensaci&oacute;n tendr&aacute; lugar dentro la billetera de la plataforma y asignada a su numero de afiliaci&oacute;n correspondiente.</p>', 1, '2021-04-21 10:37:33', '2021-04-21 10:37:33'),
(26, 3, '6.- Duración del Contrato', '<p>El Contrato es indivisible del contrato de Suscripci&oacute;n MTA PRO A suscrito por el Asociado MTA PRO durante la validaci&oacute;n del documento de Condiciones Generales de Uso y Venta, y concluido por la duraci&oacute;n de este.<br />\r\n<br />\r\nEl Contrato podr&aacute; renovarse por pacto t&aacute;cito, y finalizar&aacute; autom&aacute;ticamente af&iacute;n con la extinci&oacute;n (sea cual sea la causa: finalizaci&oacute;n de su plazo, extinci&oacute;n anticipada, vigencia o desvinculaci&oacute;n del medio de pago etc.) de la Suscripci&oacute;n de que se trate.<br />\r\n<br />\r\nEsta indivisibilidad no es rec&iacute;proca, y cada una de las Partes tendr&aacute; la opci&oacute;n de rescindir este Contrato en las condiciones previstas en las cl&aacute;usulas 7 y 8 de este documento, sin que ello d&eacute; lugar a la rescisi&oacute;n del contrato relativo a la Suscripci&oacute;n.</p>', 1, '2021-04-21 10:37:52', '2021-04-21 10:37:52'),
(27, 3, '7.- Intuitu Personae', '<p>El Contrato se concluye en consideraci&oacute;n de la persona del Asociado MTA PRO, quien se compromete a involucrarse personalmente en el desempe&ntilde;o de los objetivos establecidos, derivada de estos presentes.<br />\r\n<br />\r\nEn consecuencia, el Asociado MTA PRO no puede transferir, ceder o subcontratar la totalidad o parte de los derechos y / u obligaciones derivados de estos a un tercero sin el consentimiento previo por escrito de MTA PRO.<br />\r\n<br />\r\nPor su parte, MTA PRO queda libre de transferir, ceder o subcontratar la totalidad o parte de los derechos y / u obligaciones derivados de estos a cualquier tercero de su elecci&oacute;n, sin que el Asociado MTA PRO pueda invocarlos a efectos de cancelar el contrato.</p>', 1, '2021-04-21 10:38:11', '2021-04-21 10:38:11'),
(28, 3, '8.- Terminación Anticipada', '<p>El Contrato podr&aacute; ser rescindido anticipadamente, por cualquiera de las Partes, en caso de incumplimiento de cualquiera de las obligaciones.<br />\r\n<br />\r\nLa rescisi&oacute;n anticipada se producir&aacute; quince d&iacute;as despu&eacute;s de la notificaci&oacute;n formal por correo certificado con acuse de recibo a la Parte incumplidora, indicando la intenci&oacute;n de aplicar esta cl&aacute;usula de rescisi&oacute;n expresa, que ha quedado sin efecto.<br />\r\n<br />\r\nEn particular, se considerar&aacute; como una falla que justifica la implementaci&oacute;n de esta cl&aacute;usula, sin que esta lista sea exhaustiva:<br />\r\n<br />\r\n- el incumplimiento por parte del asociado de una de las obligaciones derivadas del art&iacute;culo 2;<br />\r\n- incumplimiento de la normativa aplicable por parte del Asociado MTA PRO y / o de la imagen de marca de MTA PRO;<br />\r\n- incumplimiento por parte de MTA PRO de su compromiso de pagar una comisi&oacute;n adeudada por MTA PRO al asociado de MTA PRO en la fecha de vencimiento;<br />\r\n- Incumplimiento por parte de MTA PRO de su compromiso de recompra de membres&iacute;as por parte del asociado MTA PRO.</p>', 1, '2021-04-21 10:38:36', '2021-04-21 10:38:36'),
(29, 3, '9.- Consecuencias de la rescisión del contrato', '<p>En caso de rescisi&oacute;n del Contrato, cualquiera que sea la causa, el compromiso del Asociado MTA PRO finalizar&aacute; autom&aacute;ticamente.<br />\r\n<br />\r\nNo obstante lo anterior, en caso de rescisi&oacute;n del Contrato por un motivo distinto a la rescisi&oacute;n del Contrato por culpa del Asociado MTA PRO, MTA PRO se compromete a abonar a este &uacute;ltimo las comisiones relativas y acumuladas a la fecha de su salida.<br />\r\n<br />\r\nEl Asociado MTA PRO tambi&eacute;n puede seguir teniendo acceso limitado al contenido correspondiente a cada paquete adquirido (incluidos los streaming de MTA PRO y de nuestro partner FTX Live ) ofrecido en la Plataforma al vencimiento de su Suscripci&oacute;n para todo el contenido publicado en esa fecha y al Backoffice, sujeto a disponibilidad de la Plataforma, siendo MTA PRO libre de rescindirla en cualquier momento.<br />\r\n<br />\r\nEn cualquier caso, el Asociado MTA PRO no podr&aacute; reclamar ninguna compensaci&oacute;n al finalizar el Contrato.</p>', 1, '2021-04-21 10:39:44', '2021-04-21 10:39:44'),
(30, 3, '10.- Derechos de propiedad intelectual e industrial', '<p>El Asociado MTA PRO tiene derecho a utilizar las marcas, logotipos y signos distintivos de MTA PRO para la promoci&oacute;n y venta exclusiva de Suscripciones, en estricto cumplimiento de estas condiciones.<br />\r\n<br />\r\nEl Asociado MTA PRO no adquiere ning&uacute;n derecho de propiedad o licencia, cualquiera que sea la base o el contenido, sobre estas marcas comerciales y signos distintivos. Bajo ninguna circunstancia el Asociado MTA PRO est&aacute; autorizado a registrar una marca y / o cualquier derecho de propiedad intelectual o industrial de cualquier tipo y / o un nombre de dominio que comprenda los t&eacute;rminos de My Trading Academy PRO</p>', 1, '2021-04-21 10:40:05', '2021-04-21 10:40:05'),
(31, 3, '11.- Confidencialidad', 'Las Partes se comprometen a mantener la confidencialidad de la información recopilada durante o durante la aplicación del Contrato.\r\n\r\nTomarán todas las precauciones útiles para evitar la divulgación prohibida o el uso de información confidencial por parte de sus empleados, subagentes o cualquier profesional que trabaje en su nombre.\r\n\r\nEsta obligación sobrevivirá a la rescisión del Contrato sin límite de tiempo, cualquiera que sea la causa de la rescisión (vencimiento, rescisión anticipada), siempre que la información en cuestión no haya pasado al dominio público', 1, '2021-04-21 10:40:17', '2021-04-21 10:40:17'),
(32, 3, '12.- Modificaciones', 'Para ser exigible contra las Partes, cualquier modificación realizada al Contrato debe ser objeto de una enmienda escrita firmada por las Partes.', 1, '2021-04-21 10:40:33', '2021-04-21 10:40:33'),
(33, 3, '13.- Ley aplicable y atribución de competencia', 'El contrato está sujeto a la ley mexicana. Para todas las disputas que surjan del Contrato, incluidas las relacionadas con su validez, interpretación, ejecución, terminación y / o las consecuencias de su terminación, las Partes otorgan jurisdicción al Tribunal Comercial de México.', 1, '2021-04-21 10:40:45', '2021-04-21 10:40:45');
INSERT INTO `legal_clauses` (`id`, `legal_tab_id`, `title`, `clause`, `status`, `created_at`, `updated_at`) VALUES
(34, 4, 'Introducción', '<p>FENTTIX CORP, con domicilio en Panama City y bajo el nombre comercial de: Fenttix Presentan a continuaci&oacute;n las siguientes condiciones generales de uso y venta, conocidas como CGUV de la marca y producto: My Trading Academy PRO, referenciadas en estas especificaciones como: MTA PRO, proporcionando un marco legal para los t&eacute;rminos de prestaci&oacute;n de sus servicios de educaci&oacute;n en l&iacute;nea al sitio web: www.mytradingacademypro.com , denominado como: el &quot;Sitio&quot; y definiendo las condiciones de acceso y uso de los servicios del Sitio por &quot;el Usuario&quot;.<br />\r\n<br />\r\nEl sitio MTA PRO, ofrece un servicio de suscripci&oacute;n personalizado que permite a los usuarios acceder a su contenido a trav&eacute;s de tutoriales de capacitaci&oacute;n, transmitidos a trav&eacute;s de wifi en cualquier modelo de PC, laptop, smartphone, tablet u otros dispositivos que puedan reproducir con wifi el sitio y su contenido.<br />\r\n<br />\r\nEstos t&eacute;rminos y condiciones rigen el uso de nuestro servicio. Tal como se utilizan en este documento, las expresiones &quot;servicio MTA PRO&quot;, &quot;nuestro servicio&quot; o &quot;el servicio&quot; se refieren al servicio personalizado proporcionado por MTA PRO que le permite buscar y ver su contenido , incluidas todas las funciones, recomendaciones, el Sitio y las interfaces de usuario, as&iacute; como todo el Contenido de MTA PRO y el software asociado con nuestro servicio.<br />\r\n<br />\r\nMTA PRO invita a los usuarios a leer detenidamente estos T &amp; C. La suscripci&oacute;n a cualquier membres&iacute;a en el Sitio implica la aceptaci&oacute;n del CGUV. Las caracter&iacute;sticas de cada suscripci&oacute;n se indican en la p&aacute;gina dedicada del Sitio.<br />\r\n<br />\r\nLas fotograf&iacute;as de los especialistas, mentores y profesores si son contractuales, los gr&aacute;ficos y el resto de las ilustraciones fueron adquiridos mediante una biblioteca digital con una licencia pagada para la adquisici&oacute;n de dicho material.<br />\r\n<br />\r\nEl Usuario reconoce haber le&iacute;do y aceptado los TyC al marcar la casilla provista para hacerlo antes de suscribirse a una suscripci&oacute;n en l&iacute;nea. Estos TyC se comunican sistem&aacute;ticamente al Usuario que los solicita.</p>', 1, '2021-04-21 10:41:45', '2021-04-21 10:41:45'),
(35, 4, '1.- Suscripción', '<p>1.1: Su suscripci&oacute;n MTA PRO le permite el acceso al servicio de educaci&oacute;n en l&iacute;nea (Contenido de MTA PRO) de forma continua hasta su terminaci&oacute;n o vencimiento, seg&uacute;n las condiciones del paquete de suscripci&oacute;n. Para utilizar el servicio MTA PRO, debe tener acceso a Internet y un dispositivo compatible con MTA PRO, y debe proporcionarnos uno o m&aacute;s M&eacute;todos de pago. Un &quot;M&eacute;todo de pago&quot; significa un m&eacute;todo de pago actual, v&aacute;lido y aceptado que puede actualizarse de vez en cuando y puede incluir el pago a trav&eacute;s de su cuenta con un tercero. A menos que cancele su suscripci&oacute;n antes de la fecha de facturaci&oacute;n, en donde nos reservamos el derecho de su ingreso a la academia a partir del d&iacute;a final de su per&iacute;odo de facturaci&oacute;n en curso.<br />\r\n<br />\r\n1.2: Podemos ofrecer diferentes paquetes de suscripci&oacute;n, incluidos paquetes promocionales especiales. Algunos de ellos pueden tener diferentes condiciones y restricciones, sobre las cuales se le informar&aacute; cuando se registre o en otras comunicaciones que se le pongan a su disposici&oacute;n. Puede encontrar los detalles espec&iacute;ficos de su suscripci&oacute;n a MTA PRO visitando nuestro sitio web: www.mytradingacademypro.com y haciendo clic en el enlace &ldquo;t&eacute;rminos y condiciones&rdquo; disponible en la parte inferior de la p&aacute;gina principal del sitio.<br />\r\n<br />\r\n1.3 : Precio. Cuando un usuario desea suscribirse a una suscripci&oacute;n al servicio MTA PRO, el precio de la suscripci&oacute;n correspondiente que aparece en este Sitio, el cual ser&aacute; especificado en D&oacute;lares (USD) sin impuestos y tiene en cuenta las reducciones aplicables vigentes el d&iacute;a de la suscripci&oacute;n. Las suscripciones se describen en la p&aacute;gina correspondiente dentro del Sitio.<br />\r\n<br />\r\n1.4 : Para suscribirse, el Usuario debe completar todos los campos obligatorios o en su defecto no se podr&aacute; completar la suscripci&oacute;n al paquete educativo que desee adquirir.<br />\r\n<br />\r\n1.5 : Usted garantiza y declara por su honor que toda la informaci&oacute;n comunicada en el Sitio, en particular durante su suscripci&oacute;n, es exacta y conforme. Usted acepta actualizar su informaci&oacute;n personal desde la p&aacute;gina dedicada a este &uacute;ltimo y disponible en la pesta&ntilde;a &quot;Mi perfil&quot; del Sitio.</p>', 1, '2021-04-21 10:42:09', '2021-04-21 10:42:09'),
(36, 4, '2.- Facturación y Rescisión', '<p>2.1 : Ciclo de facturaci&oacute;n<br />\r\nLas tarifas de suscripci&oacute;n al servicio MTA PRO se facturar&aacute;n a trav&eacute;s de su M&eacute;todo de pago en la fecha de facturaci&oacute;n espec&iacute;fica y el impuesto indicado en su p&aacute;gina &quot;Mi perfil&quot;. La duraci&oacute;n de su ciclo de facturaci&oacute;n depender&aacute; del tipo de suscripci&oacute;n que elija cuando se inscriba en el servicio. En algunos casos, su fecha de facturaci&oacute;n puede cambiar, por ejemplo, si su m&eacute;todo de pago no funcion&oacute; o si su suscripci&oacute;n paga comenz&oacute; en un d&iacute;a que no figura en un mes determinado. Acceda a nuestro sitio web y a la p&aacute;gina &quot;Mi perfil&quot; para conocer la fecha de su pr&oacute;xima factura.<br />\r\n<br />\r\n2.2 : Medios de pago<br />\r\nPara utilizar el servicio MTA PRO, debe proporcionarnos uno o m&aacute;s m&eacute;todos de pago. Usted nos autoriza a debitar su cuenta a trav&eacute;s de cualquier M&eacute;todo de pago asociado con su cuenta en caso de que su M&eacute;todo de pago principal sea rechazado o ya no est&eacute; disponible para el pago de sus tarifas de suscripci&oacute;n. Usted es responsable de cualquier monto no retirado. Si un pago no se liquida debido al vencimiento de la tarjeta, saldo insuficiente o cualquier otro motivo, y no cancela su cuenta, podemos suspender su acceso a nuestro servicio hasta que ha registrado correctamente su cuenta a trav&eacute;s de un m&eacute;todo de pago v&aacute;lido. Para ciertos m&eacute;todos de pago, el proveedor de servicios puede cobrarle ciertos costos, como tarifas por transacciones internacionales u otras tarifas relacionadas con el procesamiento de su M&eacute;todo de pago. Los cargos por impuestos locales pueden variar seg&uacute;n el m&eacute;todo de pago utilizado. Comun&iacute;quese con el proveedor de su m&eacute;todo de pago para obtener m&aacute;s informaci&oacute;n.<br />\r\n<br />\r\n2.3 : Actualizaci&oacute;n de sus m&eacute;todos de pago<br />\r\nPuede actualizar sus m&eacute;todos de ingresando a la secci&oacute;n dentro de la p&aacute;gina de &quot;Back Office&quot;. Tambi&eacute;n podemos actualizar sus m&eacute;todos de pago con la informaci&oacute;n proporcionada por los proveedores de servicios de pago. Despu&eacute;s de cualquier actualizaci&oacute;n, nos autoriza a continuar debitando su cuenta a trav&eacute;s de los m&eacute;todos de pago correspondientes.<br />\r\n<br />\r\n2.4 : Cancelaci&oacute;n<br />\r\nPuede cancelar su suscripci&oacute;n a My Trading Academy PRO en cualquier momento y seguir&aacute; teniendo acceso al servicio hasta el final de su per&iacute;odo de facturaci&oacute;n. Los pagos no son reembolsables y no otorgamos reembolsos ni cr&eacute;ditos por per&iacute;odos de uso parcial o por cualquier Contenido de MTA PRO no visto. Para cancelar su suscripci&oacute;n, vaya a la p&aacute;gina &quot;Mi perfil&quot;, haga clic en &quot;Cancelar mi suscripci&oacute;n&quot; y siga las instrucciones. Si cancela su suscripci&oacute;n, su cuenta se cerrar&aacute; autom&aacute;ticamente al final de su per&iacute;odo de facturaci&oacute;n actual. Para saber cu&aacute;ndo se cerrar&aacute; su cuenta, haga clic en la p&aacute;gina &quot;Mi perfil&quot;.<br />\r\n<br />\r\n2.5 : Cambios de precio y suscripci&oacute;n<br />\r\nEs posible que cambiemos nuestras suscripciones y el precio de nuestro servicio de vez en cuando. Sin embargo, cualquier cambio en los precios o sus suscripciones solo ser&aacute; aplicable despu&eacute;s de un per&iacute;odo m&iacute;nimo de 30 d&iacute;as despu&eacute;s de recibir una notificaci&oacute;n nuestra.</p>', 1, '2021-04-21 10:43:01', '2021-04-21 10:43:01'),
(37, 4, '3.- Servicio MTA PRO', '<p>3.1 : Debes tener 18 a&ntilde;os o haber alcanzado la mayor&iacute;a de edad legal en tu provincia, territorio o pa&iacute;s para suscribirte al servicio MTA PRO. Los menores pueden utilizar el servicio solo bajo la supervisi&oacute;n de un adulto.<br />\r\n<br />\r\n3.2 : El servicio MTA PRO, as&iacute; como cualquier contenido visualizado a trav&eacute;s del servicio, est&aacute; reservado solo para uso personal y no comercial y no debe compartirse con terceros. Durante el plazo de su suscripci&oacute;n, le otorgamos un derecho limitado, no exclusivo e intransferible para acceder al servicio MTA PRO y ver el Contenido MTA PRO. Salvo lo anterior, no se le otorga ning&uacute;n derecho, t&iacute;tulo o inter&eacute;s. Acepta no utilizar el servicio para proyecciones p&uacute;blicas.<br />\r\n<br />\r\n3.3 : Solo podr&aacute; ver Contenido de MTA PRO en los pa&iacute;ses donde ofrecemos nuestro servicio. El contenido disponible puede variar seg&uacute;n la regi&oacute;n y se puede cambiar en cualquier momento.<br />\r\n<br />\r\n3.4 : El servicio MTA PRO, incluido el contenido de la biblioteca, se actualiza peri&oacute;dicamente. Asimismo, probamos peri&oacute;dicamente varios aspectos de nuestro servicio, incluido nuestro sitio web, las interfaces de usuario, las ofertas promocionales y la disponibilidad de Contenido MTA PRO.<br />\r\n<br />\r\n3.5: Usted acepta no archivar, reproducir, distribuir, modificar, mostrar, ejecutar, publicar, otorgar, crear trabajos derivados, vender o usar (excepto con la autorizaci&oacute;n expresa mencionada en estos TyC) el contenido y la informaci&oacute;n del servicio MTA PRO ( u obtenido a trav&eacute;s de &eacute;l). Tambi&eacute;n acepta no: eludir, eliminar, modificar, desactivar, destruir o anular las protecciones del contenido dentro del marco del servicio MTA PRO; utilizar bots, rastreadores web, herramientas de recolecci&oacute;n web u otros m&eacute;todos automatizados para acceder al servicio MTA PRO; descompilar, realizar ingenier&iacute;a inversa o desensamblar cualquier software, producto o proceso accesible a trav&eacute;s del servicio MTA PRO; insertar cualquier c&oacute;digo o producto, o manipular el contenido del servicio MTA PRO de cualquier forma; o utilizar cualquier m&eacute;todo de extracci&oacute;n, recopilaci&oacute;n o extracci&oacute;n de datos. As&iacute; mismo, acepta no descargar, mostrar, enviar por correo electr&oacute;nico o enviar o transmitir de ninguna manera ning&uacute;n contenido con el fin de interrumpir, destruir o restringir la funcionalidad de cualquier software o equipo inform&aacute;tico o telecomunicaciones asociadas con el servicio MTA PRO, incluido cualquier virus o cualquier otro c&oacute;digo, archivo o programa inform&aacute;tico. Nos reservamos el derecho de terminar o restringir su uso de nuestro servicio si viola estos TyC o hace un uso ilegal o ileg&iacute;timo del servicio, enviar por correo electr&oacute;nico o enviar o transmitir de cualquier manera cualquier contenido con el fin de interrumpir, destruir o restringir la funcionalidad de cualquier software o computadora o equipo de telecomunicaciones asociado con el servicio MTA PRO, incluido cualquier virus o cualquier otro c&oacute;digo, archivo o programa inform&aacute;tico. Nos reservamos el derecho de terminar o restringir su uso de nuestro servicio si viola estos TyC o hace un uso ilegal o ileg&iacute;timo del servicio. enviar por correo electr&oacute;nico o enviar o transmitir de cualquier manera cualquier contenido con el fin de interrumpir, destruir o restringir la funcionalidad de cualquier software o computadora o equipo de telecomunicaciones asociado con el servicio MTA PRO, incluido cualquier virus o cualquier otro c&oacute;digo, archivo o programa inform&aacute;tico. Nos reservamos el derecho de terminar o restringir su uso de nuestro servicio si viola estos TyC o hace un uso ilegal o ileg&iacute;timo del servicio.<br />\r\n<br />\r\n3.6 : La calidad de visualizaci&oacute;n del Contenido MTA PRO puede variar de un dispositivo a otro y puede verse influenciada por varios factores, incluida su ubicaci&oacute;n, ancho de banda disponible y / o la velocidad de su conexi&oacute;n a Internet. Los costos de conexi&oacute;n a Internet son su responsabilidad. Comun&iacute;quese con su proveedor de servicios de Internet para obtener detalles sobre posibles cargos por uso de datos de Internet.</p>', 1, '2021-04-21 10:43:23', '2021-04-21 10:43:23'),
(38, 4, '4.- Contraseñas y acceso a la cuenta', '<p>4.1: El Usuario que ha creado la cuenta MTA PRO y se le facturan las tarifas de suscripci&oacute;n a trav&eacute;s del M&eacute;todo de pago elegido (el &quot;Titular de la cuenta&quot;) tiene acceso a la cuenta My Trading Academy PRO y tiene control sobre ella y los dispositivos compatibles con My Trading Academy PRO utilizados para acceder a nuestro servicio. Este Usuario es responsable de toda la actividad que ocurra a trav&eacute;s de su cuenta My Trading Academy PRO. Con el fin de mantener el control de la cuenta y evitar que alguien acceda a ella (y, en particular, acceder a la informaci&oacute;n del historial de lectura de la cuenta)<br />\r\n<br />\r\n4.2 : Usted es personalmente responsable de actualizar y mantener informaci&oacute;n precisa relacionada con su cuenta. Podemos cancelar o suspender su cuenta para protegerlo, as&iacute; como para proteger a My Trading Academy PRO o a sus socios, contra cualquier robo de identidad u otra actividad fraudulenta. El borrado de la cuenta conlleva la p&eacute;rdida definitiva de todas las ventajas y servicios adquiridos en el Sitio.<br />\r\n<br />\r\n4.3 : En el caso de que MTA PRO elimine una cuenta por incumplimiento de los deberes y obligaciones establecidos en estos TyC, el titular de la cuenta infractor tiene formalmente prohibido volver a registrarse en el Sitio directamente, a trav&eacute;s de otra direcci&oacute;n de correo electr&oacute;nico o por intermediario sin la autorizaci&oacute;n expresa de My Trading Academy PRO.<br />\r\n<br />\r\n4.4 : Si un Titular sospecha de fraude en alg&uacute;n momento, deber&aacute; ponerse en contacto con My Trading Academy PRO lo antes posible, para que MTA PRO pueda tomar las medidas necesarias y regularizar la situaci&oacute;n.</p>', 1, '2021-04-21 10:45:13', '2021-04-21 10:45:13'),
(39, 4, '5.- Tratamiento de datos personales', '<p>5.1 : My Trading Academy PRO , es responsable del procesamiento, puede recopilar y procesar datos personales relativos a los Usuarios que deseen acceder al Sitio, en particular a trav&eacute;s del formulario de registro, las cookies o cualquier otro formulario que pueda ser ofrecidos a trav&eacute;s del Sitio. Si el Usuario rechaza el procesamiento de sus datos, se recomienda que se abstenga de utilizar el Sitio.<br />\r\n<br />\r\n5.2 : Los datos recabados son imprescindibles para la tramitaci&oacute;n de sus solicitudes y su fichero dentro de My Trading Academy PRO y se conservar&aacute;n por periodos de tiempo proporcionales a los fines para los que fueron recabados y en cumplimiento de las obligaciones que incumben al responsable de tratos. Est&aacute;n destinados principalmente a los departamentos relevantes de My Trading Academy PRO.<br />\r\n<br />\r\n5.3 : Dentro de los l&iacute;mites establecidos por nuestras pol&iacute;ticas, t&eacute;rminos y condiciones los Usuarios tienen, en lo particular, el derecho de acceso a sus datos personales, los derechos de modificar, rectificar, limitar, oponerse al tratamiento de estos o el derecho a solicitar su cesi&oacute;n y supresi&oacute;n siempre que pueda estar justificado por un motivo leg&iacute;timo. Las solicitudes deben dirigirse al gerente a soporte@mytradingacademypro.com - El titular de los datos tambi&eacute;n tiene la posibilidad de emprender una queja por cualquier controversia. Si tenemos alguna duda sobre su identidad, es posible que se le solicite una copia de un documento oficial de su identidad.<br />\r\n<br />\r\n5.4 : El responsable del tratamiento se compromete a implementar la protecci&oacute;n f&iacute;sica y l&oacute;gica de los datos personales de acuerdo con los requisitos de nuestro Reglamento.<br />\r\n<br />\r\n5.5 : My Trading Academy PRO podr&aacute; recurrir a terceras empresas para realizar determinadas operaciones. Al navegar por el Sitio, el Usuario acepta que terceras empresas puedan tener acceso a sus datos para permitir el correcto funcionamiento del Sitio. Estas empresas de terceros solo tienen acceso a los datos recopilados en el contexto de la realizaci&oacute;n de una tarea espec&iacute;fica. My Trading Academy PRO sigue siendo responsable del procesamiento de estos datos. Adem&aacute;s, es posible que el Usuario deba recibir informaci&oacute;n u ofertas comerciales de My Trading Academy PRO y/o sus socios. El Usuario podr&aacute; en cualquier momento oponerse a la recepci&oacute;n de estas ofertas comerciales, dirigi&eacute;ndose a la siguiente direcci&oacute;n de correo electr&oacute;nico: soporte@mytradingacademypro.com<br />\r\n<br />\r\n5.6 : La informaci&oacute;n de los usuarios podr&aacute; ser transmitida a terceros sin su consentimiento previo expreso con el fin de lograr los siguientes objetivos:<br />\r\n1. Respetar la ley,<br />\r\n2. Proteger a cualquier persona contra da&ntilde;os graves,<br />\r\n3. Luchar contra el fraude o infracciones de My Trading Academy PRO y sus usuarios,<br />\r\n4. Proteger los derechos de propiedad de My Trading Academy PRO .</p>', 1, '2021-04-21 10:45:37', '2021-04-21 10:45:37'),
(40, 4, '6.- Cookies', '<p>6.1 : Para permitir que sus Usuarios se beneficien de una navegaci&oacute;n &oacute;ptima en el Sitio y un mejor funcionamiento de las diferentes interfaces y aplicaciones, My Trading Academy PRO puede colocar una cookie en la computadora del Usuario. Esta cookie se utiliza para almacenar informaci&oacute;n relacionada con la navegaci&oacute;n en el Sitio, as&iacute; como cualquier dato ingresado por los Usuarios (en particular b&uacute;squedas, inicio de sesi&oacute;n, correo electr&oacute;nico, contrase&ntilde;a).<br />\r\n<br />\r\n6.2 : El Usuario autoriza expresamente a My Trading Academy PRO a colocar un archivo denominado &quot;cookie&quot; en el disco duro del usuario.<br />\r\n<br />\r\n6.3 : El Usuario tiene la opci&oacute;n de bloquear, modificar el per&iacute;odo de retenci&oacute;n o eliminar esta cookie a trav&eacute;s de la interfaz de su navegador. Si la desactivaci&oacute;n sistem&aacute;tica de las cookies en el navegador del Usuario le impide utilizar determinados servicios o caracter&iacute;sticas del Sitio, este mal funcionamiento no puede en modo alguno constituir un perjuicio para el Usuario, que no puede reclamar ninguna indemnizaci&oacute;n por este hecho.</p>', 1, '2021-04-21 10:45:49', '2021-04-21 10:45:49'),
(41, 4, '7.- Responsabilidad', '<p>7.1 : My Trading Academy PRO no se hace responsable en modo alguno de la indisponibilidad, ya sea temporal o permanente del Sitio y aunque My Trading Academy PRO implementa todos sus medios para garantizar el servicio en todo momento, es posible que se interrumpe en cualquier momento. Adem&aacute;s, My Trading Academy PRO se reserva el derecho, mediante acto voluntario, de hacer que el Sitio no est&eacute; disponible para llevar a cabo cualquier operaci&oacute;n de actualizaci&oacute;n, mejora o mantenimiento. En la medida de lo posible, My Trading Academy PRO se esforzar&aacute; por notificar a los Usuarios de esto a trav&eacute;s del Sitio.<br />\r\n<br />\r\n7.2 : Como se mencion&oacute; anteriormente en este documento, My Trading Academy PRO de ninguna manera se hace responsable de cualquier falla en la operaci&oacute;n de los servicios por razones fuera de su control, imprevisibles e irresistibles o cuya culpa no pueda ser atribuible a ello.</p>', 1, '2021-04-21 10:46:01', '2021-04-21 10:46:01'),
(42, 4, '8.- Derecho de desistimiento del usuario', '8.1 : La provisión intangible, digital, directa e inmediata de Contenido MTA PRO al Usuario constituye una excepción al Consumidor y solo se dará por situaciones en donde se comprometa el contenido a actividades no legales o no permitidas y estipuladas en este documento. En consecuencia, al aceptar estos TyC y desear tener acceso al Contenido de MTA PRO, el Usuario renuncia expresamente a su derecho de desistimiento.', 1, '2021-04-21 10:46:13', '2021-04-21 10:46:13'),
(43, 4, '9.- Propiedad intelectual', '<p>9.1 : La marca, logo, tecnolog&iacute;as, carta gr&aacute;fica, datos, textos, comentarios, ilustraciones, im&aacute;genes, animadas o no, secuencias de video, sonidos, patentes, datos privados, tecnolog&iacute;as, productos, publicaciones, proceso de este Sitio son propiedad exclusiva de My Trading Academy PRO y de terceros que le hayan otorgado una licencia y obras intelectuales protegidas por derechos de autor. Cualquier distribuci&oacute;n, explotaci&oacute;n, representaci&oacute;n, reproducci&oacute;n, ya sea parcial o total, sin la previa y expresa autorizaci&oacute;n de My Trading Academy PRO est&aacute; estrictamente prohibida y expondr&aacute; al infractor a procesos civiles y penales.</p>', 1, '2021-04-21 10:46:46', '2021-04-21 10:46:46'),
(44, 4, '10.- Varios', '<p>10.1 : Leyes aplicables. Estas CGUV se rigen e interpretan de acuerdo con la ley mexicana, pa&iacute;s en donde se llev&oacute; a cabo el desarrollo intelectual del proyecto y sus contenidos y/o en Colombia, pa&iacute;s en donde se llev&oacute; el desarrollo del software. Estos TyC no pueden limitar las disposiciones relativas a la protecci&oacute;n del consumidor de las que puede beneficiarse en virtud de la legislaci&oacute;n vigente en su pa&iacute;s de residencia. Cualquier disputa que pueda surgir entre My Trading Academy PRO y un Usuario durante la ejecuci&oacute;n de estas condiciones ser&aacute; objeto de un intento de resoluci&oacute;n amistosa. De lo contrario, las disputas se llevar&aacute;n a la atenci&oacute;n de los tribunales de derecho com&uacute;n competentes a los pa&iacute;ses antes mencionados.<br />\r\n<br />\r\n10.2 : Contenido no solicitado. My Trading Academy PRO no acepta ning&uacute;n contenido o ideas no solicitados relacionados con el Contenido de MTA PRO y no es responsable de las similitudes entre su contenido o programaci&oacute;n y el contenido o las ideas que se le transmiten.<br />\r\n<br />\r\n10.3 : Atenci&oacute;n al cliente. Para obtener m&aacute;s informaci&oacute;n sobre nuestro servicio y sus caracter&iacute;sticas o si necesita ayuda para usar su cuenta, comun&iacute;quese con nosotros a la siguiente direcci&oacute;n: soporte@mytradingacademypro.com , visite la secci&oacute;n de soporte dentro del home de My Trading Academy PRO disponible.<br />\r\n<br />\r\n10.4 : Nulidad - Invalidez. Si una o m&aacute;s disposiciones de estas CGUV resultan ser inv&aacute;lidas, ilegales o inaplicables, las disposiciones restantes seguir&aacute;n siendo plenamente aplicables y conservar&aacute;n sus efectos.<br />\r\n<br />\r\n10.5 : No renuncia. El hecho de que My Trading Academy PRO o el Usuario no ejerza, en ning&uacute;n momento, una prerrogativa reconocida por estos TyC en ning&uacute;n caso podr&aacute; interpretarse como una renuncia expresa o t&aacute;cita al derecho a ejercer dicha prerrogativa en el futuro.<br />\r\n<br />\r\n10.6 : Modificaci&oacute;n del sitio. My Trading Academy PRO se reserva el derecho de modificar el Sitio, as&iacute; como cualquier otro componente de los servicios MTA PRO proporcionados por My Trading Academy PRO a trav&eacute;s del Sitio.<br />\r\n<br />\r\n10.7 : Modificaci&oacute;n del CGUV. My Trading Academy PRO puede, de vez en cuando, modificar estos TyC. Le notificaremos al menos 30 d&iacute;as antes de que dichos cambios sean aplicables.<br />\r\n<br />\r\n10.8 : Comunicaciones electr&oacute;nicas. Le enviaremos informaci&oacute;n de la cuenta (por ejemplo, autorizaciones de pago, facturas, cambios de contrase&ntilde;a o m&eacute;todo de pago, mensajes de confirmaci&oacute;n, notificaciones) solo de forma electr&oacute;nica, por ejemplo, por correo electr&oacute;nico. &#39;enviando un correo electr&oacute;nico a la direcci&oacute;n que nos proporcion&oacute; al registrarse.<br />\r\n<br />\r\n<strong>IDIOMAS DISPONIBLES</strong></p>\r\n\r\n<ul>\r\n	<li>ALEM&Aacute;N</li>\r\n	<li>&Aacute;RABE</li>\r\n	<li>CHINO</li>\r\n	<li>ESPA&Ntilde;OL</li>\r\n	<li>FRANC&Eacute;S</li>\r\n	<li>HINDI</li>\r\n	<li>INGL&Eacute;S</li>\r\n	<li>ITALIANO</li>\r\n	<li>JAPON&Eacute;S</li>\r\n	<li>POSTUGU&Eacute;S</li>\r\n	<li>RUSO</li>\r\n	<li>VIETNAMITA</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>REDES SOCIALES</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>NUESTRA COMUNIDAD</strong><br />\r\n<a href=\"http://localhost:8000/shopping-cart/memberships\">&nbsp;&Uacute;nase a MTA PRO con un plan principiante</a><br />\r\n<a href=\"http://localhost:8000/afiliados\">&nbsp;Convi&eacute;rtete en entrenador</a><br />\r\n<br />\r\n<strong>SOPORTE Y ATENCI&Oacute;N AL CLIENTE</strong><br />\r\nNuestro servicio de atenci&oacute;n al cliente internacional est&aacute; disponible las 24 horas del d&iacute;a, los 365 d&iacute;as del a&ntilde;o, sin embargo y su solicitud ser&aacute; enlistada en un sistema de tickets calendarizados y atendidos en tiempo y forma por nuestros agentes de soporte, inform&aacute;ndole cualquier detalle de su solicitud via correo electr&oacute;nico.<br />\r\n<a href=\"http://localhost:8000/admin/soporte\">&nbsp;Ir a soporte</a><br />\r\n<br />\r\n&copy; Copyright 2020-2021, Todos los derechos reservados<br />\r\nMy Trading Academy PRO<br />\r\n<strong>MTA PRO</strong>&nbsp;es una marca impulsada por<br />\r\n<strong>FENTTIX CORP</strong></p>', 1, '2021-04-21 10:47:04', '2021-04-21 10:47:04'),
(45, 5, 'Introducción', '<p>El Afiliado de MTA PRO recibir&aacute;, una comisi&oacute;n abonada a su billetera interna de acuerdo con los siguientes criterios:<br />\r\n<br />\r\nSe acuerda expresamente que el afiliado a MTA PRO recibir&aacute; &uacute;nica y exclusivamente compensaciones de ventas efectivas.<br />\r\nEn general, el derecho de comisi&oacute;n solo ser&aacute; adquirido una vez al mes por el afiliado de MTA PRO a condici&oacute;n del total de las ventas efectivas referidas y confirmadas por su n&uacute;mero de afiliaci&oacute;n.<br />\r\nEl afiliado de MTA PRO podr&aacute; consultar los detalles de las transacciones y sus comisiones en el Backoffice en el marco de estos presentes puntos:</p>', 1, '2021-04-21 10:48:22', '2021-04-21 10:48:22'),
(46, 5, '1.- Comisión residual mensual', 'La comisión residual mensual consiste en el monto que recibe el afiliado de MTA PRO, por la venta de una suscripción concluida a través de uno de sus enlaces de patrocinio entre MTA PRO y un nuevo suscriptor. El registro de la comisión se generará en cada pago de la suscripción elegida por parte del nuevo firmante hasta su terminación. Por lo tanto, el afiliado de MTA PRO que refiere, seguirá recibiendo dicha comisión hasta que el afiliado referido deje de pagar su membresía.\r\n\r\nLa tasa de comisión del Afiliado de MTA PRO se establece en el 30% de la facturación mensual, solo de sus ventas efectivas, registradas bajo su número de afiliación y disponibles para su contabilidad en su backoffice.\r\n\r\nLos montos establecidos son sin incluir los impuestos generados por las mismas ventas y van de acuerdo con la siguiente tabla:\r\nTipo de Membresía	Costo Mensual con Link de Referido MTA PRO	Comisión mensual para el afiliado MTA PRO\r\nSuscripción mensual Membresía del FIND\r\n(con link de referencia MTA PRO)	$ 9.99 / mes	$ 2.99 / mes\r\nSuscripción mensual Membresía del BUY\r\n(con link de referencia MTA PRO)	$ 19.99 / mes	$ 5.99 / mes\r\nSuscripción mensual Membresía del WIN\r\n(con link de referencia MTA PRO)	$ 29.99 / mes	$ 8.99 / mes', 1, '2021-04-21 10:48:43', '2021-04-21 10:48:43'),
(47, 5, '2.- Comisión residual anual', 'La comisión residual anual consiste en el monto que recibe el afiliado de MTA PRO, por la venta de una Suscripción concluida a través de uno de sus enlaces de patrocinio entre MTA PRO y un nuevo suscriptor. La comisión se generará en cada pago de la Suscripción elegida por parte del nuevo suscriptor hasta su terminación. Por lo tanto, el Socio MTA PRO seguirá recibiendo la comisión hasta que el afiliado referido deje de pagar su membresía.\r\n\r\nLa tasa de comisión del Afiliado de MTA PRO se establece en el 30% de la facturación anual, solo de sus ventas efectivas, sin incluir los impuestos generados por las mismas, de acuerdo con la siguiente tabla:\r\nTipo de Membresía	Costo con Link de Referido MTA PRO	Comisión mensual para el afiliado MTA PRO\r\nSuscripción mensual Membresía del FIND\r\n(con link de referencia MTA PRO)	$ 100 por año	$ 30 por año\r\nSuscripción mensual Membresía del BUY\r\n(con link de referencia MTA PRO)	$ 220 por año	$ 66 por año\r\nSuscripción mensual Membresía del WIN\r\n(con link de referencia MTA PRO)	$ 340 por año	$ 102 por año', 1, '2021-04-21 10:49:04', '2021-04-21 10:49:04'),
(48, 5, '3.- Fechas de pago', 'Todas las comisiones son acumulativas y se especifica que por estándar de calidad y procesos administrativos internos, los pagos de comisiones por las ventas efectivas con links de referidos se generarán dentro de los 7 primeros días posteriores al mes consiguiente de sus registros, es decir:\r\nEjemplos	Tipo de Membresía Adquirida	Tipo de Suscripción	Costo de la Membresía	Registros realizados de compras efectivas y pagos de nuevos afiliados con link de referido MTA PRO	Monto de Comisión	Fecha de Pago de Comisiones\r\n1	FIND	MENSUAL	$ 9.99 USD	Del 1 al 30 de Enero	Pago mensual $ 2.99 USD	Entre el 5 y 7 de Febrero\r\n2	BUY	ANUAL	1 solo cobro anual $ 340 USD	Día: 12 de Agosto	1 solo pago anual $ 102 USD	Entre el 5 y 7 de Septiembre', 1, '2021-04-21 10:49:19', '2021-04-21 10:49:19'),
(49, 5, '4.- Límites de comisiones', 'Las comisiones de todos los afiliados de MTA PRO están delimitadas al 30% de la facturación total de sus ventas efectivas y confirmadas a través del link de referencia y configuración de numero de afiliación, excluidos los impuestos generados por MTA PRO durante el mes.\r\nPara el calculo de comisiones se tomará en consideración los siguientes criterios:\r\nEjemplo	Tipo de Membresía Adquirida	Tipo de Suscripción	Costo de la Membresía	Fecha de Compra	Monto de Comisión	Medio de Pago\r\n1	FIND	MENSUAL	$ 9.99 USD	15-01-2021	$ 2.99 USD	Tarjeta de Crédito\r\n2	WIN	ANUAL	$ 450 USD	15-01-2021	$ 135 USD	Bitcoin', 1, '2021-04-21 10:49:35', '2021-04-21 10:49:35'),
(50, 5, '5.- Reembolsos', 'Los reembolsos enumerados se generarán directamente en la billetera del afiliado MTA PRO en un plazo máximo de 15 días a partir de la solicitud realizada por este último, sujeto a la presentación de los documentos de respaldo pertinentes al análisis del caso.', 1, '2021-04-21 10:49:47', '2021-04-21 10:49:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `legal_tabs`
--

CREATE TABLE `legal_tabs` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 = Oculto. 1 = Visible',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `legal_tabs`
--

INSERT INTO `legal_tabs` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Código Ético', 1, '2021-04-16 10:37:37', '2021-04-16 12:30:43'),
(2, 'Contrato del Instructor', 1, '2021-04-16 10:40:43', '2021-04-16 12:07:30'),
(3, 'Contrato del Afiliado', 1, '2021-04-16 10:41:08', '2021-04-16 12:07:30'),
(4, 'Condiciones Generales de Uso y Venta', 1, '2021-04-16 10:41:39', '2021-04-16 12:07:30'),
(5, 'Programa de Afiliados', 1, '2021-04-16 10:42:11', '2021-04-16 12:07:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lessons`
--

CREATE TABLE `lessons` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `subcategory_id` int DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `english_title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text,
  `url` varchar(255) NOT NULL,
  `english_url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `subcategory_id`, `title`, `english_title`, `slug`, `description`, `url`, `english_url`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Lección 1', 'Lesson #1', 'leccion-1', 'Primera lección', 'https://player.vimeo.com/video/2991129', 'https://player.vimeo.com/video/2991129', '2021-01-26 16:26:34', '2021-01-26 16:26:34'),
(2, 1, 2, 'f45435435345', 'fgdfgfdgdfgd', 'f45435435345', 'dfgdfgd', 'https://player.vimeo.com/video/1234567', 'https://player.vimeo.com/video/1234567', '2021-01-28 15:05:00', '2021-01-28 15:05:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lessons_users`
--

CREATE TABLE `lessons_users` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `lesson_id` int UNSIGNED NOT NULL,
  `course_id` int UNSIGNED NOT NULL,
  `status` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lessons_users`
--

INSERT INTO `lessons_users` (`id`, `user_id`, `lesson_id`, `course_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2021-01-28 16:16:42', '2021-02-23 14:49:54'),
(2, 10125, 1, 1, 1, '2021-02-03 08:40:32', '2021-02-11 12:29:30'),
(3, 1, 2, 1, 1, '2021-02-23 14:50:15', '2021-03-06 02:34:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linkpagos`
--

CREATE TABLE `linkpagos` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `archivo` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `memberships`
--

CREATE TABLE `memberships` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `price_annual` double NOT NULL DEFAULT '0',
  `descuento` double NOT NULL DEFAULT '0',
  `discount_annual` double NOT NULL DEFAULT '0',
  `ganancia` double NOT NULL DEFAULT '0',
  `streamings` int DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT 'monthly',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `memberships`
--

INSERT INTO `memberships` (`id`, `name`, `image`, `price`, `price_annual`, `descuento`, `discount_annual`, `ganancia`, `streamings`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Find', 'default.jpg', 25, 200, 9.99, 100, 30, 1, 'monthly', '2020-09-29 18:39:11', '2020-09-29 18:39:11'),
(2, 'Buy', 'default.jpg', 50, 250, 19.99, 220, 30, 2, 'monthly', '2020-09-29 18:39:11', '2020-09-29 18:39:11'),
(3, 'Win', 'default.jpg', 100, 400, 29.99, 340, 30, 3, 'monthly', '2020-09-29 18:40:16', '2020-09-29 18:40:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int NOT NULL,
  `inicio` text,
  `actualizar` text,
  `registro` text,
  `registro_cliente` text,
  `red_usuario` text,
  `transacciones` text,
  `billetera` text,
  `calendario` text,
  `informes` text,
  `prospeccion` text,
  `correos` text,
  `tickets` text,
  `ranking` text,
  `tienda` text,
  `herramientas` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `inicio`, `actualizar`, `registro`, `registro_cliente`, `red_usuario`, `transacciones`, `billetera`, `calendario`, `informes`, `prospeccion`, `correos`, `tickets`, `ranking`, `tienda`, `herramientas`, `created_at`, `updated_at`) VALUES
(1, '{\"activo\":1}', '{\"activo\":1}', '{\"activo\":1}', '{\"activo\":1}', '{\"activo\":1,\"usuario\":1,\"cliente\":1,\"directos\":1,\"red\":1}', '{\"activo\":1,\"personales\":1,\"red\":1,\"directos\":0,\"link\":1}', '{\"activo\":1,\"billetera\":1,\"transferencia\":1,\"corte\":1,\"canje\":1}', '{\"activo\":1}', '{\"activo\":1,\"activacion\":1,\"comisiones\":1,\"liquidacion\":1,\"repor_comisiones\":1,\"afiliados\":1}', '{\"activo\":1}', '{\"activo\":1}', '{\"activo\":1,\"mios\":1,\"generar\":1}', '{\"activo\":1}', '{\"activo\":1,\"productos\":1,\"bancaria\":1,\"pagos\":1,\"lista_pagos\":1,\"paypal\":1,\"paga_paypal\":1}', '{\"activo\":1,\"documentos\":1,\"articulos\":1,\"notas\":1,\"activacion_correos\":1}', NULL, '0000-00-00 00:00:00'),
(2, '{\"activo\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\",\"usuario\":\"1\",\"cliente\":\"1\",\"directos\":\"1\",\"red\":\"1\"}', '{\"activo\":\"1\",\"personales\":\"1\",\"red\":\"1\",\"link\":\"1\"}', '{\"activo\":\"1\",\"billetera\":\"1\",\"transferencia\":\"1\",\"corte\":\"1\",\"canje\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\",\"activacion\":\"1\",\"comisiones\":\"1\",\"liquidacion\":\"1\",\"repor_comisiones\":\"1\",\"afiliados\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\",\"generar\":\"1\",\"mios\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\",\"productos\":\"1\",\"bancaria\":\"1\",\"pagos\":\"1\",\"lista_pagos\":\"1\",\"paypal\":\"1\",\"paga_paypal\":\"1\"}', '{\"activo\":\"1\",\"documentos\":\"1\",\"articulos\":\"1\",\"notas\":\"1\",\"activacion_correos\":\"1\"}', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulocomplementario`
--

CREATE TABLE `modulocomplementario` (
  `id` int NOT NULL,
  `contenido` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monedadicional`
--

CREATE TABLE `monedadicional` (
  `id` int NOT NULL,
  `configuracion` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monedas`
--

CREATE TABLE `monedas` (
  `id` int NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `simbolo` varchar(200) NOT NULL,
  `mostrar_a_d` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 o false - despue del monto, 1 o true - antes del monto',
  `principal` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `monedas`
--

INSERT INTO `monedas` (`id`, `nombre`, `simbolo`, `mostrar_a_d`, `principal`, `updated_at`) VALUES
(1, 'Dolar', '$', 0, 1, '2020-03-26 20:49:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `titulo` longtext NOT NULL,
  `contenido` longtext NOT NULL,
  `inicio` date NOT NULL,
  `fin` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notes`
--

CREATE TABLE `notes` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `streaming_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion_tickets`
--

CREATE TABLE `notificacion_tickets` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `user` varchar(250) NOT NULL,
  `ticket` varchar(250) NOT NULL,
  `contenido` varchar(250) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `notification_type` varchar(5) DEFAULT NULL,
  `date` date NOT NULL,
  `route` varchar(200) NOT NULL,
  `description` varchar(255) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `calendario` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offers_live`
--

CREATE TABLE `offers_live` (
  `id` int NOT NULL,
  `event_id` int DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `url_resource` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offers_users`
--

CREATE TABLE `offers_users` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `offer_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones_select`
--

CREATE TABLE `opciones_select` (
  `id` int NOT NULL,
  `idselect` int NOT NULL,
  `valor` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `opciones_select`
--

INSERT INTO `opciones_select` (`id`, `idselect`, `valor`, `updated_at`) VALUES
(1, 3, 'M', '2019-01-08 02:13:50'),
(2, 3, 'F', '2019-01-08 02:13:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `optioncarritos`
--

CREATE TABLE `optioncarritos` (
  `id` int NOT NULL,
  `nombre` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `medio_pago` int NOT NULL COMMENT '0- otros metodos de pago 1- billetera',
  `activo` int DEFAULT NULL,
  `link` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagocarritos`
--

CREATE TABLE `pagocarritos` (
  `id` int NOT NULL,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iduser` int DEFAULT NULL,
  `idcompra` int NOT NULL,
  `metodo` int NOT NULL,
  `nombre` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int NOT NULL,
  `iduser` bigint NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `monto` float NOT NULL,
  `fechasoli` date NOT NULL,
  `fechapago` date DEFAULT NULL,
  `metodo` varchar(200) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tipopago` text,
  `descuento` float DEFAULT NULL,
  `monedaAdicional` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` int NOT NULL,
  `nombre` text NOT NULL,
  `idface` int NOT NULL,
  `abbreviation` varchar(5) DEFAULT NULL,
  `event` tinyint(1) NOT NULL COMMENT 'Si está disponible o no para la configuración horaria de los eventos',
  `operation` varchar(10) NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `nombre`, `idface`, `abbreviation`, `event`, `operation`, `quantity`, `updated_at`) VALUES
(1, 'United States', 1, 'EU', 1, 'subtract', 6, '0000-00-00 00:00:00'),
(2, 'Canada', 2, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(3, 'Afghanistan', 3, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(4, 'Albania', 4, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(5, 'Algeria', 5, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(6, 'American Samoa', 6, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(7, 'Andorra', 7, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(8, 'Angola', 8, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(9, 'Anguilla', 9, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(10, 'Antartica', 10, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(11, 'Antigua and/or Barbuda', 11, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(12, 'Argentina', 12, 'AR', 1, 'subtract', 3, '0000-00-00 00:00:00'),
(13, 'Armenia', 13, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(14, 'Aruba', 14, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(15, 'Australia', 15, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(16, 'Austria', 16, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(17, 'Azerbaijan', 17, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(18, 'Bahamas', 18, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(19, 'Bahrain', 19, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(20, 'Bangladesh', 20, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(21, 'Barbados', 21, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(22, 'Belarus', 22, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(23, 'Belgium', 23, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(24, 'Belize', 24, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(25, 'Benin', 25, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(26, 'Bermuda', 26, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(27, 'Bhutan', 27, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(28, 'Bolivia', 28, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(29, 'Bosnia and Herzegovina', 29, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(30, 'Botswana', 30, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(31, 'Bouvet Island', 31, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(32, 'Brazil', 32, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(34, 'Brunei Darussalam', 34, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(35, 'Bulgaria', 35, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(36, 'Burkina Faso', 36, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(37, 'Burundi', 37, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(38, 'Cambodia', 38, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(39, 'Cameroon', 39, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(40, 'Cape Verde', 40, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(41, 'Cayman Islands', 41, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(42, 'Central African Republic', 42, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(43, 'Chad', 43, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(44, 'Chile', 44, 'CH', 1, 'subtract', 3, '0000-00-00 00:00:00'),
(45, 'China', 45, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(46, 'Christmas Island', 46, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(47, 'Cocos (Keeling) Islands', 47, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(48, 'Colombia', 48, 'CO', 1, 'subtract', 5, '0000-00-00 00:00:00'),
(49, 'Comoros', 49, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(50, 'Congo', 50, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(51, 'Cook Islands', 51, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(52, 'Costa Rica', 52, 'CR', 1, 'subtract', 6, '0000-00-00 00:00:00'),
(53, 'Croatia (Hrvatska)', 53, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(54, 'Cuba', 54, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(55, 'Cyprus', 55, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(56, 'Czech Republic', 56, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(57, 'Denmark', 57, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(58, 'Djibouti', 58, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(59, 'Dominica', 59, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(60, 'Dominican Republic', 60, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(61, 'East Timor', 61, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(62, 'Ecuador', 62, 'EC', 1, 'subtract', 5, '0000-00-00 00:00:00'),
(63, 'Egypt', 63, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(64, 'El Salvador', 64, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(65, 'Equatorial Guinea', 65, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(66, 'Eritrea', 66, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(67, 'Estonia', 67, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(68, 'Ethiopia', 68, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(69, 'Falkland Islands (Malvinas)', 69, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(70, 'Faroe Islands', 70, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(71, 'Fiji', 71, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(72, 'Finland', 72, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(73, 'France', 73, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(74, 'France, Metropolitan', 74, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(75, 'French Guiana', 75, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(76, 'French Polynesia', 76, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(77, 'French Southern Territories', 77, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(78, 'Gabon', 78, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(79, 'Gambia', 79, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(80, 'Georgia', 80, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(81, 'Germany', 81, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(82, 'Ghana', 82, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(83, 'Gibraltar', 83, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(84, 'Greece', 84, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(85, 'Greenland', 85, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(86, 'Grenada', 86, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(87, 'Guadeloupe', 87, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(88, 'Guam', 88, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(89, 'Guatemala', 89, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(90, 'Guinea', 90, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(91, 'Guinea-Bissau', 91, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(92, 'Guyana', 92, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(93, 'Haiti', 93, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(94, 'Heard and Mc Donald Islands', 94, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(95, 'Honduras', 95, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(96, 'Hong Kong', 96, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(97, 'Hungary', 97, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(98, 'Iceland', 98, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(99, 'India', 99, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(100, 'Indonesia', 100, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(101, 'Iran (Islamic Republic of)', 101, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(102, 'Iraq', 102, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(103, 'Ireland', 103, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(104, 'Israel', 104, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(105, 'Italy', 105, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(106, 'Ivory Coast', 106, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(107, 'Jamaica', 107, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(108, 'Japan', 108, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(109, 'Jordan', 109, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(110, 'Kazakhstan', 110, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(111, 'Kenya', 111, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(112, 'Kiribati', 112, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(113, 'Korea, Democratic People\'s Republic of', 113, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(114, 'Korea, Republic of', 114, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(115, 'Kosovo', 115, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(116, 'Kuwait', 116, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(117, 'Kyrgyzstan', 117, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(118, 'Lao People\'s Democratic Republic', 118, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(119, 'Latvia', 119, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(120, 'Lebanon', 120, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(121, 'Lesotho', 121, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(122, 'Liberia', 122, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(123, 'Libyan Arab Jamahiriya', 123, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(124, 'Liechtenstein', 124, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(125, 'Lithuania', 125, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(126, 'Luxembourg', 126, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(127, 'Macau', 127, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(128, 'Macedonia', 128, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(129, 'Madagascar', 129, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(130, 'Malawi', 130, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(131, 'Malaysia', 131, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(132, 'Maldives', 132, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(133, 'Mali', 133, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(134, 'Malta', 134, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(135, 'Marshall Islands', 135, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(136, 'Martinique', 136, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(137, 'Mauritania', 137, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(138, 'Mauritius', 138, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(139, 'Mayotte', 139, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(140, 'México', 140, 'MEX', 1, 'subtract', 3, '0000-00-00 00:00:00'),
(141, 'Micronesia, Federated States of', 141, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(142, 'Moldova, Republic of', 142, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(143, 'Monaco', 143, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(144, 'Mongolia', 144, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(145, 'Montenegro', 145, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(146, 'Montserrat', 146, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(147, 'Morocco', 147, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(148, 'Mozambique', 148, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(149, 'Myanmar', 149, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(150, 'Namibia', 150, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(151, 'Nauru', 151, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(152, 'Nepal', 152, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(153, 'Netherlands', 153, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(154, 'Netherlands Antilles', 154, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(155, 'New Caledonia', 155, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(156, 'New Zealand', 156, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(157, 'Nicaragua', 157, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(158, 'Niger', 158, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(159, 'Nigeria', 159, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(160, 'Niue', 160, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(161, 'Norfork Island', 161, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(162, 'Northern Mariana Islands', 162, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(163, 'Norway', 163, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(164, 'Oman', 164, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(165, 'Pakistan', 165, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(166, 'Palau', 166, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(167, 'Panama', 167, 'PA', 1, 'subtract', 5, '0000-00-00 00:00:00'),
(168, 'Papua New Guinea', 168, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(169, 'Paraguay', 169, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(170, 'Peru', 170, 'PE', 1, 'subtract', 5, '0000-00-00 00:00:00'),
(171, 'Philippines', 171, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(172, 'Pitcairn', 172, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(173, 'Poland', 173, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(174, 'Portugal', 174, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(175, 'Puerto Rico', 175, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(176, 'Qatar', 176, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(177, 'Reunion', 177, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(178, 'Romania', 178, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(179, 'Russian Federation', 179, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(180, 'Rwanda', 180, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(181, 'Saint Kitts and Nevis', 181, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(182, 'Saint Lucia', 182, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(183, 'Saint Vincent and the Grenadines', 183, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(184, 'Samoa', 184, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(185, 'San Marino', 185, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(186, 'Sao Tome and Principe', 186, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(187, 'Saudi Arabia', 187, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(188, 'Senegal', 188, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(189, 'Serbia', 189, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(190, 'Seychelles', 190, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(191, 'Sierra Leone', 191, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(192, 'Singapore', 192, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(193, 'Slovakia', 193, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(194, 'Slovenia', 194, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(195, 'Solomon Islands', 195, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(196, 'Somalia', 196, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(197, 'South Africa', 197, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(198, 'South Georgia South Sandwich Islands', 198, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(199, 'Spain', 199, 'ES', 1, 'add', 2, '0000-00-00 00:00:00'),
(200, 'Sri Lanka', 200, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(201, 'St. Helena', 201, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(202, 'St. Pierre and Miquelon', 202, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(203, 'Sudan', 203, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(204, 'Suriname', 204, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(205, 'Svalbarn and Jan Mayen Islands', 205, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(206, 'Swaziland', 206, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(207, 'Sweden', 207, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(208, 'Switzerland', 208, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(209, 'Syrian Arab Republic', 209, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(210, 'Taiwan', 210, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(211, 'Tajikistan', 211, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(212, 'Tanzania, United Republic of', 212, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(213, 'Thailand', 213, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(214, 'Togo', 214, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(215, 'Tokelau', 215, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(216, 'Tonga', 216, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(217, 'Trinidad and Tobago', 217, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(218, 'Tunisia', 218, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(219, 'Turkey', 219, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(220, 'Turkmenistan', 220, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(221, 'Turks and Caicos Islands', 221, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(222, 'Tuvalu', 222, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(223, 'Uganda', 223, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(224, 'Ukraine', 224, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(225, 'United Arab Emirates', 225, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(226, 'United Kingdom', 226, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(227, 'United States minor outlying islands', 227, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(228, 'Uruguay', 228, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(229, 'Uzbekistan', 229, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(230, 'Vanuatu', 230, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(231, 'Vatican City State', 231, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(232, 'Venezuela', 232, 'VE', 1, 'subtract', 4, '0000-00-00 00:00:00'),
(233, 'Vietnam', 233, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(238, 'Yemen', 238, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(239, 'Yugoslavia', 239, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(240, 'Zaire', 240, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(241, 'Zambia', 241, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(242, 'Zimbawe', 242, NULL, 0, '', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pop`
--

CREATE TABLE `pop` (
  `id` int NOT NULL,
  `titulo` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenido` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `activado` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pop`
--

INSERT INTO `pop` (`id`, `titulo`, `contenido`, `activado`, `updated_at`) VALUES
(1, 'Bienvenida', '<div style=\"text-align: center;\"><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/F3s4rtcy1Ps\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe><br></div>', 1, '2020-11-11 19:50:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promotions`
--

CREATE TABLE `promotions` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `promotions`
--

INSERT INTO `promotions` (`id`, `title`, `description`, `banner`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '<p>111</p>', '1.png', 0, '2021-01-18 13:44:57', '2021-01-18 13:45:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospeccion`
--

CREATE TABLE `prospeccion` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `persona_natural` varchar(250) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `direccion` longtext NOT NULL,
  `ciudad` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL,
  `user_email` varchar(250) DEFAULT NULL,
  `local` varchar(250) DEFAULT NULL,
  `zip` int DEFAULT NULL,
  `pais` varchar(250) NOT NULL,
  `telefono` varchar(250) NOT NULL,
  `website` varchar(250) DEFAULT NULL,
  `vap` varchar(250) DEFAULT NULL,
  `referred_id` int NOT NULL,
  `position_id` int NOT NULL,
  `ladomatriz` varchar(250) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `tipo` varchar(250) DEFAULT NULL,
  `comentario` longtext,
  `observaciones` longtext,
  `perfil` longtext,
  `envioCorreo` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos`
--

CREATE TABLE `puntos` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `idcompra` int NOT NULL,
  `usuario` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `concepto` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `puntos` double NOT NULL,
  `cantidad` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntosbonos`
--

CREATE TABLE `puntosbonos` (
  `id` int NOT NULL,
  `iduser` int DEFAULT NULL,
  `usuario` varchar(250) DEFAULT NULL,
  `concepto` varchar(250) DEFAULT NULL,
  `puntos` double DEFAULT NULL,
  `tipo` varchar(250) DEFAULT NULL COMMENT '1 - puntos que se pueden descontar 2 - puntos que se almacenan 3 - puntos descontados del 1',
  `lado` varchar(10) DEFAULT NULL,
  `balance` double DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchases`
--

CREATE TABLE `purchases` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `amount` double NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `link` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` int NOT NULL,
  `purchase_id` int NOT NULL,
  `course_id` int DEFAULT NULL,
  `membership_id` int DEFAULT NULL,
  `membership_type` varchar(20) DEFAULT NULL,
  `offer_id` int DEFAULT NULL,
  `amount` double NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pushs`
--

CREATE TABLE `pushs` (
  `id` int NOT NULL,
  `iduser` int DEFAULT NULL,
  `titulo` varchar(250) DEFAULT NULL,
  `body` varchar(250) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `qr`
--

CREATE TABLE `qr` (
  `id` int NOT NULL,
  `contenido` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `evaluation_id` int NOT NULL,
  `order` int NOT NULL,
  `question` text NOT NULL,
  `answer_1` text NOT NULL,
  `answer_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `correct_answer` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ratings`
--

CREATE TABLE `ratings` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  `comment` text,
  `points` int NOT NULL,
  `date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redes_sociales`
--

CREATE TABLE `redes_sociales` (
  `id` int NOT NULL,
  `link` text NOT NULL,
  `tipo` int DEFAULT NULL COMMENT '1- glyphicon 2-imagen',
  `imagen` text NOT NULL,
  `color` varchar(250) DEFAULT NULL,
  `nombre` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `redes_sociales`
--

INSERT INTO `redes_sociales` (`id`, `link`, `tipo`, `imagen`, `color`, `nombre`, `updated_at`) VALUES
(2, 'https://web.whatsapp.com/', 1, 'fab fa-whatsapp', '00a65a', 'whatsapp', '2020-09-21 21:15:51'),
(3, 'https://www.facebook.com/sharer/sharer.php?u=https%3A//mybusinessacademypro.com/academia/', 1, 'fab fa-facebook-f', '3c8dbc', 'Facebook', '2020-11-10 11:24:08'),
(4, 'https://twitter.com/intent/tweet?text=https%3A//mybusinessacademypro.com/academia/', 1, 'fab fa-twitter', 'ADD8E6', 'twitter', '2020-11-10 11:25:25'),
(13, 'https://www.linkedin.com/sharing/share-offsite/?url=https%3A%2F%2Fmybusinessacademypro.com%2Facademia%2F', 1, 'fab fa-linkedin', '007bb5', 'Linkedin', '2020-11-10 11:29:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resources`
--

CREATE TABLE `resources` (
  `id` int NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `icon` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `resources`
--

INSERT INTO `resources` (`id`, `title`, `icon`, `status`) VALUES
(1, 'Configuración', 'settings.svg', '1'),
(2, 'Participantes', 'person.svg', '1'),
(3, 'Chat', 'comment.svg', '1'),
(4, 'Encuesta', 'lista.svg', '1'),
(5, 'Presentación', 'presentacion.svg', '1'),
(6, 'Vídeo', 'video.svg', '1'),
(7, 'Archivos', 'documentos.svg', '1'),
(8, 'Ofertas', 'descuento.svg', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `referidos` int DEFAULT '0',
  `refeact` int DEFAULT '0',
  `referidosd` int DEFAULT NULL,
  `referidosInd` int DEFAULT NULL,
  `compras` float DEFAULT '0',
  `grupal` float DEFAULT NULL COMMENT 'puntos grupales',
  `comisiones` float DEFAULT '0',
  `bonos` float DEFAULT '0',
  `niveles` int DEFAULT '0',
  `rolprevio` int DEFAULT NULL,
  `acepta_comision` tinyint(1) DEFAULT '1',
  `rolnecesario` int DEFAULT NULL,
  `rolnecesariocant` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `referidos`, `refeact`, `referidosd`, `referidosInd`, `compras`, `grupal`, `comisiones`, `bonos`, `niveles`, `rolprevio`, `acepta_comision`, `rolnecesario`, `rolnecesariocant`, `created_at`, `updated_at`) VALUES
(0, 'administrador', 0, 0, NULL, NULL, 0, NULL, 0, 0, 0, NULL, 1, NULL, NULL, NULL, NULL),
(1, 'moderador', 0, 0, NULL, NULL, 0, NULL, 0, 0, 0, NULL, 1, NULL, NULL, NULL, NULL),
(2, 'mentor', 0, 0, NULL, NULL, 0, NULL, 0, 0, 0, NULL, 1, NULL, NULL, NULL, NULL),
(3, 'cliente', 0, 0, NULL, NULL, 0, NULL, 0, 0, 0, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedule`
--

CREATE TABLE `schedule` (
  `id` int UNSIGNED NOT NULL,
  `event_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguridad`
--

CREATE TABLE `seguridad` (
  `id` int NOT NULL,
  `titulo` text,
  `contenido` longtext,
  `concepto` text,
  `tipo` int DEFAULT '1' COMMENT '1 - una ves al dia 2 - siempre 3 - cada treinta dias ',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seguridad`
--

INSERT INTO `seguridad` (`id`, `titulo`, `contenido`, `concepto`, `tipo`, `status`, `updated_at`) VALUES
(1, NULL, 'hola @nombre @correo le hemos enviado un codigo de seguridad para verificar que es usted su codigo es: @codigo', NULL, 1, 0, '2020-05-10 21:38:37'),
(2, 'Codigo Qr', NULL, 'Al activar el codigo Qr puede usar google autenticador, Authy o cualquier otra aplicacion para escanear los codigo qr este sera requerido al iniciar sesion\r\n', 1, 0, '2020-05-11 01:09:21'),
(3, 'Verificacion por correo', 'Hola @nombre @correo se a enviado un codigo para verificar que es usted su codigo es: @codigo', 'Se envia un codigo al correo el cual debera ingresar al iniciar sesion ', 1, 0, '2020-05-11 02:17:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semiautobinario`
--

CREATE TABLE `semiautobinario` (
  `id` int NOT NULL,
  `usuario` varchar(250) DEFAULT NULL,
  `iduser` int DEFAULT NULL,
  `idcomision` int DEFAULT NULL,
  `total` double DEFAULT NULL,
  `correo` varchar(250) DEFAULT NULL,
  `status` varchar(2) NOT NULL DEFAULT '0',
  `lado` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `senales`
--

CREATE TABLE `senales` (
  `id` int NOT NULL,
  `titulo` longtext,
  `contenido` longtext,
  `iduser` int DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesions`
--

CREATE TABLE `sesions` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `fecha` date NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `actividad` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingactivacion`
--

CREATE TABLE `settingactivacion` (
  `id` int NOT NULL,
  `tipoactivacion` tinyint NOT NULL DEFAULT '0' COMMENT '1 - producto, 2 - dinero',
  `tiporecompra` tinyint DEFAULT '0' COMMENT '1 - producto, 2 - dinero',
  `requisitoactivacion` float NOT NULL,
  `requisitorecompra` float DEFAULT NULL,
  `desativar_usuarios` tinyint DEFAULT NULL COMMENT '0 - desactivar a fin de mes, 1 - desctivar despues de haber cumplido un mes en el sistema ',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settingactivacion`
--

INSERT INTO `settingactivacion` (`id`, `tipoactivacion`, `tiporecompra`, `requisitoactivacion`, `requisitorecompra`, `desativar_usuarios`, `updated_at`) VALUES
(1, 2, 0, 0, NULL, NULL, '2020-03-26 20:49:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingcliente`
--

CREATE TABLE `settingcliente` (
  `id` int NOT NULL,
  `cliente` tinyint(1) NOT NULL,
  `permiso` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settingcliente`
--

INSERT INTO `settingcliente` (`id`, `cliente`, `permiso`, `updated_at`) VALUES
(1, 0, 0, '2020-03-26 20:49:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingcomision`
--

CREATE TABLE `settingcomision` (
  `id` int NOT NULL,
  `niveles` int NOT NULL,
  `tipocomision` varchar(200) NOT NULL,
  `valorgeneral` float NOT NULL,
  `valordetallado` text NOT NULL,
  `tipopago` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tipotransferencia` tinyint(1) DEFAULT NULL COMMENT '0 - monto fijo 1 - monto por porcentaje',
  `comisiontransf` float DEFAULT NULL COMMENT 'esta es para el metodo de pago, es la comision por transferencia de dinero en la billetera',
  `bonoactivacion` longtext,
  `directos` tinyint(1) DEFAULT '1' COMMENT 'si solo los directos aceptan el bono de activacion',
  `tipobono` varchar(50) DEFAULT NULL,
  `primera_compra` tinyint(1) DEFAULT '1',
  `activacioncomision` tinyint(1) DEFAULT NULL COMMENT '1 - cobrar comision desde la fecha de activacion, 2 - cobrar comision desde inicio del mes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settingcomision`
--

INSERT INTO `settingcomision` (`id`, `niveles`, `tipocomision`, `valorgeneral`, `valordetallado`, `tipopago`, `updated_at`, `tipotransferencia`, `comisiontransf`, `bonoactivacion`, `directos`, `tipobono`, `primera_compra`, `activacioncomision`) VALUES
(1, 5, 'producto', 0, '[{\"idproductos\":12,\"comisiones\":[{\"nivel\":1,\"comision\":170},{\"nivel\":2,\"comision\":10},{\"nivel\":3,\"comision\":10},{\"nivel\":4,\"comision\":0},{\"nivel\":5,\"comision\":0}]},{\"idproductos\":28,\"comisiones\":[{\"nivel\":1,\"comision\":250},{\"nivel\":2,\"comision\":10},{\"nivel\":3,\"comision\":10},{\"nivel\":4,\"comision\":0},{\"nivel\":5,\"comision\":0}]},{\"idproductos\":29,\"comisiones\":[{\"nivel\":1,\"comision\":0},{\"nivel\":2,\"comision\":0},{\"nivel\":3,\"comision\":0},{\"nivel\":4,\"comision\":0},{\"nivel\":5,\"comision\":0}]}]', 'normal', '2020-03-26 21:47:34', NULL, NULL, '[{\"producto\":\"12\",\"bono\":\"170\",\"tipobono\":\"fijo\"},{\"producto\":\"600\",\"bono\":\"250\",\"tipobono\":\"fijo\"}]', 1, 'fijo', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingpagos`
--

CREATE TABLE `settingpagos` (
  `id` int NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `feed` float NOT NULL,
  `monto_min` float DEFAULT '0',
  `tipofeed` tinyint(1) NOT NULL COMMENT '0 - monto fijo 1 - porcentaje',
  `estado` tinyint(1) NOT NULL DEFAULT '0',
  `correo` tinyint(1) DEFAULT '0',
  `wallet` tinyint(1) DEFAULT '0',
  `datosbancarios` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingpermiso`
--

CREATE TABLE `settingpermiso` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `nameuser` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `cursos` tinyint NOT NULL,
  `nuevo_registro` tinyint DEFAULT '0',
  `red_usuario` tinyint DEFAULT '0',
  `vision_usuario` tinyint DEFAULT '0',
  `billetera` tinyint DEFAULT '0',
  `pago` tinyint DEFAULT '0',
  `informes` tinyint DEFAULT '0',
  `tickets` tinyint DEFAULT '0',
  `buzon` tinyint DEFAULT '0',
  `ranking` tinyint DEFAULT '0',
  `historial_actividades` tinyint DEFAULT '0',
  `email_marketing` tinyint DEFAULT '0',
  `administrar_redes` tinyint DEFAULT '0',
  `soporte` tinyint DEFAULT '0',
  `ajuste` tinyint DEFAULT '0',
  `herramienta` tinyint DEFAULT '0',
  `calendario` tinyint DEFAULT '0',
  `correos` tinyint DEFAULT '0',
  `prospeccion` tinyint DEFAULT '0',
  `puntos` tinyint DEFAULT '0',
  `binario` tinyint DEFAULT '0',
  `usuario` tinyint DEFAULT '0',
  `tienda` tinyint DEFAULT '0',
  `transacciones` tinyint DEFAULT '0',
  `usuarios` tinyint DEFAULT '0',
  `red` tinyint DEFAULT '0',
  `eventos` tinyint DEFAULT '0',
  `banners` tinyint(1) NOT NULL DEFAULT '0',
  `entradas` tinyint DEFAULT '0',
  `historialcomision` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settingpermiso`
--

INSERT INTO `settingpermiso` (`id`, `iduser`, `nameuser`, `cursos`, `nuevo_registro`, `red_usuario`, `vision_usuario`, `billetera`, `pago`, `informes`, `tickets`, `buzon`, `ranking`, `historial_actividades`, `email_marketing`, `administrar_redes`, `soporte`, `ajuste`, `herramienta`, `calendario`, `correos`, `prospeccion`, `puntos`, `binario`, `usuario`, `tienda`, `transacciones`, `usuarios`, `red`, `eventos`, `banners`, `entradas`, `historialcomision`, `updated_at`) VALUES
(1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-03-26 20:49:07'),
(10112, 10127, 'pietro giacomo pasqualis', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-01-21 16:27:23'),
(10113, 10128, 'pietro giacomo pasqualis', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-01-21 16:40:01'),
(10114, 10129, 'pietro giacomo pasqualis', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-01-21 16:44:16'),
(10115, 10133, 'prueba1', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-10 09:39:33'),
(10116, 10134, 'prueba2', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-10 09:42:32'),
(10117, 10135, 'prueba3', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-10 09:43:50'),
(10118, 10136, 'prueba4', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-10 09:44:56'),
(10119, 10137, 'prueba5', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-10 09:46:02'),
(10120, 10138, 'prueba6', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-10 09:47:08'),
(10121, 10140, '2', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-07-20 05:22:14'),
(10122, 10141, 'Abraham', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-07-21 05:55:46'),
(10123, 10142, 'Abraham', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-07-21 06:11:00'),
(10124, 10143, 'Jhorfren', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-07-21 10:14:20'),
(10125, 10144, '123', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-07-22 04:18:13'),
(10126, 10145, 'joelgoyo', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-07-22 04:21:12'),
(10127, 10146, '1', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-07-27 06:16:30'),
(10128, 10147, '15', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-07-27 10:09:21'),
(10129, 10148, 'quattro', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-09-28 20:15:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingplantilla`
--

CREATE TABLE `settingplantilla` (
  `id` int NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `contenido` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settingplantilla`
--

INSERT INTO `settingplantilla` (`id`, `titulo`, `contenido`, `updated_at`) VALUES
(1, 'Bienvenido', '<p>@nombre</p><p>@usuario</p><p>@idpatrocionio</p><p>@clave</p><p>@correo</p> <p>@Nafiliacion</p>', '2020-03-26 21:51:53'),
(2, 'Pagos', '<p>@nombrecompleto</p><p><span style=\"color: rgb(165, 42, 42);\">@correo</span></p><p><span style=\"color: rgb(165, 42, 42);\">@pago</span></p><p><span style=\"color: rgb(165, 42, 42);\">@usuario</span></p><p><span style=\"color: rgb(165, 42, 42);\">@idpatrocinio<br></span><br></p>', '2020-03-26 21:52:52'),
(3, 'Compra', '<p>@nombre</p><p>@correo</p><p>@datos</p><p>@fecha</p><p>@total</p>', '2020-03-26 21:53:42'),
(4, 'Compra', '<p>@nombre</p><p>@correo</p><p>@datos</p><p>@fecha</p><p>@total</p>', '2020-03-26 21:54:53'),
(5, 'Liquidación', '<p>@nombre</p><p>@correo</p><p>@datosbancarios</p><p>@fecha</p><p>@total</p>', '2020-03-26 21:55:48'),
(6, NULL, NULL, '0000-00-00 00:00:00'),
(8, 'Evento Agendado', NULL, '2020-11-18 11:45:20'),
(9, 'Live esta apunto de iniciar', NULL, '2020-11-18 11:45:29'),
(10, 'El live a iniciado', NULL, '2020-11-18 11:45:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AIO System',
  `slogan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Uno para todo.',
  `name_styled` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'AIO <strong>System</strong>',
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_type` int DEFAULT NULL,
  `enable_register` tinyint(1) DEFAULT '1',
  `enable_auth_fb` tinyint(1) DEFAULT '0',
  `enable_auth_tw` tinyint(1) DEFAULT '0',
  `enable_auth_google` tinyint(1) DEFAULT '0',
  `version` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0.2.0',
  `keycode` int DEFAULT NULL,
  `logo` int DEFAULT '1',
  `rol_default` int DEFAULT '3',
  `status_web` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `referred_id_default` int NOT NULL DEFAULT '1',
  `referred_level_max` int NOT NULL DEFAULT '5',
  `edad_minino` int NOT NULL COMMENT 'edad minimo para ingresar al sistema',
  `licencia` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fecha_vencimiento` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `prefijo_wp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_no_comision` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `activarBotones` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'permite activar los botones de transferencia, retiro, pago total y pago masivo',
  `activarCorreos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `firma` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `limitar` int NOT NULL DEFAULT '0',
  `traductor` int DEFAULT '0',
  `recarga` int NOT NULL DEFAULT '0',
  `canje` int NOT NULL DEFAULT '0',
  `total_canje` double DEFAULT NULL,
  `estilo` int DEFAULT '1',
  `posicionamiento` int DEFAULT '0',
  `btc` int NOT NULL DEFAULT '0',
  `paypal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `scriptpaypal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `htmlpaypal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `login` int NOT NULL DEFAULT '1',
  `registro` int NOT NULL DEFAULT '2',
  `colorfondo` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fff',
  `cololetras` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '333'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `name`, `slogan`, `name_styled`, `company_name`, `company_email`, `site_email`, `description`, `category_type`, `enable_register`, `enable_auth_fb`, `enable_auth_tw`, `enable_auth_google`, `version`, `keycode`, `logo`, `rol_default`, `status_web`, `created_at`, `updated_at`, `referred_id_default`, `referred_level_max`, `edad_minino`, `licencia`, `fecha_vencimiento`, `prefijo_wp`, `id_no_comision`, `activarBotones`, `activarCorreos`, `firma`, `limitar`, `traductor`, `recarga`, `canje`, `total_canje`, `estilo`, `posicionamiento`, `btc`, `paypal`, `scriptpaypal`, `htmlpaypal`, `login`, `registro`, `colorfondo`, `cololetras`) VALUES
(1, 'My Trading Academy Pro', '123456', 'My Trading Academy Pro', NULL, NULL, 'soporte@shapinetwork.com', NULL, NULL, 1, 0, 0, 0, '0.2.0', NULL, 1, 3, 1, '2020-03-26 20:49:07', '2020-03-26 20:49:07', 1, 5, 18, 'TlRBM0lWSTVObGxFT1RSVkxETTNVRklzSXloU0t6TmdVaXN6S0ZjS1lBbz0=', 'MjAyMy0wNy0yOQ==', 'wp98_', '/assets/img/image_landing_1603228894.png', '{\"btn_transferencia\":1,\"btn_retiro\":1,\"btn_masivo\":1,\"btn_todo\":1,\"btn_liquida\":1,\"btn_monto\":1}', '{\"pago\":1,\"compra\":1,\"pc\":1,\"liquidacion\":1}', '<p>Empresa</p><p>Telefono</p><p>direccion</p>', 0, 0, 0, 0, NULL, 1, 1, 0, NULL, NULL, NULL, 2, 2, 'fff', '333');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingsestructura`
--

CREATE TABLE `settingsestructura` (
  `id` int NOT NULL,
  `tipoestructura` varchar(50) NOT NULL,
  `cantnivel` int NOT NULL,
  `cantfilas` int DEFAULT NULL,
  `estructuraprincipal` tinyint(1) DEFAULT NULL COMMENT '1: arbol - 2: matriz',
  `usuarioprincipal` tinyint(1) DEFAULT NULL COMMENT '1: admin - 2:user',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settingsestructura`
--

INSERT INTO `settingsestructura` (`id`, `tipoestructura`, `cantnivel`, `cantfilas`, `estructuraprincipal`, `usuarioprincipal`, `updated_at`) VALUES
(1, 'arbol', 5, 0, 0, 0, '2020-03-26 21:33:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingspuntos`
--

CREATE TABLE `settingspuntos` (
  `id` int NOT NULL,
  `configuracion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipopuntos` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `setttingsroles`
--

CREATE TABLE `setttingsroles` (
  `id` int NOT NULL,
  `rangos` int NOT NULL,
  `compras` tinyint(1) DEFAULT '0',
  `comisiones` tinyint(1) DEFAULT '0',
  `niveles` tinyint(1) DEFAULT '0',
  `referidos` tinyint(1) DEFAULT '0',
  `referidosact` tinyint(1) DEFAULT '0',
  `referidosd` tinyint(1) DEFAULT '0',
  `referidosInd` tinyint(1) DEFAULT '0',
  `grupal` tinyint(1) DEFAULT '0' COMMENT 'puntos grupales',
  `valorpuntos` float DEFAULT NULL,
  `bonos` tinyint(1) DEFAULT '0',
  `rolnecesario` tinyint(1) DEFAULT '0',
  `reseteomensual` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `setttingsroles`
--

INSERT INTO `setttingsroles` (`id`, `rangos`, `compras`, `comisiones`, `niveles`, `referidos`, `referidosact`, `referidosd`, `referidosInd`, `grupal`, `valorpuntos`, `bonos`, `rolnecesario`, `reseteomensual`, `updated_at`) VALUES
(1, 2, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, '2020-03-26 21:50:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` int NOT NULL,
  `user_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `course_id` int DEFAULT NULL,
  `membership_id` int DEFAULT NULL,
  `period` varchar(20) DEFAULT NULL,
  `offer_id` int DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `shopping_cart`
--

INSERT INTO `shopping_cart` (`id`, `user_id`, `course_id`, `membership_id`, `period`, `offer_id`, `date`, `created_at`, `updated_at`) VALUES
(7, '66.249.66.49', NULL, 2, 'Anual', NULL, '2021-02-25', '2021-02-25 03:18:24', '2021-02-25 03:18:24'),
(8, '66.249.66.47', NULL, 2, 'Mensual', NULL, '2021-02-25', '2021-02-25 03:18:34', '2021-02-25 03:18:34'),
(9, '177.241.41.162', NULL, 1, 'Mensual', NULL, '2021-03-06', '2021-03-06 02:09:25', '2021-03-06 02:09:25'),
(14, '72.79.53.16', NULL, 1, 'Anual', NULL, '2021-03-20', '2021-03-20 15:49:27', '2021-03-20 15:49:27'),
(15, '1', NULL, 2, 'Anual', NULL, '2021-03-26', '2021-03-26 13:42:51', '2021-03-26 13:42:51'),
(21, '104.149.88.228', NULL, 1, 'Mensual', NULL, '2021-05-26', '2021-05-26 16:52:03', '2021-05-26 16:52:03'),
(30, '144.217.135.227', NULL, 3, 'Anual', NULL, '2021-07-05', '2021-07-05 04:23:03', '2021-07-05 04:23:03'),
(40, '72.79.45.44', NULL, 1, 'Anual', NULL, '2021-07-08', '2021-07-08 18:45:25', '2021-07-08 18:45:25'),
(46, '144.217.135.143', NULL, 3, 'Anual', NULL, '2021-08-05', '2021-08-05 08:07:07', '2021-08-05 08:07:07'),
(47, '69.160.160.50', NULL, 1, NULL, NULL, '2021-08-05', '2021-08-05 11:36:13', '2021-08-05 11:36:13'),
(62, '185.191.171.10', NULL, 2, 'Mensual', NULL, '2021-09-01', '2021-09-01 12:21:23', '2021-09-01 12:21:23'),
(63, '185.191.171.43', NULL, 3, 'Anual', NULL, '2021-09-01', '2021-09-01 15:06:14', '2021-09-01 15:06:14'),
(65, '185.191.171.37', NULL, 1, 'Mensual', NULL, '2021-09-02', '2021-09-02 07:02:30', '2021-09-02 07:02:30'),
(74, '185.191.171.45', NULL, 1, 'Mensual', NULL, '2021-09-04', '2021-09-04 12:54:58', '2021-09-04 12:54:58'),
(81, '144.217.135.241', NULL, 3, 'Anual', NULL, '2021-09-05', '2021-09-05 08:20:02', '2021-09-05 08:20:02'),
(82, '185.191.171.9', NULL, 3, 'Mensual', NULL, '2021-09-05', '2021-09-05 19:20:42', '2021-09-05 19:20:42'),
(83, '185.191.171.1', NULL, 2, 'Anual', NULL, '2021-09-05', '2021-09-05 23:34:05', '2021-09-05 23:34:05'),
(84, '152.207.201.163', NULL, 1, 'Mensual', NULL, '2021-09-06', '2021-09-06 07:29:39', '2021-09-06 07:29:39'),
(100, '114.119.154.181', NULL, 1, 'Anual', NULL, '2021-09-13', '2021-09-13 06:37:35', '2021-09-13 06:37:35'),
(101, '114.119.154.203', NULL, 1, 'Mensual', NULL, '2021-09-15', '2021-09-15 16:28:19', '2021-09-15 16:28:19'),
(102, '114.119.154.166', NULL, 2, 'Anual', NULL, '2021-09-15', '2021-09-15 19:25:11', '2021-09-15 19:25:11'),
(105, '114.119.154.207', NULL, 1, NULL, NULL, '2021-09-16', '2021-09-16 14:11:44', '2021-09-16 14:11:44'),
(107, '114.119.154.169', NULL, 1, 'Anual', NULL, '2021-09-19', '2021-09-19 08:55:55', '2021-09-19 08:55:55'),
(109, '94.130.219.242', NULL, 1, NULL, NULL, '2021-09-21', '2021-09-21 11:44:29', '2021-09-21 11:44:29'),
(110, '114.119.152.204', NULL, 3, 'Mensual', NULL, '2021-09-23', '2021-09-23 04:38:53', '2021-09-23 04:38:53'),
(112, '114.119.154.189', NULL, 2, 'Mensual', NULL, '2021-09-23', '2021-09-23 08:39:09', '2021-09-23 08:39:09'),
(113, '114.119.154.186', NULL, 1, 'Mensual', NULL, '2021-09-23', '2021-09-23 21:46:33', '2021-09-23 21:46:33'),
(114, '114.119.154.211', NULL, 1, 'Anual', NULL, '2021-09-25', '2021-09-25 15:39:14', '2021-09-25 15:39:14'),
(115, '54.36.149.100', NULL, 1, 'Anual', NULL, '2021-09-26', '2021-09-26 15:00:27', '2021-09-26 15:00:27'),
(116, '54.36.148.151', NULL, 1, 'Mensual', NULL, '2021-09-26', '2021-09-26 15:26:28', '2021-09-26 15:26:28'),
(117, '54.36.148.226', NULL, 2, 'Anual', NULL, '2021-09-26', '2021-09-26 15:49:15', '2021-09-26 15:49:15'),
(118, '54.36.148.148', NULL, 2, 'Mensual', NULL, '2021-09-26', '2021-09-26 16:11:22', '2021-09-26 16:11:22'),
(119, '54.36.148.139', NULL, 3, 'Anual', NULL, '2021-09-26', '2021-09-26 16:38:05', '2021-09-26 16:38:05'),
(120, '54.36.148.7', NULL, 3, 'Mensual', NULL, '2021-09-26', '2021-09-26 17:02:29', '2021-09-26 17:02:29'),
(121, '66.249.66.5', NULL, 1, 'Mensual', NULL, '2021-09-28', '2021-09-28 04:00:14', '2021-09-28 04:00:14'),
(122, '114.119.150.101', NULL, 1, 'Anual', NULL, '2021-10-01', '2021-10-01 01:47:06', '2021-10-01 01:47:06'),
(123, '114.119.156.181', NULL, 3, 'Anual', NULL, '2021-10-01', '2021-10-01 15:00:29', '2021-10-01 15:00:29'),
(125, '185.191.171.42', NULL, 1, 'Mensual', NULL, '2021-10-04', '2021-10-04 14:45:41', '2021-10-04 14:45:41'),
(126, '185.191.171.5', NULL, 3, 'Mensual', NULL, '2021-10-05', '2021-10-05 19:24:47', '2021-10-05 19:24:47'),
(127, '185.191.171.22', NULL, 2, 'Anual', NULL, '2021-10-05', '2021-10-05 22:42:42', '2021-10-05 22:42:42'),
(128, '185.191.171.44', NULL, 2, 'Mensual', NULL, '2021-10-06', '2021-10-06 00:10:48', '2021-10-06 00:10:48'),
(135, '144.217.135.206', NULL, 3, 'Anual', NULL, '2021-10-06', '2021-10-06 09:52:55', '2021-10-06 09:52:55'),
(136, '185.191.171.7', NULL, 1, 'Anual', NULL, '2021-10-07', '2021-10-07 00:39:40', '2021-10-07 00:39:40'),
(137, '114.119.145.36', NULL, 1, 'Anual', NULL, '2021-10-07', '2021-10-07 07:12:03', '2021-10-07 07:12:03'),
(138, '185.191.171.2', NULL, 2, 'Mensual', NULL, '2021-10-08', '2021-10-08 02:51:01', '2021-10-08 02:51:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subcategories`
--

INSERT INTO `subcategories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Principiante', 'principiante', '2020-08-19 14:51:50', '2020-08-19 14:52:04'),
(2, 'Básico', 'basico', '2020-09-03 14:16:07', '2020-09-03 14:16:07'),
(3, 'Intermedio', 'intermedio', '2020-09-03 14:16:07', '2020-09-03 14:16:07'),
(4, 'Avanzado', 'avanzado', '2020-09-03 14:17:00', '2020-09-03 14:17:00'),
(5, 'Pro', 'pro', '2020-09-03 14:17:15', '2020-09-03 14:17:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supports`
--

CREATE TABLE `supports` (
  `id` int NOT NULL,
  `response` text NOT NULL,
  `ticket_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` int NOT NULL COMMENT '1:respondida, 0:no respondida',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `support_material`
--

CREATE TABLE `support_material` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL COMMENT 'Archivo o Link',
  `material` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `survey_options`
--

CREATE TABLE `survey_options` (
  `id` int NOT NULL,
  `question` text NOT NULL,
  `content_event_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `survey_options`
--

INSERT INTO `survey_options` (`id`, `question`, `content_event_id`, `created_at`, `updated_at`) VALUES
(1, 'prueba', 1, '2021-04-26 17:42:42', '2021-04-26 17:42:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `survey_options_response`
--

CREATE TABLE `survey_options_response` (
  `id` int NOT NULL,
  `response` text NOT NULL,
  `survey_options_id` int NOT NULL,
  `selected` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `survey_options_response`
--

INSERT INTO `survey_options_response` (`id`, `response`, `survey_options_id`, `selected`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'res1', 1, 0, 10125, '2021-04-26 17:42:42', '2021-04-26 17:42:42'),
(2, 'res2', 1, 0, 10125, '2021-04-26 17:42:42', '2021-04-26 17:42:42'),
(3, 'res1', 1, 1, 10126, '2021-04-26 17:42:49', '2021-04-26 17:42:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscriptions`
--

CREATE TABLE `suscriptions` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` int NOT NULL,
  `tag` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'mba', '2020-09-08 19:01:29', '2020-09-08 19:01:29'),
(2, 'trading', '2020-09-08 19:01:54', '2020-09-08 19:01:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `id` int UNSIGNED NOT NULL,
  `titulo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comentario` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('General','Academia','Afiliados') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `admin` int DEFAULT NULL,
  `status` enum('Abierto','Cerrado','Cancelado') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Abierto',
  `archivo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `archivo_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date NOT NULL,
  `soporte` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Soporte',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upgrade_messages`
--

CREATE TABLE `upgrade_messages` (
  `id` int NOT NULL,
  `membership_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `upgrade_messages`
--

INSERT INTO `upgrade_messages` (`id`, `membership_id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '¿Qué esperas para mejorar tu membresía y subir de nivel?', 'Con esto tedrás acceso a nuevas lecciones...', NULL, '2020-12-16 21:34:50', '2020-12-16 21:34:50'),
(2, 2, '¿Qué esperas para mejorar tu membresía y subir de nivel?', 'Con esto tedrás acceso a nuevas lecciones...', NULL, '2020-12-16 21:34:50', '2020-12-16 21:34:50'),
(3, 3, '¿Qué esperas para mejorar tu membresía y subir de nivel?', 'Con esto tedrás acceso a nuevas lecciones...', NULL, '2020-12-16 21:34:50', '2020-12-16 21:34:50'),
(4, 4, '¿Qué esperas para mejorar tu membresía y subir de nivel?', 'Con esto tedrás acceso a nuevas lecciones...', NULL, '2020-12-16 21:34:50', '2020-12-16 21:34:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_campo`
--

CREATE TABLE `user_campo` (
  `ID` bigint NOT NULL,
  `firstname` varchar(250) DEFAULT NULL,
  `lastname` varchar(250) DEFAULT NULL,
  `genero` varchar(250) DEFAULT NULL,
  `edad` date DEFAULT NULL,
  `nameuser` varchar(250) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `document` varchar(250) DEFAULT NULL,
  `direccion2` varchar(250) DEFAULT NULL,
  `estado` varchar(250) DEFAULT NULL,
  `ciudad` varchar(250) DEFAULT NULL,
  `codigo` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `fijo` varchar(250) DEFAULT NULL,
  `facebook` varchar(250) DEFAULT NULL,
  `twitter` varchar(250) DEFAULT NULL,
  `instagram` varchar(250) DEFAULT NULL,
  `youtube` varchar(250) DEFAULT NULL,
  `linkedin` varchar(250) DEFAULT NULL,
  `banco` varchar(250) DEFAULT NULL,
  `tipocuenta` varchar(250) DEFAULT NULL,
  `titular` varchar(250) DEFAULT NULL,
  `documento_identidad_titular` varchar(250) DEFAULT NULL,
  `cuenta` varchar(250) DEFAULT NULL,
  `swift` varchar(250) DEFAULT NULL,
  `pan` varchar(250) DEFAULT NULL,
  `paypal` varchar(250) DEFAULT NULL,
  `blocktrail` varchar(250) DEFAULT NULL,
  `blockchain` varchar(250) DEFAULT NULL,
  `bitgo` varchar(250) DEFAULT NULL,
  `pais` varchar(250) DEFAULT NULL,
  `pago` varchar(250) DEFAULT NULL,
  `btc` longtext,
  `biografia` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_campo`
--

INSERT INTO `user_campo` (`ID`, `firstname`, `lastname`, `genero`, `edad`, `nameuser`, `direccion`, `document`, `direccion2`, `estado`, `ciudad`, `codigo`, `phone`, `fijo`, `facebook`, `twitter`, `instagram`, `youtube`, `linkedin`, `banco`, `tipocuenta`, `titular`, `documento_identidad_titular`, `cuenta`, `swift`, `pan`, `paypal`, `blocktrail`, `blockchain`, `bitgo`, `pais`, `pago`, `btc`, `biografia`) VALUES
(1, 'ADMIN', 'SHAPINETWORK', 'M', NULL, 'shapinetadmin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10125, 'Luisanaelena', 'Marín', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10131, 'Mentor', 'Experto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10132, 'Noemy', 'Aleman', 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Productora, Asesora de Negocios'),
(10133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10139, 'Coach', 'Internacional', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Austria', NULL, NULL, NULL),
(10141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Canada', NULL, NULL, NULL),
(10145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Canada', NULL, NULL, NULL),
(10147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL),
(10148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `walletlog`
--

CREATE TABLE `walletlog` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `idcomision` int NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `debito` float NOT NULL,
  `credito` float NOT NULL,
  `balance` float NOT NULL,
  `descuento` float NOT NULL,
  `tipotransacion` tinyint NOT NULL COMMENT '0 - transferencia, 1 - retiros, 2 - comisiones,  3 - liquidaciones',
  `monedaAdicional` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `walletlog`
--

INSERT INTO `walletlog` (`id`, `iduser`, `idcomision`, `usuario`, `descripcion`, `debito`, `credito`, `balance`, `descuento`, `tipotransacion`, `monedaAdicional`, `updated_at`) VALUES
(1, 10125, 0, 'Luisanaelena Marín', 'Orden 4 Compra con billetera del usuario: Luisanaelena Marín', 0, 10, 20, 0, 1, '', '2021-01-21 13:09:00'),
(2, 1, 1, 'Administrador', 'Ganancia por la compra del referido Luisanaelena Marín por la Membresia Oferta 1', 3, 0, 3, 0, 2, '', '2021-01-23 13:12:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_actionscheduler_actions`
--

CREATE TABLE `wp98_actionscheduler_actions` (
  `action_id` bigint UNSIGNED NOT NULL,
  `hook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `group_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_actionscheduler_claims`
--

CREATE TABLE `wp98_actionscheduler_claims` (
  `claim_id` bigint UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_actionscheduler_groups`
--

CREATE TABLE `wp98_actionscheduler_groups` (
  `group_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_actionscheduler_groups`
--

INSERT INTO `wp98_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'woocommerce-db-updates');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_actionscheduler_logs`
--

CREATE TABLE `wp98_actionscheduler_logs` (
  `log_id` bigint UNSIGNED NOT NULL,
  `action_id` bigint UNSIGNED NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_commentmeta`
--

CREATE TABLE `wp98_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_comments`
--

CREATE TABLE `wp98_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_links`
--

CREATE TABLE `wp98_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_ms_snippets`
--

CREATE TABLE `wp98_ms_snippets` (
  `id` bigint NOT NULL,
  `name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `priority` smallint NOT NULL DEFAULT '10',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_options`
--

CREATE TABLE `wp98_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_options`
--

INSERT INTO `wp98_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://shapinetwork.com', 'yes'),
(2, 'home', 'https://shapinetwork.com', 'yes'),
(3, 'blogname', 'shapinetwork', 'yes'),
(4, 'blogdescription', 'Shapinetwork', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@shapinetwork.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:238:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:10:\"project/?$\";s:27:\"index.php?post_type=project\";s:40:\"project/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:35:\"project/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:27:\"project/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=project&paged=$matches[1]\";s:9:\"tienda/?$\";s:27:\"index.php?post_type=product\";s:39:\"tienda/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:34:\"tienda/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:26:\"tienda/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"layout_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?layout_category=$matches[1]&feed=$matches[2]\";s:51:\"layout_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?layout_category=$matches[1]&feed=$matches[2]\";s:32:\"layout_category/([^/]+)/embed/?$\";s:48:\"index.php?layout_category=$matches[1]&embed=true\";s:44:\"layout_category/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?layout_category=$matches[1]&paged=$matches[2]\";s:26:\"layout_category/([^/]+)/?$\";s:37:\"index.php?layout_category=$matches[1]\";s:52:\"layout_pack/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_pack=$matches[1]&feed=$matches[2]\";s:47:\"layout_pack/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_pack=$matches[1]&feed=$matches[2]\";s:28:\"layout_pack/([^/]+)/embed/?$\";s:44:\"index.php?layout_pack=$matches[1]&embed=true\";s:40:\"layout_pack/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?layout_pack=$matches[1]&paged=$matches[2]\";s:22:\"layout_pack/([^/]+)/?$\";s:33:\"index.php?layout_pack=$matches[1]\";s:52:\"layout_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_type=$matches[1]&feed=$matches[2]\";s:47:\"layout_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_type=$matches[1]&feed=$matches[2]\";s:28:\"layout_type/([^/]+)/embed/?$\";s:44:\"index.php?layout_type=$matches[1]&embed=true\";s:40:\"layout_type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?layout_type=$matches[1]&paged=$matches[2]\";s:22:\"layout_type/([^/]+)/?$\";s:33:\"index.php?layout_type=$matches[1]\";s:46:\"scope/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?scope=$matches[1]&feed=$matches[2]\";s:41:\"scope/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?scope=$matches[1]&feed=$matches[2]\";s:22:\"scope/([^/]+)/embed/?$\";s:38:\"index.php?scope=$matches[1]&embed=true\";s:34:\"scope/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?scope=$matches[1]&paged=$matches[2]\";s:16:\"scope/([^/]+)/?$\";s:27:\"index.php?scope=$matches[1]\";s:53:\"module_width/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?module_width=$matches[1]&feed=$matches[2]\";s:48:\"module_width/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?module_width=$matches[1]&feed=$matches[2]\";s:29:\"module_width/([^/]+)/embed/?$\";s:45:\"index.php?module_width=$matches[1]&embed=true\";s:41:\"module_width/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?module_width=$matches[1]&paged=$matches[2]\";s:23:\"module_width/([^/]+)/?$\";s:34:\"index.php?module_width=$matches[1]\";s:40:\"et_pb_layout/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"et_pb_layout/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"et_pb_layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"et_pb_layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"et_pb_layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"et_pb_layout/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"et_pb_layout/([^/]+)/embed/?$\";s:60:\"index.php?post_type=et_pb_layout&name=$matches[1]&embed=true\";s:33:\"et_pb_layout/([^/]+)/trackback/?$\";s:54:\"index.php?post_type=et_pb_layout&name=$matches[1]&tb=1\";s:41:\"et_pb_layout/([^/]+)/page/?([0-9]{1,})/?$\";s:67:\"index.php?post_type=et_pb_layout&name=$matches[1]&paged=$matches[2]\";s:48:\"et_pb_layout/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?post_type=et_pb_layout&name=$matches[1]&cpage=$matches[2]\";s:38:\"et_pb_layout/([^/]+)/wc-api(/(.*))?/?$\";s:68:\"index.php?post_type=et_pb_layout&name=$matches[1]&wc-api=$matches[3]\";s:44:\"et_pb_layout/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:55:\"et_pb_layout/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:37:\"et_pb_layout/([^/]+)(?:/([0-9]+))?/?$\";s:66:\"index.php?post_type=et_pb_layout&name=$matches[1]&page=$matches[2]\";s:29:\"et_pb_layout/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"et_pb_layout/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"et_pb_layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"et_pb_layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"et_pb_layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"et_pb_layout/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"project/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"project/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"project/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"project/([^/]+)/embed/?$\";s:40:\"index.php?project=$matches[1]&embed=true\";s:28:\"project/([^/]+)/trackback/?$\";s:34:\"index.php?project=$matches[1]&tb=1\";s:48:\"project/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:43:\"project/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:36:\"project/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&paged=$matches[2]\";s:43:\"project/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&cpage=$matches[2]\";s:33:\"project/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?project=$matches[1]&wc-api=$matches[3]\";s:39:\"project/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"project/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"project/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?project=$matches[1]&page=$matches[2]\";s:24:\"project/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"project/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"project/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:57:\"project_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?project_category=$matches[1]&feed=$matches[2]\";s:52:\"project_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?project_category=$matches[1]&feed=$matches[2]\";s:33:\"project_category/([^/]+)/embed/?$\";s:49:\"index.php?project_category=$matches[1]&embed=true\";s:45:\"project_category/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?project_category=$matches[1]&paged=$matches[2]\";s:27:\"project_category/([^/]+)/?$\";s:38:\"index.php?project_category=$matches[1]\";s:52:\"project_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?project_tag=$matches[1]&feed=$matches[2]\";s:47:\"project_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?project_tag=$matches[1]&feed=$matches[2]\";s:28:\"project_tag/([^/]+)/embed/?$\";s:44:\"index.php?project_tag=$matches[1]&embed=true\";s:40:\"project_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?project_tag=$matches[1]&paged=$matches[2]\";s:22:\"project_tag/([^/]+)/?$\";s:33:\"index.php?project_tag=$matches[1]\";s:57:\"categoria-producto/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:52:\"categoria-producto/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:33:\"categoria-producto/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:45:\"categoria-producto/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:27:\"categoria-producto/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:58:\"etiqueta-producto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:53:\"etiqueta-producto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:34:\"etiqueta-producto/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:46:\"etiqueta-producto/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:28:\"etiqueta-producto/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:36:\"producto/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"producto/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"producto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"producto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"producto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"producto/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"producto/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"producto/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"producto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"producto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"producto/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"producto/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:34:\"producto/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:40:\"producto/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"producto/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"producto/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"producto/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"producto/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"producto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"producto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"producto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"producto/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:12:{i:0;s:25:\"adminimize/adminimize.php\";i:1;s:31:\"code-snippets/code-snippets.php\";i:2;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:3;s:29:\"divi-ghoster/divi-ghoster.php\";i:4;s:33:\"nav-menu-roles/nav-menu-roles.php\";i:5;s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";i:6;s:51:\"simple-google-recaptcha/simple-google-recaptcha.php\";i:7;s:39:\"ultimate-branding/ultimate-branding.php\";i:8;s:46:\"under-construction-page/under-construction.php\";i:9;s:45:\"woocommerce-branding/woocommerce-branding.php\";i:10;s:27:\"woocommerce/woocommerce.php\";i:11;s:33:\"wps-hide-login/wps-hide-login.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Divi', 'yes'),
(41, 'stylesheet', 'Divi', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:25:\"adminimize/adminimize.php\";s:24:\"_mw_adminimize_uninstall\";s:46:\"under-construction-page/under-construction.php\";a:2:{i:0;s:3:\"UCP\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '22', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1600805135', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp98_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}s:9:\"sidebar-6\";a:0:{}s:9:\"sidebar-7\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:20:{i:1600392339;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1600392936;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1600392941;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1600394822;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1600395398;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1600406054;a:1:{s:22:\"wpmudev_scheduled_jobs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1600416335;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1600420467;a:1:{s:33:\"check_plugin_updates-divi-ghoster\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1600427504;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1600449114;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600459535;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600459589;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600459590;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600459904;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600461336;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600464231;a:1:{s:21:\"et_builder_fonts_cron\";a:1:{s:32:\"552cbb9d6515dadbbc4718ad75114f08\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:1:{s:8:\"interval\";s:5:\"daily\";}s:8:\"interval\";i:86400;}}}i:1600473600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600708364;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}i:1601025241;a:1:{s:32:\"et_core_page_resource_auto_clear\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(114, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:3:\"fff\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1585257240;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(123, 'WPLANG', 'es_ES', 'yes'),
(144, 'can_compress_scripts', '1', 'no'),
(147, 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO `wp98_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(154, 'mw_adminimize', 'a:132:{s:29:\"mw_adminimize_admin_bar_nodes\";a:30:{s:12:\"user-actions\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"user-actions\";s:5:\"title\";b:0;s:6:\"parent\";s:10:\"my-account\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:0:{}}s:9:\"user-info\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"user-info\";s:5:\"title\";s:360:\"<img alt=\'\' src=\'https://secure.gravatar.com/avatar/b7999da42ed48b2d790650d53dfd67f6?s=64&#038;d=mm&#038;r=g\' srcset=\'https://secure.gravatar.com/avatar/b7999da42ed48b2d790650d53dfd67f6?s=128&#038;d=mm&#038;r=g 2x\' class=\'avatar avatar-64 photo\' height=\'64\' width=\'64\' /><span class=\'display-name\'>Shapinetwork</span><span class=\'username\'>shapinetadmin</span>\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:45:\"https://shapinetwork.com/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:8:\"tabindex\";i:-1;}}s:12:\"edit-profile\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"edit-profile\";s:5:\"title\";s:16:\"Editar mi perfil\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:45:\"https://shapinetwork.com/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:6:\"logout\";O:8:\"stdClass\":6:{s:2:\"id\";s:6:\"logout\";s:5:\"title\";s:5:\"Salir\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:70:\"https://shapinetwork.com/acceso/?action=logout&amp;_wpnonce=ae66835e5d\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"menu-toggle\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"menu-toggle\";s:5:\"title\";s:74:\"<span class=\"ab-icon\"></span><span class=\"screen-reader-text\">Menú</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:1:\"#\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:10:\"my-account\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"my-account\";s:5:\"title\";s:322:\"Hola, <span class=\"display-name\">Shapinetwork</span><img alt=\'\' src=\'https://secure.gravatar.com/avatar/b7999da42ed48b2d790650d53dfd67f6?s=26&#038;d=mm&#038;r=g\' srcset=\'https://secure.gravatar.com/avatar/b7999da42ed48b2d790650d53dfd67f6?s=52&#038;d=mm&#038;r=g 2x\' class=\'avatar avatar-26 photo\' height=\'26\' width=\'26\' />\";s:6:\"parent\";s:13:\"top-secondary\";s:4:\"href\";s:45:\"https://shapinetwork.com/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:11:\"with-avatar\";}}s:5:\"about\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"about\";s:5:\"title\";s:19:\"Acerca de WordPress\";s:6:\"parent\";s:7:\"wp-logo\";s:4:\"href\";s:43:\"https://shapinetwork.com/wp-admin/about.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:5:\"wporg\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"wporg\";s:5:\"title\";s:13:\"WordPress.org\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:25:\"https://es.wordpress.org/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:13:\"documentation\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"documentation\";s:5:\"title\";s:14:\"Documentación\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:28:\"https://codex.wordpress.org/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:14:\"support-forums\";O:8:\"stdClass\":6:{s:2:\"id\";s:14:\"support-forums\";s:5:\"title\";s:7:\"Soporte\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:33:\"https://es.wordpress.org/support/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"feedback\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"feedback\";s:5:\"title\";s:11:\"Sugerencias\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:71:\"https://es.wordpress.org/support/forum/comunidad/peticiones-y-feedback/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"site-name\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"site-name\";s:5:\"title\";s:12:\"shapinetwork\";s:6:\"parent\";b:0;s:4:\"href\";s:25:\"https://shapinetwork.com/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"view-site\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"view-site\";s:5:\"title\";s:16:\"Visitar el sitio\";s:6:\"parent\";s:9:\"site-name\";s:4:\"href\";s:25:\"https://shapinetwork.com/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:10:\"view-store\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"view-store\";s:5:\"title\";s:17:\"Visitar la tienda\";s:6:\"parent\";s:9:\"site-name\";s:4:\"href\";s:32:\"https://shapinetwork.com/tienda/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"comments\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"comments\";s:5:\"title\";s:210:\"<span class=\"ab-icon\"></span><span class=\"ab-label awaiting-mod pending-count count-0\" aria-hidden=\"true\">0</span><span class=\"screen-reader-text comments-in-moderation-text\">0 comentarios en moderación</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:51:\"https://shapinetwork.com/wp-admin/edit-comments.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-post\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-post\";s:5:\"title\";s:7:\"Entrada\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:46:\"https://shapinetwork.com/wp-admin/post-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"new-media\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"new-media\";s:5:\"title\";s:5:\"Medio\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:47:\"https://shapinetwork.com/wp-admin/media-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-page\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-page\";s:5:\"title\";s:7:\"Página\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:61:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=page\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"new-project\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"new-project\";s:5:\"title\";s:8:\"Proyecto\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:64:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=project\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"new-product\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"new-product\";s:5:\"title\";s:8:\"Producto\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:64:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=product\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:14:\"new-shop_order\";O:8:\"stdClass\":6:{s:2:\"id\";s:14:\"new-shop_order\";s:5:\"title\";s:6:\"Pedido\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:67:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=shop_order\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:15:\"new-shop_coupon\";O:8:\"stdClass\":6:{s:2:\"id\";s:15:\"new-shop_coupon\";s:5:\"title\";s:6:\"Cupón\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:68:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=shop_coupon\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-user\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-user\";s:5:\"title\";s:7:\"Usuario\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:46:\"https://shapinetwork.com/wp-admin/user-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:13:\"top-secondary\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"top-secondary\";s:5:\"title\";b:0;s:6:\"parent\";b:0;s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:1:{s:5:\"class\";s:16:\"ab-top-secondary\";}}s:16:\"wp-logo-external\";O:8:\"stdClass\":6:{s:2:\"id\";s:16:\"wp-logo-external\";s:5:\"title\";b:0;s:6:\"parent\";s:7:\"wp-logo\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:1:{s:5:\"class\";s:16:\"ab-sub-secondary\";}}s:20:\"customize-divi-theme\";O:8:\"stdClass\":6:{s:2:\"id\";s:20:\"customize-divi-theme\";s:5:\"title\";s:23:\"Personalizador de temas\";s:6:\"parent\";s:10:\"appearance\";s:4:\"href\";s:172:\"https://shapinetwork.com/wp-admin/customize.php?url=https%3A%2F%2Fshapinetwork.com%2Fwp-admin%2Foptions-general.php%3Fsettings-updated%3Dtrue&et_customizer_option_set=theme\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:20:\"hide-if-no-customize\";}}s:23:\"under-construction-page\";O:8:\"stdClass\":6:{s:2:\"id\";s:23:\"under-construction-page\";s:5:\"title\";s:347:\"<img style=\"height: 17px; margin-bottom: -4px; padding-right: 3px;\" src=\"https://shapinetwork.com/wp-content/plugins/under-construction-page/images/ucp_icon.png\" alt=\"Modo en construcción activado\" title=\"Modo en construcción activado\"> <span class=\"ab-label\">UnderConstruction <i class=\"ucp-status-dot ucp-status-dot-enabled\">&#9679;</i></span>\";s:6:\"parent\";s:0:\"\";s:4:\"href\";s:62:\"https://shapinetwork.com/wp-admin/options-general.php?page=ucp\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:11:\"ucp-enabled\";}}s:10:\"ucp-status\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"ucp-status\";s:5:\"title\";s:376:\"Modo en construcción<a href=\"https://shapinetwork.com/wp-admin/admin.php?action=ucp_change_status&amp;new_status=disabled&amp;redirect=%2Fwp-admin%2Foptions-general.php%3Fsettings-updated%3Dtrue&amp;_wpnonce=9b13c3d28a\" id=\"ucp-status-wrapper\" class=\"on\"><span id=\"ucp-status-off\" class=\"ucp-status-btn\">OFF</span><span id=\"ucp-status-on\" class=\"ucp-status-btn\">ON</span></a>\";s:6:\"parent\";s:23:\"under-construction-page\";s:4:\"href\";b:0;s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"ucp-preview\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"ucp-preview\";s:5:\"title\";s:12:\"Vista previa\";s:6:\"parent\";s:23:\"under-construction-page\";s:4:\"href\";s:37:\"https://shapinetwork.com/?ucp_preview\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:6:\"target\";s:5:\"blank\";}}s:12:\"ucp-settings\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"ucp-settings\";s:5:\"title\";s:7:\"Ajustes\";s:6:\"parent\";s:23:\"under-construction-page\";s:4:\"href\";s:62:\"https://shapinetwork.com/wp-admin/options-general.php?page=ucp\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}}s:52:\"mw_adminimize_disabled_admin_bar_administrator_items\";a:0:{}s:45:\"mw_adminimize_disabled_admin_bar_editor_items\";a:0:{}s:45:\"mw_adminimize_disabled_admin_bar_author_items\";a:0:{}s:50:\"mw_adminimize_disabled_admin_bar_contributor_items\";a:0:{}s:49:\"mw_adminimize_disabled_admin_bar_subscriber_items\";a:0:{}s:47:\"mw_adminimize_disabled_admin_bar_customer_items\";a:0:{}s:51:\"mw_adminimize_disabled_admin_bar_shop_manager_items\";a:0:{}s:19:\"mw_adminimize_debug\";i:0;s:28:\"mw_adminimize_multiple_roles\";i:0;s:29:\"mw_adminimize_support_bbpress\";i:0;s:33:\"mw_adminimize_prevent_page_access\";i:0;s:38:\"mw_adminimize_admin_bar_frontend_nodes\";a:34:{s:12:\"user-actions\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"user-actions\";s:5:\"title\";b:0;s:6:\"parent\";s:10:\"my-account\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:0:{}}s:9:\"user-info\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"user-info\";s:5:\"title\";s:360:\"<img alt=\'\' src=\'https://secure.gravatar.com/avatar/b7999da42ed48b2d790650d53dfd67f6?s=64&#038;d=mm&#038;r=g\' srcset=\'https://secure.gravatar.com/avatar/b7999da42ed48b2d790650d53dfd67f6?s=128&#038;d=mm&#038;r=g 2x\' class=\'avatar avatar-64 photo\' height=\'64\' width=\'64\' /><span class=\'display-name\'>Shapinetwork</span><span class=\'username\'>shapinetadmin</span>\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:45:\"https://shapinetwork.com/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:8:\"tabindex\";i:-1;}}s:12:\"edit-profile\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"edit-profile\";s:5:\"title\";s:16:\"Editar mi perfil\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:45:\"https://shapinetwork.com/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:6:\"logout\";O:8:\"stdClass\":6:{s:2:\"id\";s:6:\"logout\";s:5:\"title\";s:5:\"Salir\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:70:\"https://shapinetwork.com/acceso/?action=logout&amp;_wpnonce=ae66835e5d\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:6:\"search\";O:8:\"stdClass\":6:{s:2:\"id\";s:6:\"search\";s:5:\"title\";s:311:\"<form action=\"https://shapinetwork.com/\" method=\"get\" id=\"adminbarsearch\"><input class=\"adminbar-input\" name=\"s\" id=\"adminbar-search\" type=\"text\" value=\"\" maxlength=\"150\" /><label for=\"adminbar-search\" class=\"screen-reader-text\">Buscar</label><input type=\"submit\" class=\"adminbar-button\" value=\"Buscar\"/></form>\";s:6:\"parent\";s:13:\"top-secondary\";s:4:\"href\";b:0;s:5:\"group\";b:0;s:4:\"meta\";a:2:{s:5:\"class\";s:16:\"admin-bar-search\";s:8:\"tabindex\";i:-1;}}s:10:\"my-account\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"my-account\";s:5:\"title\";s:322:\"Hola, <span class=\"display-name\">Shapinetwork</span><img alt=\'\' src=\'https://secure.gravatar.com/avatar/b7999da42ed48b2d790650d53dfd67f6?s=26&#038;d=mm&#038;r=g\' srcset=\'https://secure.gravatar.com/avatar/b7999da42ed48b2d790650d53dfd67f6?s=52&#038;d=mm&#038;r=g 2x\' class=\'avatar avatar-26 photo\' height=\'26\' width=\'26\' />\";s:6:\"parent\";s:13:\"top-secondary\";s:4:\"href\";s:45:\"https://shapinetwork.com/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:11:\"with-avatar\";}}s:5:\"about\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"about\";s:5:\"title\";s:19:\"Acerca de WordPress\";s:6:\"parent\";s:7:\"wp-logo\";s:4:\"href\";s:43:\"https://shapinetwork.com/wp-admin/about.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:5:\"wporg\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"wporg\";s:5:\"title\";s:13:\"WordPress.org\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:25:\"https://es.wordpress.org/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:13:\"documentation\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"documentation\";s:5:\"title\";s:14:\"Documentación\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:28:\"https://codex.wordpress.org/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:14:\"support-forums\";O:8:\"stdClass\":6:{s:2:\"id\";s:14:\"support-forums\";s:5:\"title\";s:7:\"Soporte\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:33:\"https://es.wordpress.org/support/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"feedback\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"feedback\";s:5:\"title\";s:11:\"Sugerencias\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:71:\"https://es.wordpress.org/support/forum/comunidad/peticiones-y-feedback/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"site-name\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"site-name\";s:5:\"title\";s:12:\"shapinetwork\";s:6:\"parent\";b:0;s:4:\"href\";s:34:\"https://shapinetwork.com/wp-admin/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"dashboard\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"dashboard\";s:5:\"title\";s:10:\"Escritorio\";s:6:\"parent\";s:9:\"site-name\";s:4:\"href\";s:34:\"https://shapinetwork.com/wp-admin/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:10:\"appearance\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"appearance\";s:5:\"title\";b:0;s:6:\"parent\";s:9:\"site-name\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:0:{}}s:6:\"themes\";O:8:\"stdClass\":6:{s:2:\"id\";s:6:\"themes\";s:5:\"title\";s:5:\"Temas\";s:6:\"parent\";s:10:\"appearance\";s:4:\"href\";s:44:\"https://shapinetwork.com/wp-admin/themes.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:7:\"widgets\";O:8:\"stdClass\":6:{s:2:\"id\";s:7:\"widgets\";s:5:\"title\";s:7:\"Widgets\";s:6:\"parent\";s:10:\"appearance\";s:4:\"href\";s:45:\"https://shapinetwork.com/wp-admin/widgets.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:5:\"menus\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"menus\";s:5:\"title\";s:6:\"Menús\";s:6:\"parent\";s:10:\"appearance\";s:4:\"href\";s:47:\"https://shapinetwork.com/wp-admin/nav-menus.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:10:\"background\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"background\";s:5:\"title\";s:5:\"Fondo\";s:6:\"parent\";s:10:\"appearance\";s:4:\"href\";s:67:\"https://shapinetwork.com/wp-admin/themes.php?page=custom-background\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:17:\"hide-if-customize\";}}s:8:\"comments\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"comments\";s:5:\"title\";s:210:\"<span class=\"ab-icon\"></span><span class=\"ab-label awaiting-mod pending-count count-0\" aria-hidden=\"true\">0</span><span class=\"screen-reader-text comments-in-moderation-text\">0 comentarios en moderación</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:51:\"https://shapinetwork.com/wp-admin/edit-comments.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-post\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-post\";s:5:\"title\";s:7:\"Entrada\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:46:\"https://shapinetwork.com/wp-admin/post-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"new-media\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"new-media\";s:5:\"title\";s:5:\"Medio\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:47:\"https://shapinetwork.com/wp-admin/media-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-page\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-page\";s:5:\"title\";s:7:\"Página\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:61:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=page\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"new-project\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"new-project\";s:5:\"title\";s:8:\"Proyecto\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:64:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=project\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"new-product\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"new-product\";s:5:\"title\";s:8:\"Producto\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:64:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=product\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:14:\"new-shop_order\";O:8:\"stdClass\":6:{s:2:\"id\";s:14:\"new-shop_order\";s:5:\"title\";s:6:\"Pedido\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:67:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=shop_order\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:15:\"new-shop_coupon\";O:8:\"stdClass\":6:{s:2:\"id\";s:15:\"new-shop_coupon\";s:5:\"title\";s:6:\"Cupón\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:68:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=shop_coupon\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-user\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-user\";s:5:\"title\";s:7:\"Usuario\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:46:\"https://shapinetwork.com/wp-admin/user-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:13:\"top-secondary\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"top-secondary\";s:5:\"title\";b:0;s:6:\"parent\";b:0;s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:1:{s:5:\"class\";s:16:\"ab-top-secondary\";}}s:16:\"wp-logo-external\";O:8:\"stdClass\":6:{s:2:\"id\";s:16:\"wp-logo-external\";s:5:\"title\";b:0;s:6:\"parent\";s:7:\"wp-logo\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:1:{s:5:\"class\";s:16:\"ab-sub-secondary\";}}s:20:\"customize-divi-theme\";O:8:\"stdClass\":6:{s:2:\"id\";s:20:\"customize-divi-theme\";s:5:\"title\";s:23:\"Personalizador de temas\";s:6:\"parent\";s:10:\"appearance\";s:4:\"href\";s:116:\"https://shapinetwork.com/wp-admin/customize.php?url=https%3A%2F%2Fshapinetwork.com%2F&et_customizer_option_set=theme\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:20:\"hide-if-no-customize\";}}s:23:\"under-construction-page\";O:8:\"stdClass\":6:{s:2:\"id\";s:23:\"under-construction-page\";s:5:\"title\";s:347:\"<img style=\"height: 17px; margin-bottom: -4px; padding-right: 3px;\" src=\"https://shapinetwork.com/wp-content/plugins/under-construction-page/images/ucp_icon.png\" alt=\"Modo en construcción activado\" title=\"Modo en construcción activado\"> <span class=\"ab-label\">UnderConstruction <i class=\"ucp-status-dot ucp-status-dot-enabled\">&#9679;</i></span>\";s:6:\"parent\";s:0:\"\";s:4:\"href\";s:62:\"https://shapinetwork.com/wp-admin/options-general.php?page=ucp\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:11:\"ucp-enabled\";}}s:10:\"ucp-status\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"ucp-status\";s:5:\"title\";s:320:\"Modo en construcción<a href=\"https://shapinetwork.com/wp-admin/admin.php?action=ucp_change_status&amp;new_status=disabled&amp;redirect=%2F&amp;_wpnonce=9b13c3d28a\" id=\"ucp-status-wrapper\" class=\"on\"><span id=\"ucp-status-off\" class=\"ucp-status-btn\">OFF</span><span id=\"ucp-status-on\" class=\"ucp-status-btn\">ON</span></a>\";s:6:\"parent\";s:23:\"under-construction-page\";s:4:\"href\";b:0;s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"ucp-preview\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"ucp-preview\";s:5:\"title\";s:12:\"Vista previa\";s:6:\"parent\";s:23:\"under-construction-page\";s:4:\"href\";s:37:\"https://shapinetwork.com/?ucp_preview\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:6:\"target\";s:5:\"blank\";}}s:12:\"ucp-settings\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"ucp-settings\";s:5:\"title\";s:7:\"Ajustes\";s:6:\"parent\";s:23:\"under-construction-page\";s:4:\"href\";s:62:\"https://shapinetwork.com/wp-admin/options-general.php?page=ucp\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}}s:61:\"mw_adminimize_disabled_admin_bar_frontend_administrator_items\";a:0:{}s:54:\"mw_adminimize_disabled_admin_bar_frontend_editor_items\";a:0:{}s:54:\"mw_adminimize_disabled_admin_bar_frontend_author_items\";a:0:{}s:59:\"mw_adminimize_disabled_admin_bar_frontend_contributor_items\";a:0:{}s:58:\"mw_adminimize_disabled_admin_bar_frontend_subscriber_items\";a:0:{}s:56:\"mw_adminimize_disabled_admin_bar_frontend_customer_items\";a:0:{}s:60:\"mw_adminimize_disabled_admin_bar_frontend_shop_manager_items\";a:0:{}s:24:\"_mw_adminimize_user_info\";i:0;s:21:\"_mw_adminimize_footer\";i:0;s:21:\"_mw_adminimize_header\";i:0;s:34:\"_mw_adminimize_exclude_super_admin\";i:0;s:24:\"_mw_adminimize_tb_window\";i:0;s:23:\"_mw_adminimize_cat_full\";i:0;s:26:\"_mw_adminimize_db_redirect\";i:0;s:26:\"_mw_adminimize_ui_redirect\";i:0;s:21:\"_mw_adminimize_advice\";i:0;s:25:\"_mw_adminimize_advice_txt\";s:0:\"\";s:24:\"_mw_adminimize_timestamp\";i:0;s:30:\"_mw_adminimize_db_redirect_txt\";s:0:\"\";s:47:\"mw_adminimize_disabled_menu_administrator_items\";a:0:{}s:50:\"mw_adminimize_disabled_submenu_administrator_items\";a:0:{}s:40:\"mw_adminimize_disabled_menu_editor_items\";a:0:{}s:43:\"mw_adminimize_disabled_submenu_editor_items\";a:0:{}s:40:\"mw_adminimize_disabled_menu_author_items\";a:0:{}s:43:\"mw_adminimize_disabled_submenu_author_items\";a:0:{}s:45:\"mw_adminimize_disabled_menu_contributor_items\";a:0:{}s:48:\"mw_adminimize_disabled_submenu_contributor_items\";a:0:{}s:44:\"mw_adminimize_disabled_menu_subscriber_items\";a:0:{}s:47:\"mw_adminimize_disabled_submenu_subscriber_items\";a:0:{}s:42:\"mw_adminimize_disabled_menu_customer_items\";a:0:{}s:45:\"mw_adminimize_disabled_submenu_customer_items\";a:0:{}s:46:\"mw_adminimize_disabled_menu_shop_manager_items\";a:7:{i:0;s:32:\"wc-admin&path=/analytics/revenue\";i:1;s:10:\"separator2\";i:2;s:11:\"plugins.php\";i:3;s:9:\"tools.php\";i:4;s:19:\"options-general.php\";i:5;s:14:\"separator-last\";i:6;s:21:\"et_ghost_divi_options\";}s:49:\"mw_adminimize_disabled_submenu_shop_manager_items\";a:4:{i:0;s:13:\"index.php__10\";i:1;s:14:\"woocommerce__5\";i:2;s:14:\"woocommerce__6\";i:3;s:14:\"woocommerce__7\";}s:28:\"_mw_adminimize_own_menu_slug\";s:0:\"\";s:35:\"_mw_adminimize_own_menu_custom_slug\";s:0:\"\";s:56:\"mw_adminimize_disabled_global_option_administrator_items\";a:0:{}s:57:\"mw_adminimize_disabled_metaboxes_post_administrator_items\";a:0:{}s:57:\"mw_adminimize_disabled_metaboxes_page_administrator_items\";a:0:{}s:60:\"mw_adminimize_disabled_metaboxes_project_administrator_items\";a:0:{}s:60:\"mw_adminimize_disabled_metaboxes_product_administrator_items\";a:0:{}s:54:\"mw_adminimize_disabled_link_option_administrator_items\";a:0:{}s:58:\"mw_adminimize_disabled_nav_menu_option_administrator_items\";a:0:{}s:56:\"mw_adminimize_disabled_widget_option_administrator_items\";a:0:{}s:59:\"mw_adminimize_disabled_dashboard_option_administrator_items\";a:0:{}s:49:\"mw_adminimize_disabled_global_option_editor_items\";a:0:{}s:50:\"mw_adminimize_disabled_metaboxes_post_editor_items\";a:0:{}s:50:\"mw_adminimize_disabled_metaboxes_page_editor_items\";a:0:{}s:53:\"mw_adminimize_disabled_metaboxes_project_editor_items\";a:0:{}s:53:\"mw_adminimize_disabled_metaboxes_product_editor_items\";a:0:{}s:47:\"mw_adminimize_disabled_link_option_editor_items\";a:0:{}s:51:\"mw_adminimize_disabled_nav_menu_option_editor_items\";a:0:{}s:49:\"mw_adminimize_disabled_widget_option_editor_items\";a:0:{}s:52:\"mw_adminimize_disabled_dashboard_option_editor_items\";a:0:{}s:49:\"mw_adminimize_disabled_global_option_author_items\";a:0:{}s:50:\"mw_adminimize_disabled_metaboxes_post_author_items\";a:0:{}s:50:\"mw_adminimize_disabled_metaboxes_page_author_items\";a:0:{}s:53:\"mw_adminimize_disabled_metaboxes_project_author_items\";a:0:{}s:53:\"mw_adminimize_disabled_metaboxes_product_author_items\";a:0:{}s:47:\"mw_adminimize_disabled_link_option_author_items\";a:0:{}s:51:\"mw_adminimize_disabled_nav_menu_option_author_items\";a:0:{}s:49:\"mw_adminimize_disabled_widget_option_author_items\";a:0:{}s:52:\"mw_adminimize_disabled_dashboard_option_author_items\";a:0:{}s:54:\"mw_adminimize_disabled_global_option_contributor_items\";a:0:{}s:55:\"mw_adminimize_disabled_metaboxes_post_contributor_items\";a:0:{}s:55:\"mw_adminimize_disabled_metaboxes_page_contributor_items\";a:0:{}s:58:\"mw_adminimize_disabled_metaboxes_project_contributor_items\";a:0:{}s:58:\"mw_adminimize_disabled_metaboxes_product_contributor_items\";a:0:{}s:52:\"mw_adminimize_disabled_link_option_contributor_items\";a:0:{}s:56:\"mw_adminimize_disabled_nav_menu_option_contributor_items\";a:0:{}s:54:\"mw_adminimize_disabled_widget_option_contributor_items\";a:0:{}s:57:\"mw_adminimize_disabled_dashboard_option_contributor_items\";a:0:{}s:53:\"mw_adminimize_disabled_global_option_subscriber_items\";a:0:{}s:54:\"mw_adminimize_disabled_metaboxes_post_subscriber_items\";a:0:{}s:54:\"mw_adminimize_disabled_metaboxes_page_subscriber_items\";a:0:{}s:57:\"mw_adminimize_disabled_metaboxes_project_subscriber_items\";a:0:{}s:57:\"mw_adminimize_disabled_metaboxes_product_subscriber_items\";a:0:{}s:51:\"mw_adminimize_disabled_link_option_subscriber_items\";a:0:{}s:55:\"mw_adminimize_disabled_nav_menu_option_subscriber_items\";a:0:{}s:53:\"mw_adminimize_disabled_widget_option_subscriber_items\";a:0:{}s:56:\"mw_adminimize_disabled_dashboard_option_subscriber_items\";a:0:{}s:51:\"mw_adminimize_disabled_global_option_customer_items\";a:0:{}s:52:\"mw_adminimize_disabled_metaboxes_post_customer_items\";a:0:{}s:52:\"mw_adminimize_disabled_metaboxes_page_customer_items\";a:0:{}s:55:\"mw_adminimize_disabled_metaboxes_project_customer_items\";a:0:{}s:55:\"mw_adminimize_disabled_metaboxes_product_customer_items\";a:0:{}s:49:\"mw_adminimize_disabled_link_option_customer_items\";a:0:{}s:53:\"mw_adminimize_disabled_nav_menu_option_customer_items\";a:0:{}s:51:\"mw_adminimize_disabled_widget_option_customer_items\";a:0:{}s:54:\"mw_adminimize_disabled_dashboard_option_customer_items\";a:0:{}s:55:\"mw_adminimize_disabled_global_option_shop_manager_items\";a:0:{}s:56:\"mw_adminimize_disabled_metaboxes_post_shop_manager_items\";a:0:{}s:56:\"mw_adminimize_disabled_metaboxes_page_shop_manager_items\";a:0:{}s:59:\"mw_adminimize_disabled_metaboxes_project_shop_manager_items\";a:0:{}s:59:\"mw_adminimize_disabled_metaboxes_product_shop_manager_items\";a:0:{}s:53:\"mw_adminimize_disabled_link_option_shop_manager_items\";a:0:{}s:57:\"mw_adminimize_disabled_nav_menu_option_shop_manager_items\";a:0:{}s:55:\"mw_adminimize_disabled_widget_option_shop_manager_items\";a:0:{}s:58:\"mw_adminimize_disabled_dashboard_option_shop_manager_items\";a:0:{}s:25:\"_mw_adminimize_own_values\";s:0:\"\";s:26:\"_mw_adminimize_own_options\";s:0:\"\";s:30:\"_mw_adminimize_own_post_values\";s:0:\"\";s:31:\"_mw_adminimize_own_post_options\";s:0:\"\";s:30:\"_mw_adminimize_own_page_values\";s:0:\"\";s:31:\"_mw_adminimize_own_page_options\";s:0:\"\";s:33:\"_mw_adminimize_own_values_project\";s:0:\"\";s:34:\"_mw_adminimize_own_options_project\";s:0:\"\";s:33:\"_mw_adminimize_own_values_product\";s:0:\"\";s:34:\"_mw_adminimize_own_options_product\";s:0:\"\";s:30:\"_mw_adminimize_own_link_values\";s:0:\"\";s:31:\"_mw_adminimize_own_link_options\";s:0:\"\";s:34:\"_mw_adminimize_own_nav_menu_values\";s:0:\"\";s:35:\"_mw_adminimize_own_nav_menu_options\";s:0:\"\";s:32:\"_mw_adminimize_own_widget_values\";s:0:\"\";s:33:\"_mw_adminimize_own_widget_options\";s:0:\"\";s:35:\"_mw_adminimize_own_dashboard_values\";s:0:\"\";s:36:\"_mw_adminimize_own_dashboard_options\";s:0:\"\";s:31:\"mw_adminimize_dashboard_widgets\";a:8:{s:17:\"dashboard_php_nag\";a:4:{s:2:\"id\";s:17:\"dashboard_php_nag\";s:5:\"title\";s:27:\"Es necesario actualizar PHP\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"high\";}s:19:\"dashboard_right_now\";a:4:{s:2:\"id\";s:19:\"dashboard_right_now\";s:5:\"title\";s:0:\"\";s:7:\"context\";s:8:\"advanced\";s:8:\"priority\";s:3:\"low\";}s:18:\"dashboard_activity\";a:4:{s:2:\"id\";s:18:\"dashboard_activity\";s:5:\"title\";s:0:\"\";s:7:\"context\";s:8:\"advanced\";s:8:\"priority\";s:3:\"low\";}s:22:\"tribe_dashboard_widget\";a:4:{s:2:\"id\";s:22:\"tribe_dashboard_widget\";s:5:\"title\";s:0:\"\";s:7:\"context\";s:8:\"advanced\";s:8:\"priority\";s:3:\"low\";}s:21:\"dashboard_quick_press\";a:4:{s:2:\"id\";s:21:\"dashboard_quick_press\";s:5:\"title\";s:0:\"\";s:7:\"context\";s:8:\"advanced\";s:8:\"priority\";s:3:\"low\";}s:17:\"dashboard_primary\";a:4:{s:2:\"id\";s:17:\"dashboard_primary\";s:5:\"title\";s:0:\"\";s:7:\"context\";s:8:\"advanced\";s:8:\"priority\";s:3:\"low\";}s:36:\"woocommerce_dashboard_recent_reviews\";a:4:{s:2:\"id\";s:36:\"woocommerce_dashboard_recent_reviews\";s:5:\"title\";s:41:\"Valoraciones recientes de Sinergia Market\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";}s:28:\"woocommerce_dashboard_status\";a:4:{s:2:\"id\";s:28:\"woocommerce_dashboard_status\";s:5:\"title\";s:25:\"Estado de Sinergia Market\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";}}s:26:\"mw_adminimize_default_menu\";a:19:{i:0;a:7:{i:0;s:10:\"Escritorio\";i:1;s:4:\"read\";i:2;s:9:\"index.php\";i:3;s:0:\"\";i:4;s:72:\"menu-top menu-top-first menu-icon-dashboard menu-top-first menu-top-last\";i:5;s:14:\"menu-dashboard\";i:6;s:19:\"dashicons-dashboard\";}i:1;a:5:{i:0;s:0:\"\";i:1;s:4:\"read\";i:2;s:10:\"separator1\";i:3;s:0:\"\";i:4;s:17:\"wp-menu-separator\";}i:2;a:7:{i:0;s:8:\"Entradas\";i:1;s:10:\"edit_posts\";i:2;s:8:\"edit.php\";i:3;s:0:\"\";i:4;s:52:\"menu-top menu-icon-post open-if-no-js menu-top-first\";i:5;s:10:\"menu-posts\";i:6;s:20:\"dashicons-admin-post\";}i:3;a:7:{i:0;s:6:\"Medios\";i:1;s:12:\"upload_files\";i:2;s:10:\"upload.php\";i:3;s:0:\"\";i:4;s:24:\"menu-top menu-icon-media\";i:5;s:10:\"menu-media\";i:6;s:21:\"dashicons-admin-media\";}i:4;a:7:{i:0;s:8:\"Páginas\";i:1;s:10:\"edit_pages\";i:2;s:23:\"edit.php?post_type=page\";i:3;s:0:\"\";i:4;s:23:\"menu-top menu-icon-page\";i:5;s:10:\"menu-pages\";i:6;s:20:\"dashicons-admin-page\";}i:5;a:7:{i:0;s:205:\"Comentarios <span class=\"awaiting-mod count-0\"><span class=\"pending-count\" aria-hidden=\"true\">0</span><span class=\"comments-in-moderation-text screen-reader-text\">0 comentarios en moderación</span></span>\";i:1;s:10:\"edit_posts\";i:2;s:17:\"edit-comments.php\";i:3;s:0:\"\";i:4;s:27:\"menu-top menu-icon-comments\";i:5;s:13:\"menu-comments\";i:6;s:24:\"dashicons-admin-comments\";}i:6;a:7:{i:0;s:9:\"Proyectos\";i:1;s:10:\"edit_posts\";i:2;s:26:\"edit.php?post_type=project\";i:3;s:0:\"\";i:4;s:40:\"menu-top menu-icon-project menu-top-last\";i:5;s:18:\"menu-posts-project\";i:6;s:20:\"dashicons-admin-post\";}i:7;a:5:{i:0;s:0:\"\";i:1;s:4:\"read\";i:2;s:21:\"separator-woocommerce\";i:3;s:0:\"\";i:4;s:29:\"wp-menu-separator woocommerce\";}i:8;a:7:{i:0;s:15:\"Sinergia Market\";i:1;s:18:\"manage_woocommerce\";i:2;s:11:\"woocommerce\";i:3;s:15:\"Sinergia Market\";i:4;s:67:\"menu-top menu-icon-generic toplevel_page_woocommerce menu-top-first\";i:5;s:25:\"toplevel_page_woocommerce\";i:6;s:76:\"https://sinergiared.com/wp-content/uploads/2018/11/icono-market-sinergia.png\";}i:9;a:7:{i:0;s:9:\"Productos\";i:1;s:13:\"edit_products\";i:2;s:26:\"edit.php?post_type=product\";i:3;s:0:\"\";i:4;s:26:\"menu-top menu-icon-product\";i:5;s:18:\"menu-posts-product\";i:6;s:20:\"dashicons-admin-post\";}i:10;a:7:{i:0;s:9:\"Análisis\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:32:\"wc-admin&path=/analytics/revenue\";i:3;s:9:\"Análisis\";i:4;s:69:\"menu-top toplevel_page_wc-admin&path=/analytics/revenue menu-top-last\";i:5;s:46:\"toplevel_page_wc-admin&path=/analytics/revenue\";i:6;s:19:\"dashicons-chart-bar\";}i:11;a:5:{i:0;s:0:\"\";i:1;s:4:\"read\";i:2;s:10:\"separator2\";i:3;s:0:\"\";i:4;s:17:\"wp-menu-separator\";}i:12;a:7:{i:0;s:10:\"Apariencia\";i:1;s:13:\"switch_themes\";i:2;s:10:\"themes.php\";i:3;s:0:\"\";i:4;s:44:\"menu-top menu-icon-appearance menu-top-first\";i:5;s:15:\"menu-appearance\";i:6;s:26:\"dashicons-admin-appearance\";}i:13;a:7:{i:0;s:87:\"Plugins <span class=\"update-plugins count-0\"><span class=\"plugin-count\">0</span></span>\";i:1;s:16:\"activate_plugins\";i:2;s:11:\"plugins.php\";i:3;s:0:\"\";i:4;s:26:\"menu-top menu-icon-plugins\";i:5;s:12:\"menu-plugins\";i:6;s:23:\"dashicons-admin-plugins\";}i:14;a:7:{i:0;s:8:\"Usuarios\";i:1;s:10:\"list_users\";i:2;s:9:\"users.php\";i:3;s:0:\"\";i:4;s:24:\"menu-top menu-icon-users\";i:5;s:10:\"menu-users\";i:6;s:21:\"dashicons-admin-users\";}i:15;a:7:{i:0;s:12:\"Herramientas\";i:1;s:10:\"edit_posts\";i:2;s:9:\"tools.php\";i:3;s:0:\"\";i:4;s:24:\"menu-top menu-icon-tools\";i:5;s:10:\"menu-tools\";i:6;s:21:\"dashicons-admin-tools\";}i:16;a:7:{i:0;s:97:\"Ajustes<span class=\'update-plugins rsssl-update-count\'><span class=\'update-count\'>1</span></span>\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-general.php\";i:3;s:0:\"\";i:4;s:41:\"menu-top menu-icon-settings menu-top-last\";i:5;s:13:\"menu-settings\";i:6;s:24:\"dashicons-admin-settings\";}i:17;a:5:{i:0;s:0:\"\";i:1;s:4:\"read\";i:2;s:14:\"separator-last\";i:3;s:0:\"\";i:4;s:17:\"wp-menu-separator\";}i:18;a:7:{i:0;s:8:\"Sinergia\";i:1;s:13:\"switch_themes\";i:2;s:21:\"et_ghost_divi_options\";i:3;s:8:\"Sinergia\";i:4;s:91:\"menu-top menu-icon-generic toplevel_page_et_ghost_divi_options menu-top-first menu-top-last\";i:5;s:35:\"toplevel_page_et_ghost_divi_options\";i:6;s:23:\"dashicons-admin-generic\";}}s:29:\"mw_adminimize_default_submenu\";a:14:{s:9:\"index.php\";a:2:{i:0;a:3:{i:0;s:6:\"Inicio\";i:1;s:4:\"read\";i:2;s:9:\"index.php\";}i:10;a:3:{i:0;s:95:\"Actualizaciones <span class=\"update-plugins count-0\"><span class=\"update-count\">0</span></span>\";i:1;s:11:\"update_core\";i:2;s:15:\"update-core.php\";}}s:10:\"upload.php\";a:2:{i:5;a:3:{i:0;s:10:\"Biblioteca\";i:1;s:12:\"upload_files\";i:2;s:10:\"upload.php\";}i:10;a:3:{i:0;s:13:\"Añadir nuevo\";i:1;s:12:\"upload_files\";i:2;s:13:\"media-new.php\";}}s:8:\"edit.php\";a:4:{i:5;a:3:{i:0;s:18:\"Todas las entradas\";i:1;s:10:\"edit_posts\";i:2;s:8:\"edit.php\";}i:10;a:3:{i:0;s:13:\"Añadir nueva\";i:1;s:10:\"edit_posts\";i:2;s:12:\"post-new.php\";}i:15;a:3:{i:0;s:11:\"Categorías\";i:1;s:17:\"manage_categories\";i:2;s:31:\"edit-tags.php?taxonomy=category\";}i:16;a:3:{i:0;s:9:\"Etiquetas\";i:1;s:16:\"manage_post_tags\";i:2;s:31:\"edit-tags.php?taxonomy=post_tag\";}}s:23:\"edit.php?post_type=page\";a:2:{i:5;a:3:{i:0;s:18:\"Todas las páginas\";i:1;s:10:\"edit_pages\";i:2;s:23:\"edit.php?post_type=page\";}i:10;a:3:{i:0;s:13:\"Añadir nueva\";i:1;s:10:\"edit_pages\";i:2;s:27:\"post-new.php?post_type=page\";}}s:26:\"edit.php?post_type=project\";a:4:{i:5;a:3:{i:0;s:19:\"Todos Los Proyectos\";i:1;s:10:\"edit_posts\";i:2;s:26:\"edit.php?post_type=project\";}i:10;a:3:{i:0;s:13:\"Añadir nuevo\";i:1;s:10:\"edit_posts\";i:2;s:30:\"post-new.php?post_type=project\";}i:15;a:3:{i:0;s:11:\"Categorías\";i:1;s:17:\"manage_categories\";i:2;s:61:\"edit-tags.php?taxonomy=project_category&amp;post_type=project\";}i:16;a:3:{i:0;s:9:\"Etiquetas\";i:1;s:17:\"manage_categories\";i:2;s:56:\"edit-tags.php?taxonomy=project_tag&amp;post_type=project\";}}s:26:\"edit.php?post_type=product\";a:5:{i:5;a:3:{i:0;s:19:\"Todos los productos\";i:1;s:13:\"edit_products\";i:2;s:26:\"edit.php?post_type=product\";}i:10;a:3:{i:0;s:13:\"Añadir nuevo\";i:1;s:13:\"edit_products\";i:2;s:30:\"post-new.php?post_type=product\";}i:15;a:3:{i:0;s:11:\"Categorías\";i:1;s:20:\"manage_product_terms\";i:2;s:56:\"edit-tags.php?taxonomy=product_cat&amp;post_type=product\";}i:16;a:3:{i:0;s:9:\"Etiquetas\";i:1;s:20:\"manage_product_terms\";i:2;s:56:\"edit-tags.php?taxonomy=product_tag&amp;post_type=product\";}i:17;a:4:{i:0;s:9:\"Atributos\";i:1;s:20:\"manage_product_terms\";i:2;s:18:\"product_attributes\";i:3;s:9:\"Atributos\";}}s:10:\"themes.php\";a:7:{i:5;a:3:{i:0;s:5:\"Temas\";i:1;s:13:\"switch_themes\";i:2;s:10:\"themes.php\";}i:6;a:5:{i:0;s:12:\"Personalizar\";i:1;s:9:\"customize\";i:2;s:82:\"customize.php?return=%2Fwp-admin%2Foptions-general.php%3Fpage%3Dadminimize-options\";i:3;s:0:\"\";i:4;s:20:\"hide-if-no-customize\";}i:7;a:3:{i:0;s:7:\"Widgets\";i:1;s:18:\"edit_theme_options\";i:2;s:11:\"widgets.php\";}i:10;a:3:{i:0;s:6:\"Menús\";i:1;s:18:\"edit_theme_options\";i:2;s:13:\"nav-menus.php\";}i:20;a:5:{i:0;s:5:\"Fondo\";i:1;s:13:\"switch_themes\";i:2;s:127:\"customize.php?return=%2Fwp-admin%2Foptions-general.php%3Fpage%3Dadminimize-options&#038;autofocus%5Bcontrol%5D=background_image\";i:3;s:0:\"\";i:4;s:20:\"hide-if-no-customize\";}i:21;a:4:{i:0;s:5:\"Fondo\";i:1;s:18:\"edit_theme_options\";i:2;s:17:\"custom-background\";i:3;s:5:\"Fondo\";}i:22;a:4:{i:0;s:15:\"Editor de temas\";i:1;s:11:\"edit_themes\";i:2;s:16:\"theme-editor.php\";i:3;s:15:\"Editor de temas\";}}s:11:\"plugins.php\";a:3:{i:5;a:3:{i:0;s:18:\"Plugins instalados\";i:1;s:16:\"activate_plugins\";i:2;s:11:\"plugins.php\";}i:10;a:3:{i:0;s:13:\"Añadir nuevo\";i:1;s:15:\"install_plugins\";i:2;s:18:\"plugin-install.php\";}i:15;a:3:{i:0;s:17:\"Editor de plugins\";i:1;s:12:\"edit_plugins\";i:2;s:17:\"plugin-editor.php\";}}s:9:\"users.php\";a:3:{i:5;a:3:{i:0;s:18:\"Todos los usuarios\";i:1;s:10:\"list_users\";i:2;s:9:\"users.php\";}i:10;a:3:{i:0;s:13:\"Añadir nuevo\";i:1;s:12:\"create_users\";i:2;s:12:\"user-new.php\";}i:15;a:3:{i:0;s:9:\"Tu perfil\";i:1;s:4:\"read\";i:2;s:11:\"profile.php\";}}s:9:\"tools.php\";a:7:{i:5;a:3:{i:0;s:24:\"Herramientas disponibles\";i:1;s:10:\"edit_posts\";i:2;s:9:\"tools.php\";}i:10;a:3:{i:0;s:8:\"Importar\";i:1;s:6:\"import\";i:2;s:10:\"import.php\";}i:15;a:3:{i:0;s:8:\"Exportar\";i:1;s:6:\"export\";i:2;s:10:\"export.php\";}i:20;a:3:{i:0;s:15:\"Salud del sitio\";i:1;s:23:\"view_site_health_checks\";i:2;s:15:\"site-health.php\";}i:25;a:3:{i:0;s:29:\"Exportar los datos personales\";i:1;s:27:\"export_others_personal_data\";i:2;s:24:\"export-personal-data.php\";}i:30;a:3:{i:0;s:27:\"Borrar los datos personales\";i:1;s:26:\"erase_others_personal_data\";i:2;s:23:\"erase-personal-data.php\";}i:31;a:4:{i:0;s:20:\"Acciones programadas\";i:1;s:14:\"manage_options\";i:2;s:16:\"action-scheduler\";i:3;s:20:\"Acciones programadas\";}}s:19:\"options-general.php\";a:11:{i:10;a:3:{i:0;s:9:\"Generales\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-general.php\";}i:15;a:3:{i:0;s:9:\"Escritura\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-writing.php\";}i:20;a:3:{i:0;s:7:\"Lectura\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-reading.php\";}i:25;a:3:{i:0;s:11:\"Comentarios\";i:1;s:14:\"manage_options\";i:2;s:22:\"options-discussion.php\";}i:30;a:3:{i:0;s:6:\"Medios\";i:1;s:14:\"manage_options\";i:2;s:17:\"options-media.php\";}i:40;a:3:{i:0;s:19:\"Enlaces permanentes\";i:1;s:14:\"manage_options\";i:2;s:21:\"options-permalink.php\";}i:45;a:3:{i:0;s:10:\"Privacidad\";i:1;s:22:\"manage_privacy_options\";i:2;s:19:\"options-privacy.php\";}i:46;a:4:{i:0;s:10:\"Adminimize\";i:1;s:14:\"manage_options\";i:2;s:18:\"adminimize-options\";i:3;s:22:\"Opciones de Adminimize\";}i:47;a:4:{i:0;s:17:\"Disable Gutenberg\";i:1;s:14:\"manage_options\";i:2;s:17:\"disable-gutenberg\";i:3;s:17:\"Disable Gutenberg\";}i:48;a:4:{i:0;s:17:\"UnderConstruction\";i:1;s:14:\"manage_options\";i:2;s:3:\"ucp\";i:3;s:17:\"UnderConstruction\";}i:49;a:4:{i:0;s:93:\"SSL<span class=\'update-plugins rsssl-update-count\'><span class=\'update-count\'>1</span></span>\";i:1;s:16:\"activate_plugins\";i:2;s:25:\"rlrsssl_really_simple_ssl\";i:3;s:11:\"Ajustes SSL\";}}s:11:\"woocommerce\";a:8:{i:0;a:4:{i:0;s:10:\"Escritorio\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:8:\"wc-admin\";i:3;s:10:\"Escritorio\";}i:1;a:4:{i:0;s:7:\"Pedidos\";i:1;s:16:\"edit_shop_orders\";i:2;s:29:\"edit.php?post_type=shop_order\";i:3;s:7:\"Pedidos\";}i:2;a:4:{i:0;s:7:\"Cupones\";i:1;s:17:\"edit_shop_coupons\";i:2;s:30:\"edit.php?post_type=shop_coupon\";i:3;s:7:\"Cupones\";}i:3;a:4:{i:0;s:8:\"Clientes\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:24:\"wc-admin&path=/customers\";i:3;s:8:\"Clientes\";}i:4;a:4:{i:0;s:8:\"Informes\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:10:\"wc-reports\";i:3;s:8:\"Informes\";}i:5;a:4:{i:0;s:7:\"Ajustes\";i:1;s:18:\"manage_woocommerce\";i:2;s:11:\"wc-settings\";i:3;s:26:\"Ajustes de Sinergia Market\";}i:6;a:4:{i:0;s:6:\"Estado\";i:1;s:18:\"manage_woocommerce\";i:2;s:9:\"wc-status\";i:3;s:25:\"Estado de Sinergia Market\";}i:7;a:4:{i:0;s:12:\"Extensiones \";i:1;s:18:\"manage_woocommerce\";i:2;s:9:\"wc-addons\";i:3;s:30:\"Extensiones de Sinergia Market\";}}s:32:\"wc-admin&path=/analytics/revenue\";a:9:{i:0;a:4:{i:0;s:8:\"Ingresos\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:32:\"wc-admin&path=/analytics/revenue\";i:3;s:8:\"Ingresos\";}i:1;a:4:{i:0;s:7:\"Pedidos\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:31:\"wc-admin&path=/analytics/orders\";i:3;s:7:\"Pedidos\";}i:2;a:4:{i:0;s:9:\"Productos\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:33:\"wc-admin&path=/analytics/products\";i:3;s:9:\"Productos\";}i:3;a:4:{i:0;s:11:\"Categorías\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:35:\"wc-admin&path=/analytics/categories\";i:3;s:11:\"Categorías\";}i:4;a:4:{i:0;s:7:\"Cupones\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:32:\"wc-admin&path=/analytics/coupons\";i:3;s:7:\"Cupones\";}i:5;a:4:{i:0;s:9:\"Impuestos\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:30:\"wc-admin&path=/analytics/taxes\";i:3;s:9:\"Impuestos\";}i:6;a:4:{i:0;s:9:\"Descargas\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:34:\"wc-admin&path=/analytics/downloads\";i:3;s:9:\"Descargas\";}i:7;a:4:{i:0;s:10:\"Inventario\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:30:\"wc-admin&path=/analytics/stock\";i:3;s:10:\"Inventario\";}i:8;a:4:{i:0;s:7:\"Ajustes\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:33:\"wc-admin&path=/analytics/settings\";i:3;s:7:\"Ajustes\";}}s:21:\"et_ghost_divi_options\";a:5:{i:0;a:4:{i:0;s:17:\"Opciones del tema\";i:1;s:14:\"manage_options\";i:2;s:21:\"et_ghost_divi_options\";i:3;s:17:\"Opciones del tema\";}i:1;a:4:{i:0;s:23:\"Personalizador de temas\";i:1;s:14:\"manage_options\";i:2;s:44:\"customize.php?et_customizer_option_set=theme\";i:3;s:23:\"Personalizador de temas\";}i:2;a:4:{i:0;s:13:\"Editor de Rol\";i:1;s:14:\"manage_options\";i:2;s:25:\"et_ghost_divi_role_editor\";i:3;s:13:\"Editor de Rol\";}i:3;a:4:{i:0;s:22:\"Biblioteca de Sinergia\";i:1;s:14:\"manage_options\";i:2;s:31:\"edit.php?post_type=et_pb_layout\";i:3;s:22:\"Biblioteca de Sinergia\";}i:4;a:4:{i:0;s:14:\"Support Center\";i:1;s:14:\"manage_options\";i:2;s:17:\"et_support_center\";i:3;s:14:\"Support Center\";}}}}', 'yes'),
(159, 'nav_menu_roles_db_version', '1.10.2', 'yes'),
(164, 'rlrsssl_options', 'a:16:{s:12:\"site_has_ssl\";b:1;s:4:\"hsts\";b:0;s:22:\"htaccess_warning_shown\";b:0;s:19:\"review_notice_shown\";b:0;s:25:\"ssl_success_message_shown\";b:1;s:26:\"autoreplace_insecure_links\";b:1;s:17:\"plugin_db_version\";s:5:\"3.3.4\";s:5:\"debug\";b:0;s:20:\"do_not_edit_htaccess\";b:0;s:17:\"htaccess_redirect\";b:0;s:11:\"ssl_enabled\";b:1;s:19:\"javascript_redirect\";b:0;s:11:\"wp_redirect\";b:1;s:31:\"switch_mixed_content_fixer_hook\";b:0;s:19:\"dismiss_all_notices\";b:0;s:21:\"dismiss_review_notice\";b:0;}', 'yes'),
(172, 'rsssl_activation_timestamp', '1585254193', 'yes'),
(191, 'action_scheduler_hybrid_store_demarkation', '5', 'yes'),
(192, 'schema-ActionScheduler_StoreSchema', '3.0.1585254934', 'yes'),
(193, 'schema-ActionScheduler_LoggerSchema', '2.0.1585254934', 'yes'),
(196, 'woocommerce_store_address', 'cale 1', 'yes'),
(197, 'woocommerce_store_address_2', '', 'yes'),
(198, 'woocommerce_store_city', 'lima', 'yes'),
(199, 'woocommerce_default_country', 'PE:APU', 'yes'),
(200, 'woocommerce_store_postcode', '111', 'yes'),
(201, 'woocommerce_allowed_countries', 'all', 'yes'),
(202, 'woocommerce_all_except_countries', '', 'yes'),
(203, 'woocommerce_specific_allowed_countries', '', 'yes'),
(204, 'woocommerce_ship_to_countries', '', 'yes'),
(205, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(206, 'woocommerce_default_customer_address', 'base', 'yes'),
(207, 'woocommerce_calc_taxes', 'no', 'yes'),
(208, 'woocommerce_enable_coupons', 'yes', 'yes'),
(209, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(210, 'woocommerce_currency', 'PEN', 'yes'),
(211, 'woocommerce_currency_pos', 'left', 'yes'),
(212, 'woocommerce_price_thousand_sep', ',', 'yes'),
(213, 'woocommerce_price_decimal_sep', '.', 'yes'),
(214, 'woocommerce_price_num_decimals', '2', 'yes'),
(215, 'woocommerce_shop_page_id', '8', 'yes'),
(216, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(217, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(218, 'woocommerce_placeholder_image', '7', 'yes'),
(219, 'woocommerce_weight_unit', 'kg', 'yes'),
(220, 'woocommerce_dimension_unit', 'cm', 'yes'),
(221, 'woocommerce_enable_reviews', 'yes', 'yes'),
(222, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(223, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(224, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(225, 'woocommerce_review_rating_required', 'yes', 'no'),
(226, 'woocommerce_manage_stock', 'yes', 'yes'),
(227, 'woocommerce_hold_stock_minutes', '60', 'no'),
(228, 'woocommerce_notify_low_stock', 'yes', 'no'),
(229, 'woocommerce_notify_no_stock', 'yes', 'no'),
(230, 'woocommerce_stock_email_recipient', 'admin@shapinetwork.com', 'no'),
(231, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(232, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(233, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(234, 'woocommerce_stock_format', '', 'yes'),
(235, 'woocommerce_file_download_method', 'force', 'no'),
(236, 'woocommerce_downloads_require_login', 'no', 'no'),
(237, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(238, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(239, 'woocommerce_prices_include_tax', 'no', 'yes'),
(240, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(241, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(242, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(243, 'woocommerce_tax_classes', '', 'yes'),
(244, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(245, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(246, 'woocommerce_price_display_suffix', '', 'yes'),
(247, 'woocommerce_tax_total_display', 'itemized', 'no'),
(248, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(249, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(250, 'woocommerce_ship_to_destination', 'billing', 'no'),
(251, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(252, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(253, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(254, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(255, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(256, 'woocommerce_registration_generate_username', 'yes', 'no'),
(257, 'woocommerce_registration_generate_password', 'yes', 'no'),
(258, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(259, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(260, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(261, 'woocommerce_registration_privacy_policy_text', 'Tus datos personales se utilizarán para procesar tu pedido, mejorar tu experiencia en esta web, gestionar el acceso a tu cuenta y otros propósitos descritos en nuestra [privacy_policy].', 'yes'),
(262, 'woocommerce_checkout_privacy_policy_text', 'Tus datos personales se utilizarán para procesar tu pedido, mejorar tu experiencia en esta web y otros propósitos descritos en nuestra [privacy_policy].', 'yes'),
(263, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(264, 'woocommerce_trash_pending_orders', '', 'no'),
(265, 'woocommerce_trash_failed_orders', '', 'no'),
(266, 'woocommerce_trash_cancelled_orders', '', 'no'),
(267, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(268, 'woocommerce_email_from_name', 'shapinetwork', 'no'),
(269, 'woocommerce_email_from_address', 'admin@shapinetwork.com', 'no'),
(270, 'woocommerce_email_header_image', '', 'no'),
(271, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(272, 'woocommerce_email_base_color', '#96588a', 'no'),
(273, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(274, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(275, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(276, 'woocommerce_cart_page_id', '9', 'no'),
(277, 'woocommerce_checkout_page_id', '10', 'no'),
(278, 'woocommerce_myaccount_page_id', '11', 'no'),
(279, 'woocommerce_terms_page_id', '', 'no'),
(280, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(281, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(282, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(283, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(284, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(285, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(286, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(287, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(288, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(289, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(290, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(291, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(292, 'woocommerce_logout_endpoint', 'customer-logout', 'yes');
INSERT INTO `wp98_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(293, 'woocommerce_api_enabled', 'no', 'yes'),
(294, 'woocommerce_allow_tracking', 'yes', 'no'),
(295, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(296, 'woocommerce_single_image_width', '600', 'yes'),
(297, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(298, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(299, 'woocommerce_demo_store', 'no', 'no'),
(300, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"producto\";s:13:\"category_base\";s:18:\"categoria-producto\";s:8:\"tag_base\";s:17:\"etiqueta-producto\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(301, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(302, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(305, 'default_product_cat', '15', 'yes'),
(306, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(311, 'action_scheduler_lock_async-request-runner', '1602815027', 'yes'),
(312, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"RfSYNa2EW19iMGnk2rkna4zhxQtfMhTX\";}', 'yes'),
(313, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(314, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(315, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(316, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(317, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(318, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(319, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(320, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(321, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(322, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(323, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(324, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(325, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(326, 'woocommerce_onboarding_opt_in', 'no', 'yes'),
(330, 'woocommerce_admin_install_timestamp', '1585254936', 'yes'),
(334, 'action_scheduler_migration_status', 'complete', 'yes'),
(335, 'woocommerce_admin_last_orders_milestone', '1', 'yes'),
(336, 'woocommerce_onboarding_profile', 'a:1:{s:9:\"completed\";b:1;}', 'yes'),
(338, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(340, 'woocommerce_setup_ab_wc_admin_onboarding', 'a', 'yes'),
(343, 'woocommerce_obw_last_completed_step', 'recommended', 'yes'),
(346, 'woocommerce_product_type', 'both', 'yes'),
(347, 'woocommerce_sell_in_person', '1', 'yes'),
(351, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(352, 'woocommerce_bacs_settings', 'a:10:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:30:\"Transferencia bancaria directa\";s:11:\"description\";s:202:\"Realiza tu pago directamente en nuestra cuenta bancaria. Por favor, usa el número del pedido como referencia de pago. Tu pedido no se procesará hasta que se haya recibido el importe en nuestra cuenta.\";s:12:\"instructions\";s:0:\"\";s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"sort_code\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}', 'yes'),
(353, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(354, '_transient_shipping-transient-version', '1585255058', 'yes'),
(359, '_transient_product_query-transient-version', '1598131696', 'yes'),
(360, '_transient_product-transient-version', '1585258701', 'yes'),
(364, 'hide-wc-extensions-message', '1', 'yes'),
(365, 'woocommerce_branding_name', 'Sinergia Market', 'yes'),
(366, 'woocommerce_branding_icon', 'https://sinergiared.com/wp-content/uploads/2018/11/icono-market-sinergia.png', 'yes'),
(367, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(404, 'current_theme', 'Divi', 'yes'),
(405, 'theme_mods_Divi', 'a:6:{i:0;b:0;s:18:\"custom_css_post_id\";i:14;s:16:\"et_pb_css_synced\";s:3:\"yes\";s:18:\"nav_menu_locations\";a:2:{s:14:\"secondary-menu\";i:17;s:12:\"primary-menu\";i:16;}s:39:\"et_updated_layouts_built_for_post_types\";s:3:\"yes\";s:21:\"login_area_logo_image\";s:69:\"https://shapinetwork.com/wp-content/uploads/2020/03/logo_sinergia.png\";}', 'yes'),
(406, 'theme_switched', '', 'yes'),
(407, 'et_pb_cache_notice', 'a:1:{s:6:\"3.26.6\";s:6:\"ignore\";}', 'yes'),
(412, 'et_core_version', '3.26.6', 'yes'),
(414, 'et_divi', 'a:252:{s:39:\"static_css_custom_css_safety_check_done\";b:1;s:23:\"2_5_flush_rewrite_rules\";s:4:\"done\";s:30:\"et_flush_rewrite_rules_library\";s:6:\"3.26.6\";s:31:\"divi_previous_installed_version\";s:0:\"\";s:29:\"divi_latest_installed_version\";s:6:\"3.26.6\";s:27:\"divi_skip_font_subset_force\";b:1;s:27:\"et_pb_clear_templates_cache\";b:1;s:23:\"builder_custom_defaults\";O:8:\"stdClass\":0:{}s:33:\"customizer_settings_migrated_flag\";b:1;s:34:\"builder_custom_defaults_unmigrated\";b:0;s:40:\"divi_email_provider_credentials_migrated\";b:1;s:15:\"divi_1_3_images\";s:7:\"checked\";s:21:\"et_pb_layouts_updated\";b:1;s:30:\"library_removed_legacy_layouts\";b:1;s:30:\"divi_2_4_documentation_message\";s:9:\"triggered\";s:9:\"divi_logo\";s:69:\"https://shapinetwork.com/wp-content/uploads/2020/03/logo_sinergia.png\";s:14:\"divi_fixed_nav\";s:2:\"on\";s:26:\"divi_gallery_layout_enable\";s:5:\"false\";s:18:\"divi_color_palette\";s:63:\"#000000|#ffffff|#e02b20|#e09900|#edf000|#7cda24|#0c71c3|#8300e9\";s:15:\"divi_grab_image\";s:5:\"false\";s:15:\"divi_blog_style\";s:5:\"false\";s:12:\"divi_sidebar\";s:16:\"et_right_sidebar\";s:22:\"divi_shop_page_sidebar\";s:16:\"et_right_sidebar\";s:23:\"divi_show_facebook_icon\";s:2:\"on\";s:22:\"divi_show_twitter_icon\";s:2:\"on\";s:21:\"divi_show_google_icon\";s:2:\"on\";s:24:\"divi_show_instagram_icon\";s:2:\"on\";s:18:\"divi_show_rss_icon\";s:2:\"on\";s:17:\"divi_facebook_url\";s:1:\"#\";s:16:\"divi_twitter_url\";s:1:\"#\";s:15:\"divi_google_url\";s:1:\"#\";s:18:\"divi_instagram_url\";s:1:\"#\";s:12:\"divi_rss_url\";s:0:\"\";s:34:\"divi_woocommerce_archive_num_posts\";i:9;s:17:\"divi_catnum_posts\";i:6;s:21:\"divi_archivenum_posts\";i:5;s:20:\"divi_searchnum_posts\";i:5;s:17:\"divi_tagnum_posts\";i:5;s:16:\"divi_date_format\";s:6:\"M j, Y\";s:16:\"divi_use_excerpt\";s:5:\"false\";s:26:\"divi_responsive_shortcodes\";s:2:\"on\";s:33:\"divi_gf_enable_all_character_sets\";s:5:\"false\";s:16:\"divi_back_to_top\";s:5:\"false\";s:18:\"divi_smooth_scroll\";s:5:\"false\";s:25:\"divi_disable_translations\";s:5:\"false\";s:27:\"divi_minify_combine_scripts\";s:2:\"on\";s:26:\"divi_minify_combine_styles\";s:2:\"on\";s:15:\"divi_custom_css\";s:0:\"\";s:21:\"divi_enable_dropdowns\";s:2:\"on\";s:14:\"divi_home_link\";s:2:\"on\";s:15:\"divi_sort_pages\";s:10:\"post_title\";s:15:\"divi_order_page\";s:3:\"asc\";s:22:\"divi_tiers_shown_pages\";i:3;s:32:\"divi_enable_dropdowns_categories\";s:2:\"on\";s:21:\"divi_categories_empty\";s:2:\"on\";s:27:\"divi_tiers_shown_categories\";i:3;s:13:\"divi_sort_cat\";s:4:\"name\";s:14:\"divi_order_cat\";s:3:\"asc\";s:20:\"divi_disable_toptier\";s:5:\"false\";s:25:\"divi_scroll_to_anchor_fix\";s:5:\"false\";s:27:\"et_pb_post_type_integration\";a:4:{s:4:\"post\";s:2:\"on\";s:4:\"page\";s:2:\"on\";s:7:\"project\";s:2:\"on\";s:7:\"product\";s:2:\"on\";}s:21:\"et_pb_static_css_file\";s:2:\"on\";s:19:\"et_pb_css_in_footer\";s:3:\"off\";s:25:\"et_pb_product_tour_global\";s:2:\"on\";s:24:\"et_enable_classic_editor\";s:3:\"off\";s:14:\"divi_postinfo2\";a:4:{i:0;s:6:\"author\";i:1;s:4:\"date\";i:2;s:10:\"categories\";i:3;s:8:\"comments\";}s:22:\"divi_show_postcomments\";s:2:\"on\";s:15:\"divi_thumbnails\";s:2:\"on\";s:20:\"divi_page_thumbnails\";s:5:\"false\";s:23:\"divi_show_pagescomments\";s:5:\"false\";s:14:\"divi_postinfo1\";a:3:{i:0;s:6:\"author\";i:1;s:4:\"date\";i:2;s:10:\"categories\";}s:21:\"divi_thumbnails_index\";s:2:\"on\";s:19:\"divi_seo_home_title\";s:5:\"false\";s:25:\"divi_seo_home_description\";s:5:\"false\";s:22:\"divi_seo_home_keywords\";s:5:\"false\";s:23:\"divi_seo_home_canonical\";s:5:\"false\";s:23:\"divi_seo_home_titletext\";s:0:\"\";s:29:\"divi_seo_home_descriptiontext\";s:0:\"\";s:26:\"divi_seo_home_keywordstext\";s:0:\"\";s:18:\"divi_seo_home_type\";s:27:\"BlogName | Blog description\";s:22:\"divi_seo_home_separate\";s:3:\" | \";s:21:\"divi_seo_single_title\";s:5:\"false\";s:27:\"divi_seo_single_description\";s:5:\"false\";s:24:\"divi_seo_single_keywords\";s:5:\"false\";s:25:\"divi_seo_single_canonical\";s:5:\"false\";s:27:\"divi_seo_single_field_title\";s:9:\"seo_title\";s:33:\"divi_seo_single_field_description\";s:15:\"seo_description\";s:30:\"divi_seo_single_field_keywords\";s:12:\"seo_keywords\";s:20:\"divi_seo_single_type\";s:21:\"Post title | BlogName\";s:24:\"divi_seo_single_separate\";s:3:\" | \";s:24:\"divi_seo_index_canonical\";s:5:\"false\";s:26:\"divi_seo_index_description\";s:5:\"false\";s:19:\"divi_seo_index_type\";s:24:\"Category name | BlogName\";s:23:\"divi_seo_index_separate\";s:3:\" | \";s:28:\"divi_integrate_header_enable\";s:2:\"on\";s:26:\"divi_integrate_body_enable\";s:2:\"on\";s:31:\"divi_integrate_singletop_enable\";s:2:\"on\";s:34:\"divi_integrate_singlebottom_enable\";s:2:\"on\";s:21:\"divi_integration_head\";s:0:\"\";s:21:\"divi_integration_body\";s:0:\"\";s:27:\"divi_integration_single_top\";s:0:\"\";s:30:\"divi_integration_single_bottom\";s:0:\"\";s:15:\"divi_468_enable\";s:5:\"false\";s:14:\"divi_468_image\";s:0:\"\";s:12:\"divi_468_url\";s:0:\"\";s:16:\"divi_468_adsense\";s:0:\"\";s:24:\"footer_widget_text_color\";s:7:\"#ffffff\";s:24:\"footer_widget_link_color\";s:7:\"#ffffff\";s:21:\"custom_footer_credits\";s:78:\"Diseñado por <a href=\"https://sinergiared.com\">Sinergia Red Internacional</a>\";s:19:\"post_meta_font_size\";s:2:\"14\";s:16:\"post_meta_height\";s:1:\"1\";s:17:\"post_meta_spacing\";s:1:\"0\";s:15:\"post_meta_style\";s:0:\"\";s:21:\"post_header_font_size\";s:2:\"30\";s:18:\"post_header_height\";s:1:\"1\";s:19:\"post_header_spacing\";s:1:\"0\";s:17:\"post_header_style\";s:0:\"\";s:12:\"boxed_layout\";s:0:\"\";s:13:\"content_width\";s:4:\"1080\";s:12:\"gutter_width\";s:1:\"3\";s:17:\"use_sidebar_width\";s:0:\"\";s:13:\"sidebar_width\";s:2:\"21\";s:15:\"section_padding\";s:1:\"4\";s:20:\"phone_section_height\";s:2:\"50\";s:21:\"tablet_section_height\";s:2:\"50\";s:11:\"row_padding\";s:1:\"2\";s:16:\"phone_row_height\";s:2:\"30\";s:17:\"tablet_row_height\";s:2:\"30\";s:16:\"cover_background\";s:2:\"on\";s:14:\"body_font_size\";s:2:\"14\";s:16:\"body_font_height\";s:3:\"1.7\";s:20:\"phone_body_font_size\";s:2:\"14\";s:21:\"tablet_body_font_size\";s:2:\"14\";s:16:\"body_header_size\";s:2:\"30\";s:19:\"body_header_spacing\";s:1:\"0\";s:18:\"body_header_height\";s:1:\"1\";s:17:\"body_header_style\";s:0:\"\";s:22:\"phone_header_font_size\";s:2:\"30\";s:23:\"tablet_header_font_size\";s:2:\"30\";s:12:\"heading_font\";s:4:\"none\";s:9:\"body_font\";s:4:\"none\";s:10:\"link_color\";s:7:\"#2ea3f2\";s:10:\"font_color\";s:7:\"#666666\";s:12:\"header_color\";s:7:\"#666666\";s:12:\"accent_color\";s:7:\"#2ea3f2\";s:13:\"color_schemes\";s:4:\"none\";s:12:\"header_style\";s:4:\"left\";s:12:\"vertical_nav\";s:0:\"\";s:24:\"vertical_nav_orientation\";s:4:\"left\";s:8:\"hide_nav\";s:0:\"\";s:24:\"show_header_social_icons\";s:0:\"\";s:16:\"show_search_icon\";s:2:\"on\";s:22:\"slide_nav_show_top_bar\";s:2:\"on\";s:15:\"slide_nav_width\";s:3:\"320\";s:19:\"slide_nav_font_size\";s:2:\"14\";s:23:\"slide_nav_top_font_size\";s:2:\"14\";s:24:\"fullscreen_nav_font_size\";s:2:\"30\";s:28:\"fullscreen_nav_top_font_size\";s:2:\"18\";s:22:\"slide_nav_font_spacing\";s:1:\"0\";s:14:\"slide_nav_font\";s:4:\"none\";s:20:\"slide_nav_font_style\";s:0:\"\";s:12:\"slide_nav_bg\";s:7:\"#2ea3f2\";s:21:\"slide_nav_links_color\";s:7:\"#ffffff\";s:28:\"slide_nav_links_color_active\";s:7:\"#ffffff\";s:19:\"slide_nav_top_color\";s:21:\"rgba(255,255,255,0.6)\";s:16:\"slide_nav_search\";s:21:\"rgba(255,255,255,0.6)\";s:19:\"slide_nav_search_bg\";s:15:\"rgba(0,0,0,0.2)\";s:13:\"nav_fullwidth\";s:0:\"\";s:17:\"hide_primary_logo\";s:0:\"\";s:11:\"menu_height\";s:2:\"66\";s:11:\"logo_height\";s:2:\"54\";s:15:\"menu_margin_top\";s:1:\"0\";s:21:\"primary_nav_font_size\";s:2:\"14\";s:24:\"primary_nav_font_spacing\";s:1:\"0\";s:16:\"primary_nav_font\";s:4:\"none\";s:22:\"primary_nav_font_style\";s:0:\"\";s:23:\"secondary_nav_font_size\";s:2:\"12\";s:23:\"secondary_nav_fullwidth\";s:0:\"\";s:26:\"secondary_nav_font_spacing\";s:1:\"0\";s:18:\"secondary_nav_font\";s:4:\"none\";s:24:\"secondary_nav_font_style\";s:0:\"\";s:9:\"menu_link\";s:15:\"rgba(0,0,0,0.6)\";s:16:\"hide_mobile_logo\";s:0:\"\";s:16:\"mobile_menu_link\";s:15:\"rgba(0,0,0,0.6)\";s:16:\"menu_link_active\";s:7:\"#2ea3f2\";s:14:\"primary_nav_bg\";s:7:\"#ffffff\";s:23:\"primary_nav_dropdown_bg\";s:7:\"#ffffff\";s:31:\"primary_nav_dropdown_line_color\";s:7:\"#2ea3f2\";s:31:\"primary_nav_dropdown_link_color\";s:15:\"rgba(0,0,0,0.7)\";s:30:\"primary_nav_dropdown_animation\";s:4:\"fade\";s:21:\"mobile_primary_nav_bg\";s:7:\"#ffffff\";s:16:\"secondary_nav_bg\";s:7:\"#2ea3f2\";s:28:\"secondary_nav_text_color_new\";s:7:\"#ffffff\";s:25:\"secondary_nav_dropdown_bg\";s:7:\"#2ea3f2\";s:33:\"secondary_nav_dropdown_link_color\";s:7:\"#ffffff\";s:32:\"secondary_nav_dropdown_animation\";s:4:\"fade\";s:22:\"primary_nav_text_color\";s:4:\"dark\";s:24:\"secondary_nav_text_color\";s:5:\"light\";s:15:\"hide_fixed_logo\";s:0:\"\";s:21:\"minimized_menu_height\";s:2:\"40\";s:27:\"fixed_primary_nav_font_size\";s:2:\"14\";s:20:\"fixed_primary_nav_bg\";s:7:\"#ffffff\";s:22:\"fixed_secondary_nav_bg\";s:7:\"#2ea3f2\";s:15:\"fixed_menu_link\";s:15:\"rgba(0,0,0,0.6)\";s:25:\"fixed_secondary_menu_link\";s:7:\"#ffffff\";s:22:\"fixed_menu_link_active\";s:7:\"#2ea3f2\";s:12:\"phone_number\";s:0:\"\";s:12:\"header_email\";s:0:\"\";s:24:\"show_footer_social_icons\";s:2:\"on\";s:14:\"footer_columns\";s:1:\"4\";s:9:\"footer_bg\";s:7:\"#222222\";s:23:\"widget_header_font_size\";d:18;s:24:\"widget_header_font_style\";b:0;s:21:\"widget_body_font_size\";s:2:\"14\";s:23:\"widget_body_line_height\";s:3:\"1.7\";s:22:\"widget_body_font_style\";b:0;s:26:\"footer_widget_header_color\";s:7:\"#2ea3f2\";s:26:\"footer_widget_bullet_color\";s:7:\"#2ea3f2\";s:28:\"footer_menu_background_color\";s:22:\"rgba(255,255,255,0.05)\";s:22:\"footer_menu_text_color\";s:7:\"#bbbbbb\";s:29:\"footer_menu_active_link_color\";s:7:\"#2ea3f2\";s:26:\"footer_menu_letter_spacing\";s:1:\"0\";s:22:\"footer_menu_font_style\";b:0;s:21:\"footer_menu_font_size\";s:2:\"14\";s:27:\"bottom_bar_background_color\";s:16:\"rgba(0,0,0,0.32)\";s:21:\"bottom_bar_text_color\";s:7:\"#666666\";s:21:\"bottom_bar_font_style\";b:0;s:20:\"bottom_bar_font_size\";s:2:\"14\";s:27:\"bottom_bar_social_icon_size\";s:2:\"24\";s:28:\"bottom_bar_social_icon_color\";s:7:\"#666666\";s:29:\"disable_custom_footer_credits\";s:0:\"\";s:21:\"all_buttons_font_size\";s:2:\"20\";s:22:\"all_buttons_text_color\";s:7:\"#ffffff\";s:20:\"all_buttons_bg_color\";s:13:\"rgba(0,0,0,0)\";s:24:\"all_buttons_border_width\";s:1:\"2\";s:24:\"all_buttons_border_color\";s:7:\"#ffffff\";s:25:\"all_buttons_border_radius\";s:1:\"3\";s:19:\"all_buttons_spacing\";s:1:\"0\";s:22:\"all_buttons_font_style\";s:0:\"\";s:16:\"all_buttons_font\";s:4:\"none\";s:16:\"all_buttons_icon\";s:3:\"yes\";s:25:\"all_buttons_selected_icon\";s:1:\"5\";s:22:\"all_buttons_icon_color\";s:7:\"#ffffff\";s:26:\"all_buttons_icon_placement\";s:5:\"right\";s:22:\"all_buttons_icon_hover\";s:3:\"yes\";s:28:\"all_buttons_text_color_hover\";s:7:\"#ffffff\";s:26:\"all_buttons_bg_color_hover\";s:21:\"rgba(255,255,255,0.2)\";s:30:\"all_buttons_border_color_hover\";s:13:\"rgba(0,0,0,0)\";s:31:\"all_buttons_border_radius_hover\";b:0;s:25:\"all_buttons_spacing_hover\";b:0;s:12:\"divi_favicon\";s:0:\"\";s:26:\"divi_bfb_optin_modal_shown\";s:2:\"no\";}', 'yes'),
(415, 'widget_aboutmewidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(416, 'widget_adsensewidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(417, 'widget_advwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(418, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:3:\"400\";s:4:\"crop\";i:1;}', 'yes'),
(419, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"510\";s:6:\"height\";s:4:\"9999\";s:4:\"crop\";i:0;}', 'yes'),
(420, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:3:\"157\";s:6:\"height\";s:3:\"157\";s:4:\"crop\";i:1;}', 'yes'),
(421, 'et_support_site_id', '9PE*OG^WD+$c#2x1QMnY', 'yes'),
(422, 'et_safe_mode_plugins_whitelist', 'a:6:{i:0;s:27:\"ari-adminer/ari-adminer.php\";i:1;s:15:\"etdev/etdev.php\";i:2;s:29:\"divi-builder/divi-builder.php\";i:3;s:31:\"query-monitor/query-monitor.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";}', 'yes'),
(423, 'et_support_center_installed', 'true', 'yes'),
(424, 'et_images_temp_folder', '/home/shapin/public_html/wp-content/uploads/et_temp', 'yes'),
(425, 'et_schedule_clean_images_last_time', '1602814966', 'yes'),
(426, 'et_bfb_settings', 'a:1:{s:10:\"enable_bfb\";s:2:\"on\";}', 'yes'),
(427, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(432, 'et_pb_builder_options', 'a:2:{i:0;b:0;s:35:\"email_provider_credentials_migrated\";b:1;}', 'yes'),
(433, 'agsdg_settings', 'a:4:{s:13:\"branding_name\";s:8:\"Sinergia\";s:14:\"branding_image\";s:76:\"https://sinergiared.com/wp-content/uploads/2018/11/icono-market-sinergia.png\";s:10:\"theme_slug\";s:10:\"ghost_divi\";s:16:\"ultimate_ghoster\";s:3:\"yes\";}', 'yes'),
(438, 'external_updates-divi-ghoster', 'O:8:\"stdClass\":3:{s:9:\"lastCheck\";i:1602814968;s:14:\"checkedVersion\";s:5:\"2.1.4\";s:6:\"update\";N;}', 'no'),
(440, 'et_account_status', 'active', 'no'),
(441, '_site_transient_et_update_themes', 'O:8:\"stdClass\":3:{s:7:\"checked\";a:6:{s:4:\"Divi\";s:6:\"3.26.6\";s:10:\"ghost_divi\";s:6:\"3.26.6\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:1:{s:4:\"Divi\";a:3:{s:11:\"new_version\";s:5:\"4.5.1\";s:5:\"theme\";s:4:\"Divi\";s:3:\"url\";s:52:\"https://www.elegantthemes.com/api/changelog/divi.txt\";}}s:12:\"last_checked\";i:1595524641;}', 'no'),
(449, '_site_transient_et_update_all_plugins', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1595524647;}', 'no'),
(450, 'ucp_pointers', 'a:1:{s:15:\"getting_started\";a:4:{s:6:\"target\";s:29:\".ucp-main-tab li:nth-child(2)\";s:4:\"edge\";s:3:\"top\";s:5:\"align\";s:4:\"left\";s:7:\"content\";s:414:\"Watch the short <a href=\"https://www.youtube.com/watch?v=RN4XABhK7_w\" target=\"_blank\">getting started video</a> to get you up to speed with UCP in no time. If that doesn\'t answer your questions watch the longer <a href=\"https://www.youtube.com/watch?v=K3DF-NP6Fog\" target=\"_blank\">in-depth video walktrough</a>.<br>If you need the videos later, links are in the <a href=\"#\" class=\"change_tab\" data-tab=\"4\">FAQ</a>.\";}}', 'yes'),
(455, 'ucp_meta', 'a:3:{s:13:\"first_version\";s:4:\"3.65\";s:13:\"first_install\";i:1585257328;s:11:\"options_ver\";s:4:\"3.80\";}', 'yes'),
(457, 'adsdg_ultimate_theme', 'Divi', 'yes'),
(463, 'et_google_api_settings', 'a:3:{s:7:\"api_key\";s:0:\"\";s:26:\"enqueue_google_maps_script\";s:2:\"on\";s:16:\"use_google_fonts\";s:2:\"on\";}', 'yes'),
(464, 'et_automatic_updates_options', 'a:2:{s:8:\"username\";s:0:\"\";s:7:\"api_key\";s:0:\"\";}', 'no'),
(467, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(471, 'content_link_color', '#999999', 'yes'),
(472, 'background_color_tint', 'rgba(0,0,0,0)', 'yes'),
(500, 'product_cat_children', 'a:0:{}', 'yes'),
(526, 'woocommerce_tracker_ua', 'a:3:{i:0;s:102:\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";i:1;s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36\";i:2;s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36\";}', 'yes'),
(583, 'woocommerce_sales_record_date', '2020-03-26', 'yes'),
(584, 'woocommerce_sales_record_amount', '340', 'yes'),
(588, 'woocommerce_tracker_last_send', '1600137724', 'yes'),
(628, 'category_children', 'a:0:{}', 'yes'),
(3565, '_transient_woocommerce_reports-transient-version', '1595524304', 'yes'),
(5336, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"admin@shapinetwork.com\";s:7:\"version\";s:5:\"5.3.4\";s:9:\"timestamp\";i:1591862903;}', 'no'),
(20658, 'woocommerce_schema_version', '430', 'yes'),
(20659, 'woocommerce_version', '4.3.1', 'yes'),
(20660, 'woocommerce_db_version', '4.3.1', 'yes'),
(20663, 'woocommerce_task_list_hidden', 'yes', 'yes'),
(20667, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(20671, 'wc_blocks_db_schema_version', '260', 'yes'),
(20704, 'woocommerce_admin_version', '1.3.1', 'yes'),
(20710, '_transient_rsssl_plusone_count', '1', 'yes'),
(20742, 'code_snippets_version', '2.14.0', 'yes'),
(20747, 'code_snippets_settings', 'a:3:{s:7:\"general\";a:6:{s:19:\"activate_by_default\";b:1;s:21:\"snippet_scope_enabled\";b:1;s:11:\"enable_tags\";b:1;s:18:\"enable_description\";b:1;s:13:\"disable_prism\";b:0;s:18:\"complete_uninstall\";b:0;}s:18:\"description_editor\";a:3:{s:4:\"rows\";i:5;s:12:\"use_full_mce\";b:0;s:13:\"media_buttons\";b:0;}s:6:\"editor\";a:8:{s:5:\"theme\";s:7:\"default\";s:16:\"indent_with_tabs\";b:1;s:8:\"tab_size\";i:4;s:11:\"indent_unit\";i:4;s:10:\"wrap_lines\";b:1;s:12:\"line_numbers\";b:1;s:19:\"auto_close_brackets\";b:1;s:27:\"highlight_selection_matches\";b:1;}}', 'yes'),
(20754, 'ub_version', '2.0.0', 'yes'),
(20759, 'wdp_un_activated_flag', '0', 'no'),
(20761, 'wdp_un_local_themes', 'a:0:{}', 'no'),
(20762, 'wdp_un_local_projects', 'a:1:{i:9135;a:3:{s:4:\"type\";s:6:\"plugin\";s:7:\"version\";s:5:\"2.0.0\";s:8:\"filename\";s:39:\"ultimate-branding/ultimate-branding.php\";}}', 'no'),
(20763, 'wdp_un_updates_available', 'a:1:{i:9135;a:7:{s:4:\"type\";s:6:\"plugin\";s:7:\"version\";s:5:\"2.0.0\";s:8:\"filename\";s:39:\"ultimate-branding/ultimate-branding.php\";s:3:\"url\";s:54:\"https://premium.wpmudev.org/project/ultimate-branding/\";s:4:\"name\";s:10:\"Branda Pro\";s:11:\"new_version\";s:3:\"3.4\";s:10:\"autoupdate\";s:1:\"1\";}}', 'no'),
(20764, 'recently_activated_snippets', 'a:0:{}', 'yes'),
(20768, 'ultimatebranding_activated_modules', 'a:5:{s:20:\"custom-admin-bar.php\";s:3:\"yes\";s:21:\"admin-footer-text.php\";s:3:\"yes\";s:15:\"login-image.php\";s:3:\"yes\";s:17:\"export-import.php\";s:3:\"yes\";s:31:\"remove-wp-dashboard-widgets.php\";s:3:\"yes\";}', 'yes'),
(20769, 'ultimatebranding_messages', 'a:1:{i:0;a:2:{s:5:\"class\";s:7:\"success\";s:7:\"message\";s:64:\"Módulo \"<strong>Export & Import</strong>\"se activó con éxito.\";}}', 'yes'),
(20770, 'wdcab', 'a:4:{s:7:\"enabled\";s:1:\"0\";s:27:\"show_toolbar_for_non_logged\";s:1:\"0\";s:14:\"disabled_menus\";a:3:{i:0;s:7:\"wp-logo\";i:1;s:11:\"new-content\";i:2;s:7:\"updates\";}s:13:\"wp_menu_roles\";a:16:{s:13:\"Administrator\";s:13:\"administrator\";s:6:\"Editor\";s:6:\"editor\";s:6:\"Author\";s:6:\"author\";s:11:\"Contributor\";s:11:\"contributor\";s:10:\"Subscriber\";s:10:\"subscriber\";s:8:\"Customer\";s:8:\"customer\";s:12:\"Shop manager\";s:12:\"shop_manager\";s:9:\"Keymaster\";s:13:\"bbp_keymaster\";s:9:\"Moderator\";s:13:\"bbp_moderator\";s:11:\"Participant\";s:15:\"bbp_participant\";s:9:\"Spectator\";s:13:\"bbp_spectator\";s:7:\"Blocked\";s:11:\"bbp_blocked\";s:12:\"Group Leader\";s:12:\"group_leader\";s:10:\"Translator\";s:10:\"translator\";s:8:\"Director\";s:8:\"director\";s:30:\"Invitado (usuario sin usuario)\";s:5:\"guest\";}}', 'yes'),
(20771, 'ub_admin_bar_style', '', 'yes'),
(20772, 'ub_login_image', 'https://sinergiared.com/wp-content/uploads/2016/05/logo_sinergia.png', 'yes'),
(20773, 'ub_login_image_height', '64', 'yes'),
(20774, 'ub_login_image_id', '', 'yes'),
(20775, 'ub_login_image_size', '', 'yes'),
(20776, 'ub_login_image_width', '64', 'yes'),
(20777, 'rwp_active_dashboard_widgets', 'a:5:{s:19:\"dashboard_right_now\";s:19:\"dashboard_right_now\";s:18:\"dashboard_activity\";s:18:\"dashboard_activity\";s:22:\"tribe_dashboard_widget\";s:22:\"tribe_dashboard_widget\";s:21:\"dashboard_quick_press\";s:21:\"dashboard_quick_press\";s:17:\"dashboard_primary\";s:17:\"dashboard_primary\";}', 'yes'),
(20778, 'ub_rwp_all_active_dashboard_widgets', 'a:7:{s:19:\"dashboard_right_now\";s:13:\"De un vistazo\";s:18:\"dashboard_activity\";s:9:\"Actividad\";s:36:\"woocommerce_dashboard_recent_reviews\";s:41:\"Valoraciones recientes de Sinergia Market\";s:28:\"woocommerce_dashboard_status\";s:25:\"Estado de Sinergia Market\";s:17:\"dashboard_php_nag\";s:27:\"Es necesario actualizar PHP\";s:21:\"dashboard_quick_press\";s:108:\"<span class=\"hide-if-no-js\">Borrador rápido</span> <span class=\"hide-if-js\">Tus borradores recientes</span>\";s:17:\"dashboard_primary\";s:31:\"Eventos y noticias de WordPress\";}', 'yes'),
(20779, 'admin_footer_text', 'Diseñado por <a href=\"https://sinergiared.com\"> Sinergia Red Internacional</a>', 'yes'),
(20793, 'sgr_version', '', 'yes'),
(20794, 'sgr_login_disable', '', 'yes'),
(20795, 'sgr_badge_hide', '', 'yes'),
(20796, 'sgr_site_key', '6LfXhnUUAAAAAPLxvCquHz94JzinMDCy6ToTBodJ', 'yes'),
(20797, 'sgr_secret_key', '6LfXhnUUAAAAAEC6AQkZ_pFv9pN6ssD8SjnonQGP', 'yes'),
(20801, 'ucp_options', 'a:34:{s:6:\"status\";s:1:\"1\";s:11:\"license_key\";s:0:\"\";s:14:\"license_active\";b:0;s:15:\"license_expires\";s:10:\"1900-01-01\";s:12:\"license_type\";s:0:\"\";s:8:\"end_date\";s:0:\"\";s:14:\"ga_tracking_id\";s:0:\"\";s:5:\"theme\";s:12:\"mad_designer\";s:10:\"custom_css\";s:0:\"\";s:5:\"title\";s:34:\"[site-title] is under construction\";s:11:\"description\";s:14:\"[site-tagline]\";s:8:\"heading1\";s:49:\"Lo siento, estamos haciendo trabajos en el sitio.\";s:7:\"content\";s:79:\"Gracias por tu paciencia. Estamos trabajando en el sito y volveremos enseguida.\";s:15:\"social_facebook\";s:0:\"\";s:14:\"social_twitter\";s:0:\"\";s:13:\"social_google\";s:0:\"\";s:15:\"social_linkedin\";s:0:\"\";s:14:\"social_youtube\";s:0:\"\";s:12:\"social_vimeo\";s:0:\"\";s:16:\"social_pinterest\";s:0:\"\";s:15:\"social_dribbble\";s:0:\"\";s:14:\"social_behance\";s:0:\"\";s:16:\"social_instagram\";s:0:\"\";s:13:\"social_tumblr\";s:0:\"\";s:9:\"social_vk\";s:0:\"\";s:12:\"social_email\";s:0:\"\";s:12:\"social_phone\";s:0:\"\";s:12:\"social_skype\";s:0:\"\";s:15:\"social_telegram\";s:0:\"\";s:15:\"social_whatsapp\";s:0:\"\";s:12:\"login_button\";s:1:\"1\";s:8:\"linkback\";s:1:\"0\";s:17:\"whitelisted_roles\";a:1:{i:0;s:13:\"administrator\";}s:17:\"whitelisted_users\";a:0:{}}', 'yes'),
(22317, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(22322, '_transient_timeout_wc_low_stock_count', '1601496965', 'no'),
(22323, '_transient_wc_low_stock_count', '0', 'no'),
(22324, '_transient_timeout_wc_outofstock_count', '1601496965', 'no'),
(22325, '_transient_wc_outofstock_count', '0', 'no'),
(22338, 'new_admin_email', 'admin@shapinetwork.com', 'yes'),
(22339, 'whl_page', 'acceso', 'yes'),
(22340, 'whl_redirect_admin', '404', 'yes'),
(22501, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.5.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1600391798;s:15:\"version_checked\";s:5:\"5.3.4\";s:12:\"translations\";a:0:{}}', 'no'),
(22506, '_transient_timeout_et_core_version', '1602901365', 'no'),
(22507, '_transient_et_core_version', '3.26.6', 'no'),
(23075, '_transient_timeout__woocommerce_helper_subscriptions', '1600392698', 'no'),
(23076, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(23077, '_site_transient_timeout_theme_roots', '1600393598', 'no'),
(23078, '_site_transient_theme_roots', 'a:6:{s:4:\"Divi\";s:7:\"/themes\";s:10:\"ghost_divi\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(23079, '_transient_timeout__woocommerce_helper_updates', '1600434998', 'no'),
(23080, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"2b07b128970885cf30d5311be8a6d9bc\";s:7:\"updated\";i:1600391798;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(23081, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1600391799;s:7:\"checked\";a:6:{s:4:\"Divi\";s:6:\"3.26.6\";s:10:\"ghost_divi\";s:6:\"3.26.6\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:4:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.2.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(23082, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1600391799;s:7:\"checked\";a:13:{s:25:\"adminimize/adminimize.php\";s:6:\"1.11.7\";s:31:\"code-snippets/code-snippets.php\";s:6:\"2.14.0\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:3:\"2.1\";s:29:\"divi-ghoster/divi-ghoster.php\";s:5:\"2.1.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:33:\"nav-menu-roles/nav-menu-roles.php\";s:6:\"1.10.2\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:5:\"3.3.4\";s:51:\"simple-google-recaptcha/simple-google-recaptcha.php\";s:3:\"3.7\";s:39:\"ultimate-branding/ultimate-branding.php\";s:5:\"2.0.0\";s:46:\"under-construction-page/under-construction.php\";s:4:\"3.80\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.3.1\";s:45:\"woocommerce-branding/woocommerce-branding.php\";s:6:\"1.0.19\";s:33:\"wps-hide-login/wps-hide-login.php\";s:5:\"1.5.6\";}s:8:\"response\";a:5:{s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"nav-menu-roles/nav-menu-roles.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/nav-menu-roles\";s:4:\"slug\";s:14:\"nav-menu-roles\";s:6:\"plugin\";s:33:\"nav-menu-roles/nav-menu-roles.php\";s:11:\"new_version\";s:5:\"2.0.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/nav-menu-roles/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/nav-menu-roles.2.0.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/nav-menu-roles/assets/icon-256x256.png?rev=2336319\";s:2:\"1x\";s:67:\"https://ps.w.org/nav-menu-roles/assets/icon-128x128.png?rev=2336319\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/nav-menu-roles/assets/banner-1544x500.png?rev=2336319\";s:2:\"1x\";s:69:\"https://ps.w.org/nav-menu-roles/assets/banner-772x250.png?rev=2336319\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.0\";s:12:\"requires_php\";s:5:\"5.3.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/really-simple-ssl\";s:4:\"slug\";s:17:\"really-simple-ssl\";s:6:\"plugin\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:11:\"new_version\";s:5:\"3.3.5\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/really-simple-ssl/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/really-simple-ssl.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/really-simple-ssl/assets/icon-128x128.png?rev=1782452\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/really-simple-ssl/assets/banner-1544x500.png?rev=2320223\";s:2:\"1x\";s:72:\"https://ps.w.org/really-simple-ssl/assets/banner-772x250.png?rev=2320228\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:46:\"under-construction-page/under-construction.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/under-construction-page\";s:4:\"slug\";s:23:\"under-construction-page\";s:6:\"plugin\";s:46:\"under-construction-page/under-construction.php\";s:11:\"new_version\";s:4:\"3.81\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/under-construction-page/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/under-construction-page.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/under-construction-page/assets/icon-256x256.gif?rev=2284849\";s:2:\"1x\";s:76:\"https://ps.w.org/under-construction-page/assets/icon-128x128.gif?rev=2284852\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/under-construction-page/assets/banner-1544x500.png?rev=1628376\";s:2:\"1x\";s:78:\"https://ps.w.org/under-construction-page/assets/banner-772x250.png?rev=1575797\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"5.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.5.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:25:\"adminimize/adminimize.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/adminimize\";s:4:\"slug\";s:10:\"adminimize\";s:6:\"plugin\";s:25:\"adminimize/adminimize.php\";s:11:\"new_version\";s:6:\"1.11.7\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/adminimize/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/adminimize.1.11.7.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:61:\"https://s.w.org/plugins/geopattern-icon/adminimize_000000.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/adminimize/assets/banner-772x250.png?rev=1118207\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"code-snippets/code-snippets.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/code-snippets\";s:4:\"slug\";s:13:\"code-snippets\";s:6:\"plugin\";s:31:\"code-snippets/code-snippets.php\";s:11:\"new_version\";s:6:\"2.14.0\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/code-snippets/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/code-snippets.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/code-snippets/assets/icon.svg?rev=2148878\";s:3:\"svg\";s:58:\"https://ps.w.org/code-snippets/assets/icon.svg?rev=2148878\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/code-snippets/assets/banner-1544x500.png?rev=2260997\";s:2:\"1x\";s:68:\"https://ps.w.org/code-snippets/assets/banner-772x250.png?rev=2256244\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"simple-google-recaptcha/simple-google-recaptcha.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/simple-google-recaptcha\";s:4:\"slug\";s:23:\"simple-google-recaptcha\";s:6:\"plugin\";s:51:\"simple-google-recaptcha/simple-google-recaptcha.php\";s:11:\"new_version\";s:3:\"3.7\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/simple-google-recaptcha/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/simple-google-recaptcha.3.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/simple-google-recaptcha/assets/icon-128x128.png?rev=1466520\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/simple-google-recaptcha/assets/banner-772x250.png?rev=1725176\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woocommerce-branding/woocommerce-branding.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-branding\";s:4:\"slug\";s:20:\"woocommerce-branding\";s:6:\"plugin\";s:45:\"woocommerce-branding/woocommerce-branding.php\";s:11:\"new_version\";s:5:\"1.0.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-branding/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/woocommerce-branding.1.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-branding/assets/icon-256x256.png?rev=1305743\";s:2:\"1x\";s:65:\"https://ps.w.org/woocommerce-branding/assets/icon.svg?rev=1305743\";s:3:\"svg\";s:65:\"https://ps.w.org/woocommerce-branding/assets/icon.svg?rev=1305743\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-branding/assets/banner-772x250.jpg?rev=1307387\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"wps-hide-login/wps-hide-login.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wps-hide-login\";s:4:\"slug\";s:14:\"wps-hide-login\";s:6:\"plugin\";s:33:\"wps-hide-login/wps-hide-login.php\";s:11:\"new_version\";s:5:\"1.5.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wps-hide-login/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wps-hide-login.1.5.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-256x256.png?rev=1820667\";s:2:\"1x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-128x128.png?rev=1820667\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wps-hide-login/assets/banner-1544x500.jpg?rev=1820667\";s:2:\"1x\";s:69:\"https://ps.w.org/wps-hide-login/assets/banner-772x250.jpg?rev=1820667\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(23086, '_transient_doing_cron', '1602814965.9505109786987304687500', 'yes'),
(23089, '_transient_timeout_et_core_path', '1602901365', 'no'),
(23090, '_transient_et_core_path', '/home/shapin/public_html/wp-content/themes/Divi/core', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_postmeta`
--

CREATE TABLE `wp98_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_posts`
--

CREATE TABLE `wp98_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_snippets`
--

CREATE TABLE `wp98_snippets` (
  `id` bigint NOT NULL,
  `name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `priority` smallint NOT NULL DEFAULT '10',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_snippets`
--

INSERT INTO `wp98_snippets` (`id`, `name`, `description`, `code`, `tags`, `scope`, `priority`, `active`, `modified`) VALUES
(6, 'Ocultar versiones de wordpress', '', 'add_action( \'admin_head\', \'ocultar_notificacion_actualizacion\', 1 );\nfunction ocultar_notificacion_actualizacion() {\n if ( ! current_user_can( \'update_core\' )) {\n remove_action( \'admin_notices\', \'update_nag\', 3 );\n }\n}', '', 'global', 10, 1, '2020-07-23 17:15:03'),
(7, 'eliminar notificaciones de plugins y temas', '', 'function hide_notices_dashboard() {\n    global $wp_filter;\n \n    if (is_network_admin() and isset($wp_filter[\"network_admin_notices\"])) {\n        unset($wp_filter[\'network_admin_notices\']);\n    } elseif(is_user_admin() and isset($wp_filter[\"user_admin_notices\"])) {\n        unset($wp_filter[\'user_admin_notices\']);\n    } else {\n        if(isset($wp_filter[\"admin_notices\"])) {\n            unset($wp_filter[\'admin_notices\']);\n        }\n    }\n \n    if (isset($wp_filter[\"all_admin_notices\"])) {\n        unset($wp_filter[\'all_admin_notices\']);\n    }\n}\nadd_action( \'admin_init\', \'hide_notices_dashboard\' );', '', 'global', 10, 1, '2020-07-23 17:15:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_termmeta`
--

CREATE TABLE `wp98_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_termmeta`
--

INSERT INTO `wp98_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '0'),
(2, 18, 'order', '0'),
(3, 18, 'product_count_product_cat', '2'),
(4, 19, 'order', '0'),
(5, 19, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_terms`
--

CREATE TABLE `wp98_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_terms`
--

INSERT INTO `wp98_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Sin categorizar', 'sin-categorizar', 0),
(16, 'Principal', 'principal', 0),
(17, 'Secundario', 'secundario', 0),
(18, 'Activacion', 'activacion', 0),
(19, 'Recompra', 'recompra', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_term_relationships`
--

CREATE TABLE `wp98_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_term_relationships`
--

INSERT INTO `wp98_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(12, 2, 0),
(12, 18, 0),
(16, 17, 0),
(17, 17, 0),
(18, 17, 0),
(19, 16, 0),
(20, 16, 0),
(21, 16, 0),
(26, 17, 0),
(27, 17, 0),
(28, 2, 0),
(28, 18, 0),
(29, 2, 0),
(29, 19, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_term_taxonomy`
--

CREATE TABLE `wp98_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_term_taxonomy`
--

INSERT INTO `wp98_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 3),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'nav_menu', '', 0, 3),
(17, 17, 'nav_menu', '', 0, 5),
(18, 18, 'product_cat', '', 0, 2),
(19, 19, 'product_cat', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_usermeta`
--

CREATE TABLE `wp98_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_usermeta`
--

INSERT INTO `wp98_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'shapinetadmin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp98_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp98_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"ee29f386674dd38db3bb46e2ce74cae83bec86879c9a68857a09b2ee661ec459\";a:4:{s:10:\"expiration\";i:1599077764;s:2:\"ip\";s:13:\"181.63.18.216\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36\";s:5:\"login\";i:1598904964;}}'),
(17, 1, 'wp98_dashboard_quick_press_last_post_id', '31'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"181.63.18.0\";}'),
(19, 1, '_woocommerce_tracks_anon_id', 'woo:vMOf3jY+VY3SmA2rCHbJq9Kk'),
(20, 1, 'wc_last_active', '1598832000'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:8:{i:0;s:21:\"add-post-type-project\";i:1;s:21:\"add-post-type-product\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-post_format\";i:4;s:20:\"add-project_category\";i:5;s:15:\"add-project_tag\";i:6;s:15:\"add-product_cat\";i:7;s:15:\"add-product_tag\";}'),
(23, 1, 'wp98_user-settings', 'libraryContent=browse'),
(24, 1, 'wp98_user-settings-time', '1585257616'),
(25, 2, 'nickname', 'cliente1@sinergiared.com'),
(26, 2, 'first_name', 'Ramon'),
(27, 2, 'last_name', 'Picon'),
(28, 2, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(29, 2, 'billing_first_name', 'Ramon'),
(30, 2, 'billing_last_name', 'Picon'),
(31, 2, 'billing_email', 'cliente1@sinergiared.com'),
(32, 2, 'billing_phone', NULL),
(33, 3, 'nickname', 'cliente2@sinergiared.com'),
(34, 3, 'first_name', 'Alberto'),
(35, 3, 'last_name', 'Picon'),
(36, 3, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(37, 3, 'billing_first_name', 'Alberto'),
(38, 3, 'billing_last_name', 'Picon'),
(39, 3, 'billing_email', 'cliente2@sinergiared.com'),
(40, 3, 'billing_phone', NULL),
(42, 4, 'nickname', 'danieladmin'),
(43, 4, 'first_name', 'Daniel'),
(44, 4, 'last_name', 'Admin'),
(45, 4, 'description', ''),
(46, 4, 'rich_editing', 'true'),
(47, 4, 'syntax_highlighting', 'true'),
(48, 4, 'comment_shortcuts', 'false'),
(49, 4, 'admin_color', 'fresh'),
(50, 4, 'use_ssl', '0'),
(51, 4, 'show_admin_bar_front', 'true'),
(52, 4, 'locale', ''),
(53, 4, 'wp98_capabilities', 'a:1:{s:12:\"shop_manager\";b:1;}'),
(54, 4, 'wp98_user_level', '9'),
(55, 4, 'dismissed_wp_pointers', ''),
(56, 4, 'last_update', '1585266684'),
(57, 2, 'session_tokens', 'a:9:{s:64:\"6fd50f38b54133c1ed787f3c51fa356150251571390f51a22c0126025de6f2c6\";a:4:{s:10:\"expiration\";i:1592434618;s:2:\"ip\";s:14:\"144.217.193.11\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592261818;}s:64:\"a9e081582c93640a52697d4308779e2697495c04f9f93810f78d9d8aacc1cd5f\";a:4:{s:10:\"expiration\";i:1592441495;s:2:\"ip\";s:13:\"51.254.209.86\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592268695;}s:64:\"2280457580c82123fbd01b58805d65bd68896db4b72b0f329ba50f2e289f9382\";a:4:{s:10:\"expiration\";i:1592442340;s:2:\"ip\";s:14:\"91.134.248.249\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592269540;}s:64:\"1a823b8edeb2ac3d05f5a46b006fe5c0ed53eef0a10a313924fe8a398f123ee9\";a:4:{s:10:\"expiration\";i:1592444255;s:2:\"ip\";s:12:\"95.0.170.140\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592271455;}s:64:\"1e6efac89d2f252af2587472871dcd57e17112da681c37e385a432a8d3ed9981\";a:4:{s:10:\"expiration\";i:1592447633;s:2:\"ip\";s:10:\"81.4.96.82\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592274833;}s:64:\"295de33589cf54b7de2c59ccd3fc41a6a6abedd11d53466f584148554c1d3060\";a:4:{s:10:\"expiration\";i:1592449378;s:2:\"ip\";s:13:\"148.71.89.190\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592276578;}s:64:\"c7cd43287540453d80516e9aebfd0f658f3c14c91466057f52dec57a0cd01700\";a:4:{s:10:\"expiration\";i:1592450367;s:2:\"ip\";s:15:\"167.172.252.248\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592277567;}s:64:\"9e82976316508ed4c6d77924bad9284d39aabac545477629f846fb7bec26d87c\";a:4:{s:10:\"expiration\";i:1592451565;s:2:\"ip\";s:13:\"147.139.37.89\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592278765;}s:64:\"1bc4a7a9e680f7b490925a94088c765bce40b2211a8edb3a657aa190074fd5b1\";a:4:{s:10:\"expiration\";i:1592451831;s:2:\"ip\";s:14:\"197.232.53.182\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592279031;}}'),
(58, 2, 'wc_last_active', '1592265600'),
(60, 3, 'session_tokens', 'a:16:{s:64:\"3fa0940b8547fcd7222bd9320c41f6ac9c8acb54568d1edce883210eab249200\";a:4:{s:10:\"expiration\";i:1592372074;s:2:\"ip\";s:13:\"47.254.69.237\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592199274;}s:64:\"21d74f40c82e31d9b66fecf3ee8c139aba6061e1074dd6b528a2a2250d95e8f4\";a:4:{s:10:\"expiration\";i:1592384333;s:2:\"ip\";s:13:\"134.122.93.28\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592211533;}s:64:\"75b3dbb9de2096ced2a569b3008a963dd9241c5c15d268dd4d371043c767f5a0\";a:4:{s:10:\"expiration\";i:1592389879;s:2:\"ip\";s:11:\"3.23.35.234\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592217079;}s:64:\"76035b3897705eadb60d3a951de24b77fe94c2fc7c4f1f19e3b1f9120a49ea89\";a:4:{s:10:\"expiration\";i:1592390453;s:2:\"ip\";s:11:\"3.7.236.223\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592217653;}s:64:\"bdae4624078dca3a5a81b58d0805b973652700efddb62e7e13f0ec4ba78b3727\";a:4:{s:10:\"expiration\";i:1592395045;s:2:\"ip\";s:12:\"34.86.202.44\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592222245;}s:64:\"17c9ff16aa547115a18c8dab87abfc64c0fbfe80e3c77af9136b5ccc65654e9a\";a:4:{s:10:\"expiration\";i:1592396678;s:2:\"ip\";s:12:\"51.68.229.67\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592223878;}s:64:\"1edba0c41fc27817cfcd104c37196b5ecf687e69455f56ef2b4d076812c6090a\";a:4:{s:10:\"expiration\";i:1592397492;s:2:\"ip\";s:14:\"104.248.16.191\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592224692;}s:64:\"0e4796bad9142ef569fefc430cfb83d2f37051277889e6f751d669438d5988f2\";a:4:{s:10:\"expiration\";i:1592398658;s:2:\"ip\";s:12:\"185.95.0.197\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592225858;}s:64:\"b87c87b0c58c229160c592b91ff81066c0ea8e070a5602dc675ce60cbb26f0f6\";a:4:{s:10:\"expiration\";i:1592398729;s:2:\"ip\";s:13:\"51.254.209.86\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592225929;}s:64:\"e9387cdbc7842344620d969f97f5e0a62b0a789b2399c766327e4aea8ee00b1b\";a:4:{s:10:\"expiration\";i:1592403121;s:2:\"ip\";s:13:\"167.71.211.11\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592230321;}s:64:\"dbb2d3c32647947fa9a238284d9fa75f6402010cb1c74b7425a526545105a547\";a:4:{s:10:\"expiration\";i:1592406002;s:2:\"ip\";s:13:\"157.230.91.15\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592233202;}s:64:\"eff17120dad5225b372299f279a70fa1539c921f3d4821bebc1c16a75ce5ed5b\";a:4:{s:10:\"expiration\";i:1592408950;s:2:\"ip\";s:14:\"188.166.55.115\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592236150;}s:64:\"1469dc0e445d9f04142e561507246872c10b279e70524a74913092e1bb33a0a2\";a:4:{s:10:\"expiration\";i:1592409322;s:2:\"ip\";s:13:\"107.191.44.45\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592236522;}s:64:\"69859b5b8864337c913ce5f86ba76c86a286cab51e066b9334a45ba45fa70648\";a:4:{s:10:\"expiration\";i:1592410010;s:2:\"ip\";s:13:\"183.181.85.69\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592237210;}s:64:\"091eed96a7b82901b6be11b9d6d82b0c50df1da5071f14456b8f430732fde621\";a:4:{s:10:\"expiration\";i:1592410223;s:2:\"ip\";s:15:\"167.172.110.159\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592237423;}s:64:\"c55e4e72c575c5fd6e098a8c20477a10f4342923e4af41b60c922f6b4bf18529\";a:4:{s:10:\"expiration\";i:1592417807;s:2:\"ip\";s:14:\"202.254.236.42\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592245007;}}'),
(61, 3, 'wc_last_active', '1592179200'),
(63, 3, '_order_count', '1'),
(71, 2, '_order_count', '0'),
(144, 1, '_order_count', '0'),
(146, 1, 'wp98_managetoplevel_page_snippetscolumnshidden', 'a:1:{i:0;s:2:\"id\";}'),
(147, 5, 'nickname', 'yo@gmail.com'),
(148, 5, 'first_name', 'pietro'),
(149, 5, 'last_name', 'pasqualis'),
(150, 5, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(151, 5, 'billing_first_name', 'pietro'),
(152, 5, 'billing_last_name', 'pasqualis'),
(153, 5, 'billing_email', 'yo@gmail.com'),
(154, 5, 'billing_phone', NULL),
(155, 6, 'nickname', 'yo@gmail.com'),
(156, 6, 'first_name', 'pietro'),
(157, 6, 'last_name', 'pasqualis'),
(158, 6, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(159, 6, 'billing_first_name', 'pietro'),
(160, 6, 'billing_last_name', 'pasqualis'),
(161, 6, 'billing_email', 'yo@gmail.com'),
(162, 6, 'billing_phone', NULL),
(163, 7, 'nickname', 'yo@gmail.com'),
(164, 7, 'first_name', 'pietro'),
(165, 7, 'last_name', 'pasqualis'),
(166, 7, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(167, 7, 'billing_first_name', 'pietro'),
(168, 7, 'billing_last_name', 'pasqualis'),
(169, 7, 'billing_email', 'yo@gmail.com'),
(170, 7, 'billing_phone', NULL),
(172, 1, 'dismissed_wp_php_min_requirements_7.2_5.2_notice', '1'),
(173, 9, 'nickname', 'yo2@gmail.com'),
(174, 9, 'first_name', NULL),
(175, 9, 'last_name', NULL),
(176, 9, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(177, 9, 'billing_first_name', NULL),
(178, 9, 'billing_last_name', NULL),
(179, 9, 'billing_email', 'yo2@gmail.com'),
(180, 9, 'billing_phone', NULL),
(221, 18, 'nickname', 'caramelodesabila@hotmail.com'),
(222, 18, 'first_name', 'Pietro Pascualis'),
(223, 18, 'last_name', 'Pietro Pascualis'),
(224, 18, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(225, 18, 'billing_first_name', 'Pietro Pascualis'),
(226, 18, 'billing_last_name', 'Pietro Pascualis'),
(227, 18, 'billing_email', 'caramelodesabila@hotmail.com'),
(228, 18, 'billing_phone', ' '),
(229, 19, 'nickname', 'caramelodesabila@hotmail.com'),
(230, 19, 'first_name', 'Pietro Pascualis'),
(231, 19, 'last_name', 'Pietro Pascualis'),
(232, 19, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(233, 19, 'billing_first_name', 'Pietro Pascualis'),
(234, 19, 'billing_last_name', 'Pietro Pascualis'),
(235, 19, 'billing_email', 'caramelodesabila@hotmail.com'),
(236, 19, 'billing_phone', ' '),
(237, 20, 'nickname', 'pietropasqualis55@gmail.com'),
(238, 20, 'first_name', 'Pietro Pasqualis'),
(239, 20, 'last_name', 'Pietro Pasqualis'),
(240, 20, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(241, 20, 'billing_first_name', 'Pietro Pasqualis'),
(242, 20, 'billing_last_name', 'Pietro Pasqualis'),
(243, 20, 'billing_email', 'pietropasqualis55@gmail.com'),
(244, 20, 'billing_phone', ' '),
(245, 10, 'nickname', 'asifontes@mail.com'),
(246, 10, 'first_name', 'Andres'),
(247, 10, 'last_name', 'Sifontes'),
(248, 10, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(249, 10, 'billing_first_name', 'Andres'),
(250, 10, 'billing_last_name', 'Sifontes'),
(251, 10, 'billing_email', 'asifontes@mail.com'),
(252, 10, 'billing_phone', NULL),
(253, 11, 'nickname', 'alexisjsoe95@hotmail.com'),
(254, 11, 'first_name', NULL),
(255, 11, 'last_name', NULL),
(256, 11, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(257, 11, 'billing_first_name', NULL),
(258, 11, 'billing_last_name', NULL),
(259, 11, 'billing_email', 'alexisjsoe95@hotmail.com'),
(260, 11, 'billing_phone', NULL),
(261, 12, 'nickname', 'alexisjoseva959@gmail.com'),
(262, 12, 'first_name', 'aa'),
(263, 12, 'last_name', 'a'),
(264, 12, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(265, 12, 'billing_first_name', 'aa'),
(266, 12, 'billing_last_name', 'a'),
(267, 12, 'billing_email', 'alexisjoseva959@gmail.com'),
(268, 12, 'billing_phone', NULL),
(269, 13, 'nickname', 'alexisjoseva952@gmail.com'),
(270, 13, 'first_name', 'nombre'),
(271, 13, 'last_name', 'apellido'),
(272, 13, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(273, 13, 'billing_first_name', 'nombre'),
(274, 13, 'billing_last_name', 'apellido'),
(275, 13, 'billing_email', 'alexisjoseva952@gmail.com'),
(276, 13, 'billing_phone', NULL),
(277, 14, 'nickname', 'yo@gmail.com'),
(278, 14, 'first_name', NULL),
(279, 14, 'last_name', NULL),
(280, 14, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(281, 14, 'billing_first_name', NULL),
(282, 14, 'billing_last_name', NULL),
(283, 14, 'billing_email', 'yo@gmail.com'),
(284, 14, 'billing_phone', NULL),
(285, 15, 'nickname', 'yo@gmail.com'),
(286, 15, 'first_name', NULL),
(287, 15, 'last_name', NULL),
(288, 15, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(289, 15, 'billing_first_name', NULL),
(290, 15, 'billing_last_name', NULL),
(291, 15, 'billing_email', 'yo@gmail.com'),
(292, 15, 'billing_phone', NULL),
(293, 16, 'nickname', 'alexisjoseva95@gmail.com'),
(294, 16, 'first_name', NULL),
(295, 16, 'last_name', NULL),
(296, 16, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(297, 16, 'billing_first_name', NULL),
(298, 16, 'billing_last_name', NULL),
(299, 16, 'billing_email', 'alexisjoseva95@gmail.com'),
(300, 16, 'billing_phone', NULL),
(301, 17, 'nickname', 'lestermorales@sinergiared.com'),
(302, 17, 'first_name', NULL),
(303, 17, 'last_name', NULL),
(304, 17, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(305, 17, 'billing_first_name', NULL),
(306, 17, 'billing_last_name', NULL),
(307, 17, 'billing_email', 'lestermorales@sinergiared.com'),
(308, 17, 'billing_phone', NULL),
(317, 10000, 'nickname', 'mglesther@hotmail.com'),
(318, 10000, 'first_name', 'Lester'),
(319, 10000, 'last_name', 'Morales'),
(320, 10000, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(321, 10000, 'billing_first_name', 'Lester'),
(322, 10000, 'billing_last_name', 'Morales'),
(323, 10000, 'billing_email', 'mglesther@hotmail.com'),
(324, 10000, 'billing_phone', NULL),
(325, 10001, 'nickname', 'alexisjose95@hotmail.com'),
(326, 10001, 'first_name', NULL),
(327, 10001, 'last_name', NULL),
(328, 10001, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(329, 10001, 'billing_first_name', NULL),
(330, 10001, 'billing_last_name', NULL),
(331, 10001, 'billing_email', 'alexisjose95@hotmail.com'),
(332, 10001, 'billing_phone', NULL),
(333, 10002, 'nickname', 'conferencias_lm@hotmail.com'),
(334, 10002, 'first_name', 'Lester'),
(335, 10002, 'last_name', 'Morales'),
(336, 10002, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(337, 10002, 'billing_first_name', 'Lester'),
(338, 10002, 'billing_last_name', 'Morales'),
(339, 10002, 'billing_email', 'conferencias_lm@hotmail.com'),
(340, 10002, 'billing_phone', NULL),
(341, 10003, 'nickname', 'sinergia_group@live.com'),
(342, 10003, 'first_name', NULL),
(343, 10003, 'last_name', NULL),
(344, 10003, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(345, 10003, 'billing_first_name', NULL),
(346, 10003, 'billing_last_name', NULL),
(347, 10003, 'billing_email', 'sinergia_group@live.com'),
(348, 10003, 'billing_phone', NULL),
(349, 10004, 'nickname', 'yo@gmail.com'),
(350, 10004, 'first_name', 'pietro'),
(351, 10004, 'last_name', 'pasqualis'),
(352, 10004, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(353, 10004, 'billing_first_name', 'pietro'),
(354, 10004, 'billing_last_name', 'pasqualis'),
(355, 10004, 'billing_email', 'yo@gmail.com'),
(356, 10004, 'billing_phone', NULL),
(357, 10005, 'nickname', 'yo2@gmail.com'),
(358, 10005, 'first_name', 'pietro2'),
(359, 10005, 'last_name', 'pasqualis2'),
(360, 10005, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(361, 10005, 'billing_first_name', 'pietro2'),
(362, 10005, 'billing_last_name', 'pasqualis2'),
(363, 10005, 'billing_email', 'yo2@gmail.com'),
(364, 10005, 'billing_phone', NULL),
(365, 10006, 'nickname', 'yo3@gmail.com'),
(366, 10006, 'first_name', 'pietro3'),
(367, 10006, 'last_name', 'pasqualis3'),
(368, 10006, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(369, 10006, 'billing_first_name', 'pietro3'),
(370, 10006, 'billing_last_name', 'pasqualis3'),
(371, 10006, 'billing_email', 'yo3@gmail.com'),
(372, 10006, 'billing_phone', NULL),
(373, 10007, 'nickname', 'yo4@gmail.com'),
(374, 10007, 'first_name', 'pietro4'),
(375, 10007, 'last_name', 'pasqualis4'),
(376, 10007, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(377, 10007, 'billing_first_name', 'pietro4'),
(378, 10007, 'billing_last_name', 'pasqualis4'),
(379, 10007, 'billing_email', 'yo4@gmail.com'),
(380, 10007, 'billing_phone', NULL),
(381, 10008, 'nickname', 'you@gmail.com'),
(382, 10008, 'first_name', NULL),
(383, 10008, 'last_name', NULL),
(384, 10008, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(385, 10008, 'billing_first_name', NULL),
(386, 10008, 'billing_last_name', NULL),
(387, 10008, 'billing_email', 'you@gmail.com'),
(388, 10008, 'billing_phone', NULL),
(389, 10009, 'nickname', 'fernandoherrera@gmail.com'),
(390, 10009, 'first_name', 'Fernando'),
(391, 10009, 'last_name', 'Herrera'),
(392, 10009, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(393, 10009, 'billing_first_name', 'Fernando'),
(394, 10009, 'billing_last_name', 'Herrera'),
(395, 10009, 'billing_email', 'fernandoherrera@gmail.com'),
(396, 10009, 'billing_phone', NULL),
(397, 10010, 'nickname', 'alexisjoseva955656@gmail.com0'),
(398, 10010, 'first_name', NULL),
(399, 10010, 'last_name', NULL),
(400, 10010, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(401, 10010, 'billing_first_name', NULL),
(402, 10010, 'billing_last_name', NULL),
(403, 10010, 'billing_email', 'alexisjoseva955656@gmail.com0'),
(404, 10010, 'billing_phone', NULL),
(405, 10011, 'nickname', 'alexisjoseva955656@gmail.com2'),
(406, 10011, 'first_name', 'Alexisvalera'),
(407, 10011, 'last_name', 'AGDSCVVG'),
(408, 10011, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(409, 10011, 'billing_first_name', 'Alexisvalera'),
(410, 10011, 'billing_last_name', 'AGDSCVVG'),
(411, 10011, 'billing_email', 'alexisjoseva955656@gmail.com2'),
(412, 10011, 'billing_phone', NULL),
(413, 10012, 'nickname', 'alexisjoseva95@gmail.com3'),
(414, 10012, 'first_name', 'Daniel'),
(415, 10012, 'last_name', 'valera'),
(416, 10012, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(417, 10012, 'billing_first_name', 'Daniel'),
(418, 10012, 'billing_last_name', 'valera'),
(419, 10012, 'billing_email', 'alexisjoseva95@gmail.com3'),
(420, 10012, 'billing_phone', NULL),
(421, 10013, 'nickname', 'cgonzalez.byob@gmail.com'),
(422, 10013, 'first_name', NULL),
(423, 10013, 'last_name', NULL),
(424, 10013, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(425, 10013, 'billing_first_name', NULL),
(426, 10013, 'billing_last_name', NULL),
(427, 10013, 'billing_email', 'cgonzalez.byob@gmail.com'),
(428, 10013, 'billing_phone', NULL),
(429, 10014, 'nickname', 'prueba@gmail.com'),
(430, 10014, 'first_name', NULL),
(431, 10014, 'last_name', NULL),
(432, 10014, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(433, 10014, 'billing_first_name', NULL),
(434, 10014, 'billing_last_name', NULL),
(435, 10014, 'billing_email', 'prueba@gmail.com'),
(436, 10014, 'billing_phone', NULL),
(437, 10015, 'nickname', 'alexis@valdusoft.com'),
(438, 10015, 'first_name', NULL),
(439, 10015, 'last_name', NULL),
(440, 10015, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(441, 10015, 'billing_first_name', NULL),
(442, 10015, 'billing_last_name', NULL),
(443, 10015, 'billing_email', 'alexis@valdusoft.com'),
(444, 10015, 'billing_phone', NULL),
(445, 10016, 'nickname', 'iu@gmail.com'),
(446, 10016, 'first_name', NULL),
(447, 10016, 'last_name', NULL),
(448, 10016, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(449, 10016, 'billing_first_name', NULL),
(450, 10016, 'billing_last_name', NULL),
(451, 10016, 'billing_email', 'iu@gmail.com'),
(452, 10016, 'billing_phone', NULL),
(453, 10017, 'nickname', 'prueba5@gmail.com'),
(454, 10017, 'first_name', NULL),
(455, 10017, 'last_name', NULL),
(456, 10017, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(457, 10017, 'billing_first_name', NULL),
(458, 10017, 'billing_last_name', NULL),
(459, 10017, 'billing_email', 'prueba5@gmail.com'),
(460, 10017, 'billing_phone', NULL),
(461, 10018, 'nickname', 'yo@gmail.com'),
(462, 10018, 'first_name', NULL),
(463, 10018, 'last_name', NULL),
(464, 10018, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(465, 10018, 'billing_first_name', NULL),
(466, 10018, 'billing_last_name', NULL),
(467, 10018, 'billing_email', 'yo@gmail.com'),
(468, 10018, 'billing_phone', NULL),
(469, 10019, 'nickname', 'alexi@b.com'),
(470, 10019, 'first_name', NULL),
(471, 10019, 'last_name', NULL),
(472, 10019, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(473, 10019, 'billing_first_name', NULL),
(474, 10019, 'billing_last_name', NULL),
(475, 10019, 'billing_email', 'alexi@b.com'),
(476, 10019, 'billing_phone', NULL),
(477, 10020, 'nickname', 'yo2@gmail.com'),
(478, 10020, 'first_name', NULL),
(479, 10020, 'last_name', NULL),
(480, 10020, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(481, 10020, 'billing_first_name', NULL),
(482, 10020, 'billing_last_name', NULL),
(483, 10020, 'billing_email', 'yo2@gmail.com'),
(484, 10020, 'billing_phone', NULL),
(485, 10021, 'nickname', 'I@gmail.com'),
(486, 10021, 'first_name', NULL),
(487, 10021, 'last_name', NULL),
(488, 10021, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(489, 10021, 'billing_first_name', NULL),
(490, 10021, 'billing_last_name', NULL),
(491, 10021, 'billing_email', 'I@gmail.com'),
(492, 10021, 'billing_phone', NULL),
(493, 10022, 'nickname', 'conferencias.lestermorales@gmail.com'),
(494, 10022, 'first_name', NULL),
(495, 10022, 'last_name', NULL),
(496, 10022, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(497, 10022, 'billing_first_name', NULL),
(498, 10022, 'billing_last_name', NULL),
(499, 10022, 'billing_email', 'conferencias.lestermorales@gmail.com'),
(500, 10022, 'billing_phone', NULL),
(501, 10023, 'nickname', 'yo3@gmail.com'),
(502, 10023, 'first_name', NULL),
(503, 10023, 'last_name', NULL),
(504, 10023, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(505, 10023, 'billing_first_name', NULL),
(506, 10023, 'billing_last_name', NULL),
(507, 10023, 'billing_email', 'yo3@gmail.com'),
(508, 10023, 'billing_phone', NULL),
(509, 10024, 'nickname', 'preba8@gmail.com'),
(510, 10024, 'first_name', NULL),
(511, 10024, 'last_name', NULL),
(512, 10024, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(513, 10024, 'billing_first_name', NULL),
(514, 10024, 'billing_last_name', NULL),
(515, 10024, 'billing_email', 'preba8@gmail.com'),
(516, 10024, 'billing_phone', NULL),
(517, 10025, 'nickname', 'conferencias@lestermorales.com'),
(518, 10025, 'first_name', 'Lester'),
(519, 10025, 'last_name', 'Morales'),
(520, 10025, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(521, 10025, 'billing_first_name', 'Lester'),
(522, 10025, 'billing_last_name', 'Morales'),
(523, 10025, 'billing_email', 'conferencias@lestermorales.com'),
(524, 10025, 'billing_phone', NULL),
(525, 10026, 'nickname', 'moderador@gmail.com'),
(526, 10026, 'first_name', 'moderador'),
(527, 10026, 'last_name', 'moderador'),
(528, 10026, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(529, 10026, 'billing_first_name', 'moderador'),
(530, 10026, 'billing_last_name', 'moderador'),
(531, 10026, 'billing_email', 'moderador@gmail.com'),
(532, 10026, 'billing_phone', NULL),
(533, 10027, 'nickname', 'yo5@gmail.com'),
(534, 10027, 'first_name', NULL),
(535, 10027, 'last_name', NULL),
(536, 10027, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(537, 10027, 'billing_first_name', NULL),
(538, 10027, 'billing_last_name', NULL),
(539, 10027, 'billing_email', 'yo5@gmail.com'),
(540, 10027, 'billing_phone', NULL),
(541, 10028, 'nickname', 'yo6@gmail.com'),
(542, 10028, 'first_name', NULL),
(543, 10028, 'last_name', NULL),
(544, 10028, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(545, 10028, 'billing_first_name', NULL),
(546, 10028, 'billing_last_name', NULL),
(547, 10028, 'billing_email', 'yo6@gmail.com'),
(548, 10028, 'billing_phone', NULL),
(549, 10029, 'nickname', 'yo@gmail.com'),
(550, 10029, 'first_name', NULL),
(551, 10029, 'last_name', NULL),
(552, 10029, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(553, 10029, 'billing_first_name', NULL),
(554, 10029, 'billing_last_name', NULL),
(555, 10029, 'billing_email', 'yo@gmail.com'),
(556, 10029, 'billing_phone', NULL),
(557, 10030, 'nickname', 'yo2@gmail.com'),
(558, 10030, 'first_name', NULL),
(559, 10030, 'last_name', NULL),
(560, 10030, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(561, 10030, 'billing_first_name', NULL),
(562, 10030, 'billing_last_name', NULL),
(563, 10030, 'billing_email', 'yo2@gmail.com'),
(564, 10030, 'billing_phone', NULL),
(565, 10031, 'nickname', 'yo3@gmail.com'),
(566, 10031, 'first_name', NULL),
(567, 10031, 'last_name', NULL),
(568, 10031, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(569, 10031, 'billing_first_name', NULL),
(570, 10031, 'billing_last_name', NULL),
(571, 10031, 'billing_email', 'yo3@gmail.com'),
(572, 10031, 'billing_phone', NULL),
(573, 10032, 'nickname', 'yo4@gmail.com'),
(574, 10032, 'first_name', NULL),
(575, 10032, 'last_name', NULL),
(576, 10032, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(577, 10032, 'billing_first_name', NULL),
(578, 10032, 'billing_last_name', NULL),
(579, 10032, 'billing_email', 'yo4@gmail.com'),
(580, 10032, 'billing_phone', NULL),
(581, 10033, 'nickname', 'tes02@gmail.com'),
(582, 10033, 'first_name', NULL),
(583, 10033, 'last_name', NULL),
(584, 10033, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(585, 10033, 'billing_first_name', NULL),
(586, 10033, 'billing_last_name', NULL),
(587, 10033, 'billing_email', 'tes02@gmail.com'),
(588, 10033, 'billing_phone', NULL),
(589, 10034, 'nickname', 'tes04@gmail.com'),
(590, 10034, 'first_name', NULL),
(591, 10034, 'last_name', NULL),
(592, 10034, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(593, 10034, 'billing_first_name', NULL),
(594, 10034, 'billing_last_name', NULL),
(595, 10034, 'billing_email', 'tes04@gmail.com'),
(596, 10034, 'billing_phone', NULL),
(597, 10035, 'nickname', 'mm@gmail.com'),
(598, 10035, 'first_name', NULL),
(599, 10035, 'last_name', NULL),
(600, 10035, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(601, 10035, 'billing_first_name', NULL),
(602, 10035, 'billing_last_name', NULL),
(603, 10035, 'billing_email', 'mm@gmail.com'),
(604, 10035, 'billing_phone', NULL),
(605, 10036, 'nickname', 'iuo@gmail.com'),
(606, 10036, 'first_name', NULL),
(607, 10036, 'last_name', NULL),
(608, 10036, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(609, 10036, 'billing_first_name', NULL),
(610, 10036, 'billing_last_name', NULL),
(611, 10036, 'billing_email', 'iuo@gmail.com'),
(612, 10036, 'billing_phone', NULL),
(613, 10037, 'nickname', 'yoci@gmail.com'),
(614, 10037, 'first_name', NULL),
(615, 10037, 'last_name', NULL),
(616, 10037, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(617, 10037, 'billing_first_name', NULL),
(618, 10037, 'billing_last_name', NULL),
(619, 10037, 'billing_email', 'yoci@gmail.com'),
(620, 10037, 'billing_phone', NULL),
(621, 10038, 'nickname', 'al@gmail.com'),
(622, 10038, 'first_name', NULL),
(623, 10038, 'last_name', NULL),
(624, 10038, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(625, 10038, 'billing_first_name', NULL),
(626, 10038, 'billing_last_name', NULL),
(627, 10038, 'billing_email', 'al@gmail.com'),
(628, 10038, 'billing_phone', NULL),
(629, 10039, 'nickname', 'manuelguerrero@mbapro.com'),
(630, 10039, 'first_name', 'Manuel'),
(631, 10039, 'last_name', 'Guerrero'),
(632, 10039, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(633, 10039, 'billing_first_name', 'Manuel'),
(634, 10039, 'billing_last_name', 'Guerrero'),
(635, 10039, 'billing_email', 'manuelguerrero@mbapro.com'),
(636, 10039, 'billing_phone', NULL),
(637, 10040, 'nickname', 'consultas@sinergiared.com'),
(638, 10040, 'first_name', 'Lester Referido'),
(639, 10040, 'last_name', 'Referido2'),
(640, 10040, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(641, 10040, 'billing_first_name', 'Lester Referido'),
(642, 10040, 'billing_last_name', 'Referido2'),
(643, 10040, 'billing_email', 'consultas@sinergiared.com'),
(644, 10040, 'billing_phone', NULL),
(645, 10041, 'nickname', 'llso@gmail.com'),
(646, 10041, 'first_name', NULL),
(647, 10041, 'last_name', NULL),
(648, 10041, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(649, 10041, 'billing_first_name', NULL),
(650, 10041, 'billing_last_name', NULL),
(651, 10041, 'billing_email', 'llso@gmail.com'),
(652, 10041, 'billing_phone', NULL),
(653, 10042, 'nickname', 'cliente20@sinergiared.com'),
(654, 10042, 'first_name', 'Martha'),
(655, 10042, 'last_name', 'Gonzalez'),
(656, 10042, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(657, 10042, 'billing_first_name', 'Martha'),
(658, 10042, 'billing_last_name', 'Gonzalez'),
(659, 10042, 'billing_email', 'cliente20@sinergiared.com'),
(660, 10042, 'billing_phone', NULL),
(661, 10043, 'nickname', 'po@g.vom'),
(662, 10043, 'first_name', NULL),
(663, 10043, 'last_name', NULL),
(664, 10043, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(665, 10043, 'billing_first_name', NULL),
(666, 10043, 'billing_last_name', NULL),
(667, 10043, 'billing_email', 'po@g.vom'),
(668, 10043, 'billing_phone', NULL),
(669, 10044, 'nickname', 'ramo@gmail.com'),
(670, 10044, 'first_name', NULL),
(671, 10044, 'last_name', NULL),
(672, 10044, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(673, 10044, 'billing_first_name', NULL),
(674, 10044, 'billing_last_name', NULL),
(675, 10044, 'billing_email', 'ramo@gmail.com'),
(676, 10044, 'billing_phone', NULL),
(677, 10045, 'nickname', 'pro@gmail.com'),
(678, 10045, 'first_name', 'Ramon alberto'),
(679, 10045, 'last_name', 'picon'),
(680, 10045, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(681, 10045, 'billing_first_name', 'Ramon alberto'),
(682, 10045, 'billing_last_name', 'picon'),
(683, 10045, 'billing_email', 'pro@gmail.com'),
(684, 10045, 'billing_phone', NULL),
(685, 10046, 'nickname', '9@gmail.com'),
(686, 10046, 'first_name', NULL),
(687, 10046, 'last_name', NULL),
(688, 10046, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(689, 10046, 'billing_first_name', NULL),
(690, 10046, 'billing_last_name', NULL),
(691, 10046, 'billing_email', '9@gmail.com'),
(692, 10046, 'billing_phone', NULL),
(693, 10047, 'nickname', 'Alexisjoseva95@gmail.com4'),
(694, 10047, 'first_name', NULL),
(695, 10047, 'last_name', NULL),
(696, 10047, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(697, 10047, 'billing_first_name', NULL),
(698, 10047, 'billing_last_name', NULL),
(699, 10047, 'billing_email', 'Alexisjoseva95@gmail.com4'),
(700, 10047, 'billing_phone', NULL),
(701, 10048, 'nickname', 'cliente10@sinergiared.com'),
(702, 10048, 'first_name', 'Tania'),
(703, 10048, 'last_name', 'Tostao Ramos'),
(704, 10048, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(705, 10048, 'billing_first_name', 'Tania'),
(706, 10048, 'billing_last_name', 'Tostao Ramos'),
(707, 10048, 'billing_email', 'cliente10@sinergiared.com'),
(708, 10048, 'billing_phone', NULL),
(709, 10049, 'nickname', 'soporte@sinergiared.com'),
(710, 10049, 'first_name', 'ramon'),
(711, 10049, 'last_name', 'picon'),
(712, 10049, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(713, 10049, 'billing_first_name', 'ramon'),
(714, 10049, 'billing_last_name', 'picon'),
(715, 10049, 'billing_email', 'soporte@sinergiared.com'),
(716, 10049, 'billing_phone', NULL),
(717, 10050, 'nickname', 'tes5000@gmail.com'),
(718, 10050, 'first_name', 'tes5000'),
(719, 10050, 'last_name', 'picon'),
(720, 10050, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(721, 10050, 'billing_first_name', 'tes5000'),
(722, 10050, 'billing_last_name', 'picon'),
(723, 10050, 'billing_email', 'tes5000@gmail.com'),
(724, 10050, 'billing_phone', NULL),
(725, 10051, 'nickname', 'pedro@gmail.com'),
(726, 10051, 'first_name', NULL),
(727, 10051, 'last_name', NULL),
(728, 10051, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(729, 10051, 'billing_first_name', NULL),
(730, 10051, 'billing_last_name', NULL),
(731, 10051, 'billing_email', 'pedro@gmail.com'),
(732, 10051, 'billing_phone', NULL),
(733, 10052, 'nickname', 'erick@gmail.com'),
(734, 10052, 'first_name', 'Erick'),
(735, 10052, 'last_name', 'Reynaga'),
(736, 10052, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(737, 10052, 'billing_first_name', 'Erick'),
(738, 10052, 'billing_last_name', 'Reynaga'),
(739, 10052, 'billing_email', 'erick@gmail.com'),
(740, 10052, 'billing_phone', NULL),
(741, 10053, 'nickname', 'alexisjoseva95@gmail.com0'),
(742, 10053, 'first_name', NULL),
(743, 10053, 'last_name', NULL),
(744, 10053, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(745, 10053, 'billing_first_name', NULL),
(746, 10053, 'billing_last_name', NULL),
(747, 10053, 'billing_email', 'alexisjoseva95@gmail.com0'),
(748, 10053, 'billing_phone', NULL),
(749, 10054, 'nickname', '1@gmail.com'),
(750, 10054, 'first_name', 'Alexis'),
(751, 10054, 'last_name', 'valera'),
(752, 10054, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(753, 10054, 'billing_first_name', 'Alexis'),
(754, 10054, 'billing_last_name', 'valera'),
(755, 10054, 'billing_email', '1@gmail.com'),
(756, 10054, 'billing_phone', NULL),
(757, 10055, 'nickname', 'johan@gmail.com'),
(758, 10055, 'first_name', 'Johan'),
(759, 10055, 'last_name', 'Goncalves'),
(760, 10055, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(761, 10055, 'billing_first_name', 'Johan'),
(762, 10055, 'billing_last_name', 'Goncalves'),
(763, 10055, 'billing_email', 'johan@gmail.com'),
(764, 10055, 'billing_phone', NULL),
(765, 10056, 'nickname', 'mirela@gmail.com'),
(766, 10056, 'first_name', 'Mirela'),
(767, 10056, 'last_name', 'Vuckovic'),
(768, 10056, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(769, 10056, 'billing_first_name', 'Mirela'),
(770, 10056, 'billing_last_name', 'Vuckovic'),
(771, 10056, 'billing_email', 'mirela@gmail.com'),
(772, 10056, 'billing_phone', NULL),
(773, 10057, 'nickname', 'francisco@gmail.com'),
(774, 10057, 'first_name', 'Francisco'),
(775, 10057, 'last_name', 'Valencia Pérez'),
(776, 10057, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(777, 10057, 'billing_first_name', 'Francisco'),
(778, 10057, 'billing_last_name', 'Valencia Pérez'),
(779, 10057, 'billing_email', 'francisco@gmail.com'),
(780, 10057, 'billing_phone', NULL),
(781, 10058, 'nickname', 'luisanaelenamarin@gmail.com'),
(782, 10058, 'first_name', NULL),
(783, 10058, 'last_name', NULL),
(784, 10058, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(785, 10058, 'billing_first_name', NULL),
(786, 10058, 'billing_last_name', NULL),
(787, 10058, 'billing_email', 'luisanaelenamarin@gmail.com'),
(788, 10058, 'billing_phone', NULL),
(789, 10059, 'nickname', 'lvmb29@gmail.com'),
(790, 10059, 'first_name', 'Luisanaelena'),
(791, 10059, 'last_name', 'Marín'),
(792, 10059, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(793, 10059, 'billing_first_name', 'Luisanaelena'),
(794, 10059, 'billing_last_name', 'Marín'),
(795, 10059, 'billing_email', 'lvmb29@gmail.com'),
(796, 10059, 'billing_phone', NULL),
(797, 10060, 'nickname', 'ramalejtq@gmail.com'),
(798, 10060, 'first_name', 'Ramón Alberto'),
(799, 10060, 'last_name', 'Picon Guerra'),
(800, 10060, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(801, 10060, 'billing_first_name', 'Ramón Alberto'),
(802, 10060, 'billing_last_name', 'Picon Guerra'),
(803, 10060, 'billing_email', 'ramalejtq@gmail.com'),
(804, 10060, 'billing_phone', NULL),
(805, 10061, 'nickname', 'mentor@gmail.com'),
(806, 10061, 'first_name', 'mentor'),
(807, 10061, 'last_name', 'mentor'),
(808, 10061, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(809, 10061, 'billing_first_name', 'mentor'),
(810, 10061, 'billing_last_name', 'mentor'),
(811, 10061, 'billing_email', 'mentor@gmail.com'),
(812, 10061, 'billing_phone', NULL),
(813, 10062, 'nickname', 'alexis@prueba.com45'),
(814, 10062, 'first_name', NULL),
(815, 10062, 'last_name', NULL),
(816, 10062, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(817, 10062, 'billing_first_name', NULL),
(818, 10062, 'billing_last_name', NULL),
(819, 10062, 'billing_email', 'alexis@prueba.com45'),
(820, 10062, 'billing_phone', NULL),
(821, 10063, 'nickname', 'cliente5@sinergiared.com'),
(822, 10063, 'first_name', NULL),
(823, 10063, 'last_name', NULL),
(824, 10063, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(825, 10063, 'billing_first_name', NULL),
(826, 10063, 'billing_last_name', NULL),
(827, 10063, 'billing_email', 'cliente5@sinergiared.com'),
(828, 10063, 'billing_phone', NULL),
(829, 10064, 'nickname', 'alejandrocamacho@sinergiared.com'),
(830, 10064, 'first_name', NULL),
(831, 10064, 'last_name', NULL),
(832, 10064, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(833, 10064, 'billing_first_name', NULL),
(834, 10064, 'billing_last_name', NULL),
(835, 10064, 'billing_email', 'alejandrocamacho@sinergiared.com'),
(836, 10064, 'billing_phone', NULL),
(837, 10065, 'nickname', 'conferenciasg.rodriguez@gmail.com'),
(838, 10065, 'first_name', NULL),
(839, 10065, 'last_name', NULL),
(840, 10065, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(841, 10065, 'billing_first_name', NULL),
(842, 10065, 'billing_last_name', NULL),
(843, 10065, 'billing_email', 'conferenciasg.rodriguez@gmail.com'),
(844, 10065, 'billing_phone', NULL),
(845, 10066, 'nickname', 'elquintero22@gmail.com'),
(846, 10066, 'first_name', NULL),
(847, 10066, 'last_name', NULL),
(848, 10066, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(849, 10066, 'billing_first_name', NULL),
(850, 10066, 'billing_last_name', NULL),
(851, 10066, 'billing_email', 'elquintero22@gmail.com'),
(852, 10066, 'billing_phone', NULL),
(853, 10067, 'nickname', 'cliente11@sinergiared.com'),
(854, 10067, 'first_name', NULL),
(855, 10067, 'last_name', NULL),
(856, 10067, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(857, 10067, 'billing_first_name', NULL),
(858, 10067, 'billing_last_name', NULL),
(859, 10067, 'billing_email', 'cliente11@sinergiared.com'),
(860, 10067, 'billing_phone', NULL),
(861, 10068, 'nickname', 'prueba1@gmail.com'),
(862, 10068, 'first_name', NULL),
(863, 10068, 'last_name', NULL),
(864, 10068, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(865, 10068, 'billing_first_name', NULL),
(866, 10068, 'billing_last_name', NULL),
(867, 10068, 'billing_email', 'prueba1@gmail.com'),
(868, 10068, 'billing_phone', NULL),
(869, 10069, 'nickname', 'red1@gmail.com'),
(870, 10069, 'first_name', NULL),
(871, 10069, 'last_name', NULL),
(872, 10069, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(873, 10069, 'billing_first_name', NULL),
(874, 10069, 'billing_last_name', NULL),
(875, 10069, 'billing_email', 'red1@gmail.com'),
(876, 10069, 'billing_phone', NULL),
(877, 10070, 'nickname', 'lvmb29@gmail.com'),
(878, 10070, 'first_name', NULL),
(879, 10070, 'last_name', NULL),
(880, 10070, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(881, 10070, 'billing_first_name', NULL),
(882, 10070, 'billing_last_name', NULL),
(883, 10070, 'billing_email', 'lvmb29@gmail.com'),
(884, 10070, 'billing_phone', NULL),
(885, 10071, 'nickname', 'taniatostado@mybusinessacademypro.com'),
(886, 10071, 'first_name', NULL),
(887, 10071, 'last_name', NULL),
(888, 10071, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(889, 10071, 'billing_first_name', NULL),
(890, 10071, 'billing_last_name', NULL),
(891, 10071, 'billing_email', 'taniatostado@mybusinessacademypro.com'),
(892, 10071, 'billing_phone', NULL),
(893, 10072, 'nickname', 'manuelguerrero@mybusinessacademypro.com'),
(894, 10072, 'first_name', NULL),
(895, 10072, 'last_name', NULL),
(896, 10072, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(897, 10072, 'billing_first_name', NULL),
(898, 10072, 'billing_last_name', NULL),
(899, 10072, 'billing_email', 'manuelguerrero@mybusinessacademypro.com'),
(900, 10072, 'billing_phone', NULL),
(901, 10073, 'nickname', 'mirelavuckovic@mybusinessacademypro.com'),
(902, 10073, 'first_name', NULL),
(903, 10073, 'last_name', NULL),
(904, 10073, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(905, 10073, 'billing_first_name', NULL),
(906, 10073, 'billing_last_name', NULL),
(907, 10073, 'billing_email', 'mirelavuckovic@mybusinessacademypro.com'),
(908, 10073, 'billing_phone', NULL),
(909, 10074, 'nickname', 'erickreynaga@mybusinessacademypro.com'),
(910, 10074, 'first_name', NULL),
(911, 10074, 'last_name', NULL),
(912, 10074, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(913, 10074, 'billing_first_name', NULL),
(914, 10074, 'billing_last_name', NULL),
(915, 10074, 'billing_email', 'erickreynaga@mybusinessacademypro.com'),
(916, 10074, 'billing_phone', NULL),
(917, 10075, 'nickname', 'luisanaelenamarin@gmail.com'),
(918, 10075, 'first_name', NULL),
(919, 10075, 'last_name', NULL),
(920, 10075, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(921, 10075, 'billing_first_name', NULL),
(922, 10075, 'billing_last_name', NULL),
(923, 10075, 'billing_email', 'luisanaelenamarin@gmail.com'),
(924, 10075, 'billing_phone', NULL),
(925, 10076, 'nickname', 'lvmb29@gmail.com'),
(926, 10076, 'first_name', NULL),
(927, 10076, 'last_name', NULL),
(928, 10076, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(929, 10076, 'billing_first_name', NULL),
(930, 10076, 'billing_last_name', NULL),
(931, 10076, 'billing_email', 'lvmb29@gmail.com'),
(932, 10076, 'billing_phone', NULL),
(933, 10077, 'nickname', 'pruebacliente@gmail.com'),
(934, 10077, 'first_name', NULL),
(935, 10077, 'last_name', NULL),
(936, 10077, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(937, 10077, 'billing_first_name', NULL),
(938, 10077, 'billing_last_name', NULL),
(939, 10077, 'billing_email', 'pruebacliente@gmail.com'),
(940, 10077, 'billing_phone', NULL),
(941, 10078, 'nickname', 'ramalejtq@gmail.com'),
(942, 10078, 'first_name', NULL),
(943, 10078, 'last_name', NULL),
(944, 10078, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(945, 10078, 'billing_first_name', NULL),
(946, 10078, 'billing_last_name', NULL),
(947, 10078, 'billing_email', 'ramalejtq@gmail.com'),
(948, 10078, 'billing_phone', NULL),
(949, 10079, 'nickname', 'ramalejtq@hotmail.com'),
(950, 10079, 'first_name', NULL),
(951, 10079, 'last_name', NULL),
(952, 10079, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(953, 10079, 'billing_first_name', NULL),
(954, 10079, 'billing_last_name', NULL),
(955, 10079, 'billing_email', 'ramalejtq@hotmail.com'),
(956, 10079, 'billing_phone', NULL),
(957, 10080, 'nickname', 'lestermorales@sinergiared.com'),
(958, 10080, 'first_name', NULL),
(959, 10080, 'last_name', NULL),
(960, 10080, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(961, 10080, 'billing_first_name', NULL),
(962, 10080, 'billing_last_name', NULL),
(963, 10080, 'billing_email', 'lestermorales@sinergiared.com'),
(964, 10080, 'billing_phone', NULL),
(965, 10081, 'nickname', 'fjms93@gmail.com'),
(966, 10081, 'first_name', NULL),
(967, 10081, 'last_name', NULL),
(968, 10081, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(969, 10081, 'billing_first_name', NULL),
(970, 10081, 'billing_last_name', NULL),
(971, 10081, 'billing_email', 'fjms93@gmail.com'),
(972, 10081, 'billing_phone', NULL),
(973, 10082, 'nickname', 'caslo@prueba.com'),
(974, 10082, 'first_name', NULL),
(975, 10082, 'last_name', NULL),
(976, 10082, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(977, 10082, 'billing_first_name', NULL),
(978, 10082, 'billing_last_name', NULL),
(979, 10082, 'billing_email', 'caslo@prueba.com'),
(980, 10082, 'billing_phone', NULL),
(981, 10083, 'nickname', 'matias@mail.com'),
(982, 10083, 'first_name', NULL),
(983, 10083, 'last_name', NULL),
(984, 10083, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(985, 10083, 'billing_first_name', NULL),
(986, 10083, 'billing_last_name', NULL),
(987, 10083, 'billing_email', 'matias@mail.com'),
(988, 10083, 'billing_phone', NULL),
(989, 10084, 'nickname', 'prueba2@mail.com'),
(990, 10084, 'first_name', NULL),
(991, 10084, 'last_name', NULL),
(992, 10084, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(993, 10084, 'billing_first_name', NULL),
(994, 10084, 'billing_last_name', NULL),
(995, 10084, 'billing_email', 'prueba2@mail.com'),
(996, 10084, 'billing_phone', NULL),
(997, 10085, 'nickname', 'sinergia_group@live.com'),
(998, 10085, 'first_name', NULL),
(999, 10085, 'last_name', NULL),
(1000, 10085, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1001, 10085, 'billing_first_name', NULL),
(1002, 10085, 'billing_last_name', NULL),
(1003, 10085, 'billing_email', 'sinergia_group@live.com'),
(1004, 10085, 'billing_phone', NULL),
(1005, 10086, 'nickname', 'conferencias_lm@hotmail.com'),
(1006, 10086, 'first_name', NULL),
(1007, 10086, 'last_name', NULL),
(1008, 10086, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1009, 10086, 'billing_first_name', NULL),
(1010, 10086, 'billing_last_name', NULL),
(1011, 10086, 'billing_email', 'conferencias_lm@hotmail.com'),
(1012, 10086, 'billing_phone', NULL),
(1013, 10087, 'nickname', 'recursos.marketing@gmail.com'),
(1014, 10087, 'first_name', NULL),
(1015, 10087, 'last_name', NULL),
(1016, 10087, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1017, 10087, 'billing_first_name', NULL),
(1018, 10087, 'billing_last_name', NULL),
(1019, 10087, 'billing_email', 'recursos.marketing@gmail.com'),
(1020, 10087, 'billing_phone', NULL),
(1021, 10088, 'nickname', 'alexis@prueba.com88'),
(1022, 10088, 'first_name', NULL),
(1023, 10088, 'last_name', NULL),
(1024, 10088, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1025, 10088, 'billing_first_name', NULL),
(1026, 10088, 'billing_last_name', NULL),
(1027, 10088, 'billing_email', 'alexis@prueba.com88'),
(1028, 10088, 'billing_phone', NULL),
(1029, 10089, 'nickname', 'prueba-luisana@gmail.com'),
(1030, 10089, 'first_name', NULL),
(1031, 10089, 'last_name', NULL),
(1032, 10089, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1033, 10089, 'billing_first_name', NULL),
(1034, 10089, 'billing_last_name', NULL),
(1035, 10089, 'billing_email', 'prueba-luisana@gmail.com'),
(1036, 10089, 'billing_phone', NULL),
(1037, 10090, 'nickname', 'principiante@gmail.com'),
(1038, 10090, 'first_name', NULL),
(1039, 10090, 'last_name', NULL),
(1040, 10090, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1041, 10090, 'billing_first_name', NULL),
(1042, 10090, 'billing_last_name', NULL),
(1043, 10090, 'billing_email', 'principiante@gmail.com'),
(1044, 10090, 'billing_phone', NULL),
(1045, 10091, 'nickname', 'basico@gmail.com'),
(1046, 10091, 'first_name', NULL),
(1047, 10091, 'last_name', NULL),
(1048, 10091, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1049, 10091, 'billing_first_name', NULL),
(1050, 10091, 'billing_last_name', NULL),
(1051, 10091, 'billing_email', 'basico@gmail.com'),
(1052, 10091, 'billing_phone', NULL),
(1053, 10092, 'nickname', 'intermedio@gmail.com'),
(1054, 10092, 'first_name', NULL),
(1055, 10092, 'last_name', NULL),
(1056, 10092, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1057, 10092, 'billing_first_name', NULL),
(1058, 10092, 'billing_last_name', NULL),
(1059, 10092, 'billing_email', 'intermedio@gmail.com'),
(1060, 10092, 'billing_phone', NULL),
(1061, 10093, 'nickname', 'avanzado@gmail.com'),
(1062, 10093, 'first_name', NULL),
(1063, 10093, 'last_name', NULL),
(1064, 10093, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1065, 10093, 'billing_first_name', NULL),
(1066, 10093, 'billing_last_name', NULL),
(1067, 10093, 'billing_email', 'avanzado@gmail.com'),
(1068, 10093, 'billing_phone', NULL),
(1069, 10094, 'nickname', 'pro@gmail.com'),
(1070, 10094, 'first_name', NULL),
(1071, 10094, 'last_name', NULL),
(1072, 10094, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1073, 10094, 'billing_first_name', NULL),
(1074, 10094, 'billing_last_name', NULL),
(1075, 10094, 'billing_email', 'pro@gmail.com'),
(1076, 10094, 'billing_phone', NULL),
(1077, 10095, 'nickname', 'yo@gmail.com'),
(1078, 10095, 'first_name', 'pedro'),
(1079, 10095, 'last_name', 'pedro'),
(1080, 10095, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1081, 10095, 'billing_first_name', 'pedro'),
(1082, 10095, 'billing_last_name', 'pedro'),
(1083, 10095, 'billing_email', 'yo@gmail.com'),
(1084, 10095, 'billing_phone', NULL),
(1085, 10096, 'nickname', 'conferenciasg.rodriguez@gmail.com'),
(1086, 10096, 'first_name', NULL),
(1087, 10096, 'last_name', NULL),
(1088, 10096, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1089, 10096, 'billing_first_name', NULL),
(1090, 10096, 'billing_last_name', NULL),
(1091, 10096, 'billing_email', 'conferenciasg.rodriguez@gmail.com'),
(1092, 10096, 'billing_phone', NULL),
(1093, 10097, 'nickname', 'franciscovalencia@mybusinessacademypro.com'),
(1094, 10097, 'first_name', 'Francisco'),
(1095, 10097, 'last_name', 'Valencia'),
(1096, 10097, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1097, 10097, 'billing_first_name', 'Francisco'),
(1098, 10097, 'billing_last_name', 'Valencia'),
(1099, 10097, 'billing_email', 'franciscovalencia@mybusinessacademypro.com'),
(1100, 10097, 'billing_phone', NULL),
(1101, 10098, 'nickname', 'moderador@gmail.com'),
(1102, 10098, 'first_name', NULL),
(1103, 10098, 'last_name', NULL),
(1104, 10098, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1105, 10098, 'billing_first_name', NULL),
(1106, 10098, 'billing_last_name', NULL),
(1107, 10098, 'billing_email', 'moderador@gmail.com'),
(1108, 10098, 'billing_phone', NULL);
INSERT INTO `wp98_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1109, 10099, 'nickname', 'moderador2@gmail.com'),
(1110, 10099, 'first_name', NULL),
(1111, 10099, 'last_name', NULL),
(1112, 10099, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1113, 10099, 'billing_first_name', NULL),
(1114, 10099, 'billing_last_name', NULL),
(1115, 10099, 'billing_email', 'moderador2@gmail.com'),
(1116, 10099, 'billing_phone', NULL),
(1117, 10100, 'nickname', 'conferencias.lestermorales@gmail.com'),
(1118, 10100, 'first_name', NULL),
(1119, 10100, 'last_name', NULL),
(1120, 10100, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1121, 10100, 'billing_first_name', NULL),
(1122, 10100, 'billing_last_name', NULL),
(1123, 10100, 'billing_email', 'conferencias.lestermorales@gmail.com'),
(1124, 10100, 'billing_phone', NULL),
(1125, 10101, 'nickname', 'cliente2@sinergiared.com'),
(1126, 10101, 'first_name', NULL),
(1127, 10101, 'last_name', NULL),
(1128, 10101, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1129, 10101, 'billing_first_name', NULL),
(1130, 10101, 'billing_last_name', NULL),
(1131, 10101, 'billing_email', 'cliente2@sinergiared.com'),
(1132, 10101, 'billing_phone', NULL),
(1133, 10102, 'nickname', 'cliente3@sinergiared.com'),
(1134, 10102, 'first_name', NULL),
(1135, 10102, 'last_name', NULL),
(1136, 10102, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1137, 10102, 'billing_first_name', NULL),
(1138, 10102, 'billing_last_name', NULL),
(1139, 10102, 'billing_email', 'cliente3@sinergiared.com'),
(1140, 10102, 'billing_phone', NULL),
(1141, 10103, 'nickname', 'cliente4@sinergiared.com'),
(1142, 10103, 'first_name', NULL),
(1143, 10103, 'last_name', NULL),
(1144, 10103, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1145, 10103, 'billing_first_name', NULL),
(1146, 10103, 'billing_last_name', NULL),
(1147, 10103, 'billing_email', 'cliente4@sinergiared.com'),
(1148, 10103, 'billing_phone', NULL),
(1149, 10104, 'nickname', 'cliente5@sinergiared.com'),
(1150, 10104, 'first_name', NULL),
(1151, 10104, 'last_name', NULL),
(1152, 10104, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1153, 10104, 'billing_first_name', NULL),
(1154, 10104, 'billing_last_name', NULL),
(1155, 10104, 'billing_email', 'cliente5@sinergiared.com'),
(1156, 10104, 'billing_phone', NULL),
(1157, 10105, 'nickname', 'yanirapicon@sinergiared.com'),
(1158, 10105, 'first_name', NULL),
(1159, 10105, 'last_name', NULL),
(1160, 10105, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1161, 10105, 'billing_first_name', NULL),
(1162, 10105, 'billing_last_name', NULL),
(1163, 10105, 'billing_email', 'yanirapicon@sinergiared.com'),
(1164, 10105, 'billing_phone', NULL),
(1165, 10106, 'nickname', 'juanita712@hotmail.com'),
(1166, 10106, 'first_name', NULL),
(1167, 10106, 'last_name', NULL),
(1168, 10106, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1169, 10106, 'billing_first_name', NULL),
(1170, 10106, 'billing_last_name', NULL),
(1171, 10106, 'billing_email', 'juanita712@hotmail.com'),
(1172, 10106, 'billing_phone', NULL),
(1173, 10107, 'nickname', 'cliente6@sinergiared.com'),
(1174, 10107, 'first_name', NULL),
(1175, 10107, 'last_name', NULL),
(1176, 10107, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1177, 10107, 'billing_first_name', NULL),
(1178, 10107, 'billing_last_name', NULL),
(1179, 10107, 'billing_email', 'cliente6@sinergiared.com'),
(1180, 10107, 'billing_phone', NULL),
(1181, 10108, 'nickname', 'alberguerr05@gmail.com'),
(1182, 10108, 'first_name', NULL),
(1183, 10108, 'last_name', NULL),
(1184, 10108, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1185, 10108, 'billing_first_name', NULL),
(1186, 10108, 'billing_last_name', NULL),
(1187, 10108, 'billing_email', 'alberguerr05@gmail.com'),
(1188, 10108, 'billing_phone', NULL),
(1189, 10109, 'nickname', 'alexisjoseva95@gmail.com'),
(1190, 10109, 'first_name', NULL),
(1191, 10109, 'last_name', NULL),
(1192, 10109, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1193, 10109, 'billing_first_name', NULL),
(1194, 10109, 'billing_last_name', NULL),
(1195, 10109, 'billing_email', 'alexisjoseva95@gmail.com'),
(1196, 10109, 'billing_phone', NULL),
(1197, 10110, 'nickname', 'cliente9@sinergiared.com'),
(1198, 10110, 'first_name', NULL),
(1199, 10110, 'last_name', NULL),
(1200, 10110, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1201, 10110, 'billing_first_name', NULL),
(1202, 10110, 'billing_last_name', NULL),
(1203, 10110, 'billing_email', 'cliente9@sinergiared.com'),
(1204, 10110, 'billing_phone', NULL),
(1205, 10111, 'nickname', 'ramonpicon@sinergiared.com'),
(1206, 10111, 'first_name', NULL),
(1207, 10111, 'last_name', NULL),
(1208, 10111, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1209, 10111, 'billing_first_name', NULL),
(1210, 10111, 'billing_last_name', NULL),
(1211, 10111, 'billing_email', 'ramonpicon@sinergiared.com'),
(1212, 10111, 'billing_phone', NULL),
(1213, 10112, 'nickname', 'tes5000@gmail.com'),
(1214, 10112, 'first_name', NULL),
(1215, 10112, 'last_name', NULL),
(1216, 10112, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1217, 10112, 'billing_first_name', NULL),
(1218, 10112, 'billing_last_name', NULL),
(1219, 10112, 'billing_email', 'tes5000@gmail.com'),
(1220, 10112, 'billing_phone', NULL),
(1221, 10113, 'nickname', 'tes900@gmail.com'),
(1222, 10113, 'first_name', NULL),
(1223, 10113, 'last_name', NULL),
(1224, 10113, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1225, 10113, 'billing_first_name', NULL),
(1226, 10113, 'billing_last_name', NULL),
(1227, 10113, 'billing_email', 'tes900@gmail.com'),
(1228, 10113, 'billing_phone', NULL),
(1229, 10114, 'nickname', 'soporte1@gmail.com'),
(1230, 10114, 'first_name', NULL),
(1231, 10114, 'last_name', NULL),
(1232, 10114, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1233, 10114, 'billing_first_name', NULL),
(1234, 10114, 'billing_last_name', NULL),
(1235, 10114, 'billing_email', 'soporte1@gmail.com'),
(1236, 10114, 'billing_phone', NULL),
(1237, 10115, 'nickname', 'soporte2@gmail.com'),
(1238, 10115, 'first_name', NULL),
(1239, 10115, 'last_name', NULL),
(1240, 10115, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1241, 10115, 'billing_first_name', NULL),
(1242, 10115, 'billing_last_name', NULL),
(1243, 10115, 'billing_email', 'soporte2@gmail.com'),
(1244, 10115, 'billing_phone', NULL),
(1245, 10116, 'nickname', 'soporte3@gmail.com'),
(1246, 10116, 'first_name', NULL),
(1247, 10116, 'last_name', NULL),
(1248, 10116, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1249, 10116, 'billing_first_name', NULL),
(1250, 10116, 'billing_last_name', NULL),
(1251, 10116, 'billing_email', 'soporte3@gmail.com'),
(1252, 10116, 'billing_phone', NULL),
(1253, 10117, 'nickname', 'soporte4@gmail.com'),
(1254, 10117, 'first_name', NULL),
(1255, 10117, 'last_name', NULL),
(1256, 10117, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1257, 10117, 'billing_first_name', NULL),
(1258, 10117, 'billing_last_name', NULL),
(1259, 10117, 'billing_email', 'soporte4@gmail.com'),
(1260, 10117, 'billing_phone', NULL),
(1261, 10118, 'nickname', 'soporte5@gmail.com'),
(1262, 10118, 'first_name', NULL),
(1263, 10118, 'last_name', NULL),
(1264, 10118, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1265, 10118, 'billing_first_name', NULL),
(1266, 10118, 'billing_last_name', NULL),
(1267, 10118, 'billing_email', 'soporte5@gmail.com'),
(1268, 10118, 'billing_phone', NULL),
(1269, 10119, 'nickname', 'cliente10@sinergiared.com'),
(1270, 10119, 'first_name', NULL),
(1271, 10119, 'last_name', NULL),
(1272, 10119, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1273, 10119, 'billing_first_name', NULL),
(1274, 10119, 'billing_last_name', NULL),
(1275, 10119, 'billing_email', 'cliente10@sinergiared.com'),
(1276, 10119, 'billing_phone', NULL),
(1277, 10120, 'nickname', '1@gmail.com'),
(1278, 10120, 'first_name', NULL),
(1279, 10120, 'last_name', NULL),
(1280, 10120, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1281, 10120, 'billing_first_name', NULL),
(1282, 10120, 'billing_last_name', NULL),
(1283, 10120, 'billing_email', '1@gmail.com'),
(1284, 10120, 'billing_phone', NULL),
(1285, 10121, 'nickname', '2@gmail.com'),
(1286, 10121, 'first_name', NULL),
(1287, 10121, 'last_name', NULL),
(1288, 10121, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1289, 10121, 'billing_first_name', NULL),
(1290, 10121, 'billing_last_name', NULL),
(1291, 10121, 'billing_email', '2@gmail.com'),
(1292, 10121, 'billing_phone', NULL),
(1293, 10122, 'nickname', '3@gmail.com'),
(1294, 10122, 'first_name', NULL),
(1295, 10122, 'last_name', NULL),
(1296, 10122, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1297, 10122, 'billing_first_name', NULL),
(1298, 10122, 'billing_last_name', NULL),
(1299, 10122, 'billing_email', '3@gmail.com'),
(1300, 10122, 'billing_phone', NULL),
(1301, 10123, 'nickname', '6@gmail.com'),
(1302, 10123, 'first_name', NULL),
(1303, 10123, 'last_name', NULL),
(1304, 10123, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1305, 10123, 'billing_first_name', NULL),
(1306, 10123, 'billing_last_name', NULL),
(1307, 10123, 'billing_email', '6@gmail.com'),
(1308, 10123, 'billing_phone', NULL),
(1309, 10124, 'nickname', '0@gmail.com'),
(1310, 10124, 'first_name', 'Mentor'),
(1311, 10124, 'last_name', 'mentor1'),
(1312, 10124, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1313, 10124, 'billing_first_name', 'Mentor'),
(1314, 10124, 'billing_last_name', 'mentor1'),
(1315, 10124, 'billing_email', '0@gmail.com'),
(1316, 10124, 'billing_phone', NULL),
(1317, 10125, 'nickname', 'luisanaelenamarin@gmail.com'),
(1318, 10125, 'first_name', 'Luisanaelena'),
(1319, 10125, 'last_name', 'Marín'),
(1320, 10125, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1321, 10125, 'billing_first_name', 'Luisanaelena'),
(1322, 10125, 'billing_last_name', 'Marín'),
(1323, 10125, 'billing_email', 'luisanaelenamarin@gmail.com'),
(1324, 10125, 'billing_phone', NULL),
(1325, 10126, 'nickname', 'cliente@gmail.com'),
(1326, 10126, 'first_name', NULL),
(1327, 10126, 'last_name', NULL),
(1328, 10126, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1329, 10126, 'billing_first_name', NULL),
(1330, 10126, 'billing_last_name', NULL),
(1331, 10126, 'billing_email', 'cliente@gmail.com'),
(1332, 10126, 'billing_phone', NULL),
(1333, 10127, 'nickname', 'pietropasqualis55@gmail.com'),
(1334, 10127, 'first_name', NULL),
(1335, 10127, 'last_name', NULL),
(1336, 10127, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1337, 10127, 'billing_first_name', NULL),
(1338, 10127, 'billing_last_name', NULL),
(1339, 10127, 'billing_email', 'pietropasqualis55@gmail.com'),
(1340, 10127, 'billing_phone', NULL),
(1341, 10128, 'nickname', 'pietropasqualis55@gmail.com'),
(1342, 10128, 'first_name', NULL),
(1343, 10128, 'last_name', NULL),
(1344, 10128, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1345, 10128, 'billing_first_name', NULL),
(1346, 10128, 'billing_last_name', NULL),
(1347, 10128, 'billing_email', 'pietropasqualis55@gmail.com'),
(1348, 10128, 'billing_phone', NULL),
(1349, 10129, 'nickname', 'pietropasqualis55@gmail.com'),
(1350, 10129, 'first_name', NULL),
(1351, 10129, 'last_name', NULL),
(1352, 10129, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1353, 10129, 'billing_first_name', NULL),
(1354, 10129, 'billing_last_name', NULL),
(1355, 10129, 'billing_email', 'pietropasqualis55@gmail.com'),
(1356, 10129, 'billing_phone', NULL),
(1357, 10130, 'nickname', 'lestermorales@sinergiared.com'),
(1358, 10130, 'first_name', NULL),
(1359, 10130, 'last_name', NULL),
(1360, 10130, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1361, 10130, 'billing_first_name', NULL),
(1362, 10130, 'billing_last_name', NULL),
(1363, 10130, 'billing_email', 'lestermorales@sinergiared.com'),
(1364, 10130, 'billing_phone', NULL),
(1365, 10131, 'nickname', 'mentor1@mytradingacademypro.com'),
(1366, 10131, 'first_name', 'Mentor'),
(1367, 10131, 'last_name', 'Experto'),
(1368, 10131, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1369, 10131, 'billing_first_name', 'Mentor'),
(1370, 10131, 'billing_last_name', 'Experto'),
(1371, 10131, 'billing_email', 'mentor1@mytradingacademypro.com'),
(1372, 10131, 'billing_phone', NULL),
(1373, 10132, 'nickname', 'noemy.producer@gmail.com'),
(1374, 10132, 'first_name', NULL),
(1375, 10132, 'last_name', NULL),
(1376, 10132, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1377, 10132, 'billing_first_name', NULL),
(1378, 10132, 'billing_last_name', NULL),
(1379, 10132, 'billing_email', 'noemy.producer@gmail.com'),
(1380, 10132, 'billing_phone', NULL),
(1381, 10133, 'nickname', 'prueba1@mytradingacademypro.com'),
(1382, 10133, 'first_name', NULL),
(1383, 10133, 'last_name', NULL),
(1384, 10133, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1385, 10133, 'billing_first_name', NULL),
(1386, 10133, 'billing_last_name', NULL),
(1387, 10133, 'billing_email', 'prueba1@mytradingacademypro.com'),
(1388, 10133, 'billing_phone', NULL),
(1389, 10134, 'nickname', 'prueba2@mytradingacademypro.com'),
(1390, 10134, 'first_name', NULL),
(1391, 10134, 'last_name', NULL),
(1392, 10134, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1393, 10134, 'billing_first_name', NULL),
(1394, 10134, 'billing_last_name', NULL),
(1395, 10134, 'billing_email', 'prueba2@mytradingacademypro.com'),
(1396, 10134, 'billing_phone', NULL),
(1397, 10135, 'nickname', 'prueba3@mytradingacademypro.com'),
(1398, 10135, 'first_name', NULL),
(1399, 10135, 'last_name', NULL),
(1400, 10135, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1401, 10135, 'billing_first_name', NULL),
(1402, 10135, 'billing_last_name', NULL),
(1403, 10135, 'billing_email', 'prueba3@mytradingacademypro.com'),
(1404, 10135, 'billing_phone', NULL),
(1405, 10136, 'nickname', 'prueba4@mytradingacademypro.com'),
(1406, 10136, 'first_name', NULL),
(1407, 10136, 'last_name', NULL),
(1408, 10136, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1409, 10136, 'billing_first_name', NULL),
(1410, 10136, 'billing_last_name', NULL),
(1411, 10136, 'billing_email', 'prueba4@mytradingacademypro.com'),
(1412, 10136, 'billing_phone', NULL),
(1413, 10137, 'nickname', 'prueba5@mytradingacademypro.com'),
(1414, 10137, 'first_name', NULL),
(1415, 10137, 'last_name', NULL),
(1416, 10137, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1417, 10137, 'billing_first_name', NULL),
(1418, 10137, 'billing_last_name', NULL),
(1419, 10137, 'billing_email', 'prueba5@mytradingacademypro.com'),
(1420, 10137, 'billing_phone', NULL),
(1421, 10138, 'nickname', 'prueba6@mytradingacademypro.com'),
(1422, 10138, 'first_name', NULL),
(1423, 10138, 'last_name', NULL),
(1424, 10138, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1425, 10138, 'billing_first_name', NULL),
(1426, 10138, 'billing_last_name', NULL),
(1427, 10138, 'billing_email', 'prueba6@mytradingacademypro.com'),
(1428, 10138, 'billing_phone', NULL),
(1429, 10139, 'nickname', 'usuario10@mytradingacademypro.com'),
(1430, 10139, 'first_name', 'Coach'),
(1431, 10139, 'last_name', 'Internacional'),
(1432, 10139, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1433, 10139, 'billing_first_name', 'Coach'),
(1434, 10139, 'billing_last_name', 'Internacional'),
(1435, 10139, 'billing_email', 'usuario10@mytradingacademypro.com'),
(1436, 10139, 'billing_phone', NULL),
(1437, 10140, 'nickname', '2@gmail.com'),
(1438, 10140, 'first_name', NULL),
(1439, 10140, 'last_name', NULL),
(1440, 10140, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1441, 10140, 'billing_first_name', NULL),
(1442, 10140, 'billing_last_name', NULL),
(1443, 10140, 'billing_email', '2@gmail.com'),
(1444, 10140, 'billing_phone', NULL),
(1445, 10141, 'nickname', 'imnoteverywhere12@gmail.com'),
(1446, 10141, 'first_name', NULL),
(1447, 10141, 'last_name', NULL),
(1448, 10141, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1449, 10141, 'billing_first_name', NULL),
(1450, 10141, 'billing_last_name', NULL),
(1451, 10141, 'billing_email', 'imnoteverywhere12@gmail.com'),
(1452, 10141, 'billing_phone', NULL),
(1453, 10142, 'nickname', 'anonymouse05062003@gmail.com'),
(1454, 10142, 'first_name', NULL),
(1455, 10142, 'last_name', NULL),
(1456, 10142, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1457, 10142, 'billing_first_name', NULL),
(1458, 10142, 'billing_last_name', NULL),
(1459, 10142, 'billing_email', 'anonymouse05062003@gmail.com'),
(1460, 10142, 'billing_phone', NULL),
(1461, 10143, 'nickname', 'jhorfrenm@gmail.com'),
(1462, 10143, 'first_name', NULL),
(1463, 10143, 'last_name', NULL),
(1464, 10143, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1465, 10143, 'billing_first_name', NULL),
(1466, 10143, 'billing_last_name', NULL),
(1467, 10143, 'billing_email', 'jhorfrenm@gmail.com'),
(1468, 10143, 'billing_phone', NULL),
(1469, 10144, 'nickname', '123@ggmail.com'),
(1470, 10144, 'first_name', NULL),
(1471, 10144, 'last_name', NULL),
(1472, 10144, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1473, 10144, 'billing_first_name', NULL),
(1474, 10144, 'billing_last_name', NULL),
(1475, 10144, 'billing_email', '123@ggmail.com'),
(1476, 10144, 'billing_phone', NULL),
(1477, 10145, 'nickname', 'joelgoyosaez@gmail.com'),
(1478, 10145, 'first_name', NULL),
(1479, 10145, 'last_name', NULL),
(1480, 10145, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1481, 10145, 'billing_first_name', NULL),
(1482, 10145, 'billing_last_name', NULL),
(1483, 10145, 'billing_email', 'joelgoyosaez@gmail.com'),
(1484, 10145, 'billing_phone', NULL),
(1485, 10146, 'nickname', '1@gmail.com'),
(1486, 10146, 'first_name', NULL),
(1487, 10146, 'last_name', NULL),
(1488, 10146, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1489, 10146, 'billing_first_name', NULL),
(1490, 10146, 'billing_last_name', NULL),
(1491, 10146, 'billing_email', '1@gmail.com'),
(1492, 10146, 'billing_phone', NULL),
(1493, 10147, 'nickname', '5@gmail.com'),
(1494, 10147, 'first_name', NULL),
(1495, 10147, 'last_name', NULL),
(1496, 10147, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1497, 10147, 'billing_first_name', NULL),
(1498, 10147, 'billing_last_name', NULL),
(1499, 10147, 'billing_email', '5@gmail.com'),
(1500, 10147, 'billing_phone', NULL),
(1501, 10148, 'nickname', 'mihastahl@protonmail.com'),
(1502, 10148, 'first_name', NULL),
(1503, 10148, 'last_name', NULL),
(1504, 10148, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1505, 10148, 'billing_first_name', NULL),
(1506, 10148, 'billing_last_name', NULL),
(1507, 10148, 'billing_email', 'mihastahl@protonmail.com'),
(1508, 10148, 'billing_phone', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_users`
--

CREATE TABLE `wp98_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `user_registered` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'avatar.png',
  `provider` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `referred_id` int DEFAULT '0',
  `sponsor_id` bigint DEFAULT '0',
  `position_id` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `rol_id` int NOT NULL DEFAULT '1',
  `wallet_amount` double NOT NULL DEFAULT '0',
  `billetera` double NOT NULL DEFAULT '0',
  `bank_amount` double NOT NULL DEFAULT '0',
  `clave` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activacion` tinyint(1) DEFAULT '0',
  `fecha_activacion` datetime DEFAULT NULL,
  `token_correo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipouser` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Normal',
  `ladomatriz` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `puntosPro` double DEFAULT '0',
  `puntosRed` double DEFAULT '0',
  `puntosDer` double DEFAULT '0',
  `puntosIzq` double DEFAULT '0',
  `debiDer` double NOT NULL DEFAULT '0',
  `debiIzq` double DEFAULT '0',
  `binario` date DEFAULT NULL,
  `codigo` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `limitar` int NOT NULL DEFAULT '1',
  `pop_up` int NOT NULL DEFAULT '0',
  `autenticacion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `factor2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fechaver` date DEFAULT NULL,
  `modo_oscuro` int NOT NULL DEFAULT '0',
  `profession` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cover_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `membership_id` int DEFAULT NULL,
  `membership_status` int DEFAULT NULL,
  `membership_expiration` date DEFAULT NULL,
  `streamings` int NOT NULL DEFAULT '0',
  `streaming_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_users`
--

INSERT INTO `wp98_users` (`ID`, `birthdate`, `gender`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_activation_key`, `user_status`, `display_name`, `password`, `avatar`, `provider`, `provider_id`, `access_token`, `remember_token`, `created_at`, `updated_at`, `referred_id`, `sponsor_id`, `position_id`, `status`, `rol_id`, `wallet_amount`, `billetera`, `bank_amount`, `clave`, `activacion`, `fecha_activacion`, `token_correo`, `tipouser`, `ladomatriz`, `puntosPro`, `puntosRed`, `puntosDer`, `puntosIzq`, `debiDer`, `debiIzq`, `binario`, `codigo`, `correos`, `limitar`, `pop_up`, `autenticacion`, `factor2`, `fechaver`, `modo_oscuro`, `profession`, `about`, `cover_name`, `membership_id`, `membership_status`, `membership_expiration`, `streamings`, `streaming_token`) VALUES
(1, NULL, NULL, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 'admin@shapinetwork.com', '', '', 0, 'Administrador', '$2y$10$yfar1ISof2qxLW7nZe6LzuzPyrU/9N9oyHZQqbMSxJQrdIQhj024W', 'avatar.png', NULL, NULL, NULL, 'GwcVgd7fHRgHh8hGIS8IcQiqqh4Lflgx6iYIz2KiMANcE5IoLUJGw9LbZOjg', '2020-03-26 11:49:07', '2021-01-23 13:12:30', 0, 0, 0, 1, 0, 3, 0, 0, 'eyJpdiI6InJQQndUN1pURktaL0ZNejY4UnZ0N2c9PSIsInZhbHVlIjoiZVB4NUFoUnlPNDZUdXJLZHBQY0N2dz09IiwibWFjIjoiNTk0NWRjNzk3MjU4ZmJkNGUxMmM1Yjk3ZThlMTM1MGVlMDJjMzRiMjQ4OTQ4ZGI5NDhhNzM2Y2ZiMDg4NmU5NyJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, '', NULL, NULL, 1, 1, '2021-12-12', 0, '31|by30bT5q3LW9CWesSzMZqkS4uOCCm85ar2bnYt4w'),
(10125, NULL, NULL, NULL, '25f9e794323b453885f5181f1b624d0b', NULL, 'luisanaelenamarin@gmail.com', '', '', 0, 'Luisanaelena Marín', '$2y$10$NjuAjO9wiPZdDutrpIoSoem8t4DO6jHtDcu/Fq4PAM5dMKOZGMZC6', 'user_1611235916.jpg', NULL, NULL, NULL, NULL, '2021-01-21 06:31:56', '2021-01-21 13:09:00', 1, 1, 1, 0, 2, 20, 0, 0, 'eyJpdiI6IjE1MVl4UTNNZlFUUVdPQ2dnMEhqZ0E9PSIsInZhbHVlIjoib2JtZndqaEpJZFR1M0JiSlY4NXVBZk4xRkNOTXhLOHA0N1FJcmJFenlUVT0iLCJtYWMiOiIwMjAyNDUyNmI0OWEzMjBiZWU4NWZjNTk4N2ZjNzdiMGRkNTg4YTQ5NzJkYTM4MzMwZjZmZTJkZWIyMmMyNmQzIn0=', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, 'Licenciada en Informática', 'Programadora Full Stack', NULL, 1, 0, '2021-02-21', 0, NULL),
(10126, NULL, NULL, 'Cliente Prueba', '25f9e794323b453885f5181f1b624d0b', 'Cliente Prueba', 'cliente@gmail.com', '', '', 0, 'Cliente Prueba', '$2y$10$BLxfQB2fBqYO46rTE2l9V.GK.nT.lZvT3WLqpSqcp2QU8Ro2sLHZa', 'avatar.png', NULL, NULL, NULL, NULL, '2021-01-21 13:14:31', '2021-01-21 13:14:31', 10125, 10125, 10125, 0, 3, 0, 0, 0, 'eyJpdiI6IjIzRU5WTVVsUkc5a21udEVGWE85elE9PSIsInZhbHVlIjoiY05yVm1LUmNVTEUzT3pEMm5Ua3lQWnlSWWxrejRKQkMwa0Z3OUFUYkRRcz0iLCJtYWMiOiJlZDVjN2MwOWNjZWM3ZDk2MmI0ZTY5OGFhNzVhODRjNTc4NDU2YmU0OTBmODg2MTAzMDNmMDYxNTAxNGVlZGI2In0=', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 1, '2022-02-28', 0, NULL),
(10129, NULL, NULL, 'pietro giacomo pasqualis', 'e10adc3949ba59abbe56e057f20f883e', 'pietro giacomo pasqualis', 'pietropasqualis55@gmail.com', '', '', 0, 'pietro giacomo pasqualis', '$2y$10$pe6SzJbfQu7N4cZqWTMjDO4L08A6PqpIo5dIIVBzcCIMPVQALlh0W', 'avatar.png', NULL, NULL, NULL, NULL, '2021-01-21 16:44:16', '2021-01-21 16:44:16', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6ImdSYVNaZ0ZWZE00L244ck5ybTJ5Smc9PSIsInZhbHVlIjoiV2tYMDZ3QndiRitOeGlOSEZPSUJuZz09IiwibWFjIjoiY2Q3MjI1MGI4M2Q3MWE5MjFjOTQ5YjkxZjk2NjJkY2Y3NDRkNzkzYmU5NzdhNTllNjdjYzY2Y2E3NGIyNTI3MCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10130, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'lestermorales@sinergiared.com', '', '', 0, NULL, '$2y$10$urG7BXx76AqEMmVtCAW3SOjxAXRoFAnCY8NsrV7b41oKSQMKtrZ4u', 'avatar.png', NULL, NULL, NULL, NULL, '2021-02-23 13:10:00', '2021-02-23 13:10:00', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IkVvU1VPNjE3MDdCcXlJenpzK1RobWc9PSIsInZhbHVlIjoiWmNBYktBZ25XbnlQUFF5dEEvSDFRUT09IiwibWFjIjoiZjZiMjljOTJiYzcyMmJlYzZiYjRhNDEyNWRkMjllODhhNmUzYTczNjAzNjgxNmJlNDVlNTAyYTNhZGFlOGU2OSJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10131, NULL, NULL, NULL, 'e19d5cd5af0378da05f63f891c7467af', NULL, 'mentor1@mytradingacademypro.com', '', '', 0, 'Mentor Experto', '$2y$10$7ajkrPrsOH5OrdnOk8LsxOgboLSIkc3y0oACgfZIe0bCKXMhoqfkO', 'user_1614382513.jpg', NULL, NULL, NULL, NULL, '2021-02-26 16:35:13', '2021-02-26 16:35:13', 1, 1, 1, 0, 2, 0, 0, 0, 'eyJpdiI6IkhJNHV0M0plZ1d6TVZWVGRsK0gxckE9PSIsInZhbHVlIjoiRkNGR0U3U2lPK0w2bjRXT1FyK0FDdz09IiwibWFjIjoiOTZmNDc0OWZlZGRjY2M5OWY0N2I4MzJiNTVjYzFjNWIzODVmNzBhNGU1ZDFlZDg0N2JmYTdlMDJiNTMwY2QzNCJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, 'Mentor Experto en Trading y Crypto Finanzas', 'Desarrollador de Negocios Fintech', NULL, NULL, NULL, NULL, 0, NULL),
(10132, NULL, 'F', NULL, 'e19d5cd5af0378da05f63f891c7467af', NULL, 'noemy.producer@gmail.com', '', '', 0, 'Noemy Aleman', '$2y$10$1uZng2ywe9QO1OlZzVAxguWlcJT68chHLOW0UCgUI6EY8NY9r1tKm', 'avatar.png', NULL, NULL, NULL, NULL, '2021-02-26 16:38:06', '2021-02-26 16:39:27', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6InlWV0xpa0FNMHRpQTZyTlVxYVlhYkE9PSIsInZhbHVlIjoick1yTGNOV0k1Vk9SdFVDMlFqVFJsZz09IiwibWFjIjoiYzczYmJlN2RmZGZjYWE0ZDgyMTdjNTAxZWYwOWVkOWFiOWI3MjUyYTgyNGM4MWE1NjdjY2U5ZTgxY2YwMDBkMCJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10133, NULL, NULL, 'prueba1', 'e10adc3949ba59abbe56e057f20f883e', 'prueba1', 'prueba1@mytradingacademypro.com', '', '', 0, 'prueba1', '$2y$10$SukEi2tUxCRT.1YyVLUeFu/n3Ejwip7YliFzdfjnTK1izKbSKTE7u', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-10 09:39:33', '2021-04-10 09:39:33', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6Ik1ndGpiWjI0aW5tK01QSnhsNkJyRlE9PSIsInZhbHVlIjoieWxtWHlQUEtkNEpJUWQ5SzE4blBCUT09IiwibWFjIjoiNmVjYWQzMjYxMzMzMmM0Njc4NTUxMTMzNzNiZTBhNmJmZjA4ODdmYWQ3NzdhZWQ3M2YzMWYxYWNlNTgyN2I4OSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2021-06-30', 0, NULL),
(10134, NULL, NULL, 'prueba2', 'e10adc3949ba59abbe56e057f20f883e', 'prueba2', 'prueba2@mytradingacademypro.com', '', '', 0, 'prueba2', '$2y$10$hRrEVBfNHNUVgwxCmVCLce2U.pAOcNd06YSQ0wpm6TxWGyptXkULG', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-10 09:42:32', '2021-04-10 09:42:32', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IllReEpXbjd1VVE5Nm9ZRk5DVEo5aVE9PSIsInZhbHVlIjoianRxZzFraWVBMkwzbnlZSUNkZ25xQT09IiwibWFjIjoiMWE3NmVjODBlZGMzYjA4NDQ1YTBiODgyNGIyNTZiMGI2OWY0MGQ3MmEwOTJmNDBhZWQ3NzI3YWVhYzcwMjY1MyJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2021-06-30', 0, NULL),
(10135, NULL, NULL, 'prueba3', 'e10adc3949ba59abbe56e057f20f883e', 'prueba3', 'prueba3@mytradingacademypro.com', '', '', 0, 'prueba3', '$2y$10$jt.loLOZlccUdq/0RBJPqu6hfxcftxFfBvHQIaOrVpcdevr.ALJaa', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-10 09:43:50', '2021-04-10 09:43:50', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6Ii9JUFRCSEg3TmdIS3AzV1hvdEtoMWc9PSIsInZhbHVlIjoiNWpzYWhZL01RcHQ0ek52VEJGbjlCdz09IiwibWFjIjoiZmMxODk5MmM3YjRhMDYyOWZmODNiOTA1MTY4MmE5YjBmYTdmOWU0MzM5ZDk3MGI1NzY3ZGI1N2VjNWEyMTYxYiJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 2, 0, '2021-06-30', 0, NULL),
(10136, NULL, NULL, 'prueba4', 'e10adc3949ba59abbe56e057f20f883e', 'prueba4', 'prueba4@mytradingacademypro.com', '', '', 0, 'prueba4', '$2y$10$ze5t.0/mJpFUvuy7QD1haum9XWSAIrXCPerhlboxbyAUKEkUUU48C', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-10 09:44:56', '2021-04-10 09:44:56', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IlNwclpxcldSZXRUVEdGT1QwbUFqaGc9PSIsInZhbHVlIjoiejNOcXIxVXRUMXRtdGxrYlo1a0pRQT09IiwibWFjIjoiOTIwZjA1ZWQ4NWUwN2YxZTYxNzQwM2ZiNmUzMGU2ZmI0Mzk0MjNkYjk0ZDFjYTYzMDJkZTdmZWNkMmI2ZTk3OCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 2, 0, '2021-06-30', 0, NULL),
(10137, NULL, NULL, 'prueba5', 'e10adc3949ba59abbe56e057f20f883e', 'prueba5', 'prueba5@mytradingacademypro.com', '', '', 0, 'prueba5', '$2y$10$O0ur8ADyzhzPQVDrshhDqOulwLOedyGaW3o56kkb.tzuKsbr//rOG', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-10 09:46:02', '2021-04-10 09:46:02', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6InovRTZZUStsUEdBOU9MaEdSUi9KZkE9PSIsInZhbHVlIjoiend4VFVlQzdTd0VBbjBrbTM0NFJOQT09IiwibWFjIjoiYjBhMDg0NTMyNTk1MzgzZmJiMDBmMmQ2ZGZiNDFlN2YxMWFkMTM2Zjk4ODQxMjVlYmZjOGJlODkxYTA4MDEwZiJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 3, 0, '2021-06-30', 0, NULL),
(10138, NULL, NULL, 'prueba6', 'e10adc3949ba59abbe56e057f20f883e', 'prueba6', 'prueba6@mytradingacademypro.com', '', '', 0, 'prueba6', '$2y$10$iXznc8xr.ZXw8cEpAecbguLKEgQ9DpOhQQ7NiIoQ43/0U0dSTm9iC', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-10 09:47:08', '2021-04-10 09:47:08', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IjBTRHNnQitkZ2VRQ3g1NTIxZXlWZEE9PSIsInZhbHVlIjoiSzJQZ3lESm5LOU4zTi96eEhVK2pZdz09IiwibWFjIjoiZjkyMzY2NmI5YTcwMzIyZjVmYWRjZDA4YjQzYmY5ZTg2NzU1NzZiYzYzMmE1NzJkY2FmNWIxNWIwZWEyNjZiMCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 3, 0, '2021-06-30', 0, NULL),
(10139, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'usuario10@mytradingacademypro.com', '', '', 0, 'Coach Internacional', '$2y$10$7zxT7/sX2JUqgQzb7CW2ruxB325muIngn2ymsgp/qXUguFD4INfg6', 'user_1619048909.jpg', NULL, NULL, NULL, NULL, '2021-04-21 15:48:29', '2021-04-21 15:48:29', 1, 1, 1, 0, 2, 0, 0, 0, 'eyJpdiI6IlBMcGhHMnNrUjBEd3djWUdjb0FPbEE9PSIsInZhbHVlIjoiSk1pSEJPSEUyNHVWQ3dPOHYxdmVPdz09IiwibWFjIjoiN2JiOWY3NWNmYTU5MDVhMjJkZjYzNWUwNGM2MWY3OGIxYjkwMWZmNWRlNTljY2E5YzE1NDRjNmE4ZTE3MmEyYyJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, 'Coach internacional', 'asñlkfjlñsdf\r\nañlsdkjfñadf\r\nñalsdkfjñadfk\r\nañsldkfjñlakdf', NULL, NULL, NULL, NULL, 0, NULL),
(10140, NULL, NULL, '2', '25d55ad283aa400af464c76d713c07ad', '2', '2@gmail.com', '', '', 0, '2', '$2y$10$oAeTHecnJev/sCPwzzPtV.ZRHvX3LEAnNiGL9coEzei4oXprzo0em', 'avatar.png', NULL, NULL, NULL, NULL, '2021-07-20 05:22:14', '2021-07-20 05:22:14', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6InJFakZxOUVUczBBZjJoUVFSbjNEcmc9PSIsInZhbHVlIjoiVkhGZXErc2orMDVETmVndlQ5d1ZsQT09IiwibWFjIjoiNGE3ZDM4M2U5NmQxMGNlMzMwYjliYmY5N2NkOWJkNDZlNDczMjY1MGQwODdlYjNmNGY2MWJkYTVhMmQyODZkZCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10141, NULL, NULL, 'Abraham', '25d55ad283aa400af464c76d713c07ad', 'Abraham', 'imnoteverywhere12@gmail.com', '', '', 0, 'Abraham', '$2y$10$gqPRT6gZKQsMNtPJTfKmOOQDUFQSg9uao6AaDWYJxg0C8aDXuLByO', 'avatar.png', NULL, NULL, NULL, NULL, '2021-07-21 05:55:46', '2021-07-21 05:55:46', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6Imx1cjRNZktoYUZsWHBvMWdUTmdITHc9PSIsInZhbHVlIjoiRCtCWlpDbktLUGVjR3h5TzBpVnhIUT09IiwibWFjIjoiMDJmODEzMmFiYTgyNmViNWY2MWFjM2ZlNzBhZTc3MTMyZTczM2FiMDg1OTZlNzZmNmQxMWU3MTdhOWFjNzFjMCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10142, NULL, NULL, 'Abraham', '8edbaf4e30535c3dbcef35fbf7450d84', 'Abraham', 'anonymouse05062003@gmail.com', '', '', 0, 'Abraham', '$2y$10$3QcIsSFiONDQUukw7/GFue.IdXt9KXMcYfu6JxlHuHapzitCpO5h.', 'avatar.png', NULL, NULL, NULL, NULL, '2021-07-21 06:11:00', '2021-07-21 06:11:00', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6InNBSS80aVkwb1JjZW5lQ3ZQdDl6UGc9PSIsInZhbHVlIjoiVWNrcUgrYXdxOGhLbExiVTRPb1BMdz09IiwibWFjIjoiMTRhNzVmY2Q2MTM1ODlkMWMxNmRkYWUwYzQ3ZDQ3MzE3NzZhN2ZkNDUwNGYzOGU4MDk0Y2E1ZGNlNzk0ZTJkYyJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10143, NULL, NULL, 'Jhorfren', '25d55ad283aa400af464c76d713c07ad', 'Jhorfren', 'jhorfrenm@gmail.com', '', '', 0, 'Jhorfren', '$2y$10$e31grbSzdi7mYH7QmXJaPugWzG3e1S98Rz/aCCHZD.lvJKSj4TmLS', 'avatar.png', NULL, NULL, NULL, NULL, '2021-07-21 10:14:19', '2021-07-21 10:14:19', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IkQ2NlpDb0htSmROSE51SkVXdFR0Rmc9PSIsInZhbHVlIjoieE41SDE3cTFmRmIyNXpiTVFnSFFzQT09IiwibWFjIjoiMTFkMGVlMzY4NmI1YTk0OTRmYzY1ZDlmNjQzY2RmYWRiOTVmYzY4Nzc3NjRlNGVlMTdlMGJkYjMzNWRhYTg1ZSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10144, NULL, NULL, '123', '25d55ad283aa400af464c76d713c07ad', '123', '123@ggmail.com', '', '', 0, '123', '$2y$10$ocqo0e0a.YW2L/AHPz6GTuwg119kJnHhfWaHZhalo/upB4ZwwTaZu', 'avatar.png', NULL, NULL, NULL, NULL, '2021-07-22 04:18:13', '2021-07-22 04:18:13', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IkMyV1N2MVpUdHZwZGxOM1dSZ2dMNEE9PSIsInZhbHVlIjoiTDlEMU1BUzBzalorRGxqU0J4b09LUT09IiwibWFjIjoiZmU3NzM2NTJkZDY5YzQwNzA1NDU0MTMxNGY1NTgxMTNhZDNlYTUyN2M1NjJiN2ZhMjlmYzQzNDU3MTMyNTNhOCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10145, NULL, NULL, 'joelgoyo', 'c4957e0e30e22be89c330f4455732d6d', 'joelgoyo', 'joelgoyosaez@gmail.com', '', '', 0, 'joelgoyo', '$2y$10$/pqo1xaMXat0FsTWLG3/IOBfPizWQXQ7wmKNytU3km4k7PEQIbE/e', 'avatar.png', NULL, NULL, NULL, NULL, '2021-07-22 04:21:12', '2021-07-22 04:21:12', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6InBIbVhBcFBxUWNVR014Mi9jZXpMS2c9PSIsInZhbHVlIjoiRHBOOHZ6d2Z3NkxyaVJRTWE5OUZqSFlQMTk4TXRIWlRCa3N2ZU55Uis1UT0iLCJtYWMiOiI3MjIxZjU3ZDQ2NTcyNzVjNDI4NzE5NDBmMWQ4ZjIwNDE0NTBiMjA2YTFhODQzMjkyZGM4ZThjZTA3ZjAwNmY1In0=', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10146, NULL, NULL, '1', '25d55ad283aa400af464c76d713c07ad', '1', '1@gmail.com', '', '', 0, '1', '$2y$10$rOYxbhpk5ZJP6rwejCevGeKJR3JPod9ELqQOvmPYDYIfwB50NLn8S', 'avatar.png', NULL, NULL, NULL, NULL, '2021-07-27 06:16:30', '2021-07-27 06:16:30', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6InBZdDZ2QUtlcHBIRzhRT3VwaUlGK2c9PSIsInZhbHVlIjoiMm9ta2FGUzZVbGZUczcyKzN1dkdBQT09IiwibWFjIjoiMGNhNjVlZjFiNWY0ZDk1MmI0ODNlN2RkMWVhMjI2ZDM3YWU0NzM2NGJlYTE5YWM1YjFhODYwYTZjMWVlMTBmZSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10147, NULL, NULL, '15', '25d55ad283aa400af464c76d713c07ad', '15', '5@gmail.com', '', '', 0, '15', '$2y$10$Q0AF3MgWIzzpzHyjl0stZO7jG/CGWXlB8bTLLD.ToLHPmgCQWqK6a', 'avatar.png', NULL, NULL, NULL, NULL, '2021-07-27 10:09:21', '2021-07-27 10:09:21', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IlRtYnJsSEwyczNuN2o2bWZhL0tjYkE9PSIsInZhbHVlIjoiUEVHQU5EakN3UGdmU0tucjFpRHI3QT09IiwibWFjIjoiNzhlMmNmNzBmZWMxOTdkODJhN2UyZjZmOTZiY2M1MzczYmZjOTA0MTJmZGI2ODc3NWFmMWIzNzE1NDk0ZjVhNCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_users_old`
--

CREATE TABLE `wp98_users_old` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_users_old`
--

INSERT INTO `wp98_users_old` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'shapinetadmin', '$P$B992jwyhEJzww0CCIg4l57J0j.pdf60', 'shapinetadmin', 'admin@shapinetwork.com', '', '2020-03-26 20:05:35', '', 0, 'shapinetadmin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_admin_notes`
--

CREATE TABLE `wp98_wc_admin_notes` (
  `note_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info',
  `content_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_wc_admin_notes`
--

INSERT INTO `wp98_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`) VALUES
(3, 'wc-admin-add-first-product', 'info', 'en_US', 'Añade tu primer producto', 'Aumenta tus ingresos añadiendo productos a tu tienda. Añade productos manualmente, importa desde una hoja o migra desde otra plataforma.', 'product', '{}', 'unactioned', 'woocommerce-admin', '2020-03-26 20:35:36', NULL, 0, '', NULL, 0),
(4, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Conectar con WooCommerce.com', 'Conéctate para recibir avisos y actualizaciones importantes de productos.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-03-26 20:35:36', NULL, 0, '', NULL, 0),
(5, 'wc-admin-orders-milestone', 'info', 'en_US', 'Primer pedido', '¡Enhorabuena por conseguir tu primer pedido de un cliente! Aprende cómo gestionar tus pedidos.', 'trophy', '{}', 'unactioned', 'woocommerce-admin', '2020-03-26 23:36:59', NULL, 0, '', NULL, 0),
(6, 'wc-admin-mobile-app', 'info', 'en_US', 'Instala la aplicación móvil Sinergia Market', 'Instala la aplicación móvil de Sinergia Market para gestionar pedidos, recibir avisos de ventas y ver métricas clave – allí donde estés.', 'phone', '{}', 'unactioned', 'woocommerce-admin', '2020-03-28 23:13:13', NULL, 0, '', NULL, 0),
(9, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Trucos, actualizaciones de productos e inspiración', 'Estamos aquí para ti - consigue trucos, actualizaciones de productos e inspiración en tu buzón', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-07-23 21:35:35', NULL, 0, 'plain', '', 0),
(10, 'wc-admin-marketing-intro', 'info', 'en_US', 'Conecta con tu audiencia', 'Aumenta tu base de clientes e incrementa tus ventas con las herramientas de marketing creadas para Sinergia Market.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-07-23 21:35:35', NULL, 0, 'plain', '', 0),
(11, 'wc-admin-store-notice-giving-feedback-2', 'info', 'en_US', 'Da tu opinión', 'Ahora que nos has elegido como socio, nuestro objetivo es asegurarnos de que proporcionemos las herramientas adecuadas para satisfacer tus necesidades. Esperamos recibir tus comentarios sobre la experiencia de configuración de la tienda para que podamos mejorarla en el futuro.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-07-23 21:35:35', NULL, 0, 'plain', '', 0),
(12, 'wc-admin-learn-more-about-product-settings', 'info', 'en_US', 'Aprender más acerca de los ajustes de producto', 'En este video encontrarás información sobre cómo configurar los ajustes del producto, cómo se muestran, editar las opciones de inventario, etc.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-07-23 21:35:35', NULL, 0, 'plain', '', 0),
(13, 'wc-admin-real-time-order-alerts', 'info', 'en_US', 'Recibe alertas de pedidos en tiempo real en cualquier lugar', 'Recibe avisos sobre la actividad de la tienda, incluidos nuevos pedidos y reseñas de productos directamente en tus dispositivos móviles con la aplicación Woo.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-07-23 21:35:35', NULL, 0, 'plain', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_admin_note_actions`
--

CREATE TABLE `wp98_wc_admin_note_actions` (
  `action_id` bigint UNSIGNED NOT NULL,
  `note_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_wc_admin_note_actions`
--

INSERT INTO `wp98_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`) VALUES
(3, 3, 'add-a-product', 'Añadir un producto', 'https://shapinetwork.com/wp-admin/post-new.php?post_type=product', 'actioned', 1),
(4, 4, 'connect', 'Conectar', '?page=wc-addons&section=helper', 'actioned', 0),
(5, 5, 'learn-more', 'Aprende más', 'https://docs.woocommerce.com/document/managing-orders/', 'actioned', 0),
(6, 6, 'learn-more', 'Aprende más', 'https://woocommerce.com/mobile/', 'actioned', 0),
(10, 9, 'yes-please', '¡Sí, por favor!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0),
(11, 10, 'open-marketing-hub', 'Abrir centro de marketing', 'https://shapinetwork.com/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0),
(12, 11, 'share-feedback', 'Compartir comentarios', 'https://automattic.survey.fm/new-onboarding-survey', 'actioned', 0),
(13, 12, 'learn-more-about-product-settings', 'Ver el tutorial', 'https://www.youtube.com/watch?v=FEmwJsE8xDY&t=', 'actioned', 1),
(14, 13, 'learn-more', 'Aprende más', 'https://woocommerce.com/mobile/?utm_source=inbox', 'actioned', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_category_lookup`
--

CREATE TABLE `wp98_wc_category_lookup` (
  `category_tree_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_wc_category_lookup`
--

INSERT INTO `wp98_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15),
(18, 18),
(19, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_customer_lookup`
--

CREATE TABLE `wp98_wc_customer_lookup` (
  `customer_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_wc_customer_lookup`
--

INSERT INTO `wp98_wc_customer_lookup` (`customer_id`, `user_id`, `username`, `first_name`, `last_name`, `email`, `date_last_active`, `date_registered`, `country`, `postcode`, `city`, `state`) VALUES
(1, 3, 'albertop', 'Alberto', 'Picon', 'cliente2@sinergiared.com', '2020-06-15 05:00:00', '2020-04-20 15:07:02', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_download_log`
--

CREATE TABLE `wp98_wc_download_log` (
  `download_log_id` bigint UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_order_coupon_lookup`
--

CREATE TABLE `wp98_wc_order_coupon_lookup` (
  `order_id` bigint UNSIGNED NOT NULL,
  `coupon_id` bigint UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_order_product_lookup`
--

CREATE TABLE `wp98_wc_order_product_lookup` (
  `order_item_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `variation_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_order_stats`
--

CREATE TABLE `wp98_wc_order_stats` (
  `order_id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_order_tax_lookup`
--

CREATE TABLE `wp98_wc_order_tax_lookup` (
  `order_id` bigint UNSIGNED NOT NULL,
  `tax_rate_id` bigint UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_product_meta_lookup`
--

CREATE TABLE `wp98_wc_product_meta_lookup` (
  `product_id` bigint NOT NULL,
  `sku` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint DEFAULT '0',
  `tax_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_wc_product_meta_lookup`
--

INSERT INTO `wp98_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(12, '', 0, 0, 340.0000, 340.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(28, '', 0, 0, 600.0000, 600.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(29, '', 0, 0, 280.0000, 280.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_reserved_stock`
--

CREATE TABLE `wp98_wc_reserved_stock` (
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_tax_rate_classes`
--

CREATE TABLE `wp98_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_wc_tax_rate_classes`
--

INSERT INTO `wp98_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Tasa reducida', 'tasa-reducida'),
(2, 'Tasa cero', 'tasa-cero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_webhooks`
--

CREATE TABLE `wp98_wc_webhooks` (
  `webhook_id` bigint UNSIGNED NOT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `delivery_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint NOT NULL,
  `failure_count` smallint NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_api_keys`
--

CREATE TABLE `wp98_woocommerce_api_keys` (
  `key_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp98_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint UNSIGNED NOT NULL,
  `attribute_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp98_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `download_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_log`
--

CREATE TABLE `wp98_woocommerce_log` (
  `log_id` bigint UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint NOT NULL,
  `source` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_order_itemmeta`
--

CREATE TABLE `wp98_woocommerce_order_itemmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `order_item_id` bigint UNSIGNED NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_woocommerce_order_itemmeta`
--

INSERT INTO `wp98_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '12'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '340'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '340'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_order_items`
--

CREATE TABLE `wp98_woocommerce_order_items` (
  `order_item_id` bigint UNSIGNED NOT NULL,
  `order_item_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_woocommerce_order_items`
--

INSERT INTO `wp98_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Franquisia Empresario', 'line_item', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp98_woocommerce_payment_tokenmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `payment_token_id` bigint UNSIGNED NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_payment_tokens`
--

CREATE TABLE `wp98_woocommerce_payment_tokens` (
  `token_id` bigint UNSIGNED NOT NULL,
  `gateway_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_sessions`
--

CREATE TABLE `wp98_woocommerce_sessions` (
  `session_id` bigint UNSIGNED NOT NULL,
  `session_key` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_shipping_zones`
--

CREATE TABLE `wp98_woocommerce_shipping_zones` (
  `zone_id` bigint UNSIGNED NOT NULL,
  `zone_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp98_woocommerce_shipping_zone_locations` (
  `location_id` bigint UNSIGNED NOT NULL,
  `zone_id` bigint UNSIGNED NOT NULL,
  `location_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp98_woocommerce_shipping_zone_methods` (
  `zone_id` bigint UNSIGNED NOT NULL,
  `instance_id` bigint UNSIGNED NOT NULL,
  `method_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_tax_rates`
--

CREATE TABLE `wp98_woocommerce_tax_rates` (
  `tax_rate_id` bigint UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint UNSIGNED NOT NULL,
  `tax_rate_compound` int NOT NULL DEFAULT '0',
  `tax_rate_shipping` int NOT NULL DEFAULT '1',
  `tax_rate_order` bigint UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp98_woocommerce_tax_rate_locations` (
  `location_id` bigint UNSIGNED NOT NULL,
  `location_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint UNSIGNED NOT NULL,
  `location_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `addres_ip`
--
ALTER TABLE `addres_ip`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `administradorgastos`
--
ALTER TABLE `administradorgastos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `administradorlista`
--
ALTER TABLE `administradorlista`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `avatares`
--
ALTER TABLE `avatares`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `binario`
--
ALTER TABLE `binario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bonoinicio`
--
ALTER TABLE `bonoinicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calendarios`
--
ALTER TABLE `calendarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canjes`
--
ALTER TABLE `canjes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `capital`
--
ALTER TABLE `capital`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carritos`
--
ALTER TABLE `carritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chat_codigo`
--
ALTER TABLE `chat_codigo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `coinpayment_transactions`
--
ALTER TABLE `coinpayment_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coinpayment_transactions_txn_id_unique` (`txn_id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comentarios_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `component`
--
ALTER TABLE `component`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `componentenoticias`
--
ALTER TABLE `componentenoticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `componentestransf`
--
ALTER TABLE `componentestransf`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `componentestransferencias`
--
ALTER TABLE `componentestransferencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compradirectas`
--
ALTER TABLE `compradirectas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `consultacrypto`
--
ALTER TABLE `consultacrypto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `costo`
--
ALTER TABLE `costo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses_orden`
--
ALTER TABLE `courses_orden`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses_tags`
--
ALTER TABLE `courses_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses_users`
--
ALTER TABLE `courses_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evaluations_users`
--
ALTER TABLE `evaluations_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evaluations_users_answers`
--
ALTER TABLE `evaluations_users_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `events_users`
--
ALTER TABLE `events_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `event_content`
--
ALTER TABLE `event_content`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `event_countries`
--
ALTER TABLE `event_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `event_resources`
--
ALTER TABLE `event_resources`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `label` (`label`,`nameinput`);

--
-- Indices de la tabla `ganancias`
--
ALTER TABLE `ganancias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `informacionbancaria`
--
ALTER TABLE `informacionbancaria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `insignia`
--
ALTER TABLE `insignia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `insignia_user`
--
ALTER TABLE `insignia_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `iva`
--
ALTER TABLE `iva`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `legal_clauses`
--
ALTER TABLE `legal_clauses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `legal_tabs`
--
ALTER TABLE `legal_tabs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lessons_users`
--
ALTER TABLE `lessons_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `linkpagos`
--
ALTER TABLE `linkpagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modulocomplementario`
--
ALTER TABLE `modulocomplementario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `monedadicional`
--
ALTER TABLE `monedadicional`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `monedas`
--
ALTER TABLE `monedas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notificacion_tickets`
--
ALTER TABLE `notificacion_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `offers_live`
--
ALTER TABLE `offers_live`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `offers_users`
--
ALTER TABLE `offers_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opciones_select`
--
ALTER TABLE `opciones_select`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `optioncarritos`
--
ALTER TABLE `optioncarritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagocarritos`
--
ALTER TABLE `pagocarritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pop`
--
ALTER TABLE `pop`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prospeccion`
--
ALTER TABLE `prospeccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `puntos`
--
ALTER TABLE `puntos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `puntosbonos`
--
ALTER TABLE `puntosbonos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pushs`
--
ALTER TABLE `pushs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `qr`
--
ALTER TABLE `qr`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `redes_sociales`
--
ALTER TABLE `redes_sociales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seguridad`
--
ALTER TABLE `seguridad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `semiautobinario`
--
ALTER TABLE `semiautobinario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `senales`
--
ALTER TABLE `senales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sesions`
--
ALTER TABLE `sesions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sesions_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `settingactivacion`
--
ALTER TABLE `settingactivacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingcliente`
--
ALTER TABLE `settingcliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingcomision`
--
ALTER TABLE `settingcomision`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingpagos`
--
ALTER TABLE `settingpagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingpermiso`
--
ALTER TABLE `settingpermiso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingplantilla`
--
ALTER TABLE `settingplantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingsestructura`
--
ALTER TABLE `settingsestructura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingspuntos`
--
ALTER TABLE `settingspuntos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `setttingsroles`
--
ALTER TABLE `setttingsroles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `support_material`
--
ALTER TABLE `support_material`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `survey_options`
--
ALTER TABLE `survey_options`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `survey_options_response`
--
ALTER TABLE `survey_options_response`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `suscriptions`
--
ALTER TABLE `suscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `upgrade_messages`
--
ALTER TABLE `upgrade_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_campo`
--
ALTER TABLE `user_campo`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `walletlog`
--
ALTER TABLE `walletlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp98_actionscheduler_actions`
--
ALTER TABLE `wp98_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indices de la tabla `wp98_actionscheduler_claims`
--
ALTER TABLE `wp98_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indices de la tabla `wp98_actionscheduler_groups`
--
ALTER TABLE `wp98_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indices de la tabla `wp98_actionscheduler_logs`
--
ALTER TABLE `wp98_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indices de la tabla `wp98_commentmeta`
--
ALTER TABLE `wp98_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp98_comments`
--
ALTER TABLE `wp98_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indices de la tabla `wp98_links`
--
ALTER TABLE `wp98_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp98_ms_snippets`
--
ALTER TABLE `wp98_ms_snippets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp98_options`
--
ALTER TABLE `wp98_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp98_postmeta`
--
ALTER TABLE `wp98_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp98_posts`
--
ALTER TABLE `wp98_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp98_snippets`
--
ALTER TABLE `wp98_snippets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp98_termmeta`
--
ALTER TABLE `wp98_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp98_terms`
--
ALTER TABLE `wp98_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp98_term_relationships`
--
ALTER TABLE `wp98_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp98_term_taxonomy`
--
ALTER TABLE `wp98_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp98_usermeta`
--
ALTER TABLE `wp98_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp98_users`
--
ALTER TABLE `wp98_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp98_users_old`
--
ALTER TABLE `wp98_users_old`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp98_wc_admin_notes`
--
ALTER TABLE `wp98_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indices de la tabla `wp98_wc_admin_note_actions`
--
ALTER TABLE `wp98_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indices de la tabla `wp98_wc_category_lookup`
--
ALTER TABLE `wp98_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indices de la tabla `wp98_wc_customer_lookup`
--
ALTER TABLE `wp98_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `wp98_wc_download_log`
--
ALTER TABLE `wp98_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indices de la tabla `wp98_wc_order_coupon_lookup`
--
ALTER TABLE `wp98_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indices de la tabla `wp98_wc_order_product_lookup`
--
ALTER TABLE `wp98_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indices de la tabla `wp98_wc_order_stats`
--
ALTER TABLE `wp98_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indices de la tabla `wp98_wc_order_tax_lookup`
--
ALTER TABLE `wp98_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indices de la tabla `wp98_wc_product_meta_lookup`
--
ALTER TABLE `wp98_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indices de la tabla `wp98_wc_reserved_stock`
--
ALTER TABLE `wp98_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indices de la tabla `wp98_wc_tax_rate_classes`
--
ALTER TABLE `wp98_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indices de la tabla `wp98_wc_webhooks`
--
ALTER TABLE `wp98_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp98_woocommerce_api_keys`
--
ALTER TABLE `wp98_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indices de la tabla `wp98_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp98_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indices de la tabla `wp98_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp98_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indices de la tabla `wp98_woocommerce_log`
--
ALTER TABLE `wp98_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indices de la tabla `wp98_woocommerce_order_itemmeta`
--
ALTER TABLE `wp98_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp98_woocommerce_order_items`
--
ALTER TABLE `wp98_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `wp98_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp98_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp98_woocommerce_payment_tokens`
--
ALTER TABLE `wp98_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp98_woocommerce_sessions`
--
ALTER TABLE `wp98_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indices de la tabla `wp98_woocommerce_shipping_zones`
--
ALTER TABLE `wp98_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indices de la tabla `wp98_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp98_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indices de la tabla `wp98_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp98_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indices de la tabla `wp98_woocommerce_tax_rates`
--
ALTER TABLE `wp98_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indices de la tabla `wp98_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp98_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `addres_ip`
--
ALTER TABLE `addres_ip`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `administradorgastos`
--
ALTER TABLE `administradorgastos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `administradorlista`
--
ALTER TABLE `administradorlista`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `avatares`
--
ALTER TABLE `avatares`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `binario`
--
ALTER TABLE `binario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bonoinicio`
--
ALTER TABLE `bonoinicio`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `calendarios`
--
ALTER TABLE `calendarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `canjes`
--
ALTER TABLE `canjes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `capital`
--
ALTER TABLE `capital`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carritos`
--
ALTER TABLE `carritos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `chat_codigo`
--
ALTER TABLE `chat_codigo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `coinpayment_transactions`
--
ALTER TABLE `coinpayment_transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `component`
--
ALTER TABLE `component`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `componentenoticias`
--
ALTER TABLE `componentenoticias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `componentestransf`
--
ALTER TABLE `componentestransf`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `componentestransferencias`
--
ALTER TABLE `componentestransferencias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `compradirectas`
--
ALTER TABLE `compradirectas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `consultacrypto`
--
ALTER TABLE `consultacrypto`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `costo`
--
ALTER TABLE `costo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `courses_orden`
--
ALTER TABLE `courses_orden`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `courses_tags`
--
ALTER TABLE `courses_tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `courses_users`
--
ALTER TABLE `courses_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evaluations_users`
--
ALTER TABLE `evaluations_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evaluations_users_answers`
--
ALTER TABLE `evaluations_users_answers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `events_users`
--
ALTER TABLE `events_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `event_content`
--
ALTER TABLE `event_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `event_countries`
--
ALTER TABLE `event_countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `event_resources`
--
ALTER TABLE `event_resources`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `formulario`
--
ALTER TABLE `formulario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ganancias`
--
ALTER TABLE `ganancias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `informacionbancaria`
--
ALTER TABLE `informacionbancaria`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `insignia`
--
ALTER TABLE `insignia`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `insignia_user`
--
ALTER TABLE `insignia_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `iva`
--
ALTER TABLE `iva`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `legal_clauses`
--
ALTER TABLE `legal_clauses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `legal_tabs`
--
ALTER TABLE `legal_tabs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `lessons_users`
--
ALTER TABLE `lessons_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `linkpagos`
--
ALTER TABLE `linkpagos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modulocomplementario`
--
ALTER TABLE `modulocomplementario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `monedadicional`
--
ALTER TABLE `monedadicional`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `monedas`
--
ALTER TABLE `monedas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `notificacion_tickets`
--
ALTER TABLE `notificacion_tickets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `offers_live`
--
ALTER TABLE `offers_live`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `offers_users`
--
ALTER TABLE `offers_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `opciones_select`
--
ALTER TABLE `opciones_select`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT de la tabla `optioncarritos`
--
ALTER TABLE `optioncarritos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pagocarritos`
--
ALTER TABLE `pagocarritos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT de la tabla `pop`
--
ALTER TABLE `pop`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `prospeccion`
--
ALTER TABLE `prospeccion`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puntos`
--
ALTER TABLE `puntos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puntosbonos`
--
ALTER TABLE `puntosbonos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de la tabla `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pushs`
--
ALTER TABLE `pushs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `qr`
--
ALTER TABLE `qr`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `redes_sociales`
--
ALTER TABLE `redes_sociales`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seguridad`
--
ALTER TABLE `seguridad`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `semiautobinario`
--
ALTER TABLE `semiautobinario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `senales`
--
ALTER TABLE `senales`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sesions`
--
ALTER TABLE `sesions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `settingactivacion`
--
ALTER TABLE `settingactivacion`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settingcliente`
--
ALTER TABLE `settingcliente`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settingcomision`
--
ALTER TABLE `settingcomision`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settingpagos`
--
ALTER TABLE `settingpagos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `settingpermiso`
--
ALTER TABLE `settingpermiso`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10130;

--
-- AUTO_INCREMENT de la tabla `settingplantilla`
--
ALTER TABLE `settingplantilla`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settingsestructura`
--
ALTER TABLE `settingsestructura`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settingspuntos`
--
ALTER TABLE `settingspuntos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `setttingsroles`
--
ALTER TABLE `setttingsroles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `supports`
--
ALTER TABLE `supports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `support_material`
--
ALTER TABLE `support_material`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `survey_options`
--
ALTER TABLE `survey_options`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `survey_options_response`
--
ALTER TABLE `survey_options_response`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `suscriptions`
--
ALTER TABLE `suscriptions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `upgrade_messages`
--
ALTER TABLE `upgrade_messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `walletlog`
--
ALTER TABLE `walletlog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp98_actionscheduler_actions`
--
ALTER TABLE `wp98_actionscheduler_actions`
  MODIFY `action_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `wp98_actionscheduler_claims`
--
ALTER TABLE `wp98_actionscheduler_claims`
  MODIFY `claim_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18442;

--
-- AUTO_INCREMENT de la tabla `wp98_actionscheduler_groups`
--
ALTER TABLE `wp98_actionscheduler_groups`
  MODIFY `group_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp98_actionscheduler_logs`
--
ALTER TABLE `wp98_actionscheduler_logs`
  MODIFY `log_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `wp98_commentmeta`
--
ALTER TABLE `wp98_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wp98_comments`
--
ALTER TABLE `wp98_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp98_links`
--
ALTER TABLE `wp98_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_ms_snippets`
--
ALTER TABLE `wp98_ms_snippets`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_options`
--
ALTER TABLE `wp98_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23091;

--
-- AUTO_INCREMENT de la tabla `wp98_postmeta`
--
ALTER TABLE `wp98_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_posts`
--
ALTER TABLE `wp98_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_snippets`
--
ALTER TABLE `wp98_snippets`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `wp98_termmeta`
--
ALTER TABLE `wp98_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `wp98_terms`
--
ALTER TABLE `wp98_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `wp98_term_taxonomy`
--
ALTER TABLE `wp98_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `wp98_usermeta`
--
ALTER TABLE `wp98_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1509;

--
-- AUTO_INCREMENT de la tabla `wp98_users`
--
ALTER TABLE `wp98_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10149;

--
-- AUTO_INCREMENT de la tabla `wp98_users_old`
--
ALTER TABLE `wp98_users_old`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp98_wc_admin_notes`
--
ALTER TABLE `wp98_wc_admin_notes`
  MODIFY `note_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `wp98_wc_admin_note_actions`
--
ALTER TABLE `wp98_wc_admin_note_actions`
  MODIFY `action_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `wp98_wc_customer_lookup`
--
ALTER TABLE `wp98_wc_customer_lookup`
  MODIFY `customer_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp98_wc_download_log`
--
ALTER TABLE `wp98_wc_download_log`
  MODIFY `download_log_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_wc_tax_rate_classes`
--
ALTER TABLE `wp98_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp98_wc_webhooks`
--
ALTER TABLE `wp98_wc_webhooks`
  MODIFY `webhook_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_api_keys`
--
ALTER TABLE `wp98_woocommerce_api_keys`
  MODIFY `key_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp98_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp98_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_log`
--
ALTER TABLE `wp98_woocommerce_log`
  MODIFY `log_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_order_itemmeta`
--
ALTER TABLE `wp98_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_order_items`
--
ALTER TABLE `wp98_woocommerce_order_items`
  MODIFY `order_item_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp98_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_payment_tokens`
--
ALTER TABLE `wp98_woocommerce_payment_tokens`
  MODIFY `token_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_sessions`
--
ALTER TABLE `wp98_woocommerce_sessions`
  MODIFY `session_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_shipping_zones`
--
ALTER TABLE `wp98_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp98_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp98_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_tax_rates`
--
ALTER TABLE `wp98_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp98_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
