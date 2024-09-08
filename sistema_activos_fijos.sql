-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-09-2024 a las 18:45:04
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
-- Base de datos: `sistema_activos_fijos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accion`
--

CREATE TABLE `accion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_acc` varchar(255) NOT NULL,
  `id_accionista` bigint(20) UNSIGNED NOT NULL,
  `id_categorias` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `accion`
--

INSERT INTO `accion` (`id`, `nombre_acc`, `id_accionista`, `id_categorias`, `created_at`, `updated_at`) VALUES
(1, 'Acción 1', 1, 1, '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(2, 'Acción 2', 2, 2, '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(3, 'Acción 3', 3, 3, '2024-09-08 02:23:12', '2024-09-08 02:23:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accionistas`
--

CREATE TABLE `accionistas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_accs` varchar(255) NOT NULL,
  `telefono_accs` varchar(255) NOT NULL,
  `correo_accs` varchar(255) NOT NULL,
  `direccion_accs` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `accionistas`
--

INSERT INTO `accionistas` (`id`, `nombre_accs`, `telefono_accs`, `correo_accs`, `direccion_accs`, `created_at`, `updated_at`) VALUES
(1, 'Juan Pérez', '+503 77660245', 'juan.perez@gmail.com', 'Santa marta el pedregal, caserio las hojas', '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(2, 'Ana Gómez', '+503 26335709', 'ana.gomez@gmail.com', 'Avenida Rusbel, primera calle poniente', '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(3, 'Carlos Fernández', '+503 77069910', 'carlos.fernandez@gmail.com', 'Plaza Barrios, canton los pozos.', '2024-09-08 02:23:12', '2024-09-08 02:23:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Inmuebles', '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(2, 'Muebles', '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(3, 'Intangibles', '2024-09-08 02:23:12', '2024-09-08 02:23:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Departamento de administracion', '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(2, 'Departamento de Finanzas', '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(3, 'Departamento de Marketing', '2024-09-08 02:23:12', '2024-09-08 02:23:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos_tecnologicos`
--

CREATE TABLE `equipos_tecnologicos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_equip` varchar(255) NOT NULL,
  `codigo_interno_equip` varchar(255) NOT NULL,
  `id_categoria` bigint(20) UNSIGNED NOT NULL,
  `descripcion_equip` text NOT NULL,
  `id_departamento` bigint(20) UNSIGNED NOT NULL,
  `precio_equip` decimal(15,2) NOT NULL,
  `vida_util_equip` varchar(255) NOT NULL,
  `valor_salvamento_equip` decimal(15,2) NOT NULL,
  `depreciacion_equip` decimal(15,2) NOT NULL,
  `modelo_equip` varchar(255) NOT NULL,
  `marca_equip` varchar(255) NOT NULL,
  `fecha_entrada_equip` date NOT NULL,
  `fecha_salida_equip` date DEFAULT NULL,
  `encargado_inventario_equip` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `equipos_tecnologicos`
--

INSERT INTO `equipos_tecnologicos` (`id`, `nombre_equip`, `codigo_interno_equip`, `id_categoria`, `descripcion_equip`, `id_departamento`, `precio_equip`, `vida_util_equip`, `valor_salvamento_equip`, `depreciacion_equip`, `modelo_equip`, `marca_equip`, `fecha_entrada_equip`, `fecha_salida_equip`, `encargado_inventario_equip`, `created_at`, `updated_at`) VALUES
(1, 'Laptop HP ProBook', 'LP-001', 1, 'Laptop HP ProBook con procesador Intel i7 y 16GB de RAM.', 1, 1200.00, '5 años', 100.00, 240.00, 'ProBook 450 G7', 'HP', '2024-05-15', '2024-05-26', 'Miguel Sánchez', '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(2, 'Proyector Epson', 'PR-002', 2, 'Proyector Epson con resolución Full HD y conectividad inalámbrica.', 2, 650.00, '7 años', 65.00, 92.86, 'EB-X41', 'Epson', '2024-06-22', '2025-07-10', 'Ana Torres', '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(3, 'Impresora láser Brother', 'IM-003', 3, 'Impresora láser Brother con capacidad para 30 páginas por minuto.', 3, 300.00, '6 años', 30.00, 45.00, 'HL-L2350DW', 'Brother', '2024-04-10', '2025-07-15', 'Luis García', '2024-09-08 02:23:12', '2024-09-08 02:23:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmuebles`
--

CREATE TABLE `inmuebles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_in` varchar(255) NOT NULL,
  `codigo_interno_in` varchar(255) NOT NULL,
  `descripcion_in` text NOT NULL,
  `id_categoria` bigint(20) UNSIGNED NOT NULL,
  `id_departamento` bigint(20) UNSIGNED NOT NULL,
  `precio_in` decimal(15,2) NOT NULL,
  `vida_util_in` varchar(255) NOT NULL,
  `valor_salvamento_in` decimal(15,2) NOT NULL,
  `depreciacion_in` decimal(15,2) NOT NULL,
  `fecha_entrada_in` date NOT NULL,
  `fecha_salida_in` date DEFAULT NULL,
  `encargado_inventario_in` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inmuebles`
--

INSERT INTO `inmuebles` (`id`, `nombre_in`, `codigo_interno_in`, `descripcion_in`, `id_categoria`, `id_departamento`, `precio_in`, `vida_util_in`, `valor_salvamento_in`, `depreciacion_in`, `fecha_entrada_in`, `fecha_salida_in`, `encargado_inventario_in`, `created_at`, `updated_at`) VALUES
(1, 'Oficina Principal', 'OF-001', 'Oficina principal ubicada en el edificio central.', 1, 1, 1000000.00, '20 años', 50000.00, 50000.00, '2024-10-01', '2024-10-05', 'Juan Pérez', '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(2, 'Almacén Secundario', 'AL-002', 'Almacén para productos secundarios.', 2, 2, 200000.00, '15 años', 20000.00, 15000.00, '2024-12-15', '2024-12-20', 'Ana Martínez', '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(3, 'Almacén opcional', 'AL-002', 'Almacén opcional en caso de contar con los almacenes principales', 3, 3, 400000.00, '15 años', 30000.00, 16000.00, '2024-12-20', '2024-12-25', 'Ana Martínez', '2024-09-08 02:23:12', '2024-09-08 02:23:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquinaria`
--

CREATE TABLE `maquinaria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_maq` varchar(255) NOT NULL,
  `codigo_interno_maq` varchar(255) NOT NULL,
  `id_categoria` bigint(20) UNSIGNED NOT NULL,
  `descripción_maq` text NOT NULL,
  `marca_maq` varchar(255) NOT NULL,
  `modelo_maq` varchar(255) NOT NULL,
  `id_departamento` bigint(20) UNSIGNED NOT NULL,
  `precio_maq` decimal(15,2) NOT NULL,
  `vida_util_maq` varchar(255) NOT NULL,
  `valor_salvamento_maq` decimal(15,2) NOT NULL,
  `depreciacion_maq` decimal(15,2) NOT NULL,
  `fecha_entrada_maq` date NOT NULL,
  `fecha_salida_maq` date DEFAULT NULL,
  `encargado_inventario_maq` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `maquinaria`
--

INSERT INTO `maquinaria` (`id`, `nombre_maq`, `codigo_interno_maq`, `id_categoria`, `descripción_maq`, `marca_maq`, `modelo_maq`, `id_departamento`, `precio_maq`, `vida_util_maq`, `valor_salvamento_maq`, `depreciacion_maq`, `fecha_entrada_maq`, `fecha_salida_maq`, `encargado_inventario_maq`, `created_at`, `updated_at`) VALUES
(1, 'Excavadora', 'EXC-CAT-001', 2, 'Excavadora hidráulica de gran capacidad.', 'Caterpillar', '320D', 1, 150000.00, '10 años', 10000.00, 14000.00, '2020-08-10', '2024-08-31', 'Juan Pérez', '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(2, 'Cargadora Frontal', 'CAR-FRO-003', 3, 'Cargadora frontal para trabajos de construcción y minería.', 'Komatsu', 'WA470-6', 3, 180000.00, '12 años', 12000.00, 14000.00, '2024-07-10', '2024-09-10', 'Pedro Ramírez', '2024-09-08 02:23:12', '2024-09-08 02:27:19'),
(3, 'Camioneta', '7HFDD', 2, 'Este es una camioneta destinada para el personal.', 'Susuki', 'Blacking', 2, 67900.00, '35 años', 70000.00, 3865.00, '2024-09-03', '2024-09-02', 'Kenia Alemán', '2024-09-08 06:32:07', '2024-09-08 06:32:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales_oficina`
--

CREATE TABLE `materiales_oficina` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_mat` varchar(255) NOT NULL,
  `codigo_interno_mat` varchar(255) NOT NULL,
  `id_categoria` bigint(20) UNSIGNED NOT NULL,
  `descripcion_mat` text NOT NULL,
  `id_departamento` bigint(20) UNSIGNED NOT NULL,
  `precio_mat` decimal(15,2) NOT NULL,
  `vida_util_mat` varchar(255) NOT NULL,
  `valor_salvamento_mat` decimal(15,2) NOT NULL,
  `depreciacion_mat` decimal(15,2) NOT NULL,
  `modelo_mat` varchar(255) NOT NULL,
  `marca_mat` varchar(255) NOT NULL,
  `fecha_entrada_mat` date NOT NULL,
  `fecha_salida_mat` date DEFAULT NULL,
  `encargado_inventario_mat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `materiales_oficina`
--

INSERT INTO `materiales_oficina` (`id`, `nombre_mat`, `codigo_interno_mat`, `id_categoria`, `descripcion_mat`, `id_departamento`, `precio_mat`, `vida_util_mat`, `valor_salvamento_mat`, `depreciacion_mat`, `modelo_mat`, `marca_mat`, `fecha_entrada_mat`, `fecha_salida_mat`, `encargado_inventario_mat`, `created_at`, `updated_at`) VALUES
(1, 'Silla Ejecutiva', 'SE-001', 1, 'Silla ejecutiva ergonómica con soporte lumbar.', 1, 250.00, '5 años', 25.00, 50.00, 'SE-2024', 'ErgoPlus', '2024-09-12', '2024-09-05', 'María López', '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(2, 'Escritorio de Madera', 'EM-002', 2, 'Escritorio de madera con cajones.', 2, 500.00, '10 años', 50.00, 100.00, 'EM-2024', 'WoodCraft', '2024-05-15', '2024-05-20', 'Carlos Ramírez', '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(3, 'Mesa de metal', 'EM-002', 3, 'Mesa para poner papeleria u otras cosas.', 3, 500.00, '11 años', 60.00, 110.00, 'OK-2023', 'Rimadesio', '2024-05-21', '2024-05-28', 'Gabriel Guardado', '2024-09-08 02:23:12', '2024-09-08 02:23:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '0001_01_01_000000_create_users_table', 1),
(18, '0001_01_01_000001_create_cache_table', 1),
(19, '0001_01_01_000002_create_jobs_table', 1),
(20, '2024_08_30_194139_create_tipo_usuario_table', 1),
(21, '2024_08_30_194231_create_usuario_table', 1),
(22, '2024_08_30_194428_create_categorias_table', 1),
(23, '2024_08_30_194537_create_tipo_activos_table', 1),
(24, '2024_08_30_194740_create_departamento_table', 1),
(25, '2024_08_30_194846_create_maquinaria_table', 1),
(26, '2024_08_30_195456_create_inmuebles_table', 1),
(27, '2024_08_30_195738_create_materiales_oficina_table', 1),
(28, '2024_08_30_200118_create_mobiliario_table', 1),
(29, '2024_08_30_200547_create_equipos_tecnologicos_table', 1),
(30, '2024_08_30_200809_create_accionistas_table', 1),
(31, '2024_08_30_200949_create_accion_table', 1),
(32, '2024_08_30_201038_create_vehiculos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mobiliario`
--

CREATE TABLE `mobiliario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_mob` varchar(255) NOT NULL,
  `codigo_interno_mob` varchar(255) NOT NULL,
  `id_categoria` bigint(20) UNSIGNED NOT NULL,
  `descripcion_mob` text NOT NULL,
  `id_departamento` bigint(20) UNSIGNED NOT NULL,
  `precio_mob` decimal(15,2) NOT NULL,
  `vida_util_mob` varchar(255) NOT NULL,
  `valor_salvamento_mob` decimal(15,2) NOT NULL,
  `depreciacion_mob` decimal(15,2) NOT NULL,
  `modelo_mob` varchar(255) NOT NULL,
  `marca_mob` varchar(255) NOT NULL,
  `fecha_entrada_mob` date NOT NULL,
  `fecha_salida_mob` date DEFAULT NULL,
  `encargado_inventario_mob` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `mobiliario`
--

INSERT INTO `mobiliario` (`id`, `nombre_mob`, `codigo_interno_mob`, `id_categoria`, `descripcion_mob`, `id_departamento`, `precio_mob`, `vida_util_mob`, `valor_salvamento_mob`, `depreciacion_mob`, `modelo_mob`, `marca_mob`, `fecha_entrada_mob`, `fecha_salida_mob`, `encargado_inventario_mob`, `created_at`, `updated_at`) VALUES
(1, 'Sofá Modular', 'SM-001', 1, 'Sofá modular de 4 piezas, color gris.', 1, 1500.00, '7 años', 150.00, 214.29, 'SM-2024', 'ComfortCo', '2024-04-10', '2024-02-18', 'Laura Fernández', '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(2, 'Mesa de Conferencias', 'MC-002', 2, 'Mesa de conferencias rectangular, de madera con capacidad para 8 personas.', 2, 800.00, '10 años', 80.00, 80.00, 'MC-2024', 'OfficeFurn', '2024-06-05', '2024-06-15', 'Ricardo Gómez', '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(3, 'Lámpara de Escritorio', 'LE-005', 3, 'Lámpara de escritorio con ajuste de brillo y ángulo.', 3, 75.00, '4 años', 7.50, 18.75, 'LE-2024', 'LightTech', '2024-08-15', '2024-09-03', 'Luisa Rodríguez', '2024-09-08 02:23:12', '2024-09-08 02:23:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('BGQIM8czrcwG0cPcXjbPUL0x8o2wVrS9WPi05e3G', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXVmZlRIekI2bmd1NndwRzNSU1dHeXFrYnpFU3dCVmx1U0Z0OFpwWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725809633),
('v5qRHKVdLvvJwP6gJYTYNjK1sMmwQjuotKyV16zK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjNDVHlpTVF2c2RPcmk4bW42djNXaTRGQ0dlWTdGd3owaUhGVzEzdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92ZWhpY3Vsb3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1725812932);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_activos`
--

CREATE TABLE `tipo_activos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `id_categoria` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_activos`
--

INSERT INTO `tipo_activos` (`id`, `nombre`, `id_categoria`, `created_at`, `updated_at`) VALUES
(1, 'Edificios y terrenos', 1, '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(2, 'vehiculos', 2, '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(3, 'marcas registradas', 3, '2024-09-08 02:23:12', '2024-09-08 02:23:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(2, 'Vendedor', '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(3, 'Cliente', '2024-09-08 02:23:12', '2024-09-08 02:23:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2024-09-08 02:23:11', '$2y$12$tjwVcLV/NW1BZ6zbkNe3Deg7SzcH0CGMfisDiZjV2DUGz94.oXnLm', 'X9rA4haKXQ', '2024-09-08 02:23:12', '2024-09-08 02:23:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `id_tipo_usuario` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `correo`, `contraseña`, `id_tipo_usuario`, `created_at`, `updated_at`) VALUES
(1, 'Kenia Alemán', 'alemankenia137@gmail.com', '$2y$12$pL7borpOYncjdeIWmD47HOnLGx/SXlG.4ZP8hwkPvsGThTcRZbwCK', 1, '2024-09-08 02:24:36', '2024-09-08 02:24:36'),
(2, 'Juan Portillo', 'juanportillo@gmail.com', '$2y$12$CmFNyqmqDaDAYjikBViWlOCGzLjCI3rtwMK16p7Ny3ESGXxEGuFrW', 2, '2024-09-08 02:24:37', '2024-09-08 02:24:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_veh` varchar(255) NOT NULL,
  `codigo_interno_veh` varchar(255) NOT NULL,
  `id_categoria` bigint(20) UNSIGNED NOT NULL,
  `descripcion_veh` text NOT NULL,
  `id_departamento` bigint(20) UNSIGNED NOT NULL,
  `precio_veh` decimal(15,2) NOT NULL,
  `vida_util_veh` varchar(255) NOT NULL,
  `valor_salvamento_veh` decimal(15,2) NOT NULL,
  `depreciacion_veh` decimal(15,2) NOT NULL,
  `modelo_veh` varchar(255) NOT NULL,
  `marca_veh` varchar(255) NOT NULL,
  `fecha_entrada_veh` date NOT NULL,
  `fecha_salida_veh` date DEFAULT NULL,
  `encargado_inventario_veh` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `nombre_veh`, `codigo_interno_veh`, `id_categoria`, `descripcion_veh`, `id_departamento`, `precio_veh`, `vida_util_veh`, `valor_salvamento_veh`, `depreciacion_veh`, `modelo_veh`, `marca_veh`, `fecha_entrada_veh`, `fecha_salida_veh`, `encargado_inventario_veh`, `created_at`, `updated_at`) VALUES
(1, 'Camión Isuzu NPR', 'CM-001', 1, 'Camión de carga con capacidad de 3 toneladas.', 1, 25000.00, '10 años', 2000.00, 2500.00, 'NPR 75', 'Isuzu', '2024-12-10', '2024-10-05', 'Roberto López', '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(2, 'Automóvil Toyota Corolla', 'AT-002', 2, 'Automóvil compacto con buen rendimiento de combustible.', 2, 15000.00, '7 años', 1500.00, 2142.86, 'Corolla LE', 'Toyota', '2024-07-22', '2024-08-29', 'Laura Martínez', '2024-09-08 02:23:12', '2024-09-08 02:23:12'),
(3, 'Furgoneta Ford Transit', 'FG-003', 3, 'Furgoneta con capacidad para 12 pasajeros.', 3, 30000.00, '8 años', 2500.00, 3750.00, 'Transit 350', 'Ford', '2024-09-05', '2024-11-10', 'Juan Ramírez', '2024-09-08 02:23:12', '2024-09-08 02:23:12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accion`
--
ALTER TABLE `accion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accion_id_accionista_foreign` (`id_accionista`),
  ADD KEY `accion_id_categorias_foreign` (`id_categorias`);

--
-- Indices de la tabla `accionistas`
--
ALTER TABLE `accionistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipos_tecnologicos`
--
ALTER TABLE `equipos_tecnologicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipos_tecnologicos_id_categoria_foreign` (`id_categoria`),
  ADD KEY `equipos_tecnologicos_id_departamento_foreign` (`id_departamento`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inmuebles_id_categoria_foreign` (`id_categoria`),
  ADD KEY `inmuebles_id_departamento_foreign` (`id_departamento`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maquinaria`
--
ALTER TABLE `maquinaria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maquinaria_id_categoria_foreign` (`id_categoria`),
  ADD KEY `maquinaria_id_departamento_foreign` (`id_departamento`);

--
-- Indices de la tabla `materiales_oficina`
--
ALTER TABLE `materiales_oficina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materiales_oficina_id_categoria_foreign` (`id_categoria`),
  ADD KEY `materiales_oficina_id_departamento_foreign` (`id_departamento`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mobiliario`
--
ALTER TABLE `mobiliario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobiliario_id_categoria_foreign` (`id_categoria`),
  ADD KEY `mobiliario_id_departamento_foreign` (`id_departamento`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tipo_activos`
--
ALTER TABLE `tipo_activos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_activos_id_categoria_foreign` (`id_categoria`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_correo_unique` (`correo`),
  ADD KEY `usuario_id_tipo_usuario_foreign` (`id_tipo_usuario`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehiculos_id_categoria_foreign` (`id_categoria`),
  ADD KEY `vehiculos_id_departamento_foreign` (`id_departamento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accion`
--
ALTER TABLE `accion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `accionistas`
--
ALTER TABLE `accionistas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `equipos_tecnologicos`
--
ALTER TABLE `equipos_tecnologicos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `maquinaria`
--
ALTER TABLE `maquinaria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `materiales_oficina`
--
ALTER TABLE `materiales_oficina`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `mobiliario`
--
ALTER TABLE `mobiliario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_activos`
--
ALTER TABLE `tipo_activos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accion`
--
ALTER TABLE `accion`
  ADD CONSTRAINT `accion_id_accionista_foreign` FOREIGN KEY (`id_accionista`) REFERENCES `accionistas` (`id`),
  ADD CONSTRAINT `accion_id_categorias_foreign` FOREIGN KEY (`id_categorias`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `equipos_tecnologicos`
--
ALTER TABLE `equipos_tecnologicos`
  ADD CONSTRAINT `equipos_tecnologicos_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `equipos_tecnologicos_id_departamento_foreign` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`);

--
-- Filtros para la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  ADD CONSTRAINT `inmuebles_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `inmuebles_id_departamento_foreign` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`);

--
-- Filtros para la tabla `maquinaria`
--
ALTER TABLE `maquinaria`
  ADD CONSTRAINT `maquinaria_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `maquinaria_id_departamento_foreign` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`);

--
-- Filtros para la tabla `materiales_oficina`
--
ALTER TABLE `materiales_oficina`
  ADD CONSTRAINT `materiales_oficina_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `materiales_oficina_id_departamento_foreign` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`);

--
-- Filtros para la tabla `mobiliario`
--
ALTER TABLE `mobiliario`
  ADD CONSTRAINT `mobiliario_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `mobiliario_id_departamento_foreign` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`);

--
-- Filtros para la tabla `tipo_activos`
--
ALTER TABLE `tipo_activos`
  ADD CONSTRAINT `tipo_activos_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_id_tipo_usuario_foreign` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id`);

--
-- Filtros para la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `vehiculos_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `vehiculos_id_departamento_foreign` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
