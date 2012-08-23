-- phpMyAdmin SQL Dump
-- version 3.1.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 22, 2011 at 06:56 AM
-- Server version: 5.1.51
-- PHP Version: 5.3.6-pl0-gentoo

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `partdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `parentnode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentnode` (`parentnode`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=206 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parentnode`) VALUES
(8, 'SPG Regler verschieben', 7),
(199, '1 Zubehör', 150),
(200, '3 Spindeltrimmer', 149),
(10, 'Kondensatoren', 9),
(15, 'Folienkondensatoren', 10),
(14, 'Elektrolytkondensatoren', 10),
(16, 'Polystyrol MKS MKY', 15),
(41, '3 Elektromechanische Bauelemente', 0),
(40, '2 Passive Bauelemente ', 0),
(39, '1 Aktive Bauelemente', 0),
(22, 'Aluminium-Elko', 14),
(43, '5 Leitung und Leiter', 0),
(42, '4 Schwingungserzeugende Bauelemente', 0),
(25, 'Kabel', 6),
(26, 'Koaxialkabel', 6),
(27, 'Leiterplatten', 6),
(45, '7 Sensoren', 0),
(44, '6 Aktoren', 0),
(46, '8 Module & Systeme', 0),
(33, 'Energiequellen', 32),
(34, 'Röhren', 32),
(35, 'Halbleiter', 32),
(36, 'Optoelektronische Bauelemente', 32),
(47, '9 Mechanische Elemente', 0),
(48, 'A Verbrauchsmaterial', 0),
(49, '1 Schrumpfschlauch', 48),
(50, '2 Klebetechnik', 48),
(51, '1 Schrauben', 47),
(52, '2 Mutter', 47),
(54, '3 Unterlagscheiben', 47),
(59, '5 Gehäuse', 47),
(58, '6 Kühltechnik', 47),
(60, '4 Abstandshalter', 47),
(61, '1 Schaltnetzteile', 46),
(62, '1 Mikrofon', 45),
(63, '1 Elektromotoren', 44),
(64, '2 Schrittmotoren', 44),
(65, '3 Elektromagnet', 44),
(66, '4 Lautsprecher', 44),
(67, '1 Schwingquarze', 42),
(68, '2 Quarzoszillatoren', 42),
(69, '1 Leitung', 43),
(70, '2 Koaxialkabel', 43),
(71, '3 Flachbandleitung', 43),
(72, '4 Litze', 43),
(73, '5 Drähte', 43),
(74, '6 Leiterplatinen', 43),
(75, '1 Halbleiter', 39),
(76, '5 Röhren', 39),
(77, '1 Nixie-Röhre', 76),
(78, '4 Energiequellen', 39),
(79, '1 Batterie', 78),
(80, '2 Akku', 78),
(81, '3 Solarzelle', 78),
(82, '4 # Peltier-Element ', 78),
(83, '5 Generator', 78),
(84, '3 Optoelektronische Bauelemente', 39),
(85, '1 Laserdiode', 84),
(86, '2 Leuchtdioden', 84),
(87, '3 LCD', 84),
(88, '4 Lichtschranke', 84),
(89, '5 Fotohalbleiter', 84),
(90, '1 Fotodiode', 89),
(91, '2 Fototransistor', 89),
(92, '3 Solid-state-Relais ', 89),
(93, '4 CCD & CMOS-Sensoren ', 89),
(94, '1 Universal', 86),
(95, '2 RGB', 86),
(96, '3 HighPower', 86),
(97, '4 LED Array ', 86),
(98, '5 7-Segment ', 86),
(99, '6 Zubehör', 86),
(100, '1 Dioden', 75),
(101, '2 Transistoren', 75),
(102, '3 Thyristor', 75),
(103, '4 Diac', 75),
(104, '5 Triac', 75),
(105, '6 Piezoelemente', 75),
(106, '1 NPN', 101),
(107, '2 PNP', 101),
(108, '3 Darlington-Transistor ', 101),
(109, '4 Sperrschicht-Feldeffekttransistor (JFET) ', 101),
(110, '5 Metalloxid-Feldeffekttransistor (MOSFET) ', 101),
(111, '6 Leistungs-Metalloxid-Feldeffekttransistor (Power MOSFET) ', 101),
(112, '1 Universaldioden', 100),
(113, '2 Gleichrichter', 100),
(114, '3 Zener-Diode', 100),
(115, '4 Schottky-Diode ', 100),
(116, '5 Kapazitätsdiode', 100),
(117, '1 Widerstand', 40),
(118, '2 Kondensatoren', 40),
(119, '3 Induktive Bauelemente', 40),
(120, '4 Sonstige passive Bauelemente', 40),
(121, '1 elektrische Leuchtmittel ', 120),
(122, '2 Memristor', 120),
(123, '3 Fluxkompensatoren', 120),
(124, '1 unter 88 Meilen / Stunde', 123),
(125, '2 über 88 Meilen / Stunde', 123),
(126, '1 Induktivität', 119),
(127, '2 Spule', 119),
(128, '3 Drossel', 119),
(129, '4 Transformatoren', 119),
(130, '5 Übertrager', 119),
(131, '1 Keramikkondensator', 118),
(132, '2 Kunststoff-Folienkondensator ', 118),
(133, '3 Gold-Cap ', 118),
(134, '4 Styroflexkondensator', 118),
(135, '5 Elektrolytkondensatoren', 118),
(136, '6 Glimmerkondensatoren', 118),
(137, '7 Variable Kondensatoren', 118),
(138, '1 Aluminium-Elektrolytkondensatoren', 135),
(139, '2 Tantal-Elektrolytkondensator ', 135),
(140, '3 Bipolar-Elektrolytkondensator ', 135),
(141, '1 Polyester MKT MKH', 132),
(142, '2 Polycarbonat MKM MKC ', 132),
(143, '3 Zelluloseazetat MKU MKL ', 132),
(144, '4 Polystyrol MKS MKY ', 132),
(145, '5 Polypropylen MKP ', 132),
(146, '1 Festwiderstände', 117),
(147, '2 Nichtlineare Widerstände', 117),
(148, '3 Varistoren', 117),
(149, '4 Variable Widerstände ', 117),
(150, '1 Potentiometer', 149),
(151, '2 Trimwiederstand', 149),
(152, '1 Kaltleiter (PTC) ', 147),
(153, '2 PT100', 147),
(154, '3 Heißleiter (NTC) ', 147),
(155, '1 Kohleschickt', 146),
(156, '2 Metallschicht', 146),
(157, '3 Shunt', 146),
(158, '4 Heizwiderstand', 146),
(159, '5 Fotowiderstand', 146),
(160, '1 Schalter', 41),
(161, '2 Taster', 41),
(162, '3 Verbinder', 41),
(163, '4 Relais', 41),
(164, '5 Schütze', 41),
(165, '6 Leitungs-, Motorschutzschalter ', 41),
(166, '1 Schraubklemmen', 162),
(167, '2 Löttechnik', 162),
(168, '3 Steckverbinder', 162),
(169, '1 Koaxial', 168),
(170, '2 Rund', 168),
(171, '3 Rechteckig ', 168),
(172, '4 Reihenklemmen', 168),
(173, '5 Leiterplattenverbinder', 168),
(174, '6 Steckverbinderzubehör', 168),
(175, '7 Fassungen & Sockel', 168),
(176, '1 IC Sockel', 175),
(177, '2 Integrierte Schaltkreise (ICs) ', 39),
(178, '1 ROM', 177),
(179, '2 RAM', 177),
(180, '3 Mikroprozessoren', 177),
(181, '4 Analog ICs ', 177),
(182, '5 Logikgatter', 177),
(183, '1 TTL', 182),
(184, '2 CMOS', 182),
(185, '6 Operationsverstärker', 177),
(186, '7 Spannungsregler', 177),
(187, '8 Optokoppler', 177),
(188, '9 Digital-Analog-Umsetzer, Analog-Digital-Umsetzer ', 177),
(189, 'A GAL, PAL, FPGA', 177),
(190, '8 Laborstecker', 168),
(191, '7 Brückengleichrichter', 75),
(192, '7 Sicherungen & Zubehör', 41),
(193, '5 Lüfter', 44),
(194, '6 Lampen', 84),
(195, '7 Glasfasertechnik', 84),
(196, '5 Widerstandsnetzwerke', 117),
(197, '1 SMD', 196),
(198, '6 Drahtwiderstand', 146),
(201, '7 Drahtstifte', 47),
(202, '8 Federn', 47),
(203, '9 Dübel', 47),
(204, 'A Sonstiges', 47),
(205, 'To be determined!', 0);

-- --------------------------------------------------------

--
-- Table structure for table `datasheets`
--

CREATE TABLE IF NOT EXISTS `datasheets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) NOT NULL DEFAULT '0',
  `datasheeturl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `datasheets`
--


-- --------------------------------------------------------

--
-- Table structure for table `footprints`
--

CREATE TABLE IF NOT EXISTS `footprints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `footprints`
--

INSERT INTO `footprints` (`id`, `name`) VALUES
(1, 'TO220'),
(2, 'TO220-3'),
(3, 'TO92-3'),
(4, 'RM2,5'),
(5, 'RM5'),
(6, 'RM7,5'),
(7, 'RM10'),
(8, 'ohne'),
(9, 'TO220-7'),
(10, 'TO3-3'),
(11, 'TO3-4'),
(12, 'DIP8'),
(13, 'DIP14'),
(14, 'DIP16'),
(15, 'DIP18'),
(16, 'DIP20'),
(17, 'DIP6'),
(19, 'TO39'),
(20, 'TO18'),
(21, 'TO126'),
(23, 'DIP28'),
(24, 'SOP28'),
(25, 'SOIC20'),
(26, 'P-DSO-20'),
(27, 'SOIC16'),
(28, 'SOIC14'),
(29, 'P-SOJ-20'),
(30, 'SIP8'),
(31, 'SIP9'),
(32, 'SIP4'),
(33, 'SIP10'),
(34, 'SIP6'),
(35, 'SIP11'),
(36, 'SIP7'),
(37, 'DIP10'),
(38, 'TO-251AA '),
(39, 'DIP40'),
(40, 'SIP5'),
(41, 'F-124'),
(42, 'TO225A'),
(43, 'DIP24'),
(44, 'TO-66'),
(45, 'DIP48'),
(46, 'To be determined!');

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE IF NOT EXISTS `parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL DEFAULT '0',
  `name` mediumtext NOT NULL,
  `instock` int(11) NOT NULL DEFAULT '0',
  `mininstock` int(11) NOT NULL DEFAULT '0',
  `comment` mediumtext NOT NULL,
  `id_footprint` int(11) NOT NULL DEFAULT '0',
  `id_storeloc` int(11) NOT NULL DEFAULT '0',
  `id_supplier` int(11) NOT NULL DEFAULT '0',
  `supplierpartnr` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_storeloc` (`id_storeloc`),
  KEY `id_category` (`id_category`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`id`, `id_category`, `name`, `instock`, `mininstock`, `comment`, `id_footprint`, `id_storeloc`, `id_supplier`, `supplierpartnr`) VALUES
(1, 186, 'L7805CV', 83, 0, 'neu, ST Microelectronics', 2, 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE IF NOT EXISTS `pending_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `t` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `pending_orders`
--


-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE IF NOT EXISTS `pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) NOT NULL DEFAULT '0',
  `pict_fname` varchar(255) NOT NULL DEFAULT '',
  `pict_width` int(11) NOT NULL DEFAULT '0',
  `pict_height` int(11) NOT NULL DEFAULT '0',
  `pict_type` enum('P','T') NOT NULL DEFAULT 'P',
  `tn_obsolete` smallint(6) NOT NULL DEFAULT '0',
  `tn_t` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tn_pictid` int(11) NOT NULL DEFAULT '0',
  `pict_masterpict` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pict_type` (`pict_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `pictures`
--


-- --------------------------------------------------------

--
-- Table structure for table `preise`
--

CREATE TABLE IF NOT EXISTS `preise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) NOT NULL DEFAULT '0',
  `ma` smallint(6) NOT NULL DEFAULT '0',
  `preis` decimal(6,2) NOT NULL DEFAULT '0.00',
  `t` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `ma` (`ma`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `preise`
--


-- --------------------------------------------------------

--
-- Table structure for table `storeloc`
--

CREATE TABLE IF NOT EXISTS `storeloc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `storeloc`
--

INSERT INTO `storeloc` (`id`, `name`) VALUES
(1, 'To be determined!');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`) VALUES
(1, 'To be determined!');

