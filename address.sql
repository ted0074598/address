-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2014-12-22 11:03:35
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `address`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `a_id` int(20) NOT NULL,
  `a_class` int(20) DEFAULT NULL,
  `a_name` char(20) CHARACTER SET utf8mb4 NOT NULL,
  `a_password` char(20) CHARACTER SET utf8mb4 NOT NULL,
  `a_note` text CHARACTER SET utf8mb4
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `duty`
--

CREATE TABLE IF NOT EXISTS `duty` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` char(11) NOT NULL,
  `d_spell` char(11) NOT NULL,
  `d_f_spell` char(11) NOT NULL,
  `d_note` text NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `p_information`
--

CREATE TABLE IF NOT EXISTS `p_information` (
  `p_id` int(255) NOT NULL AUTO_INCREMENT,
  `p_name` char(11) DEFAULT NULL,
  `p_spell` char(11) DEFAULT NULL,
  `p_f_spell` char(11) DEFAULT NULL,
  `p_class` int(11) DEFAULT NULL,
  `p_path` varchar(200) DEFAULT NULL,
  `p_section` int(11) DEFAULT NULL,
  `p_note` text,
  PRIMARY KEY (`p_id`),
  UNIQUE KEY `p_id` (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `p_information`
--

INSERT INTO `p_information` (`p_id`, `p_name`, `p_spell`, `p_f_spell`, `p_class`, `p_path`, `p_section`, `p_note`) VALUES
(1, '程帅帅', 'chengshuais', 'css', 1, NULL, 0, '123123123123');

-- --------------------------------------------------------

--
-- 表的结构 `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` char(11) DEFAULT NULL,
  `s_spell` char(11) DEFAULT NULL,
  `s_f_spell` char(11) DEFAULT NULL,
  `s_note` text,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
