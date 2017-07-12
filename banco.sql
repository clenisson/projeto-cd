-- Adminer 4.3.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP DATABASE IF EXISTS `logica_cd_curso`;
CREATE DATABASE `logica_cd_curso` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `logica_cd_curso`;

DROP TABLE IF EXISTS `alunos`;
CREATE TABLE `alunos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_turma` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `alunos` (`id`, `nome`, `idade`, `email`, `id_turma`) VALUES
(1,	'Stênia',	23,	'stenia@conhecimentodigital.com.br',	1),
(2,	'Irineu',	26,	'irineu@vocenaosabenemeu',	2);

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE `cursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `carga_horaria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `cursos` (`id`, `nome`, `carga_horaria`) VALUES
(1,	'Lógica de Programação',	45),
(2,	'Desenvolvimento Java',	40),
(4,	'Curso A',	NULL),
(5,	'sdasds',	NULL),
(6,	'Teste',	NULL);

DROP TABLE IF EXISTS `turmas`;
CREATE TABLE `turmas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inicio` date DEFAULT NULL,
  `termino` date DEFAULT NULL,
  `horario` varchar(255) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `turmas` (`id`, `inicio`, `termino`, `horario`, `id_curso`) VALUES
(1,	'2017-05-13',	'2017-07-09',	'Sábados 08h às 13h',	1),
(2,	'2017-05-13',	'2017-07-09',	'Domingo 08h às 13h',	2);

-- 2017-07-12 16:26:13