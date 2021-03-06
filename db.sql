USE [master]
GO
/****** Object:  Database [Activities]    Script Date: 08/06/2020 18:30:44 ******/
CREATE DATABASE [Activities]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Activities', FILENAME = N'D:\Programming\DB\MSSQLSERVER\MSSQL12.MSSQLSERVER\MSSQL\DATA\Activities.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Activities_log', FILENAME = N'D:\Programming\DB\MSSQLSERVER\MSSQL12.MSSQLSERVER\MSSQL\DATA\Activities_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Activities] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Activities].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Activities] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Activities] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Activities] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Activities] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Activities] SET ARITHABORT OFF 
GO
ALTER DATABASE [Activities] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Activities] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Activities] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Activities] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Activities] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Activities] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Activities] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Activities] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Activities] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Activities] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Activities] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Activities] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Activities] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Activities] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Activities] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Activities] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Activities] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Activities] SET RECOVERY FULL 
GO
ALTER DATABASE [Activities] SET  MULTI_USER 
GO
ALTER DATABASE [Activities] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Activities] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Activities] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Activities] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Activities] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Activities', N'ON'
GO
USE [Activities]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 08/06/2020 18:30:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Activity]    Script Date: 08/06/2020 18:30:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 08/06/2020 18:30:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Activity] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Activity] ([Id], [Name]) VALUES (1, N'Fishing')
INSERT [dbo].[Activity] ([Id], [Name]) VALUES (2, N'Barbeque')
INSERT [dbo].[Activity] ([Id], [Name]) VALUES (3, N'Swimming')
INSERT [dbo].[Activity] ([Id], [Name]) VALUES (4, N'Hiking')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Email], [Activity]) VALUES (1, N'John', N'Doe', N'j@doe.com', N'Fishing')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Email], [Activity]) VALUES (2, N'Sam', N'Samuelson', N's@doe.com', N'Fishing')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Email], [Activity]) VALUES (1343311272, N'Piter', N'Johnson', N'p@doe.com', N'Barbeque')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Email], [Activity]) VALUES (973029808, N'Jeff', N'Jefferson', N'jeff@doe.com', N'Swimming')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Email], [Activity]) VALUES (494779223, N'Bill', N'Dylan', N'bill@doe.com', N'Hiking')
USE [master]
GO
ALTER DATABASE [Activities] SET  READ_WRITE 
GO
