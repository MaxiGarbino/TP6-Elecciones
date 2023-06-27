USE [master]
GO
/****** Object:  Database [TP6_Elecciones]    Script Date: 22/6/2023 15:59:06 ******/
CREATE DATABASE [TP6_Elecciones]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TP6_Eleccione', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TP6_Eleccione.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TP6_Eleccione_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TP6_Eleccione_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TP6_Elecciones] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TP6_Elecciones].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TP6_Elecciones] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TP6_Elecciones] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TP6_Elecciones] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TP6_Elecciones] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TP6_Elecciones] SET ARITHABORT OFF 
GO
ALTER DATABASE [TP6_Elecciones] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TP6_Elecciones] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TP6_Elecciones] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TP6_Elecciones] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TP6_Elecciones] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TP6_Elecciones] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TP6_Elecciones] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TP6_Elecciones] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TP6_Elecciones] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TP6_Elecciones] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TP6_Elecciones] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TP6_Elecciones] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TP6_Elecciones] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TP6_Elecciones] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TP6_Elecciones] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TP6_Elecciones] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TP6_Elecciones] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TP6_Elecciones] SET RECOVERY FULL 
GO
ALTER DATABASE [TP6_Elecciones] SET  MULTI_USER 
GO
ALTER DATABASE [TP6_Elecciones] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TP6_Elecciones] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TP6_Elecciones] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TP6_Elecciones] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TP6_Elecciones] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TP6_Elecciones', N'ON'
GO
ALTER DATABASE [TP6_Elecciones] SET QUERY_STORE = OFF
GO
USE [TP6_Elecciones]
GO
/****** Object:  User [alumno]    Script Date: 22/6/2023 15:59:06 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Candidato]    Script Date: 22/6/2023 15:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidato](
	[IDCandidato] [int] IDENTITY(1,1) NOT NULL,
	[FK_IDPartido] [int] NULL,
	[Apellido] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[FechaNacimiento] [date] NULL,
	[Foto] [varchar](500) NULL,
	[Postulacion] [varchar](500) NULL,
 CONSTRAINT [PK_Candidato] PRIMARY KEY CLUSTERED 
(
	[IDCandidato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partido]    Script Date: 22/6/2023 15:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partido](
	[ID_Partido] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Logo] [varchar](5000) NULL,
	[SitioWeb] [varchar](5000) NULL,
	[FechaFundacion] [date] NULL,
	[CantidadDiputados] [int] NULL,
	[CantidadSenadores] [int] NULL,
 CONSTRAINT [PK_Partido] PRIMARY KEY CLUSTERED 
(
	[ID_Partido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Partido] ON 

INSERT [dbo].[Partido] ([ID_Partido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (1, N'Juntos por el Cambio', N'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Juntos-Por-El-Cambio-Logo.svg/1200px-Juntos-Por-El-Cambio-Logo.svg.png', N'https://jxc.com.ar/', CAST(N'2019-06-12' AS Date), 116, 18)
INSERT [dbo].[Partido] ([ID_Partido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (2, N'Frente de todos', N'https://upload.wikimedia.org/wikipedia/commons/8/81/Frente_de_Todos_2019.png', N'https://www.frentedetodos.org/', CAST(N'2019-06-12' AS Date), 118, 24)
INSERT [dbo].[Partido] ([ID_Partido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (5, N'La Libertad Avanza', N'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Logo_La_Libertad_Avanza.png/1200px-Logo_La_Libertad_Avanza.png', N'https://lalibertadavanza.com.ar/', CAST(N'2021-06-14' AS Date), 2, 0)
INSERT [dbo].[Partido] ([ID_Partido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (6, N'Frente de Izquierda y Trabajadores', N'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Frente_de_Izquierda_y_de_los_Trabajadores_Logo.svg/2800px-Frente_de_Izquierda_y_de_los_Trabajadores_Logo.svg.png', N'https://www.izquierdasocialista.org.ar/2020/?gclid=Cj0KCQjw4s-kBhDqARIsAN-ipH3_02Mrtc5rd94HfNqEy2D2I6qnsYC0YulpywOfAIphzzRPdd4Wk1YaAly6EALw_wcB', CAST(N'2011-04-14' AS Date), 4, 0)
INSERT [dbo].[Partido] ([ID_Partido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (8, N'Union Civica Radical', N'https://upload.wikimedia.org/wikipedia/commons/2/26/Ucr_modern_logo.png', N'https://www.ucr.org.ar/', CAST(N'1891-06-26' AS Date), 0, 0)
SET IDENTITY_INSERT [dbo].[Partido] OFF
GO
ALTER TABLE [dbo].[Candidato]  WITH CHECK ADD  CONSTRAINT [FK_Candidato_Partido] FOREIGN KEY([FK_IDPartido])
REFERENCES [dbo].[Partido] ([ID_Partido])
GO
ALTER TABLE [dbo].[Candidato] CHECK CONSTRAINT [FK_Candidato_Partido]
GO
USE [master]
GO
ALTER DATABASE [TP6_Elecciones] SET  READ_WRITE 
GO
