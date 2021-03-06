USE [master]
GO
/****** Object:  Database [QLBH]    Script Date: 7/20/2020 9:28:30 AM ******/
CREATE DATABASE [QLBH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QLBH.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLBH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QLBH_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLBH] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLBH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBH] SET  MULTI_USER 
GO
ALTER DATABASE [QLBH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBH] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QLBH]
GO
/****** Object:  Table [dbo].[HD_MH]    Script Date: 7/20/2020 9:28:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HD_MH](
	[SOHD] [nvarchar](10) NULL,
	[MAMH] [nvarchar](10) NULL,
	[SLUONG] [int] NOT NULL,
	[GIABAN] [float] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 7/20/2020 9:28:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[SOHD] [nvarchar](10) NOT NULL,
	[NGAYHD] [date] NULL,
	[MAKH] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[SOHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 7/20/2020 9:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [nvarchar](10) NOT NULL,
	[TENKH] [nvarchar](100) NULL,
	[TAIKHOAN] [nvarchar](50) NULL,
	[DCHI] [nvarchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MATHANG]    Script Date: 7/20/2020 9:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATHANG](
	[MAMH] [nvarchar](10) NOT NULL,
	[TENMH] [nvarchar](100) NULL,
	[DVT] [nvarchar](50) NULL,
	[DGIA] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD01', N'MH01', 1, 10000)
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD01', N'MH01', 2, 6000)
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD01', N'MH01', 2, 3000)
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD02', N'MH02', 2, 3000)
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD01', N'MH02', 2, 10000)
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD01', N'MH01', 2, 3000)
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD01', N'MH01', 1, 10000)
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD01', N'MH01', 2, 6000)
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD01', N'MH01', 2, 3000)
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD02', N'MH02', 2, 3000)
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD01', N'MH02', 2, 10000)
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD01', N'MH01', 2, 3000)
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD01', N'MH01', 2, 6000)
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD01', N'MH01', 2, 6000)
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD01', N'MH01', 2, 3000)
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD02', N'MH02', 2, 3000)
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD01', N'MH02', 2, 10000)
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD01', N'MH01', 2, 3000)
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD03', N'MH04', 2, 3000)
INSERT [dbo].[HD_MH] ([SOHD], [MAMH], [SLUONG], [GIABAN]) VALUES (N'HD03', N'MH02', 2, 3000)
INSERT [dbo].[HOADON] ([SOHD], [NGAYHD], [MAKH]) VALUES (N'HD01', CAST(0x7C400B00 AS Date), N'KH01')
INSERT [dbo].[HOADON] ([SOHD], [NGAYHD], [MAKH]) VALUES (N'HD02', CAST(0x84400B00 AS Date), N'KH01')
INSERT [dbo].[HOADON] ([SOHD], [NGAYHD], [MAKH]) VALUES (N'HD03', CAST(0x84400B00 AS Date), N'KH02')
INSERT [dbo].[HOADON] ([SOHD], [NGAYHD], [MAKH]) VALUES (N'HD04', CAST(0x85400B00 AS Date), N'KH02')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [TAIKHOAN], [DCHI]) VALUES (N'KH01', N'NGUY?N A', N'TK.A', N'LONG AN')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [TAIKHOAN], [DCHI]) VALUES (N'KH02', N'NGUY?N B', N'TK.B', N'C?N THO')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [TAIKHOAN], [DCHI]) VALUES (N'KH03', N'NGUY?N C', N'TK.C', N'Ð?NG THÁP')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [TAIKHOAN], [DCHI]) VALUES (N'KH04', N'NGUY?N D', N'TK.D', N'LONG AN')
INSERT [dbo].[MATHANG] ([MAMH], [TENMH], [DVT], [DGIA]) VALUES (N'MH01', N'GAO', N'KG', 10000)
INSERT [dbo].[MATHANG] ([MAMH], [TENMH], [DVT], [DGIA]) VALUES (N'MH02', N'NUOC MAN', N'CHAI', 3000)
INSERT [dbo].[MATHANG] ([MAMH], [TENMH], [DVT], [DGIA]) VALUES (N'MH03', N'NUOC TUONG', N'CHAI', 1000)
INSERT [dbo].[MATHANG] ([MAMH], [TENMH], [DVT], [DGIA]) VALUES (N'MH04', N'DAU AN', N'CHAI', 70000)
INSERT [dbo].[MATHANG] ([MAMH], [TENMH], [DVT], [DGIA]) VALUES (N'MH05', N'MY', N'THUNG', 6000)
ALTER TABLE [dbo].[HD_MH]  WITH CHECK ADD FOREIGN KEY([MAMH])
REFERENCES [dbo].[MATHANG] ([MAMH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HD_MH]  WITH CHECK ADD FOREIGN KEY([SOHD])
REFERENCES [dbo].[HOADON] ([SOHD])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [QLBH] SET  READ_WRITE 
GO
