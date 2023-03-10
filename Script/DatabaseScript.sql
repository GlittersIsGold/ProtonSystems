USE [master]
GO
/****** Object:  Database [090223_Proton_Kir]    Script Date: 09.02.2023 11:56:18 ******/
CREATE DATABASE [090223_Proton_Kir]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'090223_Proton_Kir', FILENAME = N'/var/opt/mssql/data/090223_Proton_Kir.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'090223_Proton_Kir_log', FILENAME = N'/var/opt/mssql/data/090223_Proton_Kir_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [090223_Proton_Kir] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [090223_Proton_Kir].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [090223_Proton_Kir] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [090223_Proton_Kir] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [090223_Proton_Kir] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [090223_Proton_Kir] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [090223_Proton_Kir] SET ARITHABORT OFF 
GO
ALTER DATABASE [090223_Proton_Kir] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [090223_Proton_Kir] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [090223_Proton_Kir] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [090223_Proton_Kir] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [090223_Proton_Kir] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [090223_Proton_Kir] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [090223_Proton_Kir] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [090223_Proton_Kir] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [090223_Proton_Kir] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [090223_Proton_Kir] SET  DISABLE_BROKER 
GO
ALTER DATABASE [090223_Proton_Kir] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [090223_Proton_Kir] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [090223_Proton_Kir] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [090223_Proton_Kir] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [090223_Proton_Kir] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [090223_Proton_Kir] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [090223_Proton_Kir] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [090223_Proton_Kir] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [090223_Proton_Kir] SET  MULTI_USER 
GO
ALTER DATABASE [090223_Proton_Kir] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [090223_Proton_Kir] SET DB_CHAINING OFF 
GO
ALTER DATABASE [090223_Proton_Kir] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [090223_Proton_Kir] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [090223_Proton_Kir] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [090223_Proton_Kir] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [090223_Proton_Kir] SET QUERY_STORE = OFF
GO
USE [090223_Proton_Kir]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 09.02.2023 11:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[PostName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[PostName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 09.02.2023 11:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SecondName] [nvarchar](50) NOT NULL,
	[ThirdName] [nvarchar](50) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Birthdate] [datetime2](7) NOT NULL,
	[PostName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Post] ([PostName]) VALUES (N'Главный бухгалтер')
INSERT [dbo].[Post] ([PostName]) VALUES (N'Директор')
INSERT [dbo].[Post] ([PostName]) VALUES (N'Должность')
INSERT [dbo].[Post] ([PostName]) VALUES (N'Менеджер')
INSERT [dbo].[Post] ([PostName]) VALUES (N'Программист')
INSERT [dbo].[Post] ([PostName]) VALUES (N'Системный администатор')
INSERT [dbo].[Post] ([PostName]) VALUES (N'Юрист')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Name], [SecondName], [ThirdName], [Login], [Password], [Birthdate], [PostName]) VALUES (1, N'Ivanov', N'Ivan', N'Ivanovich', N'Ivanov_ii', N'12ffe33fDD', CAST(N'2023-02-09T12:00:00.0000000' AS DateTime2), N'Директор')
INSERT [dbo].[User] ([Id], [Name], [SecondName], [ThirdName], [Login], [Password], [Birthdate], [PostName]) VALUES (2, N'Petrov', N'Petr', N'Petrovich', N'Petrov_pp', N'3htt554Dss', CAST(N'2023-02-09T12:00:00.0000000' AS DateTime2), N'Юрист')
INSERT [dbo].[User] ([Id], [Name], [SecondName], [ThirdName], [Login], [Password], [Birthdate], [PostName]) VALUES (3, N'Inner', N'Natalia', N'Viktorovna', N'Inner_nv', N'Sadasd21', CAST(N'2023-02-09T12:00:00.0000000' AS DateTime2), N'Главный бухгалтер')
INSERT [dbo].[User] ([Id], [Name], [SecondName], [ThirdName], [Login], [Password], [Birthdate], [PostName]) VALUES (4, N'Vinc', N'Kirill', N'Evgenievich', N'Vinc_ke', N'fffs3dsf@r', CAST(N'2023-02-09T12:00:00.0000000' AS DateTime2), N'Программист')
INSERT [dbo].[User] ([Id], [Name], [SecondName], [ThirdName], [Login], [Password], [Birthdate], [PostName]) VALUES (5, N'Uvarova', N'Nina', N'Timofeevna', N'Uvarova_nt', N'sdsdqwerty', CAST(N'2023-02-09T12:00:00.0000000' AS DateTime2), N'Менеджер')
INSERT [dbo].[User] ([Id], [Name], [SecondName], [ThirdName], [Login], [Password], [Birthdate], [PostName]) VALUES (6, N'Timofeeva', N'Polina', N'Viktorovna', N'Timofeeva_pv', N'qwerty12345', CAST(N'2023-02-09T12:00:00.0000000' AS DateTime2), N'Менеджер')
INSERT [dbo].[User] ([Id], [Name], [SecondName], [ThirdName], [Login], [Password], [Birthdate], [PostName]) VALUES (7, N'Bobrov', N'Pavel', N'Sergeevich', N'Bobrov_ps', N'Ffrthhew322', CAST(N'2023-02-09T12:00:00.0000000' AS DateTime2), N'Системный администатор')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Post] FOREIGN KEY([PostName])
REFERENCES [dbo].[Post] ([PostName])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Post]
GO
USE [master]
GO
ALTER DATABASE [090223_Proton_Kir] SET  READ_WRITE 
GO
