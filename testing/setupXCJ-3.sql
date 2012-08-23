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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=210 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parentnode`) VALUES
(41,'3 Electromechanical Components',0),
(40,'2 Passive Components',0),
(39,'1 Active Components',0),
(43,'5 Wire and PCB',0),
(42,'4 Vibrating devices',0),
(45,'7 Sensors',0),
(44,'6 Actuators',0),
(46,'8 Module & Systems',0),
(47,'9 Mechanical',0),
(48,'A Supplies',0),
(205,'To be determined',0),
(25,'Cable',6),
(26,'Coaxial cable',6),
(27,'Boards',6),
(8,'SPG shift knob',7),
(10,'Capacitors',9),
(15,'Film Capacitors',10),
(14,'Electrolytic Capacitors',10),
(22,'Aluminum electrolytic',14),
(16,'MKS polystyrene MKY',15),
(33,'Energy sources',32),
(34,'Tubes',32),
(35,'Semiconductors',32),
(36,'Optoelectronic Devices',32),
(75,'1 Semiconductor',39),
(76,'5 Tubes',39),
(78,'4 Energy sources',39),
(84,'3 Optoelectronic devices',39),
(117,'1 Resistors',40),
(118,'2 Capacitors',40),
(119,'3 Inductors',40),
(120,'4 Other Passive devices',40),
(160,'1 Switch',41),
(161,'2 Button',41),
(162,'3 Connector',41),
(163,'4 Relay',41),
(164,'5 Schütze = German for??',41),
(192,'7 Fuses & Accessories',41),
(67,'1 Quartz Crystals',42),
(68,'2 Quartz Oscillators',42),
(69,'1 Line',43),
(70,'2 Coaxial',43),
(71,'3 Ribbon',43),
(72,'4 Stranded wire',43),
(73,'5 Wire (solid?)',43),
(74,'6 PCB',43),
(63,'1 Electric Motors',44),
(64,'2 Stepper Motors',44),
(65,'3 Solenoids',44),
(66,'4 Speakers',44),
(193,'5 Fans',44),
(62,'1 Microphones',45),
(61,'1 Switching Power Supplies',46),
(51,'1 Screws',47),
(52,'2 Nuts',47),
(54,'3 Washers',47),
(59,'5 Enclosures',47),
(58,'6 Cooling technology',47),
(60,'4 Spacers',47),
(201,'7 Nails',47),
(202,'8 Springs',47),
(203,'9 Anchors',47),
(204,'A General',47),
(49,'1 Shrink tubing',48),
(50,'2 Bonding technology',48),
(100,'1 Diodes',75),
(101,'2 Transistors',75),
(102,'3 Thyristors',75),
(103,'4 Diacs',75),
(104,'5 Triacs',75),
(105,'6 Piezo',75),
(191,'7 Bridge Rectifier',75),
(77,'1 Nixie Tubes',76),
(79,'1 Batteries',78),
(80,'2 Rechargeable batteries',78),
(81,'3 Solar cells',78),
(82,'4 # Peltier-Element ',78),
(83,'5 Generator',78),
(85,'1 Laser diodes',84),
(86,'2 LEDs',84),
(87,'3 LCDs',84),
(88,'4 Photocells',84),
(89,'5 Photo Semiconductors',84),
(194,'6 Lamps',84),
(195,'7 Fibre Optics',84),
(94,'1 Universal',86),
(95,'2 RGB',86),
(96,'3 High Power',86),
(97,'4 LED Array ',86),
(98,'5 7-Segment ',86),
(99,'6 Accessories ',86),
(90,'1 Photo diodes',89),
(91,'2 Photo transistors',89),
(92,'3 Solid-state-Relays',89),
(93,'4 CCD & CMOS-Sensors',89),
(112,'1 Universal diodes',100),
(113,'2 Rectifiers',100),
(114,'3 Zener Diodes',100),
(115,'4 Schottky Diodes',100),
(116,'5 Capacitance diodes',100),
(106,'1 NPN',101),
(107,'2 PNP',101),
(108,'3 Darlington-Transistor ',101),
(146,'1 Fixed Resistors',117),
(147,'2 Non-linear Resistors',117),
(148,'3 Varistors',117),
(149,'4 Variable resistors',117),
(196,'5 Resistor networks',117),
(131,'1 Ceramic Capacitor',118),
(132,'2 Plastic Film Capacitor',118),
(133,'3 Gold-Cap ',118),
(134,'4 Styroflex capacitors',118),
(135,'5 Electrolytic capacitors',118),
(136,'6 Mica capacitors',118),
(137,'7 Variable Capacitors',118),
(126,'1 Inductors',119),
(127,'2 Coils',119),
(128,'3 Drossel = Throttle????',119),
(129,'4 Transformers??',119),
(130,'5 Transformers??',119),
(121,'1 Bulbs',120),
(122,'2 Memristor',120),
(123,'3 Flux compensator???',120),
(124,'1 unter 88 Meilen / Stunde??',123),
(125,'2 über 88 Meilen / Stunde??',123),
(141,'1 Polyester MKT MKH',132),
(142,'2 Polycarbonat MKM MKC ',132),
(143,'3 Cellulose acetate MKU MKL ',132),
(144,'4 Polystyrene MKS MKY ',132),
(145,'5 Polyproplene MKP ',132),
(138,'1 Aluminium-Electrolytic',135),
(139,'2 Tantalum Electrolytic',135),
(140,'3 Bipolar Electrolytic',135),
(155,'1 Carbon Film',146),
(156,'2 Metall film',146),
(157,'3 Shunt',146),
(158,'4 Heating elements',146),
(159,'5 Photo resistors',146),
(198,'6 Wire resistors',146),
(153,'2 PT100',147),
(200,'3 Trimmer',149),
(150,'1 Potentiometer',149),
(151,'2 Trimwiederstand=Trimmer?',149),
(199,'1 Accessories',150),
(166,'1 Screws',162),
(167,'2 Soldering',162),
(168,'3 Connectors',162),
(169,'1 Coaxial',168),
(170,'2 Round',168),
(171,'3 Rectangular',168),
(172,'4 Terminals',168),
(173,'5 PCB Connectors',168),
(174,'6 Connector Accessories',168),
(175,'7 Plugs & Sockets',168),
(190,'8 Banna plugs??',168),
(176,'1 IC Sockel',175),
(178,'1 ROM',177),
(179,'2 RAM',177),
(180,'3 Microprocessor',177),
(181,'4 Analog ICs ',177),
(182,'5 Logic gates',177),
(185,'6 Operational amplifiers',177),
(186,'7 Voltage Regulator',177),
(187,'8 Optocoupler',177),
(183,'1 TTL',182),
(184,'2 CMOS',182),
(197,'1 SMD',196),
(188,'9 Digital to Analog convertors',177),
(165,'6 Leitungs- Motorschutzschalter ',41),
(189,'A GAL PAL FPGA',177),
(177,'2 Integrated Circuits ICs',39),
(109,'4 JFET',101),
(110,'5 Metal Oxide FET MOSFET',101),
(154,'3 Thermistor NTC' ,147),
(111,'6 Power MOSFET',101),
(152,'1 Thermistor PTC' ,147),
(206,'Member items: Loan' ,0),
(207,'Member items: Swap' ,0),
(208,'Member items: Wanted' ,0),
(209,'Member items: For sale' ,0);
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
(46, 'To be determined');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=174 ;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`id`, `id_category`, `name`, `instock`, `mininstock`, `comment`, `id_footprint`, `id_storeloc`, `id_supplier`, `supplierpartnr`) VALUES
(1,205,'CPLD Xilinx xc9636 on PCB and headers suitable for breadboards',5,0,'',46,133,4,''),
(2,205,'USB programmer',1,0,'',46,133,4,''),
(3,205,'Ultrasonic sensors HC-SR04',9,0,'',46,133,4,''),
(4,205,'RC toy car',1,0,'http://item.taobao.com/item.htm?id=7905841099',46,133,4,''),
(5,205,'“Blue-pack” rechargeable battery pack (same as included with hobby cars) 400mAh, 6.0V, rechargeable',6,0,'http://item.taobao.com/item.htm?id=5257085554',46,133,4,''),
(6,205,'connectors for batteries (type compatible with battery pack)',8,0,'',46,133,4,''),
(7,205,'Inexpensive infrared e18-d80nk, 3-80cm',8,0,'',46,133,4,''),
(8,205,'Precise infrared distance ranging sensor Sharp IR GP2Y0A02',4,0,'',46,133,4,''),
(9,205,'Precise infrared distance ranging sensor Sharp IR sensor GP2Y0A02YK0F (20-150cm)',4,0,'',46,133,4,''),
(10,205,'Ultrasonic distance ranging sensor HC-SR04',1,0,'',46,133,4,''),
(11,205,'Arduino Duemilanove',3,0,'',46,133,4,''),
(12,205,'L298 Motor Shield',1,0,'http://item.taobao.com/item.htm?id=8350736618',46,133,4,''),
(13,205,'RF communication solution (for telemetry: low-bandwidth, medium-range or short-range with repeaters, low-power, inexpensive)',1,0,'http://www.nordicsemi.com/index.cfm?obj=product&act=display&pro=103',46,133,4,''),
(14,205,'USB PC dongle',1,0,'http://www.nordicsemi.com/index.cfm?obj=product&act=display&pro=102 http://item.taobao.com/item.htm?id=8869725924',46,133,4,''),
(15,205,'Bumper switch/whiskers',1,0,'http://www.lynxmotion.com/p-60-bumper-switch-assembly-kit.aspx http://www.impactlab.net/2006/10/08/designing-robots-with-whiskers/',46,133,4,''),
(16,131,'8pF',1,0,'',46,44,4,''),
(17,131,'15pF',1,0,'',46,44,4,''),
(18,131,'10pF',1,0,'',46,44,4,''),
(19,131,'33pF',1,0,'',46,44,4,''),
(20,131,'47pF',1,0,'',46,44,4,''),
(21,131,'68pF',1,0,'',46,44,4,''),
(22,131,'100pF',1,0,'',46,44,4,''),
(23,131,'470pF',1,0,'',46,44,4,''),
(24,131,302,1,0,'',46,44,4,''),
(25,131,'33nF',1,0,'',46,44,4,''),
(26,131,104,1,0,'',46,44,4,''),
(27,131,103,1,0,'',46,44,4,''),
(28,205,'47uF electrolytic',1,0,'',46,44,4,''),
(29,205,'100uF electrolytic',1,0,'',46,44,4,''),
(30,156,100,1,0,'',46,53,4,''),
(31,156,150,1,0,'',46,53,4,''),
(32,156,300,1,0,'',46,53,4,''),
(33,156,330,1,0,'',46,53,4,''),
(34,156,560,1,0,'',46,53,4,''),
(35,156,'1K',1,0,'',46,53,4,''),
(36,156,'1.5K',1,0,'',46,53,4,''),
(37,156,'2.2K',1,0,'',46,53,4,''),
(38,156,'35K',1,0,'',46,53,4,''),
(39,156,'120K',1,0,'',46,53,4,''),
(40,156,'6.8K',1,0,'',46,53,4,''),
(41,156,'2.2M',1,0,'',46,53,4,''),
(42,205,'2.7uH',1,0,'',46,133,4,''),
(43,205,'4.7uH',1,0,'',46,133,4,''),
(44,205,'10uH,',1,0,'',46,133,4,''),
(45,205,'Zener diode: 2.7V',1,0,'',46,133,4,''),
(46,205,'Zener diode: 3V',1,0,'',46,133,4,''),
(47,205,'Zener diode: 5V',1,0,'',46,133,4,''),
(48,205,'Diode: 1N4148',1,0,'',46,133,4,''),
(49,205,'Transistor 2N222A',1,0,'',46,133,4,''),
(50,205,'Transistor 2N3904 (NPN)',1,0,'',46,133,4,''),
(51,205,'Transistor 2N3906 (PNP)',1,0,'',46,133,4,''),
(52,205,'Transistor C1815',1,0,'',46,133,4,''),
(53,205,'Transistor 8550',1,0,'',46,133,4,''),
(54,205,'Transistor 8050',1,0,'',46,133,4,''),
(55,205,'Transistor A1015',1,0,'',46,133,4,''),
(56,205,'555 timers',1,0,'',46,133,4,''),
(57,205,'Electret Condenser Microphone',1,0,'',46,133,4,''),
(58,205,'NAND2 x4 74HC00 DIP',50,0,'http://au.alibaba.com/product/239198934-Condenser-Microphone-AMFO97A44NBAB.html',46,133,4,''),
(59,205,'NOR2 x4 74HC02 DIP',50,0,'',46,133,4,''),
(60,205,'INV x6 74HC04 DIP',50,0,'',46,133,4,''),
(61,205,'AND2 x4 74HC08 DIP',50,0,'',46,133,4,''),
(62,205,'ST x6 74HC14 DIP',50,0,'',46,133,4,''),
(63,205,'OR2 x4 74HC32 DIP',50,0,'',46,133,4,''),
(64,205,'XOR x4 74HC86 DIP',25,0,'',46,133,4,''),
(65,205,'3-8 dec 74HC138 DIP',25,0,'',46,133,4,''),
(66,205,'MUX4 74HC153 DIP',50,0,'',46,133,4,''),
(67,205,'4-16 Dec 74HC154 DIPThin',25,0,'',46,133,4,''),
(68,205,'Shift Reg 74HC165 DIP',25,0,'',46,133,4,''),
(69,205,'DFF 74HC174 DIP',25,0,'',46,133,4,''),
(70,205,'bin counter 74HC193 DIP',25,0,'',46,133,4,''),
(71,205,'BCD 7Seg 74LS247 DIP',25,0,'',46,133,4,''),
(72,205,'5V Regulator 7805 TO220',50,0,'',46,133,4,''),
(73,205,'7seg LED Common Anode 0.5英寸 1位数 共阳红色LED数码管 0.5寸',25,0,'',46,133,4,''),
(74,205,'8bar LED 10线 LED 光柱显示 DIP',25,0,'',46,133,4,''),
(75,205,'1u 50v 电解电容',50,0,'',46,44,4,''),
(76,205,'10u 25v 电解电容',50,0,'',46,44,4,''),
(77,205,'100u 16v 电解电容',50,0,'',46,44,4,''),
(78,205,'200R 电阻 1/4W',1000,0,'',46,53,4,''),
(79,205,'1k 电阻 1/4W',1000,0,'',46,53,4,''),
(80,205,'10k 电阻 1/4W',1000,0,'',46,53,4,''),
(81,205,'100k 电阻 1/4W',1000,0,'',46,53,4,''),
(82,205,'100k pot 电位器 精密多圈可调',50,0,'',46,53,4,''),
(83,205,'Variety of headers that fit on breaboard (2.54mm spacing)',1,0,'',46,133,4,''),
(84,205,'Contact strips',1,0,'',46,133,4,''),
(85,205,'Plastic offsets and motherboard mounting',1,0,'',46,133,4,''),
(86,205,'Screws with nuts',1,0,'',46,133,4,''),
(87,205,'Velcro strips',1,0,'',46,133,4,''),
(88,205,'Tie-wraps',1,0,'',46,133,4,''),
(89,205,'Servos! Big ones, small ones, silent (plastic gear and higher quality motors)',1,0,'',46,133,4,''),
(90,205,'Rotary solenoid',1,0,'http://www.ledex.com/rotary-solenoid/rotary-solenoid-comparison.html',46,133,4,''),
(91,205,'More of the wires in the starter kit, organized by length+color',1,0,'',46,133,4,''),
(92,205,'Alligator clips (particularly small ones)',1,0,'',46,133,4,''),
(93,205,'Hall effect sensors',1,0,'',46,133,4,''),
(94,205,'Accelerometers',1,0,'',46,133,4,''),
(95,205,'Gyroscopes',1,0,'',46,133,4,''),
(96,205,'Compass',1,0,'',46,133,4,''),
(97,205,'aluminium',1,0,'',46,133,4,''),
(98,205,'wood',1,0,'',46,133,4,''),
(99,205,'Workbench light',1,0,'',46,133,4,''),
(100,205,'Workbench helper hand',1,0,'',46,133,4,''),
(101,205,'Caliper (Precision measurement instrument)',1,0,'',46,133,4,''),
(102,205,'Scissors',1,0,'',46,133,4,''),
(103,205,'Label generator',1,0,'',46,133,4,''),
(104,205,'Sharpie fine point permanent markers',1,0,'',46,133,4,''),
(105,205,'fire extinguisher',1,0,'',46,133,4,''),
(106,205,'particulate masks',1,0,'',46,133,4,''),
(107,205,'safety glasses',1,0,'',46,133,4,''),
(108,205,'gloves',1,0,'',46,133,4,''),
(109,205,'Function Generator',1,0,'',46,133,4,''),
(110,205,'Oscilloscope',1,0,'',46,133,4,''),
(111,205,'Power Supplies',1,0,'',46,133,4,''),
(112,205,'Soldering stations and irons',1,0,'',46,133,4,''),
(113,205,'SMD Rework Station',1,0,'',46,133,4,''),
(114,205,'Drill Press',1,0,'',46,133,4,''),
(115,205,'Dremel',1,0,'',46,133,4,''),
(116,205,'Jigsaw',1,0,'',46,133,4,''),
(117,205,'Arduino UNO Starter Kit',1,0,'',46,133,4,''),
(118,205,'DIY Motors/Sensors Shield for Arduino',1,0,'',46,133,4,''),
(119,205,'InsectBot DIY Kit',1,0,'',46,133,4,''),
(120,205,'DIY Kits from Mitch Altman',1,0,'',46,133,4,''),
(121,205,'Soldering irons',1,0,'',46,133,4,''),
(122,205,'SMD Rework Station',1,0,'',46,133,4,''),
(123,205,'Multimeters',1,0,'',46,133,4,''),
(124,205,'Tweezers',1,0,'',46,133,4,''),
(125,205,'Drill Press',1,0,'',46,133,4,''),
(126,205,'Dremel',1,0,'',46,133,4,''),
(127,205,'Jigsaw',1,0,'',46,133,4,''),
(128,205,'Mini-Mill',1,0,'',46,133,4,''),
(129,205,'Drill',1,0,'',46,133,4,''),
(130,205,'Lathe',1,0,'',46,133,4,''),
(131,205,'Hot glue gun',1,0,'',46,133,4,''),
(132,205,'Arduino Duemilanove',1,0,'',46,133,4,''),
(133,205,'Arduino Uno',1,0,'',46,133,4,''),
(134,205,'PandaBoard: Dual-core ARM Cortex-A9 computer',1,0,'',46,133,4,''),
(135,205,'Nanode Ethernet-enabled Arduino',1,0,'',46,133,4,''),
(136,205,'5VT 1610 development boards',1,0,'',46,133,4,''),
(137,205,'Nexys3 Xilinx FPGA development board',1,0,'',46,133,4,''),
(138,205,'Element14 & Freescale XL Star Development Board',1,0,'',46,133,4,''),
(139,205,'Mendel RepRap (3d printer)',1,0,'',46,133,4,''),
(140,205,'Makerbot (3D-printer)',1,0,'',46,133,4,''),
(141,205,'Tepra King Jim SR230C Label printer',1,0,'',46,133,4,''),
(142,205,'microservo 9g SG90 TowerPro',1,0,'http://www.dfrobot.com/index.php?route=product/product&path=47_108&product_id=255',46,134,4,''),
(143,206,'Bus Pirate v3',1,0,'http://dangerousprototypes.com/docs/Bus_Pirate',46,134,4,''),
(144,206,'Bus Pirate PIC programming adapter [for developers]',1,0,'http://dangerousprototypes.com/docs/Bus_Pirate_PIC_programming_adapter',46,134,4,''),
(145,206,'Open Workbench Logic Sniffer',1,0,'http://dangerousprototypes.com/docs/Open_Bench_Logic_Sniffer',46,134,4,''),
(146,206,'Bus Blaster v2 JTAG debugger',1,0,'http://dangerousprototypes.com/docs/Bus_Blaster',46,134,4,''),
(147,206,'IR Toy',1,0,'http://dangerousprototypes.com/docs/USB_Infrared_Toy',46,134,4,''),
(148,206,'XC9572XL CPLD development board v1',2,0,'http://dangerousprototypes.com/docs/CPLD:_Complex_programmable_logic_devices',46,134,4,''),
(149,206,'315Mhz remote relay switch kits - 4 channels',1,0,'http://www.seeedstudio.com/depot/315mhz-remote-relay-switch-kits-2-channels-p-150.html?cPath=139',46,134,4,''),
(150,206,'USB Universal LCD backpack v1 IP Power',1,0,'http://dangerousprototypes.com/docs/USB_Universal_LCD_backpack',46,134,4,''),
(151,206,'Lipo Rider',1,0,'http://www.seeedstudio.com/depot/lipo-rider-p-710.html?cPath=155',46,134,4,''),
(152,206,'SD card shield for Arduino V2.1',1,0,'http://www.seeedstudio.com/depot/sd-card-shield-p-492.html?cPath=132_134',46,134,4,''),
(153,206,'LED 8',1,0,'http://www.soc-robotics.com/pdfs/LED8%20Technical%20Reference%20Manual.pdf',46,134,4,''),
(154,206,'Seeed - jyetech Capacitor testor',1,0,'http://www.jyetech.com/Products/CapMeter/e060.php',46,134,4,''),
(155,206,'2.54mm x 21mm male headers (very tall!)',100,0,'',46,134,4,''),
(156,206,'USnooBie',1,0,'http://www.frank-zhao.com/usnoobie/index.php',46,134,4,''),
(157,206,'IFC',1,0,'http://geoffg.net/fancontroller.html',46,134,4,''),
(158,206,'ECG',1,0,'http://www.siliconchip.com.au/cms/A_103787/article.html',46,134,4,''),
(159,206,'Timer',1,0,'http://www.siliconchip.com.au/cms/A_105013/article.html',46,134,4,''),
(160,206,'IR remote vol ctl',1,0,'http://www.siliconchip.com.au/cms/A_30559/article.html',46,68,4,''),
(161,207,'SARduino328',1,0,'http://spaceagerobotics.com/blog/projects/sarduino/',46,134,4,''),
(162,207,'SARduino644',1,0,'http://spaceagerobotics.com/blog/projects/sarduino/',46,134,4,''),
(163,207,'IRToy PTH',1,0,'http://dangerousprototypes.com/docs/Infrared_Toy_through-hole_version',46,134,4,''),
(164,207,'FFC breakout 30 pin',1,0,'http://www.seeedstudio.com/depot/ffc-breakout-board-p-267.html?cPath=190',46,134,4,''),
(165,207,'FPC LCD breakout 0.5mm 60 pin',1,0,'http://www.seeedstudio.com/depot/lcd-ext-breakout-of-05mm-fpc-p-200.html?cPath=175_177',46,134,4,''),
(166,207,'xQFP breakout 0.8mm',1,0,'http://dangerousprototypes.com/docs/Dangerous_Proto_boards',46,134,4,''),
(167,207,'xQFP breakout 0.65mm',1,0,'http://dangerousprototypes.com/docs/Dangerous_Proto_boards',46,134,4,''),
(168,207,'xQFP breakout 0.5mm',1,0,'http://dangerousprototypes.com/docs/Dangerous_Proto_boards',46,134,4,''),
(169,208,'Atmel dragon & dragon rider',1,0,'',46,134,4,''),
(170,208,'molex floppy power cable',1,0,'',46,134,4,''),
(171,208,'motherboard with onboard video, with RAM & CPU, dont need case or power supply, 2 SATA ports, 1 PATA IDE port for CD/DVD',1,0,'',46,134,4,''),
(172,208,'SD cards or USB sticks - for Linux boot & psw mgt!',1,0,'',46,134,4,''),
(173,208,'ide or sata hard disks, esp laptop 1.8'' laptop',1,0,'',46,134,1,'');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=135 ;

--
-- Dumping data for table `storeloc`
--

INSERT INTO `storeloc` (`id`, `name`) VALUES
(1, 'Locker1-r1c1'),
(2, 'Locker1-r1c2'),
(3, 'Locker1-r1c3'),
(4, 'Locker1-r2c1'),
(5, 'Locker1-r2c2'),
(6, 'Locker1-r2c3'),
(7, 'Locker1-r3c1'),
(8, 'Locker1-r3c2'),
(9, 'Locker1-r3c3'),
(10, 'Locker2-r1c1'),
(11, 'Locker2-r1c2'),
(12, 'Locker2-r1c3'),
(13, 'Locker2-r2c1'),
(14, 'Locker2-r2c2'),
(15, 'Locker2-r2c3'),
(16, 'Locker2-r3c1'),
(17, 'Locker2-r3c2'),
(18, 'Locker2-r3c3'),
(19, 'LockersEntrance-r1c1'),
(20, 'LockersEntrance-r1c2'),
(21, 'LockersEntrance-r1c3'),
(22, 'LockersEntrance-r1c4'),
(23, 'LockersEntrance-r1c5'),
(24, 'LockersEntrance-r2c1'),
(25, 'LockersEntrance-r2c2'),
(26, 'LockersEntrance-r2c3'),
(27, 'LockersEntrance-r2c4'),
(28, 'LockersEntrance-r2c5'),
(29, 'LockersEntrance-r3c1'),
(30, 'LockersEntrance-r3c2'),
(31, 'LockersEntrance-r3c3'),
(32, 'LockersEntrance-r3c4'),
(33, 'LockersEntrance-r3c5'),
(34, 'LockersEntrance-r4c1'),
(35, 'LockersEntrance-r4c2'),
(36, 'LockersEntrance-r4c3'),
(37, 'LockersEntrance-r4c4'),
(38, 'LockersEntrance-r4c5'),
(39, 'LockersEntrance-r5c1'),
(40, 'LockersEntrance-r5c2'),
(41, 'LockersEntrance-r5c3'),
(42, 'LockersEntrance-r5c4'),
(43, 'LockersEntrance-r5c5'),
(44, 'Capacitor1-r1c1'),
(45, 'Capacitor1-r1c2'),
(46, 'Capacitor1-r1c3'),
(47, 'Capacitor1-r2c1'),
(48, 'Capacitor1-r2c2'),
(49, 'Capacitor1-r2c3'),
(50, 'Capacitor1-r3c1'),
(51, 'Capacitor1-r3c2'),
(52, 'Capacitor1-r3c3'),
(53, 'ResistorWallRack1-r1c1'),
(54, 'ResistorWallRack1-r1c2'),
(55, 'ResistorWallRack1-r1c3'),
(56, 'ResistorWallRack1-r1c4'),
(57, 'ResistorWallRack1-r2c1'),
(58, 'ResistorWallRack1-r2c2'),
(59, 'ResistorWallRack1-r2c3'),
(60, 'ResistorWallRack1-r2c4'),
(61, 'ResistorWallRack1-r3c1'),
(62, 'ResistorWallRack1-r3c2'),
(63, 'ResistorWallRack1-r3c3'),
(64, 'ResistorWallRack1-r3c4'),
(65, 'LockerShelves-r1c1'),
(66, 'LockerShelves-r1c2'),
(67, 'LockerShelves-r1c3'),
(68, 'LockerShelves-r1c4'),
(69, 'LockerShelves-r1c5'),
(70, 'LockerShelves-r1c6'),
(71, 'LockerShelves-r1c7'),
(72, 'LockerShelves-r1c8'),
(73, 'LockerShelves-r1c9'),
(74, 'LockerShelves-r2c1'),
(75, 'LockerShelves-r2c2'),
(76, 'LockerShelves-r2c3'),
(77, 'LockerShelves-r2c4'),
(78, 'LockerShelves-r2c5'),
(79, 'LockerShelves-r2c6'),
(80, 'LockerShelves-r2c7'),
(81, 'LockerShelves-r2c8'),
(82, 'LockerShelves-r2c9'),
(83, 'LockerShelves-r3c1'),
(84, 'LockerShelves-r3c2'),
(85, 'LockerShelves-r3c3'),
(86, 'LockerShelves-r3c4'),
(87, 'LockerShelves-r3c5'),
(88, 'LockerShelves-r3c6'),
(89, 'LockerShelves-r3c7'),
(90, 'LockerShelves-r3c8'),
(91, 'LockerShelves-r3c9'),
(92, 'LockerShelves-r4c1'),
(93, 'LockerShelves-r4c2'),
(94, 'LockerShelves-r4c3'),
(95, 'LockerShelves-r4c4'),
(96, 'LockerShelves-r4c5'),
(97, 'LockerShelves-r4c6'),
(98, 'LockerShelves-r4c7'),
(99, 'LockerShelves-r4c8'),
(100, 'LockerShelves-r4c9'),
(101, 'Shelve-r1c1'),
(102, 'Shelve-r1c2'),
(103, 'Shelve-r1c3'),
(104, 'Shelve-r1c4'),
(105, 'Shelve-r2c1'),
(106, 'Shelve-r2c2'),
(107, 'Shelve-r2c3'),
(108, 'Shelve-r2c4'),
(109, 'Shelve-r3c1'),
(110, 'Shelve-r3c2'),
(111, 'Shelve-r3c3'),
(112, 'Shelve-r3c4'),
(113, 'Shelve-r4c1'),
(114, 'Shelve-r4c2'),
(115, 'Shelve-r4c3'),
(116, 'Shelve-r4c4'),
(117, 'Shelve-r5c1'),
(118, 'Shelve-r5c2'),
(119, 'Shelve-r5c3'),
(120, 'Shelve-r5c4'),
(121, 'BlueRack1-r1c1'),
(122, 'BlueRack1-r2c1'),
(123, 'BlueRack1-r3c1'),
(124, 'BlueRack1-r4c1'),
(125, 'BlueRack2-r1c1'),
(126, 'BlueRack2-r2c1'),
(127, 'BlueRack2-r3c1'),
(128, 'BlueRack2-r4c1'),
(129, 'Machine Room'),
(130, 'Kitchen'),
(131, 'Solder Bench1'),
(132, 'Solder Bench2'),
(133, 'Solder Bench3'),
(134, 'External - not in XCJ!');

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`) VALUES
(1, 'To be determined'),
(2, 'Seeed Studio'),
(3, 'DFRobot'),
(4, 'Spencer');

