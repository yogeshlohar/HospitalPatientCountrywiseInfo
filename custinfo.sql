USE [master]
GO
/****** Object:  Database [CustomerInfo]    Script Date: 17-10-2021 20:56:15 ******/
CREATE DATABASE [CustomerInfo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CustomerInfo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CustomerInfo.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CustomerInfo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CustomerInfo_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CustomerInfo] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CustomerInfo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CustomerInfo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CustomerInfo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CustomerInfo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CustomerInfo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CustomerInfo] SET ARITHABORT OFF 
GO
ALTER DATABASE [CustomerInfo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CustomerInfo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CustomerInfo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CustomerInfo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CustomerInfo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CustomerInfo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CustomerInfo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CustomerInfo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CustomerInfo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CustomerInfo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CustomerInfo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CustomerInfo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CustomerInfo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CustomerInfo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CustomerInfo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CustomerInfo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CustomerInfo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CustomerInfo] SET RECOVERY FULL 
GO
ALTER DATABASE [CustomerInfo] SET  MULTI_USER 
GO
ALTER DATABASE [CustomerInfo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CustomerInfo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CustomerInfo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CustomerInfo] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CustomerInfo] SET DELAYED_DURABILITY = DISABLED 
GO
USE [CustomerInfo]
GO
/****** Object:  Table [dbo].[CustInfo]    Script Date: 17-10-2021 20:56:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustInfo](
	[Name] [varchar](255) NULL,
	[Cust_Id] [varchar](18) NULL,
	[Open_Dt] [varchar](8) NULL,
	[Consult_Dt] [varchar](8) NULL,
	[Vac_Id] [varchar](5) NULL,
	[Dr_Name] [varchar](255) NULL,
	[State] [varchar](5) NULL,
	[Country] [varchar](5) NULL,
	[DOB] [varchar](8) NULL,
	[Flag] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_AU]    Script Date: 17-10-2021 20:56:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_AU](
	[Customer_Name] [varchar](255) NULL,
	[Customer_Id] [varchar](18) NULL,
	[Open_Date] [varchar](8) NULL,
	[Last_Consulted_Date] [varchar](8) NULL,
	[Vaccination_Id] [varchar](5) NULL,
	[Dr_Name] [varchar](255) NULL,
	[State] [varchar](5) NULL,
	[Country] [varchar](5) NULL,
	[DOB] [varchar](8) NULL,
	[Is_Active] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_IND]    Script Date: 17-10-2021 20:56:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_IND](
	[Customer_Name] [varchar](255) NULL,
	[Customer_Id] [varchar](18) NULL,
	[Open_Date] [varchar](8) NULL,
	[Last_Consulted_Date] [varchar](8) NULL,
	[Vaccination_Id] [varchar](5) NULL,
	[Dr_Name] [varchar](255) NULL,
	[State] [varchar](5) NULL,
	[Country] [varchar](5) NULL,
	[DOB] [varchar](8) NULL,
	[Is_Active] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_NYC]    Script Date: 17-10-2021 20:56:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_NYC](
	[Customer_Name] [varchar](255) NULL,
	[Customer_Id] [varchar](18) NULL,
	[Open_Date] [varchar](8) NULL,
	[Last_Consulted_Date] [varchar](8) NULL,
	[Vaccination_Id] [varchar](5) NULL,
	[Dr_Name] [varchar](255) NULL,
	[State] [varchar](5) NULL,
	[Country] [varchar](5) NULL,
	[DOB] [varchar](8) NULL,
	[Is_Active] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_PHIL]    Script Date: 17-10-2021 20:56:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_PHIL](
	[Customer_Name] [varchar](255) NULL,
	[Customer_Id] [varchar](18) NULL,
	[Open_Date] [varchar](8) NULL,
	[Last_Consulted_Date] [varchar](8) NULL,
	[Vaccination_Id] [varchar](5) NULL,
	[Dr_Name] [varchar](255) NULL,
	[State] [varchar](5) NULL,
	[Country] [varchar](5) NULL,
	[DOB] [varchar](8) NULL,
	[Is_Active] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_USA]    Script Date: 17-10-2021 20:56:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_USA](
	[Customer_Name] [varchar](255) NULL,
	[Customer_Id] [varchar](18) NULL,
	[Open_Date] [varchar](8) NULL,
	[Last_Consulted_Date] [varchar](8) NULL,
	[Vaccination_Id] [varchar](5) NULL,
	[Dr_Name] [varchar](255) NULL,
	[State] [varchar](5) NULL,
	[Country] [varchar](5) NULL,
	[DOB] [varchar](8) NULL,
	[Is_Active] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CustInfo] ([Name], [Cust_Id], [Open_Dt], [Consult_Dt], [Vac_Id], [Dr_Name], [State], [Country], [DOB], [Flag]) VALUES (N'Alex', N'123457', N'20101012', N'20121013', N'MVD', N'Paul', N'SA', N'USA', N'06031987', N'A')
INSERT [dbo].[CustInfo] ([Name], [Cust_Id], [Open_Dt], [Consult_Dt], [Vac_Id], [Dr_Name], [State], [Country], [DOB], [Flag]) VALUES (N'John', N'123458', N'20101012', N'20121013', N'MVD', N'Paul', N'TN', N'IND', N'06031987', N'A')
INSERT [dbo].[CustInfo] ([Name], [Cust_Id], [Open_Dt], [Consult_Dt], [Vac_Id], [Dr_Name], [State], [Country], [DOB], [Flag]) VALUES (N'Mathew', N'123459', N'20101012', N'20121013', N'MVD', N'Paul', N'WAS', N'PHIL', N'06031987', N'A')
INSERT [dbo].[CustInfo] ([Name], [Cust_Id], [Open_Dt], [Consult_Dt], [Vac_Id], [Dr_Name], [State], [Country], [DOB], [Flag]) VALUES (N'Matt', N'12345', N'20101012', N'20121013', N'MVD', N'Paul', N'BOS', N'NYC', N'06031987', N'A')
INSERT [dbo].[CustInfo] ([Name], [Cust_Id], [Open_Dt], [Consult_Dt], [Vac_Id], [Dr_Name], [State], [Country], [DOB], [Flag]) VALUES (N'Jacob', N'1256', N'20101012', N'20121013', N'MVD', N'Paul', N'VIC', N'AU', N'06031987', N'A')
INSERT [dbo].[Table_AU] ([Customer_Name], [Customer_Id], [Open_Date], [Last_Consulted_Date], [Vaccination_Id], [Dr_Name], [State], [Country], [DOB], [Is_Active]) VALUES (N'Jacob', N'1256', N'20101012', N'20121013', N'MVD', N'Paul', N'VIC', N'AU', N'06031987', N'A')
INSERT [dbo].[Table_IND] ([Customer_Name], [Customer_Id], [Open_Date], [Last_Consulted_Date], [Vaccination_Id], [Dr_Name], [State], [Country], [DOB], [Is_Active]) VALUES (N'John', N'123458', N'20101012', N'20121013', N'MVD', N'Paul', N'TN', N'IND', N'06031987', N'A')
INSERT [dbo].[Table_NYC] ([Customer_Name], [Customer_Id], [Open_Date], [Last_Consulted_Date], [Vaccination_Id], [Dr_Name], [State], [Country], [DOB], [Is_Active]) VALUES (N'Matt', N'12345', N'20101012', N'20121013', N'MVD', N'Paul', N'BOS', N'NYC', N'06031987', N'A')
INSERT [dbo].[Table_PHIL] ([Customer_Name], [Customer_Id], [Open_Date], [Last_Consulted_Date], [Vaccination_Id], [Dr_Name], [State], [Country], [DOB], [Is_Active]) VALUES (N'Mathew', N'123459', N'20101012', N'20121013', N'MVD', N'Paul', N'WAS', N'PHIL', N'06031987', N'A')
INSERT [dbo].[Table_USA] ([Customer_Name], [Customer_Id], [Open_Date], [Last_Consulted_Date], [Vaccination_Id], [Dr_Name], [State], [Country], [DOB], [Is_Active]) VALUES (N'Alex', N'123457', N'20101012', N'20121013', N'MVD', N'Paul', N'SA', N'USA', N'06031987', N'A')
USE [master]
GO
ALTER DATABASE [CustomerInfo] SET  READ_WRITE 
GO
