USE [master]
GO
/****** Object:  Database [FoodTrackerDB]    Script Date: 10/06/2017 9:50:16 ******/
CREATE DATABASE [FoodTrackerDB] ON  PRIMARY 
( NAME = N'FoodTrackerDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\FoodTrackerDB.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FoodTrackerDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\FoodTrackerDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FoodTrackerDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FoodTrackerDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FoodTrackerDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FoodTrackerDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FoodTrackerDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FoodTrackerDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FoodTrackerDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FoodTrackerDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FoodTrackerDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FoodTrackerDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FoodTrackerDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FoodTrackerDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FoodTrackerDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FoodTrackerDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FoodTrackerDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FoodTrackerDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FoodTrackerDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FoodTrackerDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FoodTrackerDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FoodTrackerDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FoodTrackerDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FoodTrackerDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FoodTrackerDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FoodTrackerDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FoodTrackerDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FoodTrackerDB] SET  MULTI_USER 
GO
ALTER DATABASE [FoodTrackerDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FoodTrackerDB] SET DB_CHAINING OFF 
GO
USE [FoodTrackerDB]
GO
/****** Object:  Table [dbo].[Historial_busqueda]    Script Date: 10/06/2017 9:50:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historial_busqueda](
	[IdHistorial] [varchar](50) NOT NULL,
	[idUsuario] [varchar](50) NULL,
	[Fecha_busqueda] [varchar](50) NULL,
	[Ciudad] [varchar](50) NULL,
	[Tipo_comida] [varchar](50) NULL,
	[Tipo_restaurante] [varchar](50) NULL,
	[Tipo_ambiente] [varchar](50) NULL,
	[Rango_precio] [varchar](50) NULL,
	[Medio_transporte] [varchar](50) NULL,
 CONSTRAINT [PK_Historial_busqueda] PRIMARY KEY CLUSTERED 
(
	[IdHistorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Restaurant]    Script Date: 10/06/2017 9:50:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurant](
	[idRestaurante] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Tipo_comida] [varchar](50) NULL,
	[Tipo_ambiente] [varchar](50) NULL,
	[Tipo_restaurante] [varchar](50) NULL,
	[Ciudad] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
	[Precio_minimo] [money] NULL,
	[Precio_maximo] [money] NULL,
	[Valoracion] [int] NULL,
 CONSTRAINT [PK_Restaurant] PRIMARY KEY CLUSTERED 
(
	[idRestaurante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 10/06/2017 9:50:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Nombre_usuario] [varchar](50) NULL,
	[Contraseña] [varchar](50) NULL,
	[Correo] [varchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [FoodTrackerDB] SET  READ_WRITE 
GO
