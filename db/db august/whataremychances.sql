-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 12, 2013 at 03:36 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `whataremychances`
--

-- --------------------------------------------------------

--
-- Table structure for table `average`
--

CREATE TABLE IF NOT EXISTS `average` (
  `index` int(2) NOT NULL AUTO_INCREMENT,
  `bed-occupancy` varchar(5) NOT NULL,
  `mortality` varchar(5) NOT NULL,
  `amb-response` varchar(5) NOT NULL,
  `inpatient-experience` varchar(5) NOT NULL,
  `a&e-response` varchar(5) NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `average`
--

INSERT INTO `average` (`index`, `bed-occupancy`, `mortality`, `amb-response`, `inpatient-experience`, `a&e-response`) VALUES
(1, '86', '73.3', '70', '76.5', '95');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE IF NOT EXISTS `details` (
  `hospital` varchar(255) NOT NULL,
  `hospital-id` int(3) NOT NULL,
  `bed-occupancy` varchar(5) NOT NULL,
  `mortality` varchar(5) NOT NULL,
  `amb-response` varchar(70) NOT NULL,
  `inpatient-experience` varchar(5) NOT NULL,
  `a&e-response` varchar(5) NOT NULL,
  UNIQUE KEY `hospital` (`hospital-id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`hospital`, `hospital-id`, `bed-occupancy`, `mortality`, `amb-response`, `inpatient-experience`, `a&e-response`) VALUES
('Tameside General Hospital', 251, '89.4', '75.3', '71', '73.7', '95.8');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE IF NOT EXISTS `hospitals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=288 ;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `hospital`, `location`) VALUES
(1, 'Trafford General Hospital', 'Urmston'),
(2, 'Addenbrooke''s Hospital', 'Cambridge'),
(3, 'Airedale General Hospital', 'Keighley'),
(4, 'Alder Hey Children''s Hospital', 'West Derby'),
(5, 'Alexandra Hospital', 'Redditch'),
(6, 'Amersham Hospital', 'Amersham'),
(7, 'Arrowe Park Hospital', ''),
(8, 'Ashford Hospital', 'Ashford'),
(9, 'Barnet Hospital', ''),
(10, 'Barnsley District General Hospital', 'Barnsley'),
(11, 'Basildon University Hospital', 'Basildon'),
(12, 'Basingstoke and North Hampshire Hospital', ''),
(13, 'Bassetlaw District General Hospital', ''),
(14, 'Bedford Hospital', 'Bedford'),
(15, 'Bensham Hospital', ''),
(16, 'Birmingham Children''s Hospital', ''),
(17, 'Birmingham Heartlands Hospital', ''),
(18, 'Birmingham Women''s Hospital', ''),
(19, 'Bishop Auckland General Hospital', ''),
(20, 'Blackpool Victoria Hospital', ''),
(21, 'Bradford Royal Infirmary', ''),
(22, 'Bridlington & District Hospital', ''),
(23, 'Brighton General Hospital', ''),
(24, 'Bristol Eye Hospital', ''),
(25, 'Bristol Haematology & Oncology Centre', ''),
(26, 'Bristol Royal Hospital for Children', ''),
(27, 'Bristol Royal Infirmary', ''),
(28, 'Bronglais General Hospital', ''),
(29, 'Broomfield Hospital', ''),
(30, 'Buckland Hospital', ''),
(31, 'Burnley General Hospital', ''),
(32, 'Calderdale Royal Hospital', ''),
(33, 'Cannock Chase Hospital', ''),
(34, 'Castle Hill Hospital', ''),
(35, 'Central Middlesex Hospital', ''),
(36, 'Chapel Allerton Hospital', ''),
(37, 'Charing Cross Hospital', ''),
(38, 'Chase Farm Hospital', ''),
(39, 'Chelsea and Westminster Hospital', ''),
(40, 'Cheltenham General Hospital', ''),
(41, 'Chesterfield Royal Hospital', ''),
(42, 'Chorley & South Ribble District General Hospital', ''),
(43, 'Christie Hospital', ''),
(44, 'Churchill Hospital', ''),
(45, 'City Hospital', ''),
(46, 'Clatterbridge Centre for Oncology', ''),
(47, 'Colchester General Hospital', ''),
(48, 'Conquest Hospital', ''),
(49, 'Corbett Hospital', ''),
(50, 'Countess of Chester Hospital', ''),
(51, 'Croydon University Hospital', ''),
(52, 'Cumberland Infirmary', ''),
(53, 'Darent Valley Hospital', ''),
(54, 'Darlington Memorial Hospital', ''),
(55, 'Derriford Hospital', ''),
(56, 'Dewsbury and District Hospital', ''),
(57, 'Diana, Princess of Wales Hospital', ''),
(58, 'Doncaster Royal Infirmary', ''),
(59, 'Dorset County Hospital', ''),
(60, 'Ealing Hospital', ''),
(61, 'East Surrey Hospital', ''),
(62, 'Eastbourne District General Hospital', ''),
(63, 'Eastman Dental Hospital', ''),
(64, 'Epsom General Hospital', ''),
(65, 'Evelina Children''s Hospital', ''),
(66, 'Fairfield General Hospital', ''),
(67, 'Freeman Hospital', ''),
(68, 'Frenchay Hospital', ''),
(69, 'Friarage Hospital', ''),
(70, 'Frimley Park Hospital', ''),
(71, 'Furness General Hospital', ''),
(72, 'George Eliot Hospital', ''),
(73, 'Glenfield Hospital', ''),
(74, 'Gloucestershire Royal Hospital', ''),
(75, 'Good Hope District General Hospital', ''),
(76, 'Goole Treatment Centre', ''),
(77, 'Grantham & District Hospital', ''),
(78, 'Great Ormond Street Hospital for Children', ''),
(79, 'Great Western Hospital', ''),
(80, 'Guest Hospital', ''),
(81, 'Guy''s Hospital', ''),
(82, 'Halton General Hospital', ''),
(83, 'Hammersmith Hospital', ''),
(84, 'Harefield Hospital', ''),
(85, 'Harrogate District Hospital', ''),
(86, 'Heart Hospital', ''),
(87, 'Heatherwood Hospital', ''),
(88, 'Hemel Hempstead General Hospital', ''),
(89, 'Hereford County Hospital', ''),
(90, 'Hexham General Hospital', ''),
(91, 'Hillingdon Hospital', ''),
(92, 'Hinchingbrooke Hospital', ''),
(93, 'Homerton University Hospital', ''),
(94, 'Horton Hospital', ''),
(95, 'Hospital for Tropical Diseases', ''),
(96, 'Hospital of St Cross', ''),
(97, 'Huddersfield Royal Infirmary', ''),
(98, 'Hull & East Yorkshire Women''s and Children''s Hospital', ''),
(99, 'Hull and East Yorkshire Eye Hospital', ''),
(100, 'Hull Royal Infirmary', ''),
(101, 'Huntingdon NHS Treatment Centre', ''),
(102, 'Hurstwood Park Neurological Centre', ''),
(103, 'Ipswich Hospital', ''),
(104, 'James Cook University Hospital', ''),
(105, 'James Paget Hospital', ''),
(106, 'John Radcliffe Hospital', ''),
(107, 'Kent & Canterbury Hospital', ''),
(108, 'Kettering General Hospital', ''),
(109, 'Kidderminster Hospital', ''),
(110, 'King George Hospital', ''),
(111, 'King''s College Hospital', ''),
(112, 'King''s Mill Hospital', ''),
(113, 'Kingston Hospital', ''),
(114, 'Leeds General Infirmary', ''),
(115, 'Leicester General Hospital', ''),
(116, 'Leicester Royal Infirmary', ''),
(117, 'Leigh Infirmary', ''),
(118, 'Leighton Hospital', ''),
(119, 'Lincoln County Hospital', ''),
(120, 'Lister Hospital', ''),
(121, 'Liverpool Heart and Chest Hospital', ''),
(122, 'Liverpool Women''s Hospital', ''),
(123, 'London Road Community Hospital', ''),
(124, 'Louth County Hospital', ''),
(125, 'Luton & Dunstable Hospital', ''),
(126, 'Macclesfield District General Hospital', ''),
(127, 'Maidstone Hospital', ''),
(128, 'Manchester Royal Eye Hospital', ''),
(129, 'Manchester Royal Infirmary', ''),
(130, 'Manor Hospital', ''),
(131, 'Medway Maritime Hospital', ''),
(132, 'Milton Keynes General Hospital', ''),
(133, 'Montagu Hospital', ''),
(134, 'Moorfields Eye Hospital', ''),
(135, 'Mount Vernon Hospital', ''),
(136, 'Musgrove Park Hospital', ''),
(137, 'National Hospital for Neurology & Neurosurgery', ''),
(138, 'New Cross Hospital', ''),
(139, 'Newcastle General Hospital', ''),
(140, 'Newham General Hospital', ''),
(141, 'Norfolk and Norwich University Hospital', ''),
(142, 'North Devon District Hospital', ''),
(143, 'North Manchester General Hospital', ''),
(144, 'North Middlesex University Hospital', ''),
(145, 'North Tyneside General Hospital', ''),
(146, 'Northampton General Hospital', ''),
(147, 'Northern General Hospital', ''),
(148, 'Northwick Park Hospital', ''),
(149, 'Nottingham City Hospital', ''),
(150, 'Nuffield Orthopaedic Centre', ''),
(151, 'Ormskirk and District General Hospital', ''),
(152, 'Papworth Hospital', ''),
(153, 'Peterborough City Hospital', ''),
(154, 'Pilgrim Hospital', ''),
(155, 'Pinderfields General Hospital', ''),
(156, 'Pontefract General Infirmary', ''),
(157, 'Poole Hospital', ''),
(158, 'Princess Alexandra Hospital', ''),
(159, 'Princess Royal Hospital', ''),
(160, 'Princess Royal Hospital', ''),
(161, 'Princess Royal University Hospital', ''),
(162, 'Queen Alexandra Hospital', ''),
(163, 'Queen Elizabeth Hospital, King''s Lynn', ''),
(164, 'Queen Elizabeth Hospital, Gateshead', ''),
(165, 'Queen Elizabeth Hospital, London', ''),
(166, 'Queen Elizabeth II Hospital', ''),
(167, 'Queen Elizabeth Medical Centre', ''),
(168, 'Queen Elizabeth The Queen Mother Hospital', ''),
(169, 'Queen Mary''s Hospital', ''),
(170, 'Queen Mary''s Hospital for Children', ''),
(171, 'Queen Victoria Hospital', ''),
(172, 'Queen''s Hospital, Romford', ''),
(173, 'Queen''s Hospital, Burton-on-Trent', ''),
(174, 'Queen''s Medical Centre', ''),
(175, 'Rochdale Infirmary and Birch Hill Hospital', ''),
(176, 'Rosie Hospital', ''),
(177, 'Rotherham District General Hospital', ''),
(178, 'Royal Albert Edward Infirmary', ''),
(179, 'Royal Alexandra Children''s Hospital', ''),
(180, 'Royal Berkshire Hospital', ''),
(181, 'Royal Blackburn Hospital', ''),
(182, 'Royal Bolton Hospital', ''),
(183, 'Royal Bournemouth Hospital', ''),
(184, 'Royal Brompton Hospital', ''),
(185, 'Royal Cornwall Hospital', ''),
(186, 'Royal Derby Hospital', ''),
(187, 'Royal Devon & Exeter Hospital', ''),
(188, 'Royal Eye Infirmary', ''),
(189, 'Royal Free Hospital', ''),
(190, 'Royal Hallamshire Hospital', ''),
(191, 'Royal Hampshire County Hospital', ''),
(192, 'Royal Lancaster Infirmary', ''),
(193, 'Royal Liverpool University Hospital', ''),
(194, 'Royal London Hospital', ''),
(195, 'Royal London Hospital for Integrated Medicine', ''),
(196, 'Royal Manchester Children''s Hospital', ''),
(197, 'Royal Marsden Hospital', ''),
(198, 'Royal National Hospital for Rheumatic Diseases', ''),
(199, 'Royal National Orthopaedic Hospital, London', ''),
(200, 'Royal National Orthopaedic Hospital, Stanmore', ''),
(201, 'Royal National Throat, Nose and Ear Hospital', ''),
(202, 'Royal Oldham Hospital', ''),
(203, 'Royal Orthopaedic Hospital', ''),
(204, 'Royal Preston Hospital', ''),
(205, 'Royal Shrewsbury Hospital', ''),
(206, 'Royal Surrey County Hospital', ''),
(207, 'Royal Sussex County Hospital', ''),
(208, 'Royal United Hospital', ''),
(209, 'Royal Victoria Infirmary', ''),
(210, 'Russells Hall Hospital', ''),
(211, 'Salford Royal', ''),
(212, 'Salisbury District Hospital', ''),
(213, 'Sandwell General Hospital', ''),
(214, 'Scarborough General Hospital', ''),
(215, 'Scunthorpe General Hospital', ''),
(216, 'Selly Oak Hospital', ''),
(217, 'Sheffield Childrens Hospital', ''),
(218, 'Solihull Hospital', ''),
(219, 'South Tyneside District Hospital', ''),
(220, 'South West London Elective Orthopaedic Centre', ''),
(221, 'Southampton General Hospital', ''),
(222, 'Southend Hospital', ''),
(223, 'Southlands Hospital', ''),
(224, 'Southmead Hospital', ''),
(225, 'Southport and Formby District General Hospital', ''),
(226, 'St Albans City Hospital', ''),
(227, 'St Bartholomew''s Hospital', ''),
(228, 'St George''s Hospital', ''),
(229, 'St Helens Hospital', ''),
(230, 'St Helier Hospital', ''),
(231, 'St James''s University Hospital', ''),
(232, 'St John''s Hospital at Howden', ''),
(233, 'St Luke''s Hospital, Huddersfield', ''),
(234, 'St Luke''s Hospital, Bradford', ''),
(235, 'St Mary''s Hospital, Manchester', ''),
(236, 'St Mary''s Hospital, London', ''),
(237, 'St Mary''s Hospital, Newport', ''),
(238, 'St Michael''s Hospital, Hayle', ''),
(239, 'St Michael''s Hospital, Bristol', ''),
(240, 'St Peter''s Hospital', ''),
(241, 'St Richard''s Hospital', ''),
(242, 'St Thomas'' Hospital', ''),
(243, 'Stafford Hospital', ''),
(244, 'Stamford & Rutland Hospital', ''),
(245, 'Stepping Hill Hospital', ''),
(246, 'Stoke Mandeville Hospital', ''),
(247, 'Sunderland Eye Infirmary', ''),
(248, 'Sunderland Royal Hospital', ''),
(249, 'Sussex Eye Hospital', ''),
(250, 'Sutton Hospital', ''),
(251, 'Tameside General Hospital', ''),
(252, 'The Robert Jones and Agnes Hunt Orthopaedic Hospital', ''),
(253, 'Torbay District General Hospital', ''),
(254, 'Tunbridge Wells Hospital', ''),
(255, 'University College Hospital', ''),
(256, 'University College Hospital Macmillan Cancer Centre', ''),
(257, 'University Hospital Coventry', ''),
(258, 'University Hospital Aintree', ''),
(259, 'University Hospital Lewisham', ''),
(260, 'University Hospital of Hartlepool', ''),
(261, 'University Hospital of North Durham', ''),
(262, 'University Hospital of North Staffordshire', ''),
(263, 'University Hospital of North Tees', ''),
(264, 'Walton Centre for Neurology and Neurosurgery', ''),
(265, 'Wansbeck General Hospital', ''),
(266, 'Warrington Hospital', ''),
(267, 'Warwick Hospital', ''),
(268, 'Watford General Hospital', ''),
(269, 'West Cornwall Hospital', ''),
(270, 'West Cumberland Hospital', ''),
(271, 'West Middlesex University Hospital', ''),
(272, 'West Suffolk Hospital', ''),
(273, 'Western Eye Hospital', ''),
(274, 'Westmorland General Hospital', ''),
(275, 'Weston General Hospital', ''),
(276, 'Wexham Park Hospital', ''),
(277, 'Whipps Cross University Hospital', ''),
(278, 'Whiston Hospital', ''),
(279, 'Whittington Hospital', ''),
(280, 'William Harvey Hospital', ''),
(281, 'Worcestershire Royal Hospital', ''),
(282, 'Worthing Hospital', ''),
(283, 'Wrightington Hospital', ''),
(284, 'Wycombe Hospital', ''),
(285, 'Wythenshawe Hospital', ''),
(286, 'Yeovil District Hospital', ''),
(287, 'York Hospital', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
