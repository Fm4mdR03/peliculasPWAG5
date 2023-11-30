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
/*==============================================================*/
/* Table: ACTOR */
/*==============================================================*/
CREATE TABLE ACTOR (
    ACT_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Id',
    SEX_ID INT COMMENT 'Sexo',
    ACT_NOMBRE VARCHAR(60) NOT NULL COMMENT 'Nombre',
    PRIMARY KEY (ACT_ID)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8;
ALTER TABLE ACTOR COMMENT 'Apellidos y nombre de los actores';
/*==============================================================*/
/* Table: ACTOR_PELICULA */
/*==============================================================*/
CREATE TABLE ACTOR_PELICULA (
    APL_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Id',
    ACT_ID INT COMMENT 'Actor',
    PEL_ID INT COMMENT 'Película',
    APL_PAPEL VARCHAR(60) NOT NULL COMMENT 'Papel',
    PRIMARY KEY (APL_ID)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8;
ALTER TABLE ACTOR_PELICULA COMMENT 'Registro de Papel en la Película Actor Principal';
/*==============================================================*/
/* Table: ALQUILER */
/*==============================================================*/
CREATE TABLE ALQUILER (
    ALQ_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Id',
    SOC_ID INT COMMENT 'Socio',
    PEL_ID INT COMMENT 'Película',
    ALQ_FECHA_DESDE DATE NOT NULL COMMENT 'Fecha Inicial',
    ALQ_FECHA_HASTA DATE NOT NULL COMMENT 'Fecha Final',
    ALQ_VALOR NUMERIC(10, 2) NOT NULL COMMENT 'Valor',
    ALQ_FECHA_ENTREGA DATE COMMENT 'Fecha Entrega',
    PRIMARY KEY (ALQ_ID)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8;
ALTER TABLE ALQUILER COMMENT 'Datos de Alquiler de la Película al Socio';
/*==============================================================*/
/* Table: DIRECTOR */
/*==============================================================*/
CREATE TABLE DIRECTOR (
    DIR_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Id',
    DIR_NOMBRE VARCHAR(60) NOT NULL COMMENT 'Nombre',
    PRIMARY KEY (DIR_ID)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8;
ALTER TABLE DIRECTOR COMMENT 'Nombre del director de la película';
/*==============================================================*/
/* Table: FORMATO */
/*==============================================================*/
CREATE TABLE FORMATO (
    FOR_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Id',
    FOR_NOMBRE VARCHAR(60) NOT NULL COMMENT 'Nombre',
    PRIMARY KEY (FOR_ID)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8;
ALTER TABLE FORMATO COMMENT 'CD, DVD, VHS';
/*==============================================================*/
/* Table: GENERO */
/*==============================================================*/
CREATE TABLE GENERO (
    GEN_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Id',
    GEN_NOMBRE VARCHAR(60) NOT NULL COMMENT 'Nombre',
    PRIMARY KEY (GEN_ID)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8;
ALTER TABLE GENERO COMMENT 'Romántica, Cómico, Ciencia Ficción, Deportes';
/*==============================================================*/
/* Table: PELICULA */
/*==============================================================*/
CREATE TABLE PELICULA (
    PEL_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Id',
    GEN_ID INT COMMENT 'Género',
    DIR_ID INT COMMENT 'Director',
    FOR_ID INT COMMENT 'Formato',
    PEL_NOMBRE VARCHAR(60) NOT NULL COMMENT 'Nombre',
    PEL_COSTO NUMERIC(10, 2) NOT NULL COMMENT 'Costo',
    PEL_FECHA_ESTRENO DATE COMMENT 'Fecha Estreno',
    PRIMARY KEY (PEL_ID)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8;
ALTER TABLE PELICULA COMMENT 'Datos de Identificación de la Película';
/*==============================================================*/
/* Table: SEXO */
/*==============================================================*/
CREATE TABLE SEXO (
    SEX_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Id',
    SEX_NOMBRE VARCHAR(60) NOT NULL COMMENT 'Nombre',
    PRIMARY KEY (SEX_ID)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8;
ALTER TABLE SEXO COMMENT 'Masculino, Femenino';
/*==============================================================*/
/* Table: SOCIO */
/*==============================================================*/
CREATE TABLE SOCIO (
    SOC_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Id',
    SOC_CEDULA CHAR(10) NOT NULL COMMENT 'Cédula',
    SOC_NOMBRE VARCHAR(60) NOT NULL COMMENT 'Nombre',
    SOC_DIRECCION VARCHAR(60) NOT NULL COMMENT 'Dirección',
    SOC_TELEFONO CHAR(10) NOT NULL COMMENT 'Teléfono',
    SOC_CORREO VARCHAR(60) NOT NULL COMMENT 'Correo',
    PRIMARY KEY (SOC_ID)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8;
ALTER TABLE ACTOR
ADD CONSTRAINT FK_SEXO_ACTOR FOREIGN KEY (SEX_ID) REFERENCES SEXO (SEX_ID);
ALTER TABLE ACTOR_PELICULA
ADD CONSTRAINT FK_ACTOR_ACTOR_PELICULA FOREIGN KEY (ACT_ID) REFERENCES ACTOR (ACT_ID);
ALTER TABLE ACTOR_PELICULA
ADD CONSTRAINT FK_PELICULA_ACTOR_PELICULA FOREIGN KEY (PEL_ID) REFERENCES PELICULA (PEL_ID);
ALTER TABLE ALQUILER
ADD CONSTRAINT FK_PELICULA_ALQUILER FOREIGN KEY (PEL_ID) REFERENCES PELICULA (PEL_ID);
ALTER TABLE ALQUILER
ADD CONSTRAINT FK_SOCIO_ALQUILER FOREIGN KEY (SOC_ID) REFERENCES SOCIO (SOC_ID);
ALTER TABLE PELICULA
ADD CONSTRAINT FK_DIRECTOR_PELICULA FOREIGN KEY (DIR_ID) REFERENCES DIRECTOR (DIR_ID);
ALTER TABLE PELICULA
ADD CONSTRAINT FK_FORMATO_PELICULA FOREIGN KEY (FOR_ID) REFERENCES FORMATO (FOR_ID);
ALTER TABLE PELICULA
ADD CONSTRAINT FK_GENERO_PELICULA FOREIGN KEY (GEN_ID) REFERENCES GENERO (GEN_ID);