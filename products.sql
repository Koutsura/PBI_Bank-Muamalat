-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 31, 2025 at 02:04 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbi`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProdNumber` varchar(255) NOT NULL,
  `ProdName` varchar(255) NOT NULL,
  `Category` int NOT NULL,
  `Price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProdNumber`, `ProdName`, `Category`, `Price`) VALUES
('BP101', 'All Eyes Drone Blueprint', 1, '9.99'),
('BP102', 'Bsquare Robot Blueprint', 1, '8.99'),
('BP104', 'Cat Robot Blueprint', 1, '4.99'),
('BP105', 'Creature Robot Arms Blueprint', 1, '12'),
('BP106', 'Hexacopter Drone Blueprint', 1, '8.99'),
('BP107', 'Ladybug Robot Blueprint', 1, '12'),
('BP108', 'Panda Robot Blueprint', 1, '7.99'),
('BP109', 'QuadroCopter Blueprint', 1, '10.99'),
('BP110', 'Sleepy Eye Blueprint', 1, '11.99'),
('BP111', 'Upside Down Robot Blueprint', 1, '12'),
('DK201', 'BYOD-100', 2, '54'),
('DK202', 'BYOD-200', 2, '58.95'),
('DK203', 'BYOD-220', 2, '69'),
('DK204', 'BYOD-300', 2, '89'),
('DK205', 'BYOD-350', 2, '89.95'),
('DK206', 'BYOD-400', 2, '119'),
('DK207', 'BYOD-400S', 2, '129.95'),
('DK208', 'BYOD-500', 2, '167'),
('DK209', 'BYOD-550', 2, '179'),
('DS301', 'DA-SA702 Drone', 3, '399'),
('DS302', 'DC-304 Drone', 3, '395'),
('DS303', 'DTD-7000 Drone', 3, '450'),
('DS304', 'DTE-QFN20 Drone', 3, '250'),
('DS305', 'DTI-84 Drone', 3, '455'),
('DS306', 'DX-145 Drone', 3, '250'),
('DS307', 'MICR-564K Drone', 3, '499'),
('EB501', 'Articulated Robots', 4, '23.99'),
('EB502', 'Building Your First Robot', 4, '24.95'),
('EB503', 'Building Your Own Drone', 4, '24.99'),
('EB504', 'Cartesian Robots', 4, '12.99'),
('EB505', 'Delivery Drones', 4, '14.99'),
('EB506', 'Delta Robots', 4, '16.99'),
('EB507', 'Drone Building Essentials', 4, '13.99'),
('EB508', 'Fixed Wing Drones', 4, '15.5'),
('EB509', 'GPS Drones', 4, '19.99'),
('EB511', 'Helicopter Drones', 4, '20.95'),
('EB512', 'Multi Rotor Drones', 4, '24.95'),
('EB513', 'Photograph Drones', 4, '14.99'),
('EB514', 'Polar Robots', 4, '23.99'),
('EB516', 'RTF Drones', 4, '16.99'),
('EB517', 'SCARA Robots', 4, '19.5'),
('EB518', 'Single Rotor Drones', 4, '14.99'),
('EB519', 'Spherical Robots', 4, '16.75'),
('EB520', 'Understanding Arduino', 4, '17.5'),
('EB521', 'Understanding Artificial Intelligence', 4, '19.5'),
('RK602', 'BYOR-1000', 5, '189'),
('RK603', 'BYOR-1500', 5, '189'),
('RK604', 'BYOR-2640S', 5, '189'),
('RK605', 'BYOR-3000', 5, '214'),
('RK606', 'BYOR-3535', 5, '225'),
('RK607', 'BYOR-4005', 5, '245'),
('RS702', 'MICR-23K Robot', 6, '899'),
('RS703', 'RCB-889 Robot', 6, '549'),
('RS704', 'RLK-9920 Robot', 6, '699'),
('RS705', 'RQTE-554 Robot', 6, '684'),
('RS706', 'RWW-75 Robot', 6, '883'),
('RS707', 'RXW-9807 Robot', 6, '599'),
('TV801', 'Aerial Security', 7, '36.99'),
('TV802', 'AI for Educators', 7, '49.95'),
('TV803', 'Cloud Computing', 7, '29.99'),
('TV804', 'Drone Video Techniques', 7, '37.99'),
('TV805', 'Industrial 3D Printing', 7, '49'),
('TV806', 'Mapping with Drones', 7, '49'),
('TV807', 'Open Source Code', 7, '32.95'),
('TV808', 'Robotic Essentials', 7, '34.99'),
('TV809', 'Understanding 3D Printing', 7, '42.99'),
('TV810', 'Understanding Automation', 7, '44.95'),
('TV811', 'Understanding Drone Regulations', 7, '27.5'),
('TV812', 'Understanding Raspberry PI', 7, '28.99'),
('TV813', 'Virtual Reality Basics', 7, '29.99');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProdNumber`),
  ADD KEY `fk_products_category` (`Category`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_category` FOREIGN KEY (`Category`) REFERENCES `product_category` (`CategoryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
