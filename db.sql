DROP DATABASE IF EXISTS peliculas;

CREATE DATABASE peliculas;

USE peliculas;

/*==============================================================*/
/* DBMS name: MySQL 5.0 */
/* Created on: 10/01/2019 21:03:26 */
/*==============================================================*/
DROP TABLE IF EXISTS ACTOR;

DROP TABLE IF EXISTS ACTOR_PELICULA;

DROP TABLE IF EXISTS ALQUILER;

DROP TABLE IF EXISTS DIRECTOR;

DROP TABLE IF EXISTS FORMATO;

DROP TABLE IF EXISTS GENERO;

DROP TABLE IF EXISTS PELICULA;

DROP TABLE IF EXISTS SEXO;

DROP TABLE IF EXISTS SOCIO;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2023 at 02:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12
SET
    SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET
    time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!40101 SET NAMES utf8mb4 */
;

--
-- Database: `peliculas`
--
-- --------------------------------------------------------
--
-- Table structure for table `actor`
--
CREATE TABLE `actor` (
    `ACT_ID` int(11) NOT NULL COMMENT 'Id',
    `SEX_ID` int(11) DEFAULT NULL COMMENT 'Sexo',
    `ACT_NOMBRE` varchar(60) NOT NULL COMMENT 'Nombre'
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci COMMENT = 'Apellidos y nombre de los actores';

--
-- Dumping data for table `actor`
--
INSERT INTO
    `actor` (`ACT_ID`, `SEX_ID`, `ACT_NOMBRE`)
VALUES
    (1, 2, 'Rock Edmenson'),
    (2, 3, 'Aloysius Mitcheson'),
    (3, 1, 'Washington Noell'),
    (4, 2, 'Tildy Argont'),
    (5, 3, 'Maurita Cherryman'),
    (6, 3, 'Patsy Squibbs'),
    (7, 1, 'Alain Gyrgorcewicx'),
    (8, 2, 'Adaline Shedden'),
    (9, 3, 'Sterling Pembridge'),
    (10, 2, 'Chet Haley'),
    (11, 1, 'Artemas O\'Scollee'),
    (12, 2, 'Konstance Hebblethwaite'),
    (13, 3, 'Boot Pencot'),
    (14, 2, 'Booth Ram'),
    (15, 3, 'Cynthia Laskey'),
    (16, 2, 'Holt Hillan'),
    (17, 3, 'Bebe Aurelius'),
    (18, 2, 'Wendi Fulker'),
    (19, 1, 'Llywellyn Cooksley'),
    (20, 3, 'Hinda Fosten'),
    (21, 2, 'Bettye Bleakman'),
    (22, 1, 'Natala Ligoe'),
    (23, 1, 'Carlye Redhole'),
    (24, 1, 'Jason Sabatier'),
    (25, 2, 'Breena Vakhrushev'),
    (26, 2, 'Pincas O\'Fallone'),
    (27, 3, 'Missy Gleadle'),
    (28, 2, 'Maurice Ingham'),
    (29, 2, 'Rem Pylkynyton'),
    (30, 1, 'Filide Dovinson'),
    (31, 3, 'Lorne Guilder'),
    (32, 3, 'Maurits Muir'),
    (33, 3, 'Alfred Saines'),
    (34, 1, 'Lisa Spours'),
    (35, 1, 'Skippy McKew'),
    (36, 1, 'Bard Navarre'),
    (37, 1, 'Robinetta McMickan'),
    (38, 2, 'Maure Huffey'),
    (39, 2, 'Charles Brotherwood'),
    (40, 2, 'Currey Glencorse'),
    (41, 1, 'Ephrem Blaschek'),
    (42, 3, 'Lanna Seaborn'),
    (43, 1, 'Coletta Keen'),
    (44, 3, 'Karlee Melladew'),
    (45, 3, 'Merry Driuzzi'),
    (46, 1, 'Muhammad Gulberg'),
    (47, 3, 'Marijn Witard'),
    (48, 1, 'Jase Nevinson'),
    (49, 1, 'Lawton McCuffie'),
    (50, 1, 'Franciska Gildea');

-- --------------------------------------------------------
--
-- Table structure for table `actor_pelicula`
--
CREATE TABLE `actor_pelicula` (
    `APL_ID` int(11) NOT NULL COMMENT 'Id',
    `ACT_ID` int(11) DEFAULT NULL COMMENT 'Actor',
    `PEL_ID` int(11) DEFAULT NULL COMMENT 'Película',
    `APL_PAPEL` varchar(60) NOT NULL COMMENT 'Papel'
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci COMMENT = 'Registro de Papel en la Película Actor Principal';

--
-- Dumping data for table `actor_pelicula`
--
INSERT INTO
    `actor_pelicula` (`APL_ID`, `ACT_ID`, `PEL_ID`, `APL_PAPEL`)
VALUES
    (1, 18, 389, 'Detective principal'),
    (2, 28, 407, 'Testigo clave'),
    (3, 2, 246, 'Detective principal'),
    (4, 13, 210, 'Héroe'),
    (5, 1, 250, 'Sospechoso'),
    (6, 38, 345, 'Terciario'),
    (7, 32, 248, 'Compañero cómico'),
    (8, 3, 352, 'Sospechoso'),
    (9, 34, 277, 'Sospechoso'),
    (10, 4, 237, 'Protagonista'),
    (11, 48, 237, 'Sospechoso'),
    (12, 5, 369, 'Antagonista'),
    (13, 10, 317, 'Antagonista'),
    (14, 8, 408, 'Coprotagonista'),
    (15, 8, 320, 'Coprotagonista'),
    (16, 37, 368, 'Informante'),
    (17, 35, 311, 'Jefe de policía'),
    (18, 24, 239, 'Jefe de policía'),
    (19, 11, 382, 'Testigo clave'),
    (20, 28, 333, 'Secundario'),
    (21, 34, 408, 'Informante'),
    (22, 9, 261, 'Jefe de policía'),
    (23, 22, 289, 'Héroe'),
    (24, 17, 257, 'Mentor'),
    (25, 7, 223, 'Compañero de aventuras'),
    (26, 45, 244, 'Antagonista'),
    (27, 29, 231, 'Héroe'),
    (28, 35, 363, 'Protagonista'),
    (29, 47, 393, 'Informante'),
    (30, 12, 389, 'Coprotagonista'),
    (31, 20, 258, 'Informante'),
    (32, 14, 343, 'Mentor'),
    (33, 47, 313, 'Secundario'),
    (34, 23, 371, 'Mentor'),
    (35, 28, 222, 'Héroe'),
    (36, 12, 386, 'Detective principal'),
    (37, 32, 246, 'Secundario'),
    (38, 8, 409, 'Testigo clave'),
    (39, 11, 372, 'Protagonista'),
    (40, 34, 304, 'Antagonista'),
    (41, 33, 255, 'Protagonista'),
    (42, 31, 368, 'Testigo clave'),
    (43, 45, 221, 'Héroe'),
    (44, 40, 295, 'Informante'),
    (45, 17, 214, 'Sospechoso'),
    (46, 43, 409, 'Informante'),
    (47, 17, 376, 'Villano'),
    (48, 38, 365, 'Compañero de aventuras'),
    (49, 38, 366, 'Villano'),
    (50, 1, 239, 'Informante'),
    (51, 10, 315, 'Héroe'),
    (52, 32, 256, 'Héroe'),
    (53, 31, 326, 'Compañero cómico'),
    (54, 45, 370, 'Villano'),
    (55, 17, 322, 'Detective principal'),
    (56, 16, 231, 'Secundario'),
    (57, 43, 303, 'Héroe'),
    (58, 2, 344, 'Compañero de aventuras'),
    (59, 10, 306, 'Villano'),
    (60, 1, 272, 'Antagonista'),
    (61, 16, 408, 'Sospechoso'),
    (62, 3, 268, 'Testigo clave'),
    (63, 24, 244, 'Protagonista'),
    (64, 34, 407, 'Antagonista'),
    (65, 40, 327, 'Compañero cómico'),
    (66, 4, 257, 'Terciario'),
    (67, 37, 235, 'Compañero de aventuras'),
    (68, 19, 290, 'Informante'),
    (69, 6, 224, 'Mentor'),
    (70, 41, 217, 'Antagonista'),
    (71, 5, 219, 'Terciario'),
    (72, 37, 301, 'Compañero de aventuras'),
    (73, 14, 201, 'Compañero de aventuras'),
    (74, 26, 320, 'Compañero de aventuras'),
    (75, 31, 351, 'Secundario'),
    (76, 20, 247, 'Mentor'),
    (77, 46, 399, 'Informante'),
    (78, 10, 380, 'Coprotagonista'),
    (79, 19, 217, 'Mentor'),
    (80, 46, 327, 'Mentor'),
    (81, 37, 324, 'Antagonista'),
    (82, 25, 286, 'Héroe'),
    (83, 16, 352, 'Coprotagonista'),
    (84, 50, 254, 'Mentor'),
    (85, 38, 357, 'Jefe de policía'),
    (86, 24, 399, 'Informante'),
    (87, 4, 339, 'Compañero cómico'),
    (88, 46, 248, 'Compañero de aventuras'),
    (89, 39, 371, 'Secundario'),
    (90, 24, 283, 'Detective principal'),
    (91, 14, 339, 'Jefe de policía'),
    (92, 32, 395, 'Protagonista'),
    (93, 50, 336, 'Villano'),
    (94, 39, 263, 'Coprotagonista'),
    (95, 45, 316, 'Villano'),
    (96, 33, 256, 'Testigo clave'),
    (97, 44, 248, 'Secundario'),
    (98, 14, 372, 'Compañero de aventuras'),
    (99, 49, 355, 'Protagonista'),
    (100, 3, 374, 'Mentor'),
    (101, 30, 259, 'Mentor'),
    (102, 2, 242, 'Compañero cómico'),
    (103, 5, 324, 'Coprotagonista'),
    (104, 21, 202, 'Héroe'),
    (105, 5, 211, 'Sospechoso'),
    (106, 26, 323, 'Coprotagonista'),
    (107, 22, 371, 'Secundario'),
    (108, 9, 260, 'Secundario'),
    (109, 26, 406, 'Jefe de policía'),
    (110, 43, 285, 'Compañero de aventuras'),
    (111, 47, 253, 'Testigo clave'),
    (112, 49, 386, 'Terciario'),
    (113, 32, 404, 'Villano'),
    (114, 17, 343, 'Protagonista'),
    (115, 2, 293, 'Sospechoso'),
    (116, 24, 382, 'Antagonista'),
    (117, 43, 202, 'Protagonista'),
    (118, 47, 206, 'Héroe'),
    (119, 31, 327, 'Villano'),
    (120, 25, 223, 'Compañero de aventuras'),
    (121, 9, 333, 'Héroe'),
    (122, 43, 300, 'Coprotagonista'),
    (123, 22, 355, 'Antagonista'),
    (124, 26, 313, 'Coprotagonista'),
    (125, 6, 326, 'Villano'),
    (126, 12, 226, 'Informante'),
    (127, 41, 332, 'Héroe'),
    (128, 31, 256, 'Coprotagonista'),
    (129, 40, 253, 'Mentor'),
    (130, 28, 211, 'Terciario'),
    (131, 49, 282, 'Antagonista'),
    (132, 44, 201, 'Informante'),
    (133, 45, 218, 'Sospechoso'),
    (134, 1, 310, 'Compañero cómico'),
    (135, 22, 244, 'Testigo clave'),
    (136, 20, 401, 'Compañero cómico'),
    (137, 26, 335, 'Compañero de aventuras'),
    (138, 26, 396, 'Compañero cómico'),
    (139, 21, 393, 'Detective principal'),
    (140, 24, 203, 'Villano'),
    (141, 23, 233, 'Jefe de policía'),
    (142, 38, 338, 'Coprotagonista'),
    (143, 44, 368, 'Sospechoso'),
    (144, 24, 343, 'Coprotagonista'),
    (145, 47, 399, 'Compañero cómico'),
    (146, 38, 232, 'Coprotagonista'),
    (147, 10, 324, 'Terciario'),
    (148, 6, 367, 'Protagonista'),
    (149, 25, 372, 'Compañero de aventuras'),
    (150, 10, 271, 'Jefe de policía'),
    (151, 15, 217, 'Testigo clave'),
    (152, 4, 258, 'Héroe'),
    (153, 16, 223, 'Coprotagonista'),
    (154, 26, 360, 'Mentor'),
    (155, 24, 305, 'Antagonista'),
    (156, 37, 248, 'Protagonista'),
    (157, 3, 227, 'Detective principal'),
    (158, 50, 229, 'Jefe de policía'),
    (159, 17, 254, 'Informante'),
    (160, 15, 405, 'Secundario'),
    (161, 45, 246, 'Compañero de aventuras'),
    (162, 44, 359, 'Terciario'),
    (163, 12, 357, 'Mentor'),
    (164, 42, 239, 'Sospechoso'),
    (165, 33, 335, 'Protagonista'),
    (166, 14, 353, 'Jefe de policía'),
    (167, 14, 382, 'Compañero de aventuras'),
    (168, 45, 388, 'Compañero de aventuras'),
    (169, 23, 299, 'Antagonista'),
    (170, 36, 253, 'Detective principal'),
    (171, 31, 247, 'Informante'),
    (172, 4, 202, 'Héroe'),
    (173, 41, 327, 'Jefe de policía'),
    (174, 39, 217, 'Compañero de aventuras'),
    (175, 6, 409, 'Héroe'),
    (176, 26, 385, 'Villano'),
    (177, 45, 206, 'Detective principal'),
    (178, 36, 297, 'Jefe de policía'),
    (179, 31, 357, 'Compañero cómico'),
    (180, 17, 346, 'Jefe de policía'),
    (181, 3, 206, 'Terciario'),
    (182, 13, 375, 'Jefe de policía'),
    (183, 7, 343, 'Héroe'),
    (184, 14, 205, 'Compañero cómico'),
    (185, 49, 318, 'Terciario'),
    (186, 2, 385, 'Detective principal'),
    (187, 43, 311, 'Protagonista'),
    (188, 45, 357, 'Compañero de aventuras'),
    (189, 37, 361, 'Coprotagonista'),
    (190, 31, 343, 'Informante'),
    (191, 40, 310, 'Jefe de policía'),
    (192, 37, 278, 'Jefe de policía'),
    (193, 15, 374, 'Secundario'),
    (194, 24, 214, 'Protagonista'),
    (195, 5, 357, 'Compañero de aventuras'),
    (196, 19, 374, 'Protagonista'),
    (197, 45, 386, 'Villano'),
    (198, 1, 373, 'Detective principal'),
    (199, 49, 341, 'Testigo clave'),
    (200, 48, 407, 'Héroe'),
    (201, 30, 252, 'Antagonista'),
    (202, 43, 247, 'Detective principal'),
    (203, 5, 270, 'Compañero cómico'),
    (204, 19, 252, 'Informante'),
    (205, 40, 340, 'Coprotagonista'),
    (206, 44, 379, 'Compañero cómico'),
    (207, 49, 363, 'Antagonista'),
    (208, 38, 291, 'Compañero cómico'),
    (209, 5, 267, 'Héroe'),
    (210, 36, 345, 'Detective principal'),
    (211, 31, 313, 'Compañero cómico'),
    (212, 22, 249, 'Héroe'),
    (213, 33, 276, 'Terciario'),
    (214, 23, 208, 'Sospechoso'),
    (215, 12, 216, 'Coprotagonista'),
    (216, 46, 346, 'Terciario'),
    (217, 44, 233, 'Mentor'),
    (218, 10, 397, 'Compañero cómico'),
    (219, 38, 298, 'Detective principal'),
    (220, 35, 248, 'Mentor'),
    (221, 50, 243, 'Sospechoso'),
    (222, 42, 223, 'Detective principal'),
    (223, 24, 246, 'Villano'),
    (224, 20, 247, 'Testigo clave'),
    (225, 38, 272, 'Terciario'),
    (226, 17, 297, 'Villano'),
    (227, 49, 339, 'Compañero cómico'),
    (228, 21, 246, 'Sospechoso'),
    (229, 48, 287, 'Villano'),
    (230, 28, 404, 'Testigo clave'),
    (231, 28, 388, 'Secundario'),
    (232, 12, 402, 'Antagonista'),
    (233, 7, 368, 'Testigo clave'),
    (234, 3, 334, 'Coprotagonista'),
    (235, 3, 335, 'Compañero cómico'),
    (236, 47, 334, 'Mentor'),
    (237, 26, 357, 'Sospechoso'),
    (238, 14, 337, 'Compañero de aventuras'),
    (239, 34, 319, 'Secundario'),
    (240, 41, 284, 'Compañero de aventuras'),
    (241, 12, 219, 'Terciario'),
    (242, 12, 294, 'Secundario'),
    (243, 40, 206, 'Informante'),
    (244, 45, 310, 'Villano'),
    (245, 23, 365, 'Compañero cómico'),
    (246, 34, 345, 'Compañero de aventuras'),
    (247, 1, 286, 'Antagonista'),
    (248, 24, 387, 'Terciario'),
    (249, 20, 314, 'Mentor'),
    (250, 21, 306, 'Testigo clave');

-- --------------------------------------------------------
--
-- Table structure for table `alquiler`
--
CREATE TABLE `alquiler` (
    `ALQ_ID` int(11) NOT NULL COMMENT 'Id',
    `SOC_ID` int(11) DEFAULT NULL COMMENT 'Socio',
    `PEL_ID` int(11) DEFAULT NULL COMMENT 'Película',
    `ALQ_FECHA_DESDE` date NOT NULL COMMENT 'Fecha Inicial',
    `ALQ_FECHA_HASTA` date NOT NULL COMMENT 'Fecha Final',
    `ALQ_VALOR` decimal(10, 2) NOT NULL COMMENT 'Valor',
    `ALQ_FECHA_ENTREGA` date DEFAULT NULL COMMENT 'Fecha Entrega'
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci COMMENT = 'Datos de Alquiler de la Película al Socio';

--
-- Dumping data for table `alquiler`
--
INSERT INTO
    `alquiler` (
        `ALQ_ID`,
        `SOC_ID`,
        `PEL_ID`,
        `ALQ_FECHA_DESDE`,
        `ALQ_FECHA_HASTA`,
        `ALQ_VALOR`,
        `ALQ_FECHA_ENTREGA`
    )
VALUES
    (
        1,
        5,
        306,
        '2023-03-18',
        '2023-07-23',
        4.52,
        '2023-04-20'
    ),
    (
        2,
        21,
        230,
        '2023-03-30',
        '2023-05-27',
        7.08,
        '2023-07-30'
    ),
    (
        3,
        40,
        221,
        '2023-05-06',
        '2023-01-03',
        33.58,
        '2023-01-15'
    ),
    (
        4,
        24,
        342,
        '2023-08-02',
        '2024-02-23',
        16.38,
        '2023-02-14'
    ),
    (
        5,
        11,
        364,
        '2023-01-24',
        '2024-01-30',
        31.61,
        '2023-09-23'
    ),
    (
        6,
        28,
        393,
        '2023-01-20',
        '2023-06-24',
        3.36,
        '2022-12-25'
    ),
    (
        7,
        23,
        251,
        '2023-09-02',
        '2024-03-17',
        35.31,
        '2023-10-24'
    ),
    (
        8,
        22,
        273,
        '2023-06-07',
        '2023-09-01',
        34.71,
        '2023-04-19'
    ),
    (
        9,
        22,
        299,
        '2023-09-30',
        '2023-05-11',
        2.80,
        '2023-04-26'
    ),
    (
        10,
        24,
        342,
        '2023-05-09',
        '2023-06-23',
        23.99,
        '2023-11-25'
    ),
    (
        11,
        47,
        393,
        '2023-06-10',
        '2023-10-31',
        43.18,
        '2023-01-06'
    ),
    (
        12,
        26,
        235,
        '2023-06-01',
        '2023-10-19',
        29.39,
        '2023-05-28'
    ),
    (
        13,
        15,
        260,
        '2023-10-09',
        '2024-06-09',
        35.41,
        '2023-01-07'
    ),
    (
        14,
        32,
        219,
        '2023-10-06',
        '2023-05-25',
        34.16,
        '2023-03-07'
    ),
    (
        15,
        35,
        236,
        '2023-03-01',
        '2024-05-22',
        4.22,
        '2023-01-25'
    ),
    (
        16,
        27,
        238,
        '2023-09-15',
        '2024-06-20',
        15.64,
        '2023-12-12'
    ),
    (
        17,
        50,
        397,
        '2023-04-08',
        '2024-05-23',
        2.13,
        '2023-03-10'
    ),
    (
        18,
        10,
        337,
        '2023-10-07',
        '2024-06-24',
        17.54,
        '2023-07-17'
    ),
    (
        19,
        33,
        349,
        '2023-02-27',
        '2023-02-16',
        1.04,
        '2023-09-09'
    ),
    (
        20,
        6,
        301,
        '2023-07-17',
        '2024-01-11',
        2.98,
        '2023-05-14'
    ),
    (
        21,
        35,
        305,
        '2023-05-01',
        '2023-03-19',
        44.16,
        '2023-06-15'
    ),
    (
        22,
        44,
        408,
        '2023-03-26',
        '2024-01-25',
        23.27,
        '2023-11-27'
    ),
    (
        23,
        36,
        396,
        '2023-05-21',
        '2023-05-30',
        7.01,
        '2023-09-20'
    ),
    (
        24,
        40,
        237,
        '2023-01-30',
        '2023-07-13',
        7.03,
        '2023-03-01'
    ),
    (
        25,
        39,
        252,
        '2023-06-03',
        '2024-04-13',
        27.56,
        '2023-10-11'
    ),
    (
        26,
        2,
        302,
        '2023-09-24',
        '2022-12-21',
        40.67,
        '2023-12-11'
    ),
    (
        27,
        17,
        273,
        '2023-05-26',
        '2023-11-04',
        48.70,
        '2023-02-25'
    ),
    (
        28,
        16,
        398,
        '2023-09-08',
        '2023-09-26',
        44.80,
        '2023-01-05'
    ),
    (
        29,
        16,
        336,
        '2023-10-20',
        '2024-01-02',
        33.25,
        '2023-08-20'
    ),
    (
        30,
        17,
        395,
        '2023-02-03',
        '2024-02-26',
        1.67,
        '2023-05-15'
    ),
    (
        31,
        43,
        228,
        '2023-05-23',
        '2023-02-28',
        5.22,
        '2023-02-23'
    ),
    (
        32,
        18,
        249,
        '2023-03-11',
        '2023-08-02',
        1.84,
        '2023-08-27'
    ),
    (
        33,
        43,
        201,
        '2023-08-14',
        '2023-08-08',
        23.75,
        '2023-03-25'
    ),
    (
        34,
        11,
        253,
        '2023-02-11',
        '2023-12-18',
        1.36,
        '2023-06-16'
    ),
    (
        35,
        40,
        253,
        '2023-09-05',
        '2023-10-15',
        7.66,
        '2023-10-22'
    ),
    (
        36,
        21,
        380,
        '2023-10-30',
        '2023-08-06',
        2.86,
        '2023-10-19'
    ),
    (
        37,
        21,
        322,
        '2023-01-23',
        '2023-03-22',
        48.19,
        '2023-10-22'
    ),
    (
        38,
        24,
        213,
        '2023-07-15',
        '2024-01-18',
        17.64,
        '2023-04-03'
    ),
    (
        39,
        32,
        300,
        '2023-10-03',
        '2023-10-15',
        8.97,
        '2023-02-11'
    ),
    (
        40,
        34,
        366,
        '2023-04-30',
        '2024-04-16',
        10.13,
        '2023-04-03'
    ),
    (
        41,
        35,
        359,
        '2023-04-22',
        '2023-09-29',
        13.66,
        '2023-10-03'
    ),
    (
        42,
        44,
        213,
        '2022-12-30',
        '2023-07-13',
        26.29,
        '2023-05-09'
    ),
    (
        43,
        50,
        312,
        '2023-01-06',
        '2023-12-19',
        37.75,
        '2023-07-02'
    ),
    (
        44,
        11,
        256,
        '2023-02-15',
        '2022-12-31',
        12.81,
        '2023-10-29'
    ),
    (
        45,
        3,
        312,
        '2023-06-08',
        '2023-02-27',
        38.40,
        '2023-05-25'
    ),
    (
        46,
        39,
        385,
        '2023-01-07',
        '2023-10-24',
        10.58,
        '2023-04-16'
    ),
    (
        47,
        13,
        253,
        '2023-03-24',
        '2023-02-22',
        43.11,
        '2023-08-27'
    ),
    (
        48,
        42,
        368,
        '2023-10-28',
        '2023-10-04',
        45.70,
        '2023-03-08'
    ),
    (
        49,
        14,
        258,
        '2023-02-14',
        '2023-11-13',
        18.21,
        '2023-04-21'
    ),
    (
        50,
        24,
        248,
        '2023-01-10',
        '2023-07-16',
        4.11,
        '2023-12-13'
    );

-- --------------------------------------------------------
--
-- Table structure for table `director`
--
CREATE TABLE `director` (
    `DIR_ID` int(11) NOT NULL COMMENT 'Id',
    `DIR_NOMBRE` varchar(60) NOT NULL COMMENT 'Nombre'
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci COMMENT = 'Nombre del director de la película';

--
-- Dumping data for table `director`
--
INSERT INTO
    `director` (`DIR_ID`, `DIR_NOMBRE`)
VALUES
    (1, 'Cosette Yter'),
    (2, 'Waring Piborn'),
    (3, 'Ellie St. Clair'),
    (4, 'Belva Strutz'),
    (5, 'Eleanora Stanfield'),
    (6, 'Cecil Charon'),
    (7, 'Tracie Kayne'),
    (8, 'Roseanna Crockley'),
    (9, 'Allin Jann'),
    (10, 'Mercie Clardge'),
    (11, 'Shana Pigeram'),
    (12, 'Tybie Leavry'),
    (13, 'Verney Leve'),
    (14, 'Marney Hasnip'),
    (15, 'Kellen Zanassi'),
    (16, 'Glennis Charkham'),
    (17, 'Sim Ondrus'),
    (18, 'Dallas Blockey'),
    (19, 'Midge Cecere'),
    (20, 'Kaycee Goodsir');

-- --------------------------------------------------------
--
-- Table structure for table `formato`
--
CREATE TABLE `formato` (
    `FOR_ID` int(11) NOT NULL COMMENT 'Id',
    `FOR_NOMBRE` varchar(60) NOT NULL COMMENT 'Nombre'
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci COMMENT = 'CD, DVD, VHS';

--
-- Dumping data for table `formato`
--
INSERT INTO
    `formato` (`FOR_ID`, `FOR_NOMBRE`)
VALUES
    (1, 'Blu-ray'),
    (2, 'DVD'),
    (3, 'Digital');

-- --------------------------------------------------------
--
-- Table structure for table `genero`
--
CREATE TABLE `genero` (
    `GEN_ID` int(11) NOT NULL COMMENT 'Id',
    `GEN_NOMBRE` varchar(60) NOT NULL COMMENT 'Nombre'
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci COMMENT = 'Romántica, Cómico, Ciencia Ficción, Deportes';

--
-- Dumping data for table `genero`
--
INSERT INTO
    `genero` (`GEN_ID`, `GEN_NOMBRE`)
VALUES
    (1, 'Action'),
    (2, 'Adventure'),
    (3, 'Animation'),
    (4, 'Children'),
    (5, 'Comedy'),
    (6, 'Crime'),
    (7, 'Documentary'),
    (8, 'Drama'),
    (9, 'Fantasy'),
    (10, 'Horror'),
    (11, 'Musical'),
    (12, 'Romance'),
    (13, 'Sci-Fi'),
    (14, 'Thriller'),
    (15, 'War'),
    (16, 'Western');

-- --------------------------------------------------------
--
-- Table structure for table `pelicula`
--
CREATE TABLE `pelicula` (
    `PEL_ID` int(11) NOT NULL COMMENT 'Id',
    `GEN_ID` int(11) DEFAULT NULL COMMENT 'Género',
    `DIR_ID` int(11) DEFAULT NULL COMMENT 'Director',
    `FOR_ID` int(11) DEFAULT NULL COMMENT 'Formato',
    `PEL_NOMBRE` varchar(60) NOT NULL COMMENT 'Nombre',
    `PEL_COSTO` decimal(10, 2) NOT NULL COMMENT 'Costo',
    `PEL_FECHA_ESTRENO` date DEFAULT NULL COMMENT 'Fecha Estreno'
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci COMMENT = 'Datos de Identificación de la Película';

--
-- Dumping data for table `pelicula`
--
INSERT INTO
    `pelicula` (
        `PEL_ID`,
        `GEN_ID`,
        `DIR_ID`,
        `FOR_ID`,
        `PEL_NOMBRE`,
        `PEL_COSTO`,
        `PEL_FECHA_ESTRENO`
    )
VALUES
    (
        201,
        5,
        13,
        2,
        'Front Line, The (Go-ji-jeon)',
        36.66,
        '2006-10-30'
    ),
    (
        202,
        11,
        1,
        3,
        'Day of Anger (I giorni dell\'ira)',
        42.86,
        '2012-11-09'
    ),
    (
        203,
        13,
        5,
        3,
        'Black Tights (1-2-3-4 ou Les Collants noirs)',
        46.68,
        '2014-03-18'
    ),
    (204, 11, 13, 1, 'Psycho', 16.24, '2000-10-29'),
    (
        205,
        10,
        16,
        1,
        'Paprika (Papurika)',
        12.68,
        '2019-07-26'
    ),
    (
        206,
        8,
        7,
        1,
        'Edison Force (a.k.a. Edison)',
        19.06,
        '2018-07-03'
    ),
    (
        207,
        10,
        19,
        2,
        'Liv & Ingmar',
        7.06,
        '2010-12-06'
    ),
    (
        208,
        7,
        17,
        3,
        'Way Out West',
        11.57,
        '2010-02-13'
    ),
    (
        209,
        3,
        8,
        1,
        'Twice in a Lifetime',
        4.02,
        '2019-01-16'
    ),
    (210, 4, 3, 3, 'Parked', 13.37, '2007-04-30'),
    (
        211,
        9,
        17,
        3,
        'The Wonders',
        36.91,
        '2000-02-10'
    ),
    (212, 3, 9, 3, 'Striptease', 40.25, '2005-12-26'),
    (
        213,
        9,
        17,
        1,
        'Hunger Games, The',
        22.29,
        '2017-03-02'
    ),
    (
        214,
        10,
        10,
        3,
        'Brother 2 (Brat 2)',
        29.19,
        '2008-05-24'
    ),
    (
        215,
        7,
        10,
        3,
        'Must Have Been Love',
        45.76,
        '2016-05-28'
    ),
    (
        216,
        13,
        11,
        2,
        'Filth and the Fury, The',
        16.10,
        '2004-02-10'
    ),
    (
        217,
        13,
        9,
        1,
        'Perfect World, A',
        49.32,
        '2004-05-21'
    ),
    (218, 2, 5, 1, 'Duel', 31.33, '2004-03-12'),
    (
        219,
        5,
        12,
        3,
        'Stig-Helmer Story, The',
        22.35,
        '2012-11-06'
    ),
    (
        220,
        12,
        17,
        2,
        'Cold Prey II (Fritt Vilt II)',
        37.05,
        '2014-05-01'
    ),
    (
        221,
        8,
        14,
        1,
        'Great Outdoors, The',
        43.49,
        '2018-03-22'
    ),
    (
        222,
        3,
        2,
        1,
        'Fern flowers (Fleur de fougère)',
        46.92,
        '2011-03-19'
    ),
    (223, 7, 20, 3, 'Bug', 6.81, '2010-07-01'),
    (
        224,
        13,
        9,
        1,
        'Spider Forest (Geomi sup)',
        46.95,
        '2001-04-27'
    ),
    (225, 3, 20, 1, 'Wonderland', 5.68, '2012-11-25'),
    (226, 6, 18, 3, 'Illtown', 26.90, '2013-09-06'),
    (
        227,
        8,
        9,
        2,
        'Fade to Black',
        28.59,
        '2007-01-05'
    ),
    (
        228,
        10,
        3,
        2,
        'How the Grinch Stole Christmas (a.k.a. The Grinch)',
        31.41,
        '2022-02-06'
    ),
    (
        229,
        4,
        7,
        3,
        'Scorpion King 2: Rise of a Warrior, The',
        39.70,
        '2008-03-05'
    ),
    (230, 6, 10, 2, 'Stranded', 41.72, '2001-07-31'),
    (
        231,
        13,
        11,
        2,
        'Sign of Leo, The (Signe du lion, Le)',
        18.95,
        '2017-07-06'
    ),
    (232, 16, 9, 3, 'Talk to Me', 22.00, '2007-01-11'),
    (
        233,
        3,
        12,
        3,
        'Don Is Dead, The',
        10.42,
        '2013-01-12'
    ),
    (234, 16, 3, 2, 'Wolfen', 43.58, '2010-07-08'),
    (
        235,
        16,
        10,
        2,
        'Wonderland',
        19.07,
        '2023-12-03'
    ),
    (
        236,
        15,
        10,
        1,
        'Crazy as Hell',
        45.06,
        '2001-03-27'
    ),
    (
        237,
        10,
        3,
        2,
        'Chapter Two',
        23.01,
        '2022-09-12'
    ),
    (
        238,
        10,
        19,
        1,
        'Supercop 2 (Project S) (Chao ji ji hua)',
        24.64,
        '2023-02-15'
    ),
    (
        239,
        16,
        3,
        1,
        'Racing Dreams',
        15.50,
        '2009-01-01'
    ),
    (
        240,
        14,
        16,
        1,
        'Wild Angels, The',
        32.78,
        '2003-05-30'
    ),
    (
        241,
        6,
        8,
        3,
        'Flowers in the Attic',
        9.60,
        '2004-02-19'
    ),
    (
        242,
        3,
        13,
        1,
        'The Great Gatsby',
        8.74,
        '2019-01-10'
    ),
    (
        243,
        10,
        15,
        2,
        'Hobbit, The',
        23.82,
        '2007-12-02'
    ),
    (
        244,
        15,
        14,
        3,
        'It\'s a Bird',
        19.69,
        '2014-11-04'
    ),
    (
        245,
        11,
        8,
        1,
        'Five Dedicated to Ozu',
        26.04,
        '2010-06-04'
    ),
    (
        246,
        9,
        16,
        1,
        'Taste of Tea, The (Cha no aji)',
        27.87,
        '2012-01-22'
    ),
    (
        247,
        5,
        18,
        2,
        'The Magic Crystal',
        26.73,
        '2000-02-14'
    ),
    (
        248,
        2,
        6,
        1,
        'Cheech & Chong\'s The Corsican Brothers',
        34.52,
        '2015-10-16'
    ),
    (
        249,
        8,
        6,
        3,
        'Secret, A (Un secret)',
        12.88,
        '2001-02-26'
    ),
    (250, 6, 7, 3, 'Pollyanna', 6.69, '2006-08-21'),
    (
        251,
        12,
        18,
        2,
        'Faces of Death 5',
        10.84,
        '2023-03-27'
    ),
    (
        252,
        16,
        15,
        3,
        'Dodgeball: A True Underdog Story',
        42.97,
        '2014-05-11'
    ),
    (
        253,
        2,
        16,
        3,
        'Brother of Sleep (Schlafes Bruder)',
        43.68,
        '2012-06-20'
    ),
    (
        254,
        7,
        1,
        2,
        'Pokrajina St.2',
        34.88,
        '2019-10-30'
    ),
    (
        255,
        12,
        14,
        1,
        'Crawlspace',
        49.81,
        '2021-12-31'
    ),
    (256, 8, 13, 2, 'The Grump', 19.48, '2000-12-16'),
    (
        257,
        13,
        6,
        2,
        'Doubting Thomas',
        12.89,
        '2018-05-08'
    ),
    (
        258,
        13,
        14,
        2,
        'Poetic Justice',
        34.65,
        '2013-03-29'
    ),
    (
        259,
        9,
        7,
        3,
        'Century of the Dragon (Long zai bian yuan)',
        7.06,
        '2021-12-11'
    ),
    (
        260,
        16,
        12,
        2,
        'Me Without You',
        29.38,
        '2009-10-01'
    ),
    (
        261,
        12,
        15,
        1,
        'Clean and Sober',
        34.59,
        '2011-05-17'
    ),
    (
        262,
        13,
        8,
        1,
        'Out of the Fog',
        30.31,
        '2001-10-29'
    ),
    (263, 8, 2, 3, 'Safe Haven', 44.46, '2003-03-13'),
    (
        264,
        10,
        3,
        3,
        'Eye of the Storm, The',
        13.32,
        '2005-07-17'
    ),
    (265, 10, 20, 1, 'Cobb', 8.80, '2022-07-01'),
    (
        266,
        8,
        18,
        2,
        'Battle of Shaker Heights, The',
        15.85,
        '2013-09-05'
    ),
    (
        267,
        8,
        15,
        1,
        'Only God Forgives',
        27.58,
        '2005-03-13'
    ),
    (268, 5, 20, 3, 'Whisper', 2.61, '2002-02-18'),
    (
        269,
        4,
        15,
        1,
        'Girl Walk: All Day',
        48.45,
        '2018-07-04'
    ),
    (270, 15, 8, 3, 'Red Ensign', 18.20, '2017-11-22'),
    (271, 15, 9, 1, 'Madeleine', 39.96, '2006-10-27'),
    (272, 1, 7, 1, 'Balto', 6.44, '2020-10-08'),
    (273, 14, 7, 1, 'Gladiator', 42.52, '2004-09-24'),
    (
        274,
        5,
        7,
        3,
        'New Rose Hotel',
        4.19,
        '2003-09-26'
    ),
    (
        275,
        8,
        3,
        2,
        'Jack the Ripper',
        20.49,
        '2017-02-18'
    ),
    (276, 9, 8, 3, 'Ingrid', 41.70, '2009-04-10'),
    (
        277,
        11,
        16,
        1,
        'Saving Private Ryan',
        16.73,
        '2022-12-12'
    ),
    (
        278,
        11,
        12,
        3,
        'Pink Cadillac',
        38.67,
        '2001-07-24'
    ),
    (279, 2, 1, 1, 'La Rabbia', 25.05, '2012-04-04'),
    (280, 10, 10, 1, 'Rock Star', 16.10, '2006-02-07'),
    (
        281,
        14,
        18,
        3,
        'They All Lie',
        40.53,
        '2004-05-25'
    ),
    (282, 15, 19, 1, 'Lorna', 38.67, '2009-09-01'),
    (
        283,
        10,
        11,
        1,
        'Diên Biên Phú',
        8.58,
        '2003-10-19'
    ),
    (284, 8, 11, 3, 'Arbor, The', 33.74, '2002-05-27'),
    (285, 9, 10, 1, 'Pandemonium', 6.19, '2020-06-30'),
    (286, 10, 8, 1, 'Charade', 17.10, '2004-03-13'),
    (
        287,
        7,
        12,
        3,
        'Boot, Das (Boat, The)',
        2.31,
        '2017-04-03'
    ),
    (
        288,
        8,
        1,
        3,
        'Cassandra\'s Dream',
        28.41,
        '2013-03-30'
    ),
    (
        289,
        15,
        15,
        2,
        'Burn Paris Burn',
        33.49,
        '2022-06-15'
    ),
    (
        290,
        1,
        6,
        1,
        'Jin Roh: The Wolf Brigade (Jin-Rô)',
        37.69,
        '2005-12-12'
    ),
    (
        291,
        9,
        3,
        3,
        'Paradise Now',
        10.62,
        '2001-11-27'
    ),
    (292, 2, 20, 3, 'Burlesque', 31.68, '2009-11-15'),
    (
        293,
        8,
        6,
        3,
        'It\'s a Boy Girl Thing',
        13.07,
        '2023-12-13'
    ),
    (
        294,
        12,
        10,
        1,
        'Far Off Place, A',
        18.69,
        '2022-01-11'
    ),
    (
        295,
        8,
        14,
        2,
        'Holy Land, The',
        38.79,
        '2005-01-30'
    ),
    (
        296,
        9,
        18,
        2,
        'Eversmile, New Jersey',
        20.96,
        '2013-01-14'
    ),
    (
        297,
        11,
        6,
        1,
        'Desperation',
        47.78,
        '2016-03-21'
    ),
    (298, 11, 10, 3, 'Candy', 45.40, '2007-07-25'),
    (
        299,
        7,
        3,
        1,
        'Dreamers, The',
        17.68,
        '2012-10-21'
    ),
    (300, 16, 19, 2, 'Nine', 8.35, '2016-10-26'),
    (
        301,
        10,
        7,
        1,
        'I Love You Too (Ik ook Van Jou)',
        12.08,
        '2009-11-18'
    ),
    (302, 14, 11, 3, 'Switch', 43.32, '2009-01-12'),
    (
        303,
        9,
        8,
        1,
        'Ruling Class, The',
        11.00,
        '2016-07-05'
    ),
    (304, 7, 4, 1, 'Saint Ralph', 43.07, '2023-03-10'),
    (
        305,
        9,
        5,
        1,
        'Haunted Castle, The (Hiroku kaibyô-den)',
        46.25,
        '2008-07-26'
    ),
    (306, 13, 6, 3, 'For Ellen', 32.42, '2019-08-09'),
    (
        307,
        6,
        17,
        1,
        'Day in the Life, A',
        46.26,
        '2014-08-09'
    ),
    (
        308,
        11,
        13,
        3,
        'Kvarteret Skatan reser till Laholm',
        30.50,
        '2019-10-05'
    ),
    (
        309,
        12,
        1,
        1,
        'America 3000',
        28.28,
        '2014-12-13'
    ),
    (
        310,
        12,
        16,
        1,
        'Something from Nothing: The Art of Rap',
        16.31,
        '2023-07-03'
    ),
    (311, 9, 11, 2, 'Blackwoods', 32.05, '2011-04-05'),
    (
        312,
        3,
        17,
        1,
        'ThanksKilling 3 ',
        28.37,
        '2005-05-30'
    ),
    (
        313,
        1,
        17,
        1,
        'Huckleberry Finn',
        9.59,
        '2015-06-26'
    ),
    (314, 13, 14, 3, 'Girl Shy', 19.08, '2002-04-29'),
    (
        315,
        1,
        1,
        3,
        'Hell\'s Angels',
        20.42,
        '2002-03-10'
    ),
    (
        316,
        7,
        14,
        1,
        'The Monastery of Sendomir',
        38.11,
        '2020-01-30'
    ),
    (
        317,
        4,
        20,
        3,
        'Visitors, The',
        42.30,
        '2015-02-09'
    ),
    (
        318,
        6,
        5,
        2,
        'Execution Squad',
        42.92,
        '2002-06-21'
    ),
    (
        319,
        6,
        4,
        2,
        'The Uninvited Guest',
        24.44,
        '2001-09-09'
    ),
    (
        320,
        11,
        1,
        1,
        'What Goes Up',
        20.56,
        '2018-12-03'
    ),
    (
        321,
        15,
        3,
        1,
        'MacGyver: Trail to Doomsday',
        7.09,
        '2006-07-24'
    ),
    (
        322,
        7,
        19,
        1,
        'Support Your Local Sheriff!',
        48.10,
        '2009-11-20'
    ),
    (
        323,
        15,
        11,
        2,
        'Sherlock Holmes',
        48.22,
        '2016-02-09'
    ),
    (
        324,
        2,
        17,
        3,
        'Generation War',
        16.86,
        '2019-07-26'
    ),
    (
        325,
        15,
        15,
        2,
        'Paraíso Travel',
        13.27,
        '2002-08-09'
    ),
    (
        326,
        8,
        19,
        2,
        'Beauty and the Boss',
        24.28,
        '2003-04-14'
    ),
    (327, 6, 4, 2, 'Go Tigers!', 24.45, '2020-04-14'),
    (
        328,
        14,
        1,
        3,
        'Girl From Nowhere, The',
        31.78,
        '2019-04-01'
    ),
    (
        329,
        13,
        11,
        3,
        'Thirteen Ghosts (a.k.a. Thir13en Ghosts)',
        3.99,
        '2015-11-28'
    ),
    (330, 2, 20, 3, 'Live!', 48.46, '2015-01-22'),
    (
        331,
        4,
        9,
        1,
        'Hearts of Darkness: A Filmmakers Apocalypse',
        16.02,
        '2014-10-20'
    ),
    (
        332,
        5,
        3,
        3,
        'Immortal Beloved',
        25.84,
        '2014-08-06'
    ),
    (
        333,
        15,
        16,
        1,
        'Nibelungen: Siegfried, Die',
        39.02,
        '2001-12-07'
    ),
    (
        334,
        10,
        2,
        1,
        'The Sky Dragon',
        9.66,
        '2017-02-14'
    ),
    (
        335,
        12,
        13,
        3,
        'Caller, The',
        37.61,
        '2008-10-14'
    ),
    (
        336,
        13,
        19,
        3,
        'Cambridge Spies',
        9.58,
        '2012-11-27'
    ),
    (337, 10, 8, 1, 'Head', 22.95, '2016-10-15'),
    (338, 15, 12, 1, 'Table 7', 20.06, '2015-05-06'),
    (
        339,
        8,
        17,
        1,
        'Abbott and Costello in the Foreign Legion',
        46.41,
        '2008-08-17'
    ),
    (
        340,
        14,
        19,
        2,
        'Godfather: Part II, The',
        24.15,
        '2004-01-12'
    ),
    (
        341,
        5,
        18,
        1,
        'Fright Night',
        42.23,
        '2018-06-13'
    ),
    (
        342,
        9,
        13,
        2,
        'Winnie the Pooh',
        49.24,
        '2004-11-18'
    ),
    (
        343,
        11,
        12,
        2,
        'Bride Came C.O.D., The',
        9.96,
        '2000-06-03'
    ),
    (344, 5, 11, 2, 'Clown, The', 31.54, '2015-06-21'),
    (
        345,
        16,
        9,
        1,
        'Inseparable',
        41.96,
        '2017-02-23'
    ),
    (
        346,
        12,
        14,
        3,
        'Naked Souls',
        15.86,
        '2001-05-28'
    ),
    (
        347,
        2,
        16,
        3,
        'Amityville Horror, The',
        16.79,
        '2000-10-08'
    ),
    (
        348,
        3,
        19,
        1,
        'Orderers (Les ordres)',
        26.03,
        '2023-03-15'
    ),
    (
        349,
        15,
        20,
        3,
        'Maniac Cop 2',
        9.83,
        '2013-06-23'
    ),
    (
        350,
        4,
        19,
        2,
        'Electric Dreams',
        24.70,
        '2008-08-29'
    ),
    (
        351,
        1,
        8,
        3,
        'Mad Miss Manton, The',
        29.85,
        '2003-03-10'
    ),
    (352, 12, 13, 3, 'Valhalla', 35.15, '2017-10-03'),
    (
        353,
        14,
        6,
        1,
        'Eye for an Eye',
        46.26,
        '2018-09-10'
    ),
    (354, 4, 3, 2, 'Felicity', 24.65, '2006-05-28'),
    (355, 4, 10, 2, 'King Kong', 13.96, '2008-11-02'),
    (
        356,
        10,
        7,
        3,
        'Radioland Murders',
        8.39,
        '2018-02-08'
    ),
    (357, 3, 11, 1, 'Hush', 14.39, '2000-01-08'),
    (
        358,
        16,
        16,
        2,
        'Idle Hands',
        43.31,
        '2003-09-22'
    ),
    (
        359,
        3,
        16,
        1,
        'Under the Cherry Moon',
        27.91,
        '2015-08-17'
    ),
    (
        360,
        6,
        19,
        1,
        'Strange Bedfellows',
        37.95,
        '2005-01-01'
    ),
    (361, 4, 13, 2, 'Dying Breed', 6.16, '2018-07-26'),
    (
        362,
        15,
        16,
        3,
        'All Dogs Go to Heaven 2',
        8.80,
        '2015-06-30'
    ),
    (
        363,
        2,
        3,
        2,
        'The Haunting of Helena',
        6.46,
        '2009-05-27'
    ),
    (364, 4, 13, 1, 'Buttcrack', 21.44, '2023-08-27'),
    (
        365,
        14,
        8,
        1,
        'Widow of St. Pierre, The (Veuve de Saint-Pierre, La)',
        17.68,
        '2000-10-07'
    ),
    (
        366,
        10,
        17,
        2,
        'Million Dollar Mermaid',
        16.94,
        '2011-08-22'
    ),
    (
        367,
        5,
        18,
        3,
        'Red Sorghum (Hong gao liang)',
        48.79,
        '2011-11-01'
    ),
    (368, 8, 18, 1, 'Magic Camp', 20.25, '2018-02-09'),
    (
        369,
        9,
        9,
        2,
        'Harrison Bergeron',
        41.83,
        '2011-07-09'
    ),
    (
        370,
        3,
        3,
        1,
        'Sherlock Holmes Faces Death',
        16.50,
        '2020-06-04'
    ),
    (
        371,
        6,
        1,
        3,
        'Female Demon Ohyaku (Yôen dokufuden hannya no ohyaku)',
        15.26,
        '2016-10-08'
    ),
    (
        372,
        6,
        20,
        2,
        'Distant Thunder (Ashani Sanket)',
        23.13,
        '2008-05-20'
    ),
    (
        373,
        15,
        13,
        2,
        'Bill Hicks: Relentless',
        28.45,
        '2007-05-23'
    ),
    (374, 2, 3, 2, 'Champ, The', 4.74, '2001-09-27'),
    (
        375,
        2,
        19,
        3,
        'Where the Trail Ends',
        17.84,
        '2013-09-20'
    ),
    (
        376,
        1,
        1,
        2,
        'Timber Falls',
        18.88,
        '2000-03-15'
    ),
    (
        377,
        13,
        14,
        1,
        'Charlie Chan in the Secret Service',
        7.42,
        '2020-11-08'
    ),
    (
        378,
        7,
        5,
        1,
        'Who\'s Afraid of Virginia Woolf?',
        49.48,
        '2003-06-21'
    ),
    (
        379,
        3,
        12,
        2,
        'Iria: Zeiram the Animation ',
        3.37,
        '2023-07-14'
    ),
    (
        380,
        4,
        4,
        3,
        'Noises Off...',
        41.06,
        '2022-11-19'
    ),
    (
        381,
        6,
        13,
        3,
        '20 Feet from Stardom (Twenty Feet from Stardom)',
        47.43,
        '2000-03-29'
    ),
    (
        382,
        8,
        3,
        1,
        'Apache Territory ',
        6.97,
        '2021-07-31'
    ),
    (
        383,
        12,
        17,
        3,
        'Eiger Sanction, The',
        6.90,
        '2013-11-14'
    ),
    (
        384,
        10,
        19,
        1,
        'Swept from the Sea',
        22.09,
        '2016-12-21'
    ),
    (
        385,
        13,
        8,
        1,
        'Chances Are',
        41.26,
        '2001-08-25'
    ),
    (
        386,
        13,
        8,
        3,
        'Day in the Life, A',
        24.44,
        '2002-08-24'
    ),
    (
        387,
        14,
        6,
        1,
        'Mediterraneo',
        19.08,
        '2011-03-17'
    ),
    (
        388,
        11,
        10,
        2,
        'Holiday Inn',
        24.95,
        '2012-03-11'
    ),
    (
        389,
        15,
        7,
        1,
        'Great Beauty, The (Grande Bellezza, La)',
        20.94,
        '2001-05-30'
    ),
    (
        390,
        1,
        13,
        2,
        'Thieves (Voleurs, Les)',
        13.51,
        '2015-03-04'
    ),
    (
        391,
        6,
        2,
        2,
        'Last Days Here',
        33.62,
        '2001-12-04'
    ),
    (
        392,
        6,
        14,
        2,
        'Surrender, Dorothy',
        14.64,
        '2019-06-21'
    ),
    (
        393,
        16,
        11,
        1,
        'Three Men and a Little Lady',
        29.46,
        '2003-10-09'
    ),
    (
        394,
        11,
        9,
        2,
        'Shadows (Cienie)',
        20.55,
        '2011-12-20'
    ),
    (395, 8, 4, 3, 'San Quentin', 20.67, '2003-11-27'),
    (
        396,
        15,
        10,
        2,
        'Outcast of the Islands',
        9.68,
        '2012-02-02'
    ),
    (397, 2, 13, 3, 'Heatstroke', 28.10, '2023-05-09'),
    (
        398,
        5,
        13,
        2,
        'Front Line, The (Go-ji-jeon)',
        36.66,
        '2006-10-30'
    ),
    (
        399,
        11,
        1,
        3,
        'Day of Anger (I giorni dell\'ira)',
        42.86,
        '2012-11-09'
    ),
    (
        400,
        13,
        5,
        3,
        'Black Tights (1-2-3-4 ou Les Collants noirs)',
        46.68,
        '2014-03-18'
    ),
    (401, 11, 13, 1, 'Psycho', 16.24, '2000-10-29'),
    (
        402,
        10,
        16,
        1,
        'Paprika (Papurika)',
        12.68,
        '2019-07-26'
    ),
    (
        403,
        8,
        7,
        1,
        'Edison Force (a.k.a. Edison)',
        19.06,
        '2018-07-03'
    ),
    (
        404,
        10,
        19,
        2,
        'Liv & Ingmar',
        7.06,
        '2010-12-06'
    ),
    (
        405,
        7,
        17,
        3,
        'Way Out West',
        11.57,
        '2010-02-13'
    ),
    (
        406,
        3,
        8,
        1,
        'Twice in a Lifetime',
        4.02,
        '2019-01-16'
    ),
    (407, 4, 3, 3, 'Parked', 13.37, '2007-04-30'),
    (
        408,
        9,
        17,
        3,
        'The Wonders',
        36.91,
        '2000-02-10'
    ),
    (409, 3, 9, 3, 'Striptease', 40.25, '2005-12-26');

-- --------------------------------------------------------
--
-- Table structure for table `sexo`
--
CREATE TABLE `sexo` (
    `SEX_ID` int(11) NOT NULL COMMENT 'Id',
    `SEX_NOMBRE` varchar(60) NOT NULL COMMENT 'Nombre'
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci COMMENT = 'Masculino, Femenino';

--
-- Dumping data for table `sexo`
--
INSERT INTO
    `sexo` (`SEX_ID`, `SEX_NOMBRE`)
VALUES
    (1, 'Hombre'),
    (2, 'Mujer'),
    (3, 'Otro');

-- --------------------------------------------------------
--
-- Table structure for table `socio`
--
CREATE TABLE `socio` (
    `SOC_ID` int(11) NOT NULL COMMENT 'Id',
    `SOC_CEDULA` char(10) NOT NULL COMMENT 'Cédula',
    `SOC_NOMBRE` varchar(60) NOT NULL COMMENT 'Nombre',
    `SOC_DIRECCION` varchar(60) NOT NULL COMMENT 'Dirección',
    `SOC_TELEFONO` char(10) NOT NULL COMMENT 'Teléfono',
    `SOC_CORREO` varchar(60) NOT NULL COMMENT 'Correo'
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

--
-- Dumping data for table `socio`
--
INSERT INTO
    `socio` (
        `SOC_ID`,
        `SOC_CEDULA`,
        `SOC_NOMBRE`,
        `SOC_DIRECCION`,
        `SOC_TELEFONO`,
        `SOC_CORREO`
    )
VALUES
    (
        1,
        '6711362659',
        'Elka Beall',
        '37202 Dawn Way',
        '907624999',
        'ebeall0@google.com.hk'
    ),
    (
        2,
        '6109166869',
        'Josepha Tuffs',
        '0 Morrow Plaza',
        '995228835',
        'jtuffs1@guardian.co.uk'
    ),
    (
        3,
        '1524629773',
        'Traver Bulmer',
        '53885 Magdeline Court',
        '969288672',
        'tbulmer2@usgs.gov'
    ),
    (
        4,
        '7623106999',
        'Reed Careless',
        '94458 Grover Plaza',
        '946175546',
        'rcareless3@skyrock.com'
    ),
    (
        5,
        '1461389826',
        'Leland Townshend',
        '4 Jenifer Plaza',
        '902269073',
        'ltownshend4@time.com'
    ),
    (
        6,
        '1279204531',
        'Lucille Bullcock',
        '79 Chinook Court',
        '942928490',
        'lbullcock5@uol.com.br'
    ),
    (
        7,
        '3956042342',
        'Mariana Jeanneau',
        '3 Donald Pass',
        '920931024',
        'mjeanneau6@dot.gov'
    ),
    (
        8,
        '9514550056',
        'Kennedy Patient',
        '169 Corben Road',
        '934509674',
        'kpatient7@tuttocitta.it'
    ),
    (
        9,
        '7238099506',
        'Baird Benoey',
        '62263 Oneill Place',
        '990391659',
        'bbenoey8@auda.org.au'
    ),
    (
        10,
        '9143773618',
        'Analiese Holton',
        '657 Sycamore Center',
        '922329458',
        'aholton9@harvard.edu'
    ),
    (
        11,
        '4506402220',
        'Norina Strick',
        '67 Spaight Crossing',
        '955063288',
        'nstricka@sfgate.com'
    ),
    (
        12,
        '4727406761',
        'Francklyn Grinnov',
        '297 Morrow Way',
        '974217177',
        'fgrinnovb@newsvine.com'
    ),
    (
        13,
        '8259897105',
        'Leilah Dahmke',
        '425 Lukken Park',
        '951403142',
        'ldahmkec@liveinternet.ru'
    ),
    (
        14,
        '5876371944',
        'Free Archer',
        '284 Center Avenue',
        '930483080',
        'farcherd@bloglovin.com'
    ),
    (
        15,
        '5518991923',
        'Kalina Tatam',
        '8610 6th Parkway',
        '948022535',
        'ktatame@delicious.com'
    ),
    (
        16,
        '6323154145',
        'Reinold Dicty',
        '1563 Emmet Road',
        '933694869',
        'rdictyf@howstuffworks.com'
    ),
    (
        17,
        '6106280684',
        'Adara Jillings',
        '0478 Rigney Court',
        '994815266',
        'ajillingsg@mapquest.com'
    ),
    (
        18,
        '2441898779',
        'Udale London',
        '2 Hagan Hill',
        '922197526',
        'ulondonh@nasa.gov'
    ),
    (
        19,
        '8326304612',
        'Yettie Beumant',
        '2 Kim Center',
        '929908633',
        'ybeumanti@moonfruit.com'
    ),
    (
        20,
        '6470226417',
        'Jacob Whissell',
        '32659 Trailsway Pass',
        '960438985',
        'jwhissellj@wsj.com'
    ),
    (
        21,
        '6150206165',
        'Clareta Franks',
        '0 Tomscot Junction',
        '968997985',
        'cfranksk@forbes.com'
    ),
    (
        22,
        '9798125991',
        'Clerissa Rossbrook',
        '93 Pine View Point',
        '983394589',
        'crossbrookl@harvard.edu'
    ),
    (
        23,
        '4634393472',
        'Darci Amis',
        '5 Pawling Hill',
        '932275893',
        'damism@myspace.com'
    ),
    (
        24,
        '6055301144',
        'Dina Lemmertz',
        '13 Atwood Lane',
        '957672601',
        'dlemmertzn@lulu.com'
    ),
    (
        25,
        '4273359780',
        'Zilvia Coen',
        '06385 Dennis Crossing',
        '944379697',
        'zcoeno@youtu.be'
    ),
    (
        26,
        '7467677483',
        'Cyrill Bisset',
        '0 Eagle Crest Drive',
        '953687795',
        'cbissetp@yahoo.com'
    ),
    (
        27,
        '7873483106',
        'Leticia Chable',
        '2 Cardinal Court',
        '947182131',
        'lchableq@europa.eu'
    ),
    (
        28,
        '1680012885',
        'Brocky Bentje',
        '13 Crescent Oaks Trail',
        '996962506',
        'bbentjer@topsy.com'
    ),
    (
        29,
        '4356938508',
        'Bird Arnli',
        '5 Karstens Drive',
        '926872048',
        'barnlis@globo.com'
    ),
    (
        30,
        '9903759127',
        'Liane Foulis',
        '8395 Division Trail',
        '991752574',
        'lfoulist@hud.gov'
    ),
    (
        31,
        '3364933254',
        'Murielle Torregiani',
        '69831 Macpherson Hill',
        '996438408',
        'mtorregianiu@marriott.com'
    ),
    (
        32,
        '6655304387',
        'Wendy Kermath',
        '6 John Wall Street',
        '962745272',
        'wkermathv@ning.com'
    ),
    (
        33,
        '5806072527',
        'Putnem Joseland',
        '795 Troy Road',
        '975672133',
        'pjoselandw@infoseek.co.jp'
    ),
    (
        34,
        '5800256409',
        'Hubie Hritzko',
        '1 Mendota Alley',
        '970597374',
        'hhritzkox@com.com'
    ),
    (
        35,
        '6642105938',
        'Clayson Dundredge',
        '18244 Talisman Hill',
        '902142861',
        'cdundredgey@altervista.org'
    ),
    (
        36,
        '9765293279',
        'Berny Alpe',
        '2989 Knutson Way',
        '999290259',
        'balpez@elegantthemes.com'
    ),
    (
        37,
        '6852008797',
        'Christoph Mart',
        '4 Mendota Alley',
        '947554045',
        'cmart10@state.tx.us'
    ),
    (
        38,
        '4866718071',
        'Lazarus Sterke',
        '3038 Mcguire Plaza',
        '921243535',
        'lsterke11@wikia.com'
    ),
    (
        39,
        '6645757799',
        'Fred Bonome',
        '550 Meadow Valley Place',
        '924976310',
        'fbonome12@csmonitor.com'
    ),
    (
        40,
        '7122720717',
        'Ardath Inman',
        '70336 Leroy Junction',
        '983704424',
        'ainman13@wunderground.com'
    ),
    (
        41,
        '4512883048',
        'Rozelle Greeson',
        '68 Veith Place',
        '940808208',
        'rgreeson14@deliciousdays.com'
    ),
    (
        42,
        '5816569678',
        'Shepperd Brannan',
        '972 Eastlawn Pass',
        '935916865',
        'sbrannan15@boston.com'
    ),
    (
        43,
        '1393274798',
        'Dulce McLoney',
        '9 Debs Drive',
        '937509949',
        'dmcloney16@chicagotribune.com'
    ),
    (
        44,
        '5384252303',
        'Hershel Jeschner',
        '58359 Sullivan Pass',
        '938838422',
        'hjeschner17@rakuten.co.jp'
    ),
    (
        45,
        '5859316894',
        'Sheri Stuck',
        '16167 Del Mar Pass',
        '919409262',
        'sstuck18@ameblo.jp'
    ),
    (
        46,
        '5556617046',
        'Izzy Whitfield',
        '48 Northview Crossing',
        '947188498',
        'iwhitfield19@clickbank.net'
    ),
    (
        47,
        '6649782582',
        'Chariot Linger',
        '1894 Sullivan Terrace',
        '964977262',
        'clinger1a@e-recht24.de'
    ),
    (
        48,
        '3835252330',
        'Lenora McLleese',
        '6 Carberry Avenue',
        '943739709',
        'lmclleese1b@businesswire.com'
    ),
    (
        49,
        '1916859154',
        'Berkeley Busfield',
        '42841 Maryland Center',
        '991180074',
        'bbusfield1c@sakura.ne.jp'
    ),
    (
        50,
        '2449839366',
        'Gayle Hoofe',
        '041 Hanover Park',
        '978759949',
        'ghoofe1d@hostgator.com'
    );

--
-- Indexes for dumped tables
--
--
-- Indexes for table `actor`
--
ALTER TABLE
    `actor`
ADD
    PRIMARY KEY (`ACT_ID`),
ADD
    KEY `FK_SEXO_ACTOR` (`SEX_ID`);

--
-- Indexes for table `actor_pelicula`
--
ALTER TABLE
    `actor_pelicula`
ADD
    PRIMARY KEY (`APL_ID`),
ADD
    KEY `FK_ACTOR_ACTOR_PELICULA` (`ACT_ID`),
ADD
    KEY `FK_PELICULA_ACTOR_PELICULA` (`PEL_ID`);

--
-- Indexes for table `alquiler`
--
ALTER TABLE
    `alquiler`
ADD
    PRIMARY KEY (`ALQ_ID`),
ADD
    KEY `FK_PELICULA_ALQUILER` (`PEL_ID`),
ADD
    KEY `FK_SOCIO_ALQUILER` (`SOC_ID`);

--
-- Indexes for table `director`
--
ALTER TABLE
    `director`
ADD
    PRIMARY KEY (`DIR_ID`);

--
-- Indexes for table `formato`
--
ALTER TABLE
    `formato`
ADD
    PRIMARY KEY (`FOR_ID`);

--
-- Indexes for table `genero`
--
ALTER TABLE
    `genero`
ADD
    PRIMARY KEY (`GEN_ID`);

--
-- Indexes for table `pelicula`
--
ALTER TABLE
    `pelicula`
ADD
    PRIMARY KEY (`PEL_ID`),
ADD
    KEY `FK_DIRECTOR_PELICULA` (`DIR_ID`),
ADD
    KEY `FK_FORMATO_PELICULA` (`FOR_ID`),
ADD
    KEY `FK_GENERO_PELICULA` (`GEN_ID`);

--
-- Indexes for table `sexo`
--
ALTER TABLE
    `sexo`
ADD
    PRIMARY KEY (`SEX_ID`);

--
-- Indexes for table `socio`
--
ALTER TABLE
    `socio`
ADD
    PRIMARY KEY (`SOC_ID`);

--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE
    `actor`
MODIFY
    `ACT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
    AUTO_INCREMENT = 51;

--
-- AUTO_INCREMENT for table `actor_pelicula`
--
ALTER TABLE
    `actor_pelicula`
MODIFY
    `APL_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
    AUTO_INCREMENT = 251;

--
-- AUTO_INCREMENT for table `alquiler`
--
ALTER TABLE
    `alquiler`
MODIFY
    `ALQ_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
    AUTO_INCREMENT = 51;

--
-- AUTO_INCREMENT for table `director`
--
ALTER TABLE
    `director`
MODIFY
    `DIR_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
    AUTO_INCREMENT = 21;

--
-- AUTO_INCREMENT for table `formato`
--
ALTER TABLE
    `formato`
MODIFY
    `FOR_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
    AUTO_INCREMENT = 4;

--
-- AUTO_INCREMENT for table `genero`
--
ALTER TABLE
    `genero`
MODIFY
    `GEN_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
    AUTO_INCREMENT = 17;

--
-- AUTO_INCREMENT for table `pelicula`
--
ALTER TABLE
    `pelicula`
MODIFY
    `PEL_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
    AUTO_INCREMENT = 410;

--
-- AUTO_INCREMENT for table `sexo`
--
ALTER TABLE
    `sexo`
MODIFY
    `SEX_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
    AUTO_INCREMENT = 4;

--
-- AUTO_INCREMENT for table `socio`
--
ALTER TABLE
    `socio`
MODIFY
    `SOC_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
    AUTO_INCREMENT = 51;

--
-- Constraints for dumped tables
--
--
-- Constraints for table `actor`
--
ALTER TABLE
    `actor`
ADD
    CONSTRAINT `FK_SEXO_ACTOR` FOREIGN KEY (`SEX_ID`) REFERENCES `sexo` (`SEX_ID`);

--
-- Constraints for table `actor_pelicula`
--
ALTER TABLE
    `actor_pelicula`
ADD
    CONSTRAINT `FK_ACTOR_ACTOR_PELICULA` FOREIGN KEY (`ACT_ID`) REFERENCES `actor` (`ACT_ID`),
ADD
    CONSTRAINT `FK_PELICULA_ACTOR_PELICULA` FOREIGN KEY (`PEL_ID`) REFERENCES `pelicula` (`PEL_ID`);

--
-- Constraints for table `alquiler`
--
ALTER TABLE
    `alquiler`
ADD
    CONSTRAINT `FK_PELICULA_ALQUILER` FOREIGN KEY (`PEL_ID`) REFERENCES `pelicula` (`PEL_ID`),
ADD
    CONSTRAINT `FK_SOCIO_ALQUILER` FOREIGN KEY (`SOC_ID`) REFERENCES `socio` (`SOC_ID`);

--
-- Constraints for table `pelicula`
--
ALTER TABLE
    `pelicula`
ADD
    CONSTRAINT `FK_DIRECTOR_PELICULA` FOREIGN KEY (`DIR_ID`) REFERENCES `director` (`DIR_ID`),
ADD
    CONSTRAINT `FK_FORMATO_PELICULA` FOREIGN KEY (`FOR_ID`) REFERENCES `formato` (`FOR_ID`),
ADD
    CONSTRAINT `FK_GENERO_PELICULA` FOREIGN KEY (`GEN_ID`) REFERENCES `genero` (`GEN_ID`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;