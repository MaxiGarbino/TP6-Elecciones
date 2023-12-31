USE [master]
GO
/****** Object:  Database [TP6_Elecciones]    Script Date: 11/7/2023 09:01:39 ******/
CREATE DATABASE [TP6_Elecciones]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TP6_Elecciones', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TP6_Elecciones.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TP6_Elecciones_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TP6_Elecciones_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
/****** Object:  User [alumno]    Script Date: 11/7/2023 09:01:39 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Candidato]    Script Date: 11/7/2023 09:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidato](
	[IDCandidato] [int] IDENTITY(1,1) NOT NULL,
	[IDPartido] [int] NULL,
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
/****** Object:  Table [dbo].[Partido]    Script Date: 11/7/2023 09:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partido](
	[IDPartido] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Logo] [varchar](5000) NOT NULL,
	[SitioWeb] [varchar](5000) NOT NULL,
	[FechaFundacion] [date] NOT NULL,
	[CantidadDiputados] [int] NOT NULL,
	[CantidadSenadores] [int] NOT NULL,
 CONSTRAINT [PK_Partido] PRIMARY KEY CLUSTERED 
(
	[IDPartido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Candidato] ON 

INSERT [dbo].[Candidato] ([IDCandidato], [IDPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (1, 1, N'Larreta', N'Horacio Rodríguez', CAST(N'1965-10-29' AS Date), N'https://nuevodiarioweb-s2.cdn.net.ar/st2i1700/2023/01/nuevodiarioweb/images/29/83/298307_a15b3ada331a3bfa6992f2a3b7df59f56544e220e0a1617bde60638f5f764296/lg.jpg', N'Presidente')
INSERT [dbo].[Candidato] ([IDCandidato], [IDPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (2, 2, N'Massa', N'Sergio', CAST(N'1972-04-28' AS Date), N'https://tramas.ar/wp-content/uploads/2022/09/La-Voz-del-Interior.jpg', N'Presidente')
INSERT [dbo].[Candidato] ([IDCandidato], [IDPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (3, 1, N'Bullrich', N'Patricia', CAST(N'1956-06-11' AS Date), N'https://www.diarioelnorte.com.ar/wp-content/uploads/2023/02/WhatsApp-Image-2023-02-01-at-23.18.15-1.jpeg', N'Presidente')
INSERT [dbo].[Candidato] ([IDCandidato], [IDPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (4, 1, N'Morales', N'Gerardo', CAST(N'1959-07-18' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/7/74/Gerardo_Morales.png', N'Vicepresidente')
SET IDENTITY_INSERT [dbo].[Candidato] OFF
GO
SET IDENTITY_INSERT [dbo].[Partido] ON 

INSERT [dbo].[Partido] ([IDPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (1, N'Juntos por el Cambio', N'logoJxC.png', N'https://jxc.com.ar/', CAST(N'2019-06-12' AS Date), 116, 18)
INSERT [dbo].[Partido] ([IDPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (2, N'Frente de todos', N'logoTodos.png', N'https://www.frentedetodos.org/', CAST(N'2019-06-12' AS Date), 118, 24)
INSERT [dbo].[Partido] ([IDPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (5, N'La Libertad Avanza', N'logoLibertad.png', N'https://lalibertadavanza.com.ar/', CAST(N'2021-06-14' AS Date), 2, 0)
INSERT [dbo].[Partido] ([IDPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (6, N'Frente de Izquierda y Trabajadores', N'logoFrenteIzq.png', N'https://www.izquierdasocialista.org.ar/2020/?gclid=Cj0KCQjw4s-kBhDqARIsAN-ipH3_02Mrtc5rd94HfNqEy2D2I6qnsYC0YulpywOfAIphzzRPdd4Wk1YaAly6EALw_wcB', CAST(N'2011-04-14' AS Date), 4, 0)
INSERT [dbo].[Partido] ([IDPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (8, N'Union Civica Radical', N'logoUCR.png', N'https://www.ucr.org.ar/', CAST(N'1891-06-26' AS Date), 0, 0)
INSERT [dbo].[Partido] ([IDPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (11, N'Hacemos por nuestro país', N'logoHPNP.png', N'https://www.friv.com/', CAST(N'2023-06-14' AS Date), 350, 5623)
SET IDENTITY_INSERT [dbo].[Partido] OFF
GO
ALTER TABLE [dbo].[Candidato]  WITH CHECK ADD  CONSTRAINT [FK_Candidato_Partido] FOREIGN KEY([IDPartido])
REFERENCES [dbo].[Partido] ([IDPartido])
GO
ALTER TABLE [dbo].[Candidato] CHECK CONSTRAINT [FK_Candidato_Partido]
GO
USE [master]
GO
ALTER DATABASE [TP6_Elecciones] SET  READ_WRITE 
GO
