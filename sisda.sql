-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2026 a las 16:38:13
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


-- --------------------------------------------------------
--  tabla administador
--

CREATE TABLE `administrr` (
  `id_administrador` int(11) NOT NULL,
  `Cargo` varchar(50) NOT NULL,
  `Area` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

-- tabla asistencia
--

CREATE TABLE `asistencia` (
  `id_asistencia` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- tabla boletin
--

CREATE TABLE `boletin` (
  `Periodo` varchar(15) NOT NULL,
  `PromedioGeneral` float NOT NULL,
  `FechaGeneracion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--  tabla chat
--

CREATE TABLE `chat` (
  `mensaje` varchar(20) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `estado` varchar(10) NOT NULL,
  `emisor` varchar(10) NOT NULL,
  `receptor` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--  tabla circulares
--

CREATE TABLE `circulares` (
  `Titulo` varchar(20) NOT NULL,
  `Contenido` varchar(20) NOT NULL,
  `fechaPublicacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
--  tabla curso
--

CREATE TABLE `curso` (
  `grado` varchar(20) NOT NULL,
  `jornada` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
--  tabla estudiante
--

CREATE TABLE `estudiante` (
  `curso` varchar(5) NOT NULL,
  `numeroAcudiente` varchar(15) NOT NULL,
  `CorreoPersonal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
--  tabla guias
--

CREATE TABLE `guias` (
  `Titulo` varchar(20) NOT NULL,
  `ArchivoAdjunto` varchar(15) NOT NULL,
  `FechaEntrega` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- tabla horarios
--

CREATE TABLE `horarios` (
  `Dia` varchar(20) NOT NULL,
  `HoraInicio` time NOT NULL,
  `HoraFin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
--  tabla materia
--

CREATE TABLE `materia` (
  `TipoMateria` varchar(20) NOT NULL,
  `Profesor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- tabla observaciones
--

CREATE TABLE `observaciones` (
  `Descripcion` varchar(20) NOT NULL,
  `Fecha` date NOT NULL,
  `Tipo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- tabla padre_familia
--

CREATE TABLE `padre_familia` (
  `parentesco` varchar(15) NOT NULL,
  `nombreResponsable` varchar(15) NOT NULL,
  `estudianteaCargo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- tabla profesores
--

CREATE TABLE `profesores` (
  `materia` varchar(15) NOT NULL,
  `CorreoPersonal` varchar(50) NOT NULL,
  `CursosAsignados` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
--  tabla usuarios
--

CREATE TABLE `usuarios` (
  `id` int(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo_institucional` varchar(50) NOT NULL,
  `celular` varchar(30) NOT NULL,
  `documento` varchar(20) NOT NULL,
  `rol` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_administrador`);

--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`id_asistencia`);


--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);


--
ALTER TABLE `administrador`
  MODIFY `id_administrador` int(11) NOT NULL AUTO_INCREMENT;


--
ALTER TABLE `asistencia`
  MODIFY `id_asistencia` int(11) NOT NULL AUTO_INCREMENT;

--
ALTER TABLE `usuarios`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
COMMIT;


