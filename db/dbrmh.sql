-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.9-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for posdb
CREATE DATABASE IF NOT EXISTS `posdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `posdb`;


-- Dumping structure for table posdb.mstr_coa
CREATE TABLE IF NOT EXISTS `mstr_coa` (
  `mstr_id` int(11) NOT NULL AUTO_INCREMENT,
  `mstr_code` char(20) DEFAULT NULL,
  `mstr_desc` varchar(200) DEFAULT NULL,
  `mstr_type` char(50) DEFAULT NULL,
  `mstr_status` enum('Y','N') DEFAULT NULL,
  `mstr_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mstr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table posdb.mstr_harga
CREATE TABLE IF NOT EXISTS `mstr_harga` (
  `hrg_id` int(11) NOT NULL AUTO_INCREMENT,
  `hrg_item` char(20) DEFAULT NULL,
  `hrg_type` char(20) DEFAULT NULL,
  `hrg_unitprice` decimal(12,0) DEFAULT '0',
  `hrg_sellprice` decimal(12,0) DEFAULT '0',
  `hrg_effdate` datetime DEFAULT NULL,
  `hrg_expdate` datetime DEFAULT NULL,
  `hrg_status` enum('Y','N') DEFAULT 'Y',
  PRIMARY KEY (`hrg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table posdb.mstr_item
CREATE TABLE IF NOT EXISTS `mstr_item` (
  `mstr_id` int(11) NOT NULL AUTO_INCREMENT,
  `mstr_code` char(20) DEFAULT NULL,
  `mstr_img` char(255) DEFAULT NULL,
  `mstr_name` varchar(100) DEFAULT NULL,
  `mstr_merk` char(8) DEFAULT NULL,
  `mstr_desc` varchar(200) DEFAULT NULL,
  `mstr_cat` varchar(50) DEFAULT NULL,
  `mstr_um` char(8) DEFAULT NULL,
  `mstr_type` char(8) DEFAULT NULL,
  `mstr_varian` varchar(500) DEFAULT NULL,
  `mstr_status` enum('Y','N') DEFAULT 'Y',
  `mstr_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mstr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table posdb.mstr_saldo
CREATE TABLE IF NOT EXISTS `mstr_saldo` (
  `mstr_id` int(11) NOT NULL AUTO_INCREMENT,
  `mstr_code` int(11) DEFAULT NULL,
  `mstr_year` char(4) DEFAULT NULL,
  `mstr_type` char(20) DEFAULT NULL,
  `mstr_bg01` decimal(11,2) DEFAULT NULL,
  `mstr_in01` decimal(11,2) DEFAULT NULL,
  `mstr_out01` decimal(11,2) DEFAULT NULL,
  `mstr_end01` decimal(11,2) DEFAULT NULL,
  `mstr_bg02` decimal(11,2) DEFAULT NULL,
  `mstr_in02` decimal(11,2) DEFAULT NULL,
  `mstr_out02` decimal(11,2) DEFAULT NULL,
  `mstr_end02` decimal(11,2) DEFAULT NULL,
  `mstr_bg03` decimal(11,2) DEFAULT NULL,
  `mstr_in03` decimal(11,2) DEFAULT NULL,
  `mstr_out03` decimal(11,2) DEFAULT NULL,
  `mstr_end03` decimal(11,2) DEFAULT NULL,
  `mstr_bg04` decimal(11,2) DEFAULT NULL,
  `mstr_in04` decimal(11,2) DEFAULT NULL,
  `mstr_out04` decimal(11,2) DEFAULT NULL,
  `mstr_end04` decimal(11,2) DEFAULT NULL,
  `mstr_bg05` decimal(11,2) DEFAULT NULL,
  `mstr_in05` decimal(11,2) DEFAULT NULL,
  `mstr_out05` decimal(11,2) DEFAULT NULL,
  `mstr_end05` decimal(11,2) DEFAULT NULL,
  `mstr_bg06` decimal(11,2) DEFAULT NULL,
  `mstr_in06` decimal(11,2) DEFAULT NULL,
  `mstr_out06` decimal(11,2) DEFAULT NULL,
  `mstr_end06` decimal(11,2) DEFAULT NULL,
  `mstr_bg07` decimal(11,2) DEFAULT NULL,
  `mstr_in07` decimal(11,2) DEFAULT NULL,
  `mstr_out07` decimal(11,2) DEFAULT NULL,
  `mstr_end07` decimal(11,2) DEFAULT NULL,
  `mstr_bg08` decimal(11,2) DEFAULT NULL,
  `mstr_in08` decimal(11,2) DEFAULT NULL,
  `mstr_out08` decimal(11,2) DEFAULT NULL,
  `mstr_end08` decimal(11,2) DEFAULT NULL,
  `mstr_bg09` decimal(11,2) DEFAULT NULL,
  `mstr_in09` decimal(11,2) DEFAULT NULL,
  `mstr_out09` decimal(11,2) DEFAULT NULL,
  `mstr_end09` decimal(11,2) DEFAULT NULL,
  `mstr_bg10` decimal(11,2) DEFAULT NULL,
  `mstr_in10` decimal(11,2) DEFAULT NULL,
  `mstr_out10` decimal(11,2) DEFAULT NULL,
  `mstr_end10` decimal(11,2) DEFAULT NULL,
  `mstr_bg11` decimal(11,2) DEFAULT NULL,
  `mstr_in11` decimal(11,2) DEFAULT NULL,
  `mstr_out11` decimal(11,2) DEFAULT NULL,
  `mstr_end11` decimal(11,2) DEFAULT NULL,
  `mstr_bg12` decimal(11,2) DEFAULT NULL,
  `mstr_in12` decimal(11,2) DEFAULT NULL,
  `mstr_out12` decimal(11,2) DEFAULT NULL,
  `mstr_end12` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`mstr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table posdb.mstr_user
CREATE TABLE IF NOT EXISTS `mstr_user` (
  `mstr_id` int(11) NOT NULL AUTO_INCREMENT,
  `mstr_acount` char(50) DEFAULT NULL,
  `mstr_pwd` varchar(50) DEFAULT NULL,
  `mstr_menu` varchar(200) DEFAULT NULL,
  `mstr_type` char(50) DEFAULT NULL,
  `mstr_status` enum('Y','N') DEFAULT NULL,
  `mstr_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mstr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='master user akses';

-- Data exporting was unselected.


-- Dumping structure for table posdb.setup_category
CREATE TABLE IF NOT EXISTS `setup_category` (
  `st_id` int(11) NOT NULL AUTO_INCREMENT,
  `st_code` char(50) DEFAULT NULL,
  `st_name` varchar(50) DEFAULT NULL,
  `st_status` enum('Y','N') DEFAULT 'Y',
  `st_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`st_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Category Item';

-- Data exporting was unselected.


-- Dumping structure for table posdb.setup_merk
CREATE TABLE IF NOT EXISTS `setup_merk` (
  `mr_id` int(11) NOT NULL AUTO_INCREMENT,
  `mr_code` char(4) DEFAULT NULL,
  `mr_name` varchar(50) DEFAULT NULL,
  `mr_status` enum('Y','N') DEFAULT 'Y',
  `mr_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Unit Merk';

-- Data exporting was unselected.


-- Dumping structure for table posdb.setup_neraca
CREATE TABLE IF NOT EXISTS `setup_neraca` (
  `st_id` int(11) NOT NULL AUTO_INCREMENT,
  `st_code` char(50) DEFAULT NULL,
  `st_name` varchar(50) DEFAULT NULL,
  `st_account` varchar(200) DEFAULT NULL,
  `st_status` enum('Y','N') DEFAULT NULL,
  `st_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`st_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table posdb.setup_type
CREATE TABLE IF NOT EXISTS `setup_type` (
  `tp_id` int(11) NOT NULL AUTO_INCREMENT,
  `tp_code` char(4) DEFAULT NULL,
  `tp_name` varchar(50) DEFAULT NULL,
  `tp_status` enum('Y','N') DEFAULT 'Y',
  `tp_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='type product';

-- Data exporting was unselected.


-- Dumping structure for table posdb.setup_um
CREATE TABLE IF NOT EXISTS `setup_um` (
  `um_id` int(11) NOT NULL AUTO_INCREMENT,
  `um_code` char(4) DEFAULT NULL,
  `um_name` varchar(50) DEFAULT NULL,
  `um_status` enum('Y','N') DEFAULT 'Y',
  `um_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`um_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Unit Measure';

-- Data exporting was unselected.


-- Dumping structure for table posdb.trans_coa
CREATE TABLE IF NOT EXISTS `trans_coa` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_voucher` char(50) DEFAULT NULL,
  `tr_coa` char(50) DEFAULT NULL,
  `tr_type` varchar(50) DEFAULT NULL,
  `tr_dk` char(2) DEFAULT NULL,
  `tr_amt` decimal(11,2) DEFAULT NULL,
  `tr_notes` varchar(255) DEFAULT NULL,
  `tr_user` char(50) DEFAULT NULL,
  `tr_effdate` datetime DEFAULT NULL,
  `tr_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='transaksi item';

-- Data exporting was unselected.


-- Dumping structure for table posdb.trans_item
CREATE TABLE IF NOT EXISTS `trans_item` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_item` char(50) DEFAULT NULL,
  `tr_type` varchar(50) DEFAULT NULL,
  `tr_price` decimal(11,2) unsigned DEFAULT NULL,
  `tr_qty` int(11) DEFAULT NULL,
  `tr_discount` decimal(11,2) DEFAULT NULL,
  `tr_notes` varchar(255) DEFAULT NULL,
  `tr_user` char(50) DEFAULT NULL,
  `tr_effdate` datetime DEFAULT NULL,
  `tr_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='transaksi item';

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
