-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.12-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for necha
DROP DATABASE IF EXISTS `necha`;
CREATE DATABASE IF NOT EXISTS `necha` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `necha`;


-- Dumping structure for table necha.address
DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_address_country1_idx` (`country_id`),
  CONSTRAINT `fk_address_country1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.address: ~0 rows (approximately)
DELETE FROM `address`;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;


-- Dumping structure for table necha.cache
DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `id` char(128) COLLATE utf8_unicode_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.cache: ~2 rows (approximately)
DELETE FROM `cache`;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` (`id`, `expire`, `data`) VALUES
	('963454f612a8b5fb4a63ba1e97f028a1', 0, _binary 0x613A323A7B693A303B613A323A7B693A303B613A323A7B693A303B4F3A31353A227969695C7765625C55726C52756C65223A31343A7B733A343A226E616D65223B733A373A226163636F756E74223B733A373A227061747465726E223B733A31323A22235E6163636F756E74242375223B733A343A22686F7374223B4E3B733A353A22726F757465223B733A31323A22736974652F6163636F756E74223B733A383A2264656661756C7473223B613A303A7B7D733A363A22737566666978223B4E3B733A343A2276657262223B4E3B733A343A226D6F6465223B4E3B733A31323A22656E636F6465506172616D73223B623A313B733A31353A22002A00706C616365686F6C64657273223B613A303A7B7D733A32363A22007969695C7765625C55726C52756C65005F74656D706C617465223B733A393A222F6163636F756E742F223B733A32373A22007969695C7765625C55726C52756C65005F726F75746552756C65223B4E3B733A32383A22007969695C7765625C55726C52756C65005F706172616D52756C6573223B613A303A7B7D733A32393A22007969695C7765625C55726C52756C65005F726F757465506172616D73223B613A303A7B7D7D693A313B4F3A31353A227969695C7765625C55726C52756C65223A31343A7B733A343A226E616D65223B733A383A22636865636B6F7574223B733A373A227061747465726E223B733A31333A22235E636865636B6F7574242375223B733A343A22686F7374223B4E3B733A353A22726F757465223B733A31333A22736974652F636865636B6F7574223B733A383A2264656661756C7473223B613A303A7B7D733A363A22737566666978223B4E3B733A343A2276657262223B4E3B733A343A226D6F6465223B4E3B733A31323A22656E636F6465506172616D73223B623A313B733A31353A22002A00706C616365686F6C64657273223B613A303A7B7D733A32363A22007969695C7765625C55726C52756C65005F74656D706C617465223B733A31303A222F636865636B6F75742F223B733A32373A22007969695C7765625C55726C52756C65005F726F75746552756C65223B4E3B733A32383A22007969695C7765625C55726C52756C65005F706172616D52756C6573223B613A303A7B7D733A32393A22007969695C7765625C55726C52756C65005F726F757465506172616D73223B613A303A7B7D7D7D693A313B733A33323A226463616436636163353236646335353338623331656234656530333738653339223B7D693A313B4E3B7D),
	('site', 0, _binary 0x613A323A7B693A303B4F3A32353A22636F6D6D6F6E5C6D6F64656C735C5369746553657474696E67223A383A7B733A33363A22007969695C64625C426173654163746976655265636F7264005F61747472696275746573223B613A383A7B733A343A226E616D65223B733A353A224E65636861223B733A31303A226D6574615F7469746C65223B4E3B733A31323A226D6574615F6B6579776F7264223B4E3B733A31363A226D6574615F6465736372697074696F6E223B733A3139383A224E656368612062792044616E69656C6C61205261796D6F6E642220697320612054616E7A616E69616E206261736564206166726F2D726574726F20776F6D656E732066617368696F6E206272616E642074686174207370656369616C697A657320696E20757262616E20636F6E74656D706F726172792063756C747572616C20696E73706972656420636C6F746865732067656172656420746F77617264732074686520796F756E6720616E6420646172696E6720776F6D656E206F75742074686572652E2E223B733A393A22636F70797269676874223B4E3B733A31303A22706167655F6974656D73223B693A393B733A31303A22757064617465645F6279223B693A313B733A31363A2273746F72655F73657474696E675F6964223B4E3B7D733A33393A22007969695C64625C426173654163746976655265636F7264005F6F6C6441747472696275746573223B613A383A7B733A343A226E616D65223B733A353A224E65636861223B733A31303A226D6574615F7469746C65223B4E3B733A31323A226D6574615F6B6579776F7264223B4E3B733A31363A226D6574615F6465736372697074696F6E223B733A3139383A224E656368612062792044616E69656C6C61205261796D6F6E642220697320612054616E7A616E69616E206261736564206166726F2D726574726F20776F6D656E732066617368696F6E206272616E642074686174207370656369616C697A657320696E20757262616E20636F6E74656D706F726172792063756C747572616C20696E73706972656420636C6F746865732067656172656420746F77617264732074686520796F756E6720616E6420646172696E6720776F6D656E206F75742074686572652E2E223B733A393A22636F70797269676874223B4E3B733A31303A22706167655F6974656D73223B693A393B733A31303A22757064617465645F6279223B693A313B733A31363A2273746F72655F73657474696E675F6964223B4E3B7D733A33333A22007969695C64625C426173654163746976655265636F7264005F72656C61746564223B613A303A7B7D733A32333A22007969695C626173655C4D6F64656C005F6572726F7273223B4E3B733A32373A22007969695C626173655C4D6F64656C005F76616C696461746F7273223B4E3B733A32353A22007969695C626173655C4D6F64656C005F7363656E6172696F223B733A373A2264656661756C74223B733A32373A22007969695C626173655C436F6D706F6E656E74005F6576656E7473223B613A303A7B7D733A33303A22007969695C626173655C436F6D706F6E656E74005F6265686176696F7273223B613A303A7B7D7D693A313B4E3B7D);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;


-- Dumping structure for table necha.cart
DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cart_customer1_idx` (`customer_id`),
  CONSTRAINT `fk_cart_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.cart: ~0 rows (approximately)
DELETE FROM `cart`;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;


-- Dumping structure for table necha.cart_item
DROP TABLE IF EXISTS `cart_item`;
CREATE TABLE IF NOT EXISTS `cart_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `custom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cart_item_cart1_idx` (`cart_id`),
  KEY `fk_cart_item_product1_idx` (`product_id`),
  CONSTRAINT `fk_cart_item_cart1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cart_item_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.cart_item: ~0 rows (approximately)
DELETE FROM `cart_item`;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;


-- Dumping structure for table necha.country
DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `iso_2` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `iso_3` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `has_state` tinyint(1) NOT NULL DEFAULT '1',
  `zone_id` int(11) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_country_zone1_idx` (`zone_id`),
  CONSTRAINT `fk_country_zone1` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.country: ~0 rows (approximately)
DELETE FROM `country`;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
/*!40000 ALTER TABLE `country` ENABLE KEYS */;


-- Dumping structure for table necha.country_region
DROP TABLE IF EXISTS `country_region`;
CREATE TABLE IF NOT EXISTS `country_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_country_region_country1_idx` (`country_id`),
  CONSTRAINT `fk_country_region_country1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.country_region: ~0 rows (approximately)
DELETE FROM `country_region`;
/*!40000 ALTER TABLE `country_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `country_region` ENABLE KEYS */;


-- Dumping structure for table necha.country_state
DROP TABLE IF EXISTS `country_state`;
CREATE TABLE IF NOT EXISTS `country_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_country_state_country1_idx` (`country_id`),
  CONSTRAINT `fk_country_state_country1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.country_state: ~0 rows (approximately)
DELETE FROM `country_state`;
/*!40000 ALTER TABLE `country_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `country_state` ENABLE KEYS */;


-- Dumping structure for table necha.currency
DROP TABLE IF EXISTS `currency`;
CREATE TABLE IF NOT EXISTS `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.currency: ~0 rows (approximately)
DELETE FROM `currency`;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;


-- Dumping structure for table necha.customer
DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `online` tinyint(1) DEFAULT NULL,
  `default_address` int(11) DEFAULT NULL,
  `default_currency` int(11) DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_customer_address1_idx` (`default_address`),
  KEY `fk_customer_currency1_idx` (`default_currency`),
  KEY `fk_customer_user1_idx` (`user_id`),
  CONSTRAINT `fk_customer_address1` FOREIGN KEY (`default_address`) REFERENCES `address` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_customer_currency1` FOREIGN KEY (`default_currency`) REFERENCES `currency` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_customer_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.customer: ~0 rows (approximately)
DELETE FROM `customer`;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


-- Dumping structure for table necha.geo_region
DROP TABLE IF EXISTS `geo_region`;
CREATE TABLE IF NOT EXISTS `geo_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.geo_region: ~0 rows (approximately)
DELETE FROM `geo_region`;
/*!40000 ALTER TABLE `geo_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `geo_region` ENABLE KEYS */;


-- Dumping structure for table necha.home_slider
DROP TABLE IF EXISTS `home_slider`;
CREATE TABLE IF NOT EXISTS `home_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.home_slider: ~0 rows (approximately)
DELETE FROM `home_slider`;
/*!40000 ALTER TABLE `home_slider` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_slider` ENABLE KEYS */;


-- Dumping structure for table necha.migration
DROP TABLE IF EXISTS `migration`;
CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.migration: ~2 rows (approximately)
DELETE FROM `migration`;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` (`version`, `apply_time`) VALUES
	('m000000_000000_base', 1470499084),
	('m130524_201442_init', 1470499089);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;


-- Dumping structure for table necha.mobile_account
DROP TABLE IF EXISTS `mobile_account`;
CREATE TABLE IF NOT EXISTS `mobile_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `acc_no` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.mobile_account: ~0 rows (approximately)
DELETE FROM `mobile_account`;
/*!40000 ALTER TABLE `mobile_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `mobile_account` ENABLE KEYS */;


-- Dumping structure for table necha.order
DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` date NOT NULL,
  `gross` decimal(18,2) NOT NULL,
  `discount` decimal(18,2) DEFAULT '0.00',
  `tax` decimal(18,2) DEFAULT '0.00',
  `shipping` decimal(18,2) DEFAULT '0.00',
  `status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_address1_idx` (`address_id`),
  KEY `fk_order_customer1_idx` (`customer_id`),
  CONSTRAINT `fk_order_address1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.order: ~0 rows (approximately)
DELETE FROM `order`;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;


-- Dumping structure for table necha.order_item
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE IF NOT EXISTS `order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `custom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `gross` decimal(18,2) NOT NULL,
  `tax` decimal(18,2) DEFAULT NULL,
  `discount` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_item_order1_idx` (`order_id`),
  KEY `fk_order_item_product1_idx` (`product_id`),
  CONSTRAINT `fk_order_item_order1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_item_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.order_item: ~0 rows (approximately)
DELETE FROM `order_item`;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;


-- Dumping structure for table necha.payment
DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `transaction_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_payment_payment_type1_idx` (`type_id`),
  KEY `fk_payment_currency1_idx` (`currency_id`),
  KEY `fk_payment_order1_idx` (`order_id`),
  CONSTRAINT `fk_payment_currency1` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_payment_order1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_payment_payment_type1` FOREIGN KEY (`type_id`) REFERENCES `payment_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.payment: ~0 rows (approximately)
DELETE FROM `payment`;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;


-- Dumping structure for table necha.payment_account
DROP TABLE IF EXISTS `payment_account`;
CREATE TABLE IF NOT EXISTS `payment_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_account_id` int(11) DEFAULT NULL,
  `paypal_account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_payment_account_mobile_account1_idx` (`mobile_account_id`),
  KEY `fk_payment_account_paypal_account1_idx` (`paypal_account_id`),
  CONSTRAINT `fk_payment_account_mobile_account1` FOREIGN KEY (`mobile_account_id`) REFERENCES `mobile_account` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_payment_account_paypal_account1` FOREIGN KEY (`paypal_account_id`) REFERENCES `paypal_account` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.payment_account: ~0 rows (approximately)
DELETE FROM `payment_account`;
/*!40000 ALTER TABLE `payment_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_account` ENABLE KEYS */;


-- Dumping structure for table necha.payment_type
DROP TABLE IF EXISTS `payment_type`;
CREATE TABLE IF NOT EXISTS `payment_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.payment_type: ~0 rows (approximately)
DELETE FROM `payment_type`;
/*!40000 ALTER TABLE `payment_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_type` ENABLE KEYS */;


-- Dumping structure for table necha.paypal_account
DROP TABLE IF EXISTS `paypal_account`;
CREATE TABLE IF NOT EXISTS `paypal_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `client_secret` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `is_production` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_account_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_paypal_account_payment_account1_idx` (`payment_account_id`),
  CONSTRAINT `fk_paypal_account_payment_account1` FOREIGN KEY (`payment_account_id`) REFERENCES `payment_account` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.paypal_account: ~0 rows (approximately)
DELETE FROM `paypal_account`;
/*!40000 ALTER TABLE `paypal_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_account` ENABLE KEYS */;


-- Dumping structure for table necha.product
DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` decimal(8,2) DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `base_image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `has_size` tinyint(1) DEFAULT NULL,
  `alert_quantity` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `meta_keyword` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_product_category1_idx` (`category_id`),
  KEY `fk_product_user1_idx` (`created_by`),
  CONSTRAINT `fk_product_product_category1` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_user1` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.product: ~0 rows (approximately)
DELETE FROM `product`;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


-- Dumping structure for table necha.product_category
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE IF NOT EXISTS `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.product_category: ~2 rows (approximately)
DELETE FROM `product_category`;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` (`id`, `name`, `description`, `status`) VALUES
	(1, 'Headbands', 'Headbands', ''),
	(2, 'Ipad Case', 'Ipad Case', '');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;


-- Dumping structure for table necha.product_image
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE IF NOT EXISTS `product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_image_product1_idx` (`product_id`),
  CONSTRAINT `fk_product_image_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.product_image: ~0 rows (approximately)
DELETE FROM `product_image`;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;


-- Dumping structure for table necha.product_price
DROP TABLE IF EXISTS `product_price`;
CREATE TABLE IF NOT EXISTS `product_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_price_store_setting1_idx` (`store_id`),
  KEY `fk_product_price_product1_idx` (`product_id`),
  CONSTRAINT `fk_product_price_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_price_store_setting1` FOREIGN KEY (`store_id`) REFERENCES `store_setting` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.product_price: ~0 rows (approximately)
DELETE FROM `product_price`;
/*!40000 ALTER TABLE `product_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_price` ENABLE KEYS */;


-- Dumping structure for table necha.region_currency
DROP TABLE IF EXISTS `region_currency`;
CREATE TABLE IF NOT EXISTS `region_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_region_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `mandatory` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_region_currency_customer_region1_idx` (`customer_region_id`),
  KEY `fk_region_currency_currency1_idx` (`currency_id`),
  CONSTRAINT `fk_region_currency_currency1` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_region_currency_customer_region1` FOREIGN KEY (`customer_region_id`) REFERENCES `geo_region` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.region_currency: ~0 rows (approximately)
DELETE FROM `region_currency`;
/*!40000 ALTER TABLE `region_currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `region_currency` ENABLE KEYS */;


-- Dumping structure for table necha.region_payment
DROP TABLE IF EXISTS `region_payment`;
CREATE TABLE IF NOT EXISTS `region_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_region_payment_customer_region1_idx` (`region_id`),
  KEY `fk_region_payment_payment1_idx` (`payment_id`),
  CONSTRAINT `fk_region_payment_customer_region1` FOREIGN KEY (`region_id`) REFERENCES `geo_region` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_region_payment_payment1` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.region_payment: ~0 rows (approximately)
DELETE FROM `region_payment`;
/*!40000 ALTER TABLE `region_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `region_payment` ENABLE KEYS */;


-- Dumping structure for table necha.region_state
DROP TABLE IF EXISTS `region_state`;
CREATE TABLE IF NOT EXISTS `region_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_region_state_shipping_region1_idx` (`region_id`),
  KEY `fk_region_state_country_state1_idx` (`state_id`),
  CONSTRAINT `fk_region_state_country_state1` FOREIGN KEY (`state_id`) REFERENCES `country_state` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_region_state_shipping_region1` FOREIGN KEY (`region_id`) REFERENCES `geo_region` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.region_state: ~0 rows (approximately)
DELETE FROM `region_state`;
/*!40000 ALTER TABLE `region_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `region_state` ENABLE KEYS */;


-- Dumping structure for table necha.similar_product
DROP TABLE IF EXISTS `similar_product`;
CREATE TABLE IF NOT EXISTS `similar_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `peer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_similar_product_product1_idx` (`product_id`),
  KEY `fk_similar_product_product2_idx` (`peer_id`),
  CONSTRAINT `fk_similar_product_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_similar_product_product2` FOREIGN KEY (`peer_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.similar_product: ~0 rows (approximately)
DELETE FROM `similar_product`;
/*!40000 ALTER TABLE `similar_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `similar_product` ENABLE KEYS */;


-- Dumping structure for table necha.site_setting
DROP TABLE IF EXISTS `site_setting`;
CREATE TABLE IF NOT EXISTS `site_setting` (
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `copyright` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_items` int(11) DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `store_setting_id` int(11) DEFAULT NULL,
  KEY `fk_site_setting_user1_idx` (`updated_by`),
  KEY `fk_site_setting_store_setting1_idx` (`store_setting_id`),
  CONSTRAINT `fk_site_setting_store_setting1` FOREIGN KEY (`store_setting_id`) REFERENCES `store_setting` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_site_setting_user1` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.site_setting: ~1 rows (approximately)
DELETE FROM `site_setting`;
/*!40000 ALTER TABLE `site_setting` DISABLE KEYS */;
INSERT INTO `site_setting` (`name`, `meta_title`, `meta_keyword`, `meta_description`, `copyright`, `page_items`, `updated_by`, `store_setting_id`) VALUES
	('Necha', NULL, NULL, 'Necha by Daniella Raymond" is a Tanzanian based afro-retro womens fashion brand that specializes in urban contemporary cultural inspired clothes geared towards the young and daring women out there..', NULL, 9, 1, NULL);
/*!40000 ALTER TABLE `site_setting` ENABLE KEYS */;


-- Dumping structure for table necha.slider_content
DROP TABLE IF EXISTS `slider_content`;
CREATE TABLE IF NOT EXISTS `slider_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_id` int(11) NOT NULL,
  `header` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_slider_content_home_slider1_idx` (`slider_id`),
  CONSTRAINT `fk_slider_content_home_slider1` FOREIGN KEY (`slider_id`) REFERENCES `home_slider` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.slider_content: ~0 rows (approximately)
DELETE FROM `slider_content`;
/*!40000 ALTER TABLE `slider_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `slider_content` ENABLE KEYS */;


-- Dumping structure for table necha.store_account
DROP TABLE IF EXISTS `store_account`;
CREATE TABLE IF NOT EXISTS `store_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_store_macc_store_setting1_idx` (`store_id`),
  KEY `fk_store_account_payment_account1_idx` (`account_id`),
  KEY `fk_store_account_user1_idx` (`created_by`),
  CONSTRAINT `fk_store_account_payment_account1` FOREIGN KEY (`account_id`) REFERENCES `payment_account` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_store_account_user1` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_store_macc_store_setting1` FOREIGN KEY (`store_id`) REFERENCES `store_setting` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.store_account: ~0 rows (approximately)
DELETE FROM `store_account`;
/*!40000 ALTER TABLE `store_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_account` ENABLE KEYS */;


-- Dumping structure for table necha.store_product
DROP TABLE IF EXISTS `store_product`;
CREATE TABLE IF NOT EXISTS `store_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_store_product_product1_idx` (`product_id`),
  KEY `fk_store_product_store_setting1_idx` (`store_id`),
  KEY `fk_store_product_user1_idx` (`updated_by`),
  CONSTRAINT `fk_store_product_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_store_product_store_setting1` FOREIGN KEY (`store_id`) REFERENCES `store_setting` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_store_product_user1` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.store_product: ~0 rows (approximately)
DELETE FROM `store_product`;
/*!40000 ALTER TABLE `store_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_product` ENABLE KEYS */;


-- Dumping structure for table necha.store_setting
DROP TABLE IF EXISTS `store_setting`;
CREATE TABLE IF NOT EXISTS `store_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favicon` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approve_customer` tinyint(1) DEFAULT NULL,
  `currency_id` int(11) NOT NULL,
  `fb_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `insta_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_store_setting_currency1_idx` (`currency_id`),
  KEY `fk_store_setting_user1_idx` (`updated_by`),
  CONSTRAINT `fk_store_setting_currency1` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_store_setting_user1` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.store_setting: ~0 rows (approximately)
DELETE FROM `store_setting`;
/*!40000 ALTER TABLE `store_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_setting` ENABLE KEYS */;


-- Dumping structure for table necha.tax
DROP TABLE IF EXISTS `tax`;
CREATE TABLE IF NOT EXISTS `tax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.tax: ~0 rows (approximately)
DELETE FROM `tax`;
/*!40000 ALTER TABLE `tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax` ENABLE KEYS */;


-- Dumping structure for table necha.tax_rule
DROP TABLE IF EXISTS `tax_rule`;
CREATE TABLE IF NOT EXISTS `tax_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate` decimal(5,2) DEFAULT NULL,
  `base_on` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tax_rule_tax1_idx` (`tax_id`),
  KEY `fk_tax_rule_shipping_region1_idx` (`region_id`),
  CONSTRAINT `fk_tax_rule_shipping_region1` FOREIGN KEY (`region_id`) REFERENCES `geo_region` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tax_rule_tax1` FOREIGN KEY (`tax_id`) REFERENCES `tax` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.tax_rule: ~0 rows (approximately)
DELETE FROM `tax_rule`;
/*!40000 ALTER TABLE `tax_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_rule` ENABLE KEYS */;


-- Dumping structure for table necha.template 4
DROP TABLE IF EXISTS `template 4`;
CREATE TABLE IF NOT EXISTS `template 4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.template 4: ~0 rows (approximately)
DELETE FROM `template 4`;
/*!40000 ALTER TABLE `template 4` DISABLE KEYS */;
/*!40000 ALTER TABLE `template 4` ENABLE KEYS */;


-- Dumping structure for table necha.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.user: ~1 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `first_name`, `last_name`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
	(1, '', '', 'admin', '6lb3rrB0sFdSY2wDcKwM1utAeNoiZUYl', '$2y$13$THP3LIq0DIO3IIz0opCVjeqVn0OIcSv2HFA4oFJhDDsht6yt2HApK', NULL, 'ramaj93@yahoo.com', 10, 1470942019, 1470942019);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- Dumping structure for table necha.zone
DROP TABLE IF EXISTS `zone`;
CREATE TABLE IF NOT EXISTS `zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table necha.zone: ~0 rows (approximately)
DELETE FROM `zone`;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
