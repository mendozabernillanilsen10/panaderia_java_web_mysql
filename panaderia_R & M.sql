-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2021 a las 14:50:38
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `panaderia_don_tito_central`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen`
--

CREATE TABLE `almacen` (
  `idAlmacen` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Estado` char(1) NOT NULL,
  `Descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `almacen`
--

INSERT INTO `almacen` (`idAlmacen`, `Nombre`, `Estado`, `Descripcion`) VALUES
(1, 'Almacen A', 'A', 'Almacen de productos'),
(2, 'Almacen B', 'A', 'Almacen de insumos'),
(3, 'AlmacenC', 'a', 'a'),
(4, 'AlmacenD', 'a', 'c');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `idArea` int(11) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`idArea`, `Nombre`, `Descripcion`) VALUES
(1, 'Cocina', 'Encargados de Elaborar el Pan'),
(2, 'Delivery', 'Encargados de llevar el producto a domicilio'),
(3, 'Almacen', 'Lugar donde se guardan los productos'),
(4, 'Caja', 'Encargados de Cobrar las ventas del dia'),
(5, 'Oficina', 'Encargados de administrar el negocio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `ID_Persona` int(11) NOT NULL,
  `TipoCliente` tinyint(1) NOT NULL,
  `RUC` varchar(20) DEFAULT NULL,
  `Estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `ID_Persona`, `TipoCliente`, `RUC`, `Estado`) VALUES
(1, 1, 0, '10-73001581-5', 1),
(2, 2, 0, '10-73001580-5', 1),
(3, 3, 0, '10-78001821-5', 1),
(4, 4, 1, '10-78047588-5', 1),
(5, 5, 1, '10-79631581-5', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correo`
--

CREATE TABLE `correo` (
  `ID_Correo` int(11) NOT NULL,
  `ID_Persona` int(11) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `correo`
--

INSERT INTO `correo` (`ID_Correo`, `ID_Persona`, `Correo`, `Estado`) VALUES
(1, 1, 'Crestana4@gmail.com', 1),
(2, 2, 'AVelasquez@gmail.com', 1),
(3, 3, 'Slaz_48@gmail.com', 1),
(4, 4, 'Saenz_P@gmail.com', 1),
(5, 5, 'CotrinaD@gmail.com', 1),
(6, 6, 'Benavidez_LA@gmail.com', 1),
(7, 7, 'LRodaz_198@gmail.com', 1),
(8, 8, 'SlazValdi65@gmail.com', 1),
(9, 9, 'Campos_R@gmail.com', 1),
(10, 10, 'Paz45@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallealmacen_insumo`
--

CREATE TABLE `detallealmacen_insumo` (
  `idDetalleAlmacen_Insumo` int(11) NOT NULL,
  `idAlmacen` int(11) NOT NULL,
  `idInsumo` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detallealmacen_insumo`
--

INSERT INTO `detallealmacen_insumo` (`idDetalleAlmacen_Insumo`, `idAlmacen`, `idInsumo`, `Cantidad`) VALUES
(1, 1, 1, 12),
(2, 1, 2, 30),
(3, 1, 3, 20),
(4, 1, 4, 10),
(5, 1, 5, 15),
(6, 1, 6, 18),
(7, 1, 7, 15),
(8, 1, 8, 17),
(9, 1, 9, 10),
(10, 1, 10, 18),
(11, 1, 11, 6),
(12, 1, 12, 30),
(13, 1, 13, 10),
(14, 1, 14, 7),
(15, 1, 15, 6),
(16, 1, 16, 30),
(17, 1, 17, 250);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallealmacen_producto`
--

CREATE TABLE `detallealmacen_producto` (
  `idDetalleAlmacen_Producto` int(11) NOT NULL,
  `idAlmacen` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detallealmacen_producto`
--

INSERT INTO `detallealmacen_producto` (`idDetalleAlmacen_Producto`, `idAlmacen`, `idProducto`, `Cantidad`) VALUES
(1, 2, 1, 50),
(2, 2, 2, 2),
(3, 2, 3, 5),
(4, 2, 4, 4),
(5, 2, 5, 4),
(6, 2, 6, 25),
(7, 2, 7, 3),
(8, 2, 8, 35),
(9, 2, 9, 35),
(10, 2, 10, 36),
(11, 2, 11, 39);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallepedido`
--

CREATE TABLE `detallepedido` (
  `idDetallePedido` int(11) NOT NULL,
  `idPedido` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Precio` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detallepedido`
--

INSERT INTO `detallepedido` (`idDetallePedido`, `idPedido`, `idProducto`, `Cantidad`, `Precio`) VALUES
(1, 1, 1, 12, 3.6),
(2, 3, 1, 24, 7.2),
(3, 4, 1, 40, 12),
(4, 5, 1, 30, 9),
(5, 6, 1, 15, 4.5),
(6, 7, 2, 3, 150),
(7, 8, 3, 2, 80),
(8, 9, 4, 3, 60),
(9, 10, 5, 4, 100),
(10, 11, 6, 5, 5),
(11, 12, 7, 6, 6),
(12, 13, 8, 7, 7),
(13, 14, 9, 15, 18),
(14, 15, 10, 7, 12.6),
(15, 16, 11, 7, 2.1),
(16, 17, 1, 20, 6),
(17, 18, 2, 1, 50),
(18, 19, 3, 1, 40),
(19, 20, 4, 1, 20),
(20, 21, 5, 1, 20),
(21, 22, 6, 6, 6),
(22, 23, 7, 2, 2),
(23, 24, 8, 3, 2.4),
(24, 25, 9, 4, 4.8),
(25, 26, 10, 5, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallereceta`
--

CREATE TABLE `detallereceta` (
  `idDetalle_Receta` int(11) NOT NULL,
  `idInsumo` int(11) NOT NULL,
  `idReceta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descripcion` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detallereceta`
--

INSERT INTO `detallereceta` (`idDetalle_Receta`, `idInsumo`, `idReceta`, `cantidad`, `descripcion`) VALUES
(1, 4, 1, 1, 'Para la produciccion del dia'),
(1, 5, 1, 1, 'Para la produciccion del dia'),
(1, 15, 1, 3, 'Para la produciccion del dia'),
(1, 17, 1, 169, 'Para la produccion del dia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_orden_compra`
--

CREATE TABLE `detalle_orden_compra` (
  `idDetalleCompra` int(11) NOT NULL,
  `idProveedor` int(11) NOT NULL,
  `idInsumo` int(11) NOT NULL,
  `ID_Orden_Compra` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `SubTotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_orden_compra`
--

INSERT INTO `detalle_orden_compra` (`idDetalleCompra`, `idProveedor`, `idInsumo`, `ID_Orden_Compra`, `Cantidad`, `SubTotal`) VALUES
(1, 1, 1, 1, 4, 40),
(1, 1, 2, 1, 4, 34),
(1, 1, 3, 1, 2, 65.98),
(1, 1, 4, 1, 1, 102.66),
(1, 1, 5, 1, 1, 100),
(1, 1, 6, 1, 20, 539.8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `ID_Direccion` int(11) NOT NULL,
  `ID_Persona` int(11) NOT NULL,
  `Direccion` varchar(30) NOT NULL,
  `Estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`ID_Direccion`, `ID_Persona`, `Direccion`, `Estado`) VALUES
(1, 1, 'Las Moras #650', 1),
(2, 2, 'Las Diamelas #720', 1),
(3, 3, 'Los Tulipanes #120', 1),
(4, 4, 'Las Ortencias #258', 1),
(5, 5, 'San Eugenio #890', 1),
(6, 6, 'Maria Izaga #200', 1),
(7, 7, 'Tacna #150', 1),
(8, 8, 'La Libertad #450', 1),
(9, 9, 'La Union #452', 1),
(10, 10, 'Mexico #180', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distribucion`
--

CREATE TABLE `distribucion` (
  `idDistribucion` int(11) NOT NULL,
  `idPedido` int(11) NOT NULL,
  `idTrabajador` int(11) NOT NULL,
  `FechaEntrega` date DEFAULT NULL,
  `Estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `distribucion`
--

INSERT INTO `distribucion` (`idDistribucion`, `idPedido`, `idTrabajador`, `FechaEntrega`, `Estado`) VALUES
(1, 1, 1, '2020-07-30', 'E'),
(2, 3, 1, '2020-07-29', 'E'),
(3, 4, 1, '2020-07-30', 'E'),
(4, 5, 1, '2020-07-29', 'E'),
(5, 6, 1, '2020-07-30', 'E'),
(6, 7, 2, '2020-07-29', 'E'),
(7, 8, 2, '2020-07-30', 'E'),
(8, 9, 2, '2020-07-29', 'E'),
(9, 10, 1, '2020-07-30', 'E'),
(10, 11, 1, '2020-07-29', 'E'),
(11, 12, 1, '2020-07-30', 'E'),
(12, 13, 1, '2020-07-29', 'E'),
(13, 14, 1, '2020-07-30', 'E'),
(14, 15, 2, '2020-07-28', 'E'),
(15, 16, 2, '2020-07-28', 'E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumo`
--

CREATE TABLE `insumo` (
  `idInsumo` int(11) NOT NULL,
  `idTipoInsumo` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Precio` double NOT NULL,
  `Descripcion` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `insumo`
--

INSERT INTO `insumo` (`idInsumo`, `idTipoInsumo`, `Nombre`, `Precio`, `Descripcion`) VALUES
(1, 1, 'Leche', 10, 'Leche Gloria un sixpack'),
(2, 1, 'Agua', 8.5, 'Agua Cielo un sixpack'),
(3, 1, 'Zumo de Naranja', 32.99, 'Una caja de Zumo de Naranja'),
(4, 2, 'Harina', 102.66, 'Harina de Trigo Angelo de 50Kg'),
(5, 2, 'Polvo de Hornear', 100, 'Caja de 100 unidades'),
(6, 2, 'Chocolate', 539.8, 'Chocolate Nestle Sublime Caja de 12 unidades, 20 cajas'),
(7, 3, 'Almendras', 369, 'Almendras Enteras 1.36kg'),
(8, 3, 'Mani', 5.99, 'Mani Tostado en Cascara 250g'),
(9, 3, 'Pasas', 3.95, 'Pasas Morenas Bells 180g'),
(10, 3, 'Higos', 45, 'Higos secos Hills Livers'),
(11, 4, 'Jamon', 42, 'Jamon Sandwich pieza 3.5kg'),
(12, 4, 'HotDog', 9.99, 'Paquete de 500gr'),
(13, 4, 'Tocino', 6.5, 'Paquete de 100gr'),
(14, 5, 'Queso', 85, 'Queso por Bloque'),
(15, 5, 'Mantequilla', 248, 'Mnatequilla de 6kg'),
(16, 5, 'Yogurt', 8.99, 'Yogurt de 1.8kg'),
(17, 6, 'Huevos_Grandes', 13.5, 'Marca la Calera 30 unidades');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_compra`
--

CREATE TABLE `orden_compra` (
  `ID_Orden_Compra` int(11) NOT NULL,
  `idTrabajador` int(11) NOT NULL,
  `Fecha_pedido` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `orden_compra`
--

INSERT INTO `orden_compra` (`ID_Orden_Compra`, `idTrabajador`, `Fecha_pedido`) VALUES
(1, 1, '2020-10-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `FechaPedido` date NOT NULL,
  `FechaEntrega` date NOT NULL,
  `PrecioTotal` double NOT NULL,
  `Estado` char(1) NOT NULL,
  `ADomicilio` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idPedido`, `idCliente`, `FechaPedido`, `FechaEntrega`, `PrecioTotal`, `Estado`, `ADomicilio`) VALUES
(1, 1, '2020-07-29', '2020-07-30', 3.8, 'P', 1),
(2, 2, '2020-07-29', '2020-07-29', 3.8, 'P', 0),
(3, 3, '2020-07-29', '2020-07-30', 3.8, 'P', 1),
(4, 4, '2020-07-28', '2020-07-29', 3.8, 'P', 1),
(5, 5, '2020-07-29', '2020-07-30', 4.2, 'P', 1),
(6, 1, '2020-07-28', '2020-07-29', 5.6, 'P', 1),
(7, 1, '2020-07-29', '2020-07-29', 6.2, 'P', 1),
(8, 2, '2020-07-28', '2020-07-30', 7.2, 'P', 1),
(9, 3, '2020-07-29', '2020-07-29', 5, 'P', 1),
(10, 1, '2020-07-28', '2020-07-30', 5.5, 'P', 1),
(11, 1, '2020-07-29', '2020-07-29', 6.8, 'P', 1),
(12, 1, '2020-07-28', '2020-07-30', 7.2, 'P', 1),
(13, 5, '2020-07-29', '2020-07-29', 7.1, 'P', 1),
(14, 5, '2020-07-28', '2020-07-30', 8.5, 'P', 1),
(15, 2, '2020-07-28', '2020-07-28', 1.2, 'P', 1),
(16, 1, '2020-07-28', '2020-07-28', 7.8, 'P', 1),
(17, 1, '2020-07-27', '2020-07-30', 1.2, 'P', 1),
(18, 2, '2020-07-28', '2020-07-30', 2.4, 'P', 1),
(19, 3, '2020-07-27', '2020-07-30', 1, 'P', 1),
(20, 4, '2020-07-27', '2020-07-30', 3, 'P', 1),
(21, 5, '2020-07-27', '2020-07-30', 7, 'P', 1),
(22, 5, '2020-07-27', '2020-07-30', 5.6, 'P', 1),
(23, 4, '2020-07-27', '2020-07-30', 6.6, 'P', 1),
(24, 3, '2020-07-27', '2020-07-30', 3.5, 'P', 1),
(25, 2, '2020-07-27', '2020-07-30', 1.8, 'P', 1),
(26, 1, '2020-07-27', '2020-07-30', 1.9, 'P', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `ID_Persona` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido_PA` varchar(30) NOT NULL,
  `Apellido_MA` varchar(30) NOT NULL,
  `Sexo` varchar(1) NOT NULL,
  `DNI` char(8) NOT NULL,
  `FechaNacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`ID_Persona`, `Nombre`, `Apellido_PA`, `Apellido_MA`, `Sexo`, `DNI`, `FechaNacimiento`) VALUES
(1, 'Sebastian', 'Fernandez', 'Loayza', 'M', '73001581', '2000-04-13'),
(2, 'Alejandro', 'Ayma', 'Velasquez', 'M', '73001580', '1999-05-18'),
(3, 'Oscar', 'Salaz', 'Jimenez', 'M', '78001821', '2002-10-01'),
(4, 'Cesar', 'Paredez', 'Saenz', 'M', '78047588', '2001-01-24'),
(5, 'Diego', 'Sanchez', 'Cotrina', 'M', '79631581', '2000-10-21'),
(6, 'Alejandra', 'Benavidez', 'Lopez', 'F', '96521581', '1998-05-21'),
(7, 'Lourdes', 'Rodaz', 'Vilchez', 'F', '79871551', '2001-08-17'),
(8, 'Karen Luz', 'Salaz', 'Valdivieso', 'F', '79863581', '2000-08-03'),
(9, 'Carmen Rosa', 'Rodaz', 'Campos', 'F', '73385281', '2002-08-25'),
(10, 'Antonella', 'Sanchez', 'Severino', 'M', '76543188', '2001-04-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `produccion`
--

CREATE TABLE `produccion` (
  `idProduccion` int(11) NOT NULL,
  `idTrabajador` int(11) NOT NULL,
  `fechaProduccion` date DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `descripcion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `produccion`
--

INSERT INTO `produccion` (`idProduccion`, `idTrabajador`, `fechaProduccion`, `cantidad`, `descripcion`) VALUES
(1, 1, '2020-08-19', 20, '20 docenas de panes'),
(2, 1, '2020-08-20', 15, 'Tortas de Chocolate'),
(3, 1, '2020-08-21', 12, 'Pie de Manzana'),
(4, 1, '2020-08-22', 20, 'Queque de Durazno'),
(5, 1, '2020-08-23', 25, 'Queque de Naranja'),
(6, 1, '2020-08-24', 50, 'Caracoles'),
(7, 1, '2020-08-25', 10, 'Budin'),
(8, 1, '2020-08-26', 80, 'Alfajores'),
(9, 1, '2020-08-27', 80, 'Empanadas de Globo'),
(10, 1, '2020-08-28', 70, 'Empanada de Carne'),
(11, 1, '2020-08-29', 100, 'Caramanducas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
  `idTipoProducto` int(11) NOT NULL,
  `idProduccion` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Precio` double NOT NULL,
  `Estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `idTipoProducto`, `idProduccion`, `Nombre`, `Cantidad`, `Precio`, `Estado`) VALUES
(1, 1, 1, 'Pan de Yema', 360, 0.3, ''),
(2, 2, 2, 'Torta de Chocolate', 15, 50, ''),
(3, 4, 3, 'Pie de Manzana', 12, 40, ''),
(4, 3, 4, 'Queque de Durazno', 20, 20, ''),
(5, 3, 5, 'Queque de Naranja', 25, 20, ''),
(6, 4, 6, 'Caracoles', 50, 1, ''),
(7, 4, 7, 'Budin', 10, 1, ''),
(8, 4, 8, 'Alfajores', 80, 0.8, ''),
(9, 1, 9, 'Empanada de Globo', 80, 1.2, ''),
(10, 1, 10, 'Empanada de Carne', 70, 1.8, ''),
(11, 1, 11, 'Caramanducas', 100, 0.3, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idProveedor` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(80) NOT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `RUC` varchar(15) NOT NULL,
  `Email` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idProveedor`, `Nombre`, `Direccion`, `Telefono`, `RUC`, `Email`) VALUES
(1, 'Richard', 'Av.Grau #150', '975369841', '10-73998210-5', 'Richard_Invi@gmail.com'),
(2, 'Grey', 'Av.Union #180', '975002581', '10-70036910-5', 'Grey_Invi@gmail.com'),
(3, 'Lisana', 'Av.Mexico #240', '979985741', '10-70159610-5', 'Lisana_Invi@gmail.com'),
(4, 'Luz Antonella', 'Av.Primavera 412', '954616126', '11111111', 'anto@gmail.com'),
(5, 'Maria Ruby', 'Av.Pinos', '954616126', '22222222', 'ruby@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta`
--

CREATE TABLE `receta` (
  `idReceta` int(11) NOT NULL,
  `idProduccion` int(11) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `receta`
--

INSERT INTO `receta` (`idReceta`, `idProduccion`, `nombre`) VALUES
(1, 1, 'Pan de Yema');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `ID_Telefono` int(11) NOT NULL,
  `ID_Persona` int(11) NOT NULL,
  `Telefono` varchar(30) NOT NULL,
  `Estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`ID_Telefono`, `ID_Persona`, `Telefono`, `Estado`) VALUES
(1, 1, '939163980', 1),
(2, 2, '996300144', 1),
(3, 3, '930058980', 1),
(4, 4, '939369870', 1),
(5, 5, '939111470', 1),
(6, 6, '909357980', 1),
(7, 7, '939640566', 1),
(8, 8, '912457868', 1),
(9, 9, '939632100', 1),
(10, 10, '975698741', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoinsumo`
--

CREATE TABLE `tipoinsumo` (
  `idTipoInsumo` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipoinsumo`
--

INSERT INTO `tipoinsumo` (`idTipoInsumo`, `Nombre`) VALUES
(1, 'Bebidas'),
(2, 'Procesados'),
(3, 'Frutos Secos'),
(4, 'Embutidos'),
(5, 'Derivados_Lactios'),
(6, 'Huevos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoproducto`
--

CREATE TABLE `tipoproducto` (
  `idTipoProducto` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipoproducto`
--

INSERT INTO `tipoproducto` (`idTipoProducto`, `Nombre`) VALUES
(1, 'Horneados'),
(2, 'Tortas'),
(3, 'Queques'),
(4, 'Postre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipotrabajador`
--

CREATE TABLE `tipotrabajador` (
  `idTipoTrabajador` int(11) NOT NULL,
  `Nombre` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipotrabajador`
--

INSERT INTO `tipotrabajador` (`idTipoTrabajador`, `Nombre`) VALUES
(1, 'Panadero'),
(2, 'Repartidor'),
(3, 'Almacenero'),
(4, 'Cajero'),
(5, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `idTrabajador` int(11) NOT NULL,
  `ID_Persona` int(11) NOT NULL,
  `idTipoTrabajador` int(11) NOT NULL,
  `idArea` int(11) NOT NULL,
  `Sueldo` double NOT NULL,
  `Estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`idTrabajador`, `ID_Persona`, `idTipoTrabajador`, `idArea`, `Sueldo`, `Estado`) VALUES
(1, 6, 1, 1, 950, 'A'),
(2, 7, 2, 2, 450, 'A'),
(3, 8, 3, 3, 950, 'A'),
(4, 9, 4, 4, 450, 'A'),
(5, 10, 5, 5, 1200, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL,
  `documento` int(10) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `correo` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `Rol` enum('Empleado','Cliente') CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `estado` enum('Activo','Inactivo') CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `documento`, `nombre`, `correo`, `password`, `Rol`, `estado`) VALUES
(1, 76543188, 'Luis Miguel', 'miguel@gmail.com', '1234', 'Empleado', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idVenta` int(11) NOT NULL,
  `idTrabajador` int(11) NOT NULL,
  `idPedido` int(11) NOT NULL,
  `FechaVenta` date NOT NULL,
  `TotalVenta` double DEFAULT NULL,
  `IGV` double DEFAULT NULL,
  `Descuento` double DEFAULT NULL,
  `Observacion` varchar(150) DEFAULT NULL,
  `Estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idVenta`, `idTrabajador`, `idPedido`, `FechaVenta`, `TotalVenta`, `IGV`, `Descuento`, `Observacion`, `Estado`) VALUES
(1, 1, 1, '2020-07-30', 3.68, 0.64, 0, '', 'P'),
(2, 2, 2, '2020-07-29', 3.68, 0.64, 0, '', 'P'),
(3, 1, 3, '2020-07-30', 3.68, 0.64, 0, '', 'P'),
(4, 2, 4, '2020-07-29', 3.68, 0.64, 0, '', 'P'),
(5, 1, 5, '2020-07-30', 4.2, 0.64, 0, '', 'P'),
(6, 2, 6, '2020-07-29', 5.6, 0.64, 0, '', 'P'),
(7, 1, 7, '2020-07-30', 6.2, 0.64, 0, '', 'P'),
(8, 2, 8, '2020-07-29', 7.2, 0.64, 0, '', 'P'),
(9, 1, 9, '2020-07-30', 5, 0.64, 0, '', 'P'),
(10, 2, 10, '2020-07-29', 5.5, 0.64, 0, '', 'P'),
(11, 1, 11, '2020-07-30', 6.8, 0.64, 0, '', 'P'),
(12, 2, 12, '2020-07-29', 7.2, 0.64, 0, '', 'P'),
(13, 1, 13, '2020-07-30', 7.1, 0.64, 0, '', 'P'),
(14, 2, 14, '2020-07-29', 8.5, 0.64, 0, '', 'P'),
(15, 1, 15, '2020-07-28', 1.2, 0.64, 0, '', 'P'),
(16, 2, 16, '2020-07-28', 7.8, 0.64, 0, '', 'P');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`idAlmacen`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`idArea`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `FK_ClientePersona` (`ID_Persona`);

--
-- Indices de la tabla `correo`
--
ALTER TABLE `correo`
  ADD PRIMARY KEY (`ID_Correo`),
  ADD KEY `FK_CorreoPersona` (`ID_Persona`);

--
-- Indices de la tabla `detallealmacen_insumo`
--
ALTER TABLE `detallealmacen_insumo`
  ADD PRIMARY KEY (`idDetalleAlmacen_Insumo`),
  ADD KEY `FK_AlmacenDetalle` (`idInsumo`),
  ADD KEY `FK_AlmacenDetalle2` (`idAlmacen`);

--
-- Indices de la tabla `detallealmacen_producto`
--
ALTER TABLE `detallealmacen_producto`
  ADD PRIMARY KEY (`idDetalleAlmacen_Producto`),
  ADD KEY `FK_AlmacenDetalle3` (`idAlmacen`),
  ADD KEY `FK_ProductoDetalle` (`idProducto`);

--
-- Indices de la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD PRIMARY KEY (`idDetallePedido`),
  ADD KEY `FK_PedidoDetalle` (`idPedido`),
  ADD KEY `FK_ProductoDetalle1` (`idProducto`);

--
-- Indices de la tabla `detallereceta`
--
ALTER TABLE `detallereceta`
  ADD PRIMARY KEY (`idDetalle_Receta`,`idInsumo`),
  ADD KEY `FK_RecetaInsumos` (`idInsumo`),
  ADD KEY `FK_RecetaDetalle` (`idReceta`);

--
-- Indices de la tabla `detalle_orden_compra`
--
ALTER TABLE `detalle_orden_compra`
  ADD PRIMARY KEY (`idDetalleCompra`,`idInsumo`),
  ADD KEY `FK_DetalleCompra` (`ID_Orden_Compra`),
  ADD KEY `FK_DetalleProveedor` (`idProveedor`),
  ADD KEY `FK_DetalleInsumo` (`idInsumo`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`ID_Direccion`),
  ADD KEY `FK_DireccionPersona` (`ID_Persona`);

--
-- Indices de la tabla `distribucion`
--
ALTER TABLE `distribucion`
  ADD PRIMARY KEY (`idDistribucion`),
  ADD KEY `FK_Distribucion_Pedido` (`idPedido`),
  ADD KEY `FK_Distribucion_Trabajador` (`idTrabajador`);

--
-- Indices de la tabla `insumo`
--
ALTER TABLE `insumo`
  ADD PRIMARY KEY (`idInsumo`),
  ADD KEY `FK_InsumoTipo` (`idTipoInsumo`);

--
-- Indices de la tabla `orden_compra`
--
ALTER TABLE `orden_compra`
  ADD PRIMARY KEY (`ID_Orden_Compra`),
  ADD KEY `FK_CompraTrabajador` (`idTrabajador`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `FK_PedidoCliente` (`idCliente`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ID_Persona`),
  ADD UNIQUE KEY `UQ__Persona__C035B8DDB6AB477F` (`DNI`);

--
-- Indices de la tabla `produccion`
--
ALTER TABLE `produccion`
  ADD PRIMARY KEY (`idProduccion`),
  ADD KEY `FK_TrabajadorProduccion` (`idTrabajador`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `FK_ProduccionProducto` (`idProduccion`),
  ADD KEY `FK_ProductoTipo` (`idTipoProducto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idProveedor`);

--
-- Indices de la tabla `receta`
--
ALTER TABLE `receta`
  ADD PRIMARY KEY (`idReceta`),
  ADD KEY `FK_RecetaProduccion` (`idProduccion`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`ID_Telefono`),
  ADD KEY `FK_TelefonoPersona` (`ID_Persona`);

--
-- Indices de la tabla `tipoinsumo`
--
ALTER TABLE `tipoinsumo`
  ADD PRIMARY KEY (`idTipoInsumo`);

--
-- Indices de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
  ADD PRIMARY KEY (`idTipoProducto`);

--
-- Indices de la tabla `tipotrabajador`
--
ALTER TABLE `tipotrabajador`
  ADD PRIMARY KEY (`idTipoTrabajador`);

--
-- Indices de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD PRIMARY KEY (`idTrabajador`),
  ADD KEY `FK_TrabajadorPersona` (`ID_Persona`),
  ADD KEY `FK_TipoTrabajador` (`idTipoTrabajador`),
  ADD KEY `FK_AreaTrabajador` (`idArea`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idVenta`),
  ADD KEY `FK_TrabajoVentas` (`idTrabajador`),
  ADD KEY `FK_VentaPedido` (`idPedido`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FK_ClientePersona` FOREIGN KEY (`ID_Persona`) REFERENCES `persona` (`ID_Persona`);

--
-- Filtros para la tabla `correo`
--
ALTER TABLE `correo`
  ADD CONSTRAINT `FK_CorreoPersona` FOREIGN KEY (`ID_Persona`) REFERENCES `persona` (`ID_Persona`);

--
-- Filtros para la tabla `detallealmacen_insumo`
--
ALTER TABLE `detallealmacen_insumo`
  ADD CONSTRAINT `FK_AlmacenDetalle` FOREIGN KEY (`idInsumo`) REFERENCES `insumo` (`idInsumo`),
  ADD CONSTRAINT `FK_AlmacenDetalle2` FOREIGN KEY (`idAlmacen`) REFERENCES `almacen` (`idAlmacen`);

--
-- Filtros para la tabla `detallealmacen_producto`
--
ALTER TABLE `detallealmacen_producto`
  ADD CONSTRAINT `FK_AlmacenDetalle3` FOREIGN KEY (`idAlmacen`) REFERENCES `almacen` (`idAlmacen`),
  ADD CONSTRAINT `FK_ProductoDetalle` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`);

--
-- Filtros para la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD CONSTRAINT `FK_PedidoDetalle` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`),
  ADD CONSTRAINT `FK_ProductoDetalle1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`);

--
-- Filtros para la tabla `detallereceta`
--
ALTER TABLE `detallereceta`
  ADD CONSTRAINT `FK_RecetaDetalle` FOREIGN KEY (`idReceta`) REFERENCES `receta` (`idReceta`),
  ADD CONSTRAINT `FK_RecetaInsumos` FOREIGN KEY (`idInsumo`) REFERENCES `insumo` (`idInsumo`);

--
-- Filtros para la tabla `detalle_orden_compra`
--
ALTER TABLE `detalle_orden_compra`
  ADD CONSTRAINT `FK_DetalleCompra` FOREIGN KEY (`ID_Orden_Compra`) REFERENCES `orden_compra` (`ID_Orden_Compra`),
  ADD CONSTRAINT `FK_DetalleInsumo` FOREIGN KEY (`idInsumo`) REFERENCES `insumo` (`idInsumo`),
  ADD CONSTRAINT `FK_DetalleProveedor` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`);

--
-- Filtros para la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD CONSTRAINT `FK_DireccionPersona` FOREIGN KEY (`ID_Persona`) REFERENCES `persona` (`ID_Persona`);

--
-- Filtros para la tabla `distribucion`
--
ALTER TABLE `distribucion`
  ADD CONSTRAINT `FK_Distribucion_Pedido` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`),
  ADD CONSTRAINT `FK_Distribucion_Trabajador` FOREIGN KEY (`idTrabajador`) REFERENCES `trabajador` (`idTrabajador`);

--
-- Filtros para la tabla `insumo`
--
ALTER TABLE `insumo`
  ADD CONSTRAINT `FK_InsumoTipo` FOREIGN KEY (`idTipoInsumo`) REFERENCES `tipoinsumo` (`idTipoInsumo`);

--
-- Filtros para la tabla `orden_compra`
--
ALTER TABLE `orden_compra`
  ADD CONSTRAINT `FK_CompraTrabajador` FOREIGN KEY (`idTrabajador`) REFERENCES `trabajador` (`idTrabajador`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `FK_PedidoCliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Filtros para la tabla `produccion`
--
ALTER TABLE `produccion`
  ADD CONSTRAINT `FK_TrabajadorProduccion` FOREIGN KEY (`idTrabajador`) REFERENCES `trabajador` (`idTrabajador`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `FK_ProduccionProducto` FOREIGN KEY (`idProduccion`) REFERENCES `produccion` (`idProduccion`),
  ADD CONSTRAINT `FK_ProductoTipo` FOREIGN KEY (`idTipoProducto`) REFERENCES `tipoproducto` (`idTipoProducto`);

--
-- Filtros para la tabla `receta`
--
ALTER TABLE `receta`
  ADD CONSTRAINT `FK_RecetaProduccion` FOREIGN KEY (`idProduccion`) REFERENCES `produccion` (`idProduccion`);

--
-- Filtros para la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD CONSTRAINT `FK_TelefonoPersona` FOREIGN KEY (`ID_Persona`) REFERENCES `persona` (`ID_Persona`);

--
-- Filtros para la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD CONSTRAINT `FK_AreaTrabajador` FOREIGN KEY (`idArea`) REFERENCES `area` (`idArea`),
  ADD CONSTRAINT `FK_TipoTrabajador` FOREIGN KEY (`idTipoTrabajador`) REFERENCES `tipotrabajador` (`idTipoTrabajador`),
  ADD CONSTRAINT `FK_TrabajadorPersona` FOREIGN KEY (`ID_Persona`) REFERENCES `persona` (`ID_Persona`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `FK_TrabajoVentas` FOREIGN KEY (`idTrabajador`) REFERENCES `trabajador` (`idTrabajador`),
  ADD CONSTRAINT `FK_VentaPedido` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
