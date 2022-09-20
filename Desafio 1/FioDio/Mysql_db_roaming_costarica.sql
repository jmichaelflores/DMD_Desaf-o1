-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-08-2019 a las 21:28:16
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

use db_roaming_costarica;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_roaming_costarica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `idtipocliente` int(11) NOT NULL,
  `codigo_cliente` varchar(15) NOT NULL,
  `dui` varchar(9) NOT NULL,
  `nit` varchar(14) NOT NULL,
  `apellidos` varchar(250) NOT NULL,
  `nombres` varchar(250) NOT NULL,
  `sexo` char(1) NOT NULL,
  `numero_telefono` varchar(8) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `idtipocliente`, `codigo_cliente`, `dui`, `nit`, `apellidos`, `nombres`, `sexo`, `numero_telefono`, `estado`) VALUES
(1054, 1, 'sv-sm1054', '024082919', '02030510681014', 'SALAZAR DE SERMEÑO', 'MARITZA CAROLINA', 'f', '64478435', 't'),
(1421, 1, 'sv-mn1421', '014482905', '02100107651014', 'MARROQUIN AREVALO', 'NESTOR MARIO', 'm', '77407501', 'f'),
(1664, 4, 'sv-cm1664', '015965532', '02100911630058', 'CABRERA MARTINEZ', 'MARTA ALICIA', 'f', '62805523', 't'),
(2158, 4, 'sv-ra2158', '002873946', '02102501671058', 'RODRIGUEZ DE TOVAR', 'ANA LIZ', 'f', '64405701', 'f'),
(2164, 1, 'sv-mg2164', '018045721', '02102502640021', 'MAYORGA RAMIREZ', 'GABRIEL ANTONIO', 'm', '70705723', 't'),
(3746, 3, 'sv-ac3746', '019271511', '04111206530015', 'ARDON GAVARRETE', 'CARLOS ALBERTO', 'm', '62789958', 'f'),
(5897, 4, 'sv-vs5897', '001415614', '06100911591010', 'VASQUEZ MELARA', 'SALVADOR', 'm', '63335201', 't'),
(5909, 1, 'sv-rr5909', '033652129', '06101509821073', 'RAMIREZ DEODANES', 'ROBERTO', 'm', '75369733', 't'),
(6418, 2, 'sv-lc6418', '014216956', '06140310620031', 'LOPEZ GUZMAN', 'CESAR MAURICIO', 'm', '63055568', 't'),
(8266, 1, 'sv-ma8266', '005598692', '06141903671011', 'MENDEZ BENITEZ', 'ALICIA ORBELINA', 'm', '70705856', 't'),
(9278, 2, 'sv-nm9278', '000900886', '06142712600140', 'NUÑEZ GRANADOS', 'MANUEL VICENTE', 'm', '61317133', 'f'),
(9858, 4, 'sv-pw9858', '001083386', '06172101640020', 'PALACIOS COLOCHO', 'WALTER MAURICIO', 'm', '62272957', 't'),
(13188, 1, 'sv-pa13188', '004669026', '10112802731010', 'PINO MERINO', 'ANGEL VICTOR', 'm', '79232040', 't'),
(15868, 2, 'sv-bj15868', '011671929', '12172106580043', 'BENITEZ PARADA', 'JOSE ATILIO', 'm', '62074477', 't'),
(16424, 4, 'sv-on16424', '029324227', '13072512641016', 'ORELLANA CHICA', 'NATIVIDAD CRISTINO', 'f', '62061046', 't'),
(19455, 2, 'sv-ol19455', '029212250', '01032409661010', 'ORTIZ MEDINA', 'LUIS WALTER', 'm', '62947980', 't'),
(19861, 2, 'sv-pj19861', '027267568', '02101709640072', 'PINEDA MULATO', 'JOSE MAURICIO', 'm', '62321846', 't'),
(20278, 2, 'sv-pr20278', '003748004', '08212202520012', 'PINEDA DIAZ', 'RAUL ALBERTO', 'm', '62787729', 't'),
(20831, 2, 'sv-rm20831', '001962687', '03151801650015', 'RAMIREZ MARTINEZ', 'MAURICIO ERNESTO', 'm', '62610010', 't'),
(22084, 4, 'sv-dy22084', '011308479', '11230804761036', 'DE LA O CHAVEZ', 'YANIRA DEL CARMEN', 'f', '75940982', 't'),
(22100, 2, 'sv-df22100', '023777456', '06141806480052', 'DIAZ RODRIGUEZ', 'FRANCISCO ENRIQUE', 'm', '65236600', 't'),
(23204, 4, 'sv-sh23204', '037696573', '06142707871033', 'SORIANO BONILLA', 'HECTOR ALEJANDRO', 'm', '77953576', 't'),
(23670, 1, 'sv-mh23670', '023137509', '11142601701015', 'MARTINEZ ORTIZ', 'HECTOR ANTONIO', 'm', '66311175', 't'),
(25233, 2, 'sv-mj25233', '024353378', '06141612640130', 'MIRANDA QUINTANILLA', 'JORGE ALBERTO', 'm', '62729067', 'f'),
(25309, 2, 'sv-ge25309', '025756545', '14072012811016', 'GONZALEZ ', 'EDWIN JOVANY', 'm', '74100034', 't'),
(26082, 4, 'sv-nj26082', '004813112', '07032503651011', 'NOLASCO LOPEZ', 'JOSE ANTONIO', 'm', '77109443', 't'),
(27200, 4, 'sv-ae27200', '022220448', '07110810661017', 'AREVALO ', 'ELMER ENRIQUE', 'm', '78533506', 't'),
(30105, 1, 'sv-mj30105', '006305814', '06142202811036', 'MARROQUIN MARROQUIN', 'JAIME RAUL', 'm', '79767136', 't'),
(42266, 1, 'sv-gc42266', '015646170', '05111211811026', 'GHIRINGHELLO ROSALES', 'CARLOS RICARDO', 'f', '72471706', 'f'),
(47519, 2, 'sv-gs47519', '008298762', '10100303620011', 'GUZMAN SAMAYOA', 'SARA LORENA', 'f', '62846340', 't'),
(47595, 2, 'sv-gm47595', '018904967', '05022502510015', 'GUARDADO ', 'MARIO', 'm', '79289424', 't'),
(47598, 2, 'sv-cr47598', '025933113', '06142008540032', 'CRUZ GUZMAN', 'ROSA MARGARITA', 'f', '62437362', 't'),
(47627, 2, 'sv-me47627', '024544296', '06072702650017', 'MARROQUIN AMAYA', 'EVELYN DE LOS ANGELES', 'f', '70704632', 't'),
(47630, 1, 'sv-sr47630', '004240783', '10080502561016', 'SANCHEZ MARTINEZ', 'RAUL', 'm', '74398467', 't'),
(47631, 4, 'sv-cc47631', '022169985', '01122605741012', 'CASTRO AGUILAR', 'CARLOS ADALBERTO', 'm', '65414440', 't'),
(47652, 4, 'sv-le47652', '017998303', '06142103701059', 'LEMUS ESCALANTE', 'ERIC LOMBARDO', 'm', '62849154', 't'),
(47654, 3, 'sv-le47654', '019451365', '06141810711153', 'LOPEZ DE CARDOZA', 'EVELYN ELIZABETH', 'f', '78332389', 't'),
(47655, 3, 'sv-mm47655', '023262697', '06141706681145', 'MELARA CASTILLO', 'MARITZA DEL CARMEN', 'f', '78332541', 't'),
(47657, 3, 'sv-dr47657', '008644581', '03120503650014', 'DIAZ DE CORVERA', 'ROSSANA ELISABETH', 'f', '74575307', 't'),
(47658, 3, 'sv-em47658', '003749849', '06190301791017', 'ERAZO VASQUEZ', 'MARVIN VITELIO', 'm', '77865956', 'f'),
(47659, 4, 'sv-jj47659', '005574868', '02032303831017', 'JIMENEZ PINTIN', 'JOSE RODOLFO', 'm', '62634944', 't'),
(47660, 4, 'sv-gm47660', '011299272', '08051205721013', 'GRANDE CASTELLANOS', 'MANUEL ENRIQUE', 'm', '62845726', 'f'),
(47661, 4, 'sv-ap47661', '034079691', '06090612851027', 'AMAYA ORTEGA', 'PEDRO ALFONSO', 'm', '73910697', 't'),
(47662, 3, 'sv-lj47662', '039759694', '06122408881013', 'LOPEZ URQUILLA', 'JORGE MATEO', 'm', '78326391', 't'),
(47663, 1, 'sv-fr47663', '010757691', '06142405600136', 'FONG HERNANDEZ', 'ROBERTO ENRIQUE', 'm', '62823380', 'f'),
(47664, 3, 'sv-rc47664', '005693719', '06140203831321', 'ROSALES MACHADO', 'CARLOS RODOLFO', 'm', '65666345', 't'),
(47665, 1, 'sv-cj47665', '003719006', '05150802480019', 'CASTILLO MEZQUITA', 'JUAN JUVENCIO', 'm', '78514479', 't'),
(47669, 4, 'sv-ae47669', '004536087', '08113011611018', 'ALVARADO ALVAREZ', 'ESTANISLAO', 'm', '79939305', 't'),
(47670, 3, 'sv-pc47670', '010402432', '07142305731026', 'PALACIOS DE GUARDADO', 'CRUZ MARINA', 'f', '62039568', 't'),
(47671, 3, 'sv-rm47671', '007381512', '06143105701141', 'RIVERA MEDRANO', 'MANUEL ALFREDO', 'm', '71895007', 't'),
(47672, 3, 'sv-al47672', '004928389', '02100203821052', 'ALVAREZ HERNANDEZ', 'LUIS ALONSO', 'm', '76631438', 'f'),
(47673, 1, 'sv-lr47673', '020540517', '06141909811370', 'LARA CACERES', 'RICARDO ERNESTO', 'm', '79857656', 'f'),
(47674, 4, 'sv-ar47674', '027572002', '01080712811010', 'AYALA SARMIENTO', 'REYNALDA EMILIA', 'f', '65291430', 't'),
(47675, 4, 'sv-lj47675', '034541664', '08212801801052', 'LOPEZ ROMERO', 'JORGE ALBERTO', 'm', '71146362', 't'),
(47676, 2, 'sv-rj47676', '008816594', '05120304701017', 'RAMOS PEREZ', 'JACOBO', 'm', '71651054', 'f'),
(47677, 2, 'sv-pg47677', '009276454', '05222004721013', 'POCASANGRE HUEZO', 'GUILLERMO', 'm', '77894991', 't'),
(47678, 4, 'sv-sr47678', '005423740', '02101501500022', 'SILIEZAR SALINAS', 'RICARDO ANTONIO', 'm', '62930678', 't'),
(47679, 2, 'sv-rj47679', '000883872', '14162712781010', 'REYES SALAZAR', 'JUAN DAVID', 'm', '70710453', 'f'),
(47681, 3, 'sv-oj47681', '023747142', '14160802600014', 'ORTEZ HERNANDEZ', 'JORGE ALBERTO', 'm', '66694982', 't'),
(47682, 1, 'sv-om47682', '003565392', '12172412781040', 'OLIVARES RUIZ', 'MARGARITA DE LA PAZ', 'f', '66606154', 't'),
(47683, 2, 'sv-cb47683', '010622294', '11092505831024', 'CRUZ AMAYA', 'BLANCA MARIBEL', 'f', '78866026', 't'),
(47684, 4, 'sv-hm47684', '044322193', '06141203911305', 'HERNANDEZ CANTARELY', 'MILTON SAMUEL', 'm', '75812813', 'f'),
(47685, 3, 'sv-mh47685', '029491286', '05110805851013', 'MARTINEZ ARGUETA', 'HIRBINJ NOE', 'm', '62350594', 't'),
(47686, 3, 'sv-ba47686', '001194832', '06142512590060', 'BENITEZ ARGUETA', 'ANA IRMA', 'f', '62705458', 't'),
(47687, 3, 'sv-mo47687', '021590515', '06141810841120', 'MOREJON LOPEZ', 'OSMIN EDGARDO', 'm', '62923539', 't'),
(47689, 3, 'sv-co47689', '024733007', '10102906650011', 'CARRILLO TURCIOS', 'OSCAR MAURICIO', 'm', '62888115', 't'),
(47690, 3, 'sv-af47690', '012967399', '02100406610027', 'ALARCON SANDOVAL', 'FRANCISCO ANTONIO', 'm', '78700337', 't'),
(47691, 1, 'sv-ud47691', '008095449', '14030711551011', 'UMANZOR DE RIVERA', 'DOLORES SUYAPA', 'f', '62257198', 't'),
(47692, 3, 'sv-cf47692', '016033299', '06141610450026', 'CASTILLO GRIJALVA', 'FABIO ANTONIO', 'm', '62226303', 't'),
(47693, 1, 'sv-mm47693', '003104594', '07022402530010', 'MEJIA ', 'MANUEL ANTONIO', 'm', '62357596', 'f'),
(47695, 1, 'sv-qa47695', '006196100', '06142903580100', 'QUINTANILLA DE ZULETA', 'ANA DORA ALICIA', 'f', '62716439', 't'),
(47697, 4, 'sv-dm47697', '007291791', '06091504570018', 'DURAN RODRIGUEZ', 'MANUEL HERIBERTO', 'm', '78804336', 'f'),
(47700, 3, 'sv-mf47700', '008891316', '06140912580163', 'MIXCO LOPEZ', 'FRANCISCO REMBERTO', 'm', '62763473', 'f'),
(47704, 3, 'sv-ff47704', '010547135', '05110702821019', 'FLORES SARMIENTO', 'FRANCISCO STEVE', 'm', '79211113', 't'),
(47705, 3, 'sv-ns47705', '001153995', '06040906681017', 'NAVARRETE LEONOR', 'SIMEON', 'm', '61242645', 't'),
(47710, 2, 'sv-ch47710', '016954788', '13242208681012', 'CHACON ARGUETA', 'HECTOR MANUEL', 'm', '77781096', 't'),
(47711, 2, 'sv-ms47711', '043265819', '11230112901016', 'MEDRANO RODRIGUEZ', 'SAMUEL GERARDO', 'm', '78692068', 't'),
(47712, 2, 'sv-he47712', '017719377', '06140209801181', 'HERNANDEZ DURAN', 'ERICK STEFFAN', 'm', '76955228', 't'),
(47714, 4, 'sv-me47714', '004495689', '10091002791017', 'MEJIA MOLINA', 'ERIC ALEXANDER', 'm', '70831594', 't'),
(47715, 3, 'sv-hg47715', '038162064', '06142410871140', 'HERNANDEZ MEMBREÑO', 'GUSTAVO RAFAEL', 'm', '71048822', 't');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion`
--

CREATE TABLE `facturacion` (
  `idfacturacion` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `monto_facturacion` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `facturacion`
--

INSERT INTO `facturacion` (`idfacturacion`, `idcliente`, `monto_facturacion`) VALUES
(1, 1421, '156.00'),
(2, 2164, '190.60'),
(3, 30105, '180.10'),
(4, 5909, '21.80'),
(5, 47673, '61.70'),
(6, 47630, '142.60'),
(7, 13188, '78.40'),
(8, 47665, '35.80'),
(9, 42266, '157.10'),
(10, 8266, '148.90'),
(11, 47677, '136.40'),
(12, 47627, '197.90'),
(13, 47676, '92.20'),
(14, 47683, '167.70'),
(15, 47679, '146.20'),
(16, 47710, '41.30'),
(17, 47711, '109.70'),
(18, 47712, '182.30'),
(19, 25309, '81.90'),
(20, 47595, '159.40'),
(21, 47657, '141.90'),
(22, 47655, '107.30'),
(23, 47654, '91.70'),
(24, 47658, '46.70'),
(25, 47671, '151.40'),
(26, 47715, '181.50'),
(27, 47690, '32.40'),
(28, 47662, '102.90'),
(29, 47672, '150.90'),
(30, 47704, '35.40'),
(31, 22084, '45.30'),
(32, 47675, '59.20'),
(33, 47714, '30.70'),
(34, 47697, '176.20'),
(35, 47669, '44.10'),
(36, 47661, '154.00'),
(37, 26082, '109.90'),
(38, 47684, '96.20'),
(39, 23204, '102.60'),
(40, 27200, '180.20'),
(41, 22100, '55.20'),
(42, 19455, '125.90'),
(43, 20278, '151.40'),
(44, 25233, '107.20'),
(45, 19861, '184.90'),
(46, 47519, '192.10'),
(47, 15868, '154.30'),
(48, 47598, '181.70'),
(49, 20831, '124.60'),
(50, 6418, '43.30'),
(51, 9278, '17.60'),
(52, 9858, '82.30'),
(53, 47674, '169.80'),
(54, 1664, '101.40'),
(55, 47631, '42.80'),
(56, 16424, '60.90'),
(57, 2158, '185.10'),
(58, 5897, '167.20'),
(59, 47659, '26.00'),
(60, 47652, '16.40'),
(61, 47660, '93.10'),
(62, 47678, '30.60'),
(63, 47685, '19.60'),
(64, 47687, '42.20'),
(65, 47705, '99.50'),
(66, 47686, '195.40'),
(67, 3746, '20.00'),
(68, 47670, '97.30'),
(69, 47692, '111.10'),
(70, 47664, '183.80'),
(71, 47689, '63.90'),
(72, 47700, '77.60'),
(73, 47681, '55.40'),
(74, 47691, '184.40'),
(75, 1054, '566.80'),
(76, 47682, '430.00'),
(77, 47663, '280.90'),
(78, 47695, '67.10'),
(79, 23670, '120.90'),
(80, 47693, '44.90');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_clientes`
--

CREATE TABLE `tipo_clientes` (
  `idtipocliente` int(11) NOT NULL,
  `nombre_tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_clientes`
--

INSERT INTO `tipo_clientes` (`idtipocliente`, `nombre_tipo`) VALUES
(1, 'CLIENTE PREFERENCIAL'),
(2, 'CLIENTE EJECUTIVO'),
(3, 'CLIENTE TURISTA'),
(4, 'CLIENTE GUBERNAMENTAL');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`),
  ADD KEY `fk_cliente_reference_tipocliente` (`idtipocliente`);

--
-- Indices de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  ADD PRIMARY KEY (`idfacturacion`),
  ADD KEY `fk_facturacion_reference_clientes` (`idcliente`);

--
-- Indices de la tabla `tipo_clientes`
--
ALTER TABLE `tipo_clientes`
  ADD PRIMARY KEY (`idtipocliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  MODIFY `idfacturacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_cliente_reference_tipocliente` FOREIGN KEY (`idtipocliente`) REFERENCES `tipo_clientes` (`idtipocliente`);

--
-- Filtros para la tabla `facturacion`
--
ALTER TABLE `facturacion`
  ADD CONSTRAINT `fk_facturacion_reference_clientes` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
