USE [master]
GO
/****** Object:  Database [QLNH]    Script Date: 15/06/2024 6:46:07 CH ******/
CREATE DATABASE [QLNH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLNH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.CSPTN1\MSSQL\DATA\QLNH.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLNH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.CSPTN1\MSSQL\DATA\QLNH_log.ldf' , SIZE = 401408KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLNH] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLNH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLNH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLNH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLNH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLNH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLNH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLNH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLNH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLNH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLNH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLNH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLNH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLNH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLNH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLNH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLNH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLNH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLNH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLNH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLNH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLNH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLNH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLNH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLNH] SET RECOVERY FULL 
GO
ALTER DATABASE [QLNH] SET  MULTI_USER 
GO
ALTER DATABASE [QLNH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLNH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLNH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLNH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLNH] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLNH] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLNH', N'ON'
GO
ALTER DATABASE [QLNH] SET QUERY_STORE = OFF
GO
USE [QLNH]
GO
/****** Object:  User [KN]    Script Date: 15/06/2024 6:46:07 CH ******/
CREATE USER [KN] FOR LOGIN [KN] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [MSmerge_PAL_role]    Script Date: 15/06/2024 6:46:07 CH ******/
CREATE ROLE [MSmerge_PAL_role]
GO
/****** Object:  DatabaseRole [MSmerge_D61752251366496FB708F28D1CFB4C8F]    Script Date: 15/06/2024 6:46:07 CH ******/
CREATE ROLE [MSmerge_D61752251366496FB708F28D1CFB4C8F]
GO
/****** Object:  DatabaseRole [MSmerge_56E507BD2F504AAD8EEA8363AF30B65F]    Script Date: 15/06/2024 6:46:07 CH ******/
CREATE ROLE [MSmerge_56E507BD2F504AAD8EEA8363AF30B65F]
GO
/****** Object:  DatabaseRole [MSmerge_48DD3254ADD64FD0BC01455933FF2D4B]    Script Date: 15/06/2024 6:46:07 CH ******/
CREATE ROLE [MSmerge_48DD3254ADD64FD0BC01455933FF2D4B]
GO
ALTER ROLE [db_owner] ADD MEMBER [KN]
GO
ALTER ROLE [MSmerge_PAL_role] ADD MEMBER [MSmerge_D61752251366496FB708F28D1CFB4C8F]
GO
ALTER ROLE [MSmerge_PAL_role] ADD MEMBER [MSmerge_56E507BD2F504AAD8EEA8363AF30B65F]
GO
ALTER ROLE [MSmerge_PAL_role] ADD MEMBER [MSmerge_48DD3254ADD64FD0BC01455933FF2D4B]
GO
/****** Object:  Schema [MSmerge_PAL_role]    Script Date: 15/06/2024 6:46:08 CH ******/
CREATE SCHEMA [MSmerge_PAL_role]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 15/06/2024 6:46:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[STK] [nchar](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[CCCD] [nvarchar](50) NULL,
	[Sodu] [nvarchar](50) NULL,
	[Create_date] [date] NULL,
	[ID_Dp] [nchar](10) NOT NULL,
	[ID_Customer] [nchar](10) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[STK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Card]    Script Date: 15/06/2024 6:46:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Card](
	[ID_Card] [nchar](10) NOT NULL,
	[TenChuthe] [nvarchar](50) NULL,
	[Date Expired] [date] NULL,
	[Name_CardType] [nvarchar](50) NULL,
	[ID_CardType] [nchar](10) NOT NULL,
	[ID_ac] [nchar](10) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_Card] PRIMARY KEY CLUSTERED 
(
	[ID_Card] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardType]    Script Date: 15/06/2024 6:46:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardType](
	[ID_CardType] [nchar](10) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_CardType] PRIMARY KEY CLUSTERED 
(
	[ID_CardType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 15/06/2024 6:46:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [nchar](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[CCCD] [nvarchar](50) NULL,
	[Ngaycap] [date] NULL,
	[Dob] [date] NULL,
	[adress] [nvarchar](50) NULL,
	[Sdt] [nvarchar](50) NULL,
	[ID_Dp] [nchar](10) NOT NULL,
	[gender] [nvarchar](50) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dp]    Script Date: 15/06/2024 6:46:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dp](
	[ID_dp] [nchar](10) NOT NULL,
	[adress] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[hotline] [nvarchar](50) NULL,
	[ID_HQ] [nchar](10) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_Dp] PRIMARY KEY CLUSTERED 
(
	[ID_dp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hq]    Script Date: 15/06/2024 6:46:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hq](
	[ID_hq] [nchar](10) NOT NULL,
	[adress] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[hotline] [nvarchar](50) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_Hq] PRIMARY KEY CLUSTERED 
(
	[ID_hq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 15/06/2024 6:46:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[ID] [nchar](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[Gioitinh] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[Dob] [date] NULL,
	[CCCD] [nvarchar](50) NULL,
	[Chucvu] [nvarchar](50) NULL,
	[ID_Dp] [nchar](10) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionCR]    Script Date: 15/06/2024 6:46:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionCR](
	[ID_CR] [nchar](10) NOT NULL,
	[STK] [nvarchar](50) NULL,
	[LoaiGD] [nvarchar](50) NULL,
	[Day] [datetime] NULL,
	[Money] [nvarchar](50) NULL,
	[ID_NV] [nchar](10) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_TransactionCR] PRIMARY KEY CLUSTERED 
(
	[ID_CR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionGD]    Script Date: 15/06/2024 6:46:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionGD](
	[ID_HD] [nchar](10) NOT NULL,
	[STK1] [nvarchar](50) NULL,
	[STK2] [nvarchar](50) NULL,
	[Money] [nvarchar](50) NULL,
	[Day] [datetime] NULL,
	[ID_Nv] [nchar](10) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_TransactionGD] PRIMARY KEY CLUSTERED 
(
	[ID_HD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'CTAC13    ', N'NGUYỄN MẠNH HÙNG', N'1221323312', N'14000000', CAST(N'2011-10-10' AS Date), N'CT01      ', N'CTKH13    ', N'fd2410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'CTAC14    ', N'ĐÔ XU N TIẾN', N'32123123', N'540000000', CAST(N'0212-12-12' AS Date), N'CT01      ', N'CTKH14    ', N'fe2410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'CTAC15    ', N'TRƯƠNG VĨNH TIẾN', N'412343243', N'120000000', CAST(N'1202-12-12' AS Date), N'CT02      ', N'CTKH15    ', N'ff2410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'CTAC16    ', N'NGỌ VĂN THỨ', N'123323213', N'656454566', CAST(N'1200-12-12' AS Date), N'CT02      ', N'CTKH16    ', N'002510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'CTAC17    ', N'NGỌ VĂN VŨ', N'123213', N'43243324', CAST(N'1300-12-15' AS Date), N'CT03      ', N'CTKH17    ', N'012510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'CTAC18    ', N'NGỌ VĂN LONG', N'14324242', N'1.12346e+007', CAST(N'2012-12-12' AS Date), N'CT03      ', N'CTKH18    ', N'022510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'DNAC01    ', N'Dương Quá', N'8574656', N'8000000.00', CAST(N'2024-05-29' AS Date), N'DN04      ', N'DNKH01    ', N'df9e902e-991d-ef11-9302-f47b094c2010')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'DNAC07    ', N'Nguyễn Như Thiệu', N'012113232', N'123456789', CAST(N'1212-12-12' AS Date), N'DN01      ', N'DNKH07    ', N'032510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'DNAC08    ', N'NGUYỄN THU PHƯƠNG', N'121312332', N'100000', CAST(N'1212-12-12' AS Date), N'DN02      ', N'DNKH08    ', N'042510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'DNAC09    ', N'NGUYỄN THỊ LINH', N'13212323213', N'2123222', CAST(N'1212-12-12' AS Date), N'DN02      ', N'DNKH09    ', N'052510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'DNAC10    ', N'ĐỖ VĂN MINH', N'121321332', N'14000000', CAST(N'2012-12-12' AS Date), N'DN03      ', N'DNKH10    ', N'062510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'DNAC11    ', N'NGUYỄN MẠNH QUÝ', N'12312323', N'11331313', CAST(N'2012-10-10' AS Date), N'DN03      ', N'DNKH11    ', N'072510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'DNAC12    ', N'NGUYỄN HOÀNG QUANG', N'13213332', N'43321332', CAST(N'2013-01-10' AS Date), N'DN01      ', N'DNKH12    ', N'082510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'DNAC13    ', N'NGUYEN VAN A', N'13213121', N'11800000.00', CAST(N'2002-01-01' AS Date), N'DN02      ', N'DNKH13    ', N'd8cf16cb-6010-ef11-92f1-088fc3395e0a')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'DNAC14    ', N'TTTTT', N'13233233', N'12000000', CAST(N'2003-01-01' AS Date), N'DN02      ', N'DNKH14    ', N'9291c862-e915-ef11-92f7-f47b094c2010')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'DNAC15    ', N'TTRRT', N'12123', N'12322', CAST(N'2000-01-01' AS Date), N'DN02      ', N'DNKH15    ', N'bf90d0f0-6d16-ef11-92f7-f47b094c2010')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'HCMAC01   ', N'Ngọ Văn Trọng', N'032121323', N'20000000.00', CAST(N'2003-12-12' AS Date), N'HCM01     ', N'HCMKH01   ', N'092510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'HCMAC02   ', N'Nguyễn Hoàng Hải', N'021323123', N'10000000', CAST(N'2002-12-12' AS Date), N'HCM01     ', N'HCMKH02   ', N'0a2510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'HCMAC03   ', N'Nguyễn Thị Hương Ly', N'021213123', N'14000000', CAST(N'2020-12-12' AS Date), N'HCM02     ', N'HCMKH03   ', N'0b2510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'HCMAC04   ', N'Phạm Thị Nga', N'0324324432', N'10000000', CAST(N'2020-12-12' AS Date), N'HCM02     ', N'HCMKH04   ', N'0c2510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'HCMAC05   ', N'Ngọ Thị Thúy', N'0213213322', N'123342323', CAST(N'2021-12-12' AS Date), N'HCM04     ', N'HCMKH05   ', N'0d2510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'HCMAC06   ', N'Ngọ Thị Thơm', N'012321312', N'23221121.00', CAST(N'2012-12-12' AS Date), N'HCM04     ', N'HCMKH06   ', N'0e2510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'HCMAC07   ', N'TRÊTRT', N'341232', N'12000000', CAST(N'2024-05-29' AS Date), N'HCM03     ', N'HCMKH07   ', N'746a7cee-bf1d-ef11-ba74-60dd8e1e088d')
INSERT [dbo].[Account] ([STK], [name], [CCCD], [Sodu], [Create_date], [ID_Dp], [ID_Customer], [rowguid]) VALUES (N'HCMAC100  ', N'Nguyen Van Mui', N'312321', N'6000000', CAST(N'2024-02-12' AS Date), N'HCM01     ', N'HCMKH08   ', N'e3b06119-ca1d-ef11-ba74-60dd8e1e088d')
GO
INSERT [dbo].[Card] ([ID_Card], [TenChuthe], [Date Expired], [Name_CardType], [ID_CardType], [ID_ac], [rowguid]) VALUES (N'CTCD10    ', N'NGUYEN MANH HUNG', CAST(N'1212-01-01' AS Date), N'DEBITCARD', N'C01       ', N'CTAC13    ', N'2d2510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Card] ([ID_Card], [TenChuthe], [Date Expired], [Name_CardType], [ID_CardType], [ID_ac], [rowguid]) VALUES (N'CTCD11    ', N'DO XUAN TIEN', CAST(N'1212-01-10' AS Date), N'DEBITCARD', N'C01       ', N'CTAC14    ', N'2e2510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Card] ([ID_Card], [TenChuthe], [Date Expired], [Name_CardType], [ID_CardType], [ID_ac], [rowguid]) VALUES (N'CTCD12    ', N'TRUONG VINH TIEN', CAST(N'1331-03-03' AS Date), N'CREDITCARD', N'C02       ', N'CTAC15    ', N'2f2510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Card] ([ID_Card], [TenChuthe], [Date Expired], [Name_CardType], [ID_CardType], [ID_ac], [rowguid]) VALUES (N'DNCD07    ', N'NGUYEN NHU THIEU', CAST(N'1221-12-12' AS Date), N'DEBITCARD', N'C01       ', N'DNAC07    ', N'2a2510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Card] ([ID_Card], [TenChuthe], [Date Expired], [Name_CardType], [ID_CardType], [ID_ac], [rowguid]) VALUES (N'DNCD08    ', N'NGUYEN THU PHUONG', CAST(N'1212-12-13' AS Date), N'CREDITCARD', N'C02       ', N'DNAC08    ', N'2b2510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Card] ([ID_Card], [TenChuthe], [Date Expired], [Name_CardType], [ID_CardType], [ID_ac], [rowguid]) VALUES (N'DNCD09    ', N'NGUYEN THI LINH', CAST(N'1212-02-02' AS Date), N'CREDITCARD', N'C02       ', N'DNAC09    ', N'2c2510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Card] ([ID_Card], [TenChuthe], [Date Expired], [Name_CardType], [ID_CardType], [ID_ac], [rowguid]) VALUES (N'DNCD10    ', N'TTTT', CAST(N'2000-01-01' AS Date), N'CREDITCARD', N'C02       ', N'DNAC10    ', N'102285b6-ea15-ef11-92f7-f47b094c2010')
INSERT [dbo].[Card] ([ID_Card], [TenChuthe], [Date Expired], [Name_CardType], [ID_CardType], [ID_ac], [rowguid]) VALUES (N'HCMCD01   ', N'NGO VAN TRONG', CAST(N'2200-02-02' AS Date), N'DEBITCARD', N'C01       ', N'HCMAC01   ', N'242510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Card] ([ID_Card], [TenChuthe], [Date Expired], [Name_CardType], [ID_CardType], [ID_ac], [rowguid]) VALUES (N'HCMCD02   ', N'NGUYEN HOANG HAI', CAST(N'1212-12-12' AS Date), N'CREDITCARD', N'C02       ', N'HCMAC02   ', N'252510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Card] ([ID_Card], [TenChuthe], [Date Expired], [Name_CardType], [ID_CardType], [ID_ac], [rowguid]) VALUES (N'HCMCD03   ', N'NGUYEN THI HUONG LY', CAST(N'1221-12-12' AS Date), N'DEBITCARD', N'C01       ', N'HCMAC03   ', N'262510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Card] ([ID_Card], [TenChuthe], [Date Expired], [Name_CardType], [ID_CardType], [ID_ac], [rowguid]) VALUES (N'HCMCD04   ', N'PHAM THI NGA', CAST(N'1232-12-12' AS Date), N'DEBITCARD', N'C01       ', N'HCMAC04   ', N'272510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Card] ([ID_Card], [TenChuthe], [Date Expired], [Name_CardType], [ID_CardType], [ID_ac], [rowguid]) VALUES (N'HCMCD05   ', N'NGO THI THUY', CAST(N'1233-12-12' AS Date), N'CREDITCARD', N'C02       ', N'HCMAC05   ', N'282510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Card] ([ID_Card], [TenChuthe], [Date Expired], [Name_CardType], [ID_CardType], [ID_ac], [rowguid]) VALUES (N'HCMCD06   ', N'NGO THI THOM', CAST(N'1232-02-12' AS Date), N'CREDITCARD', N'C02       ', N'HCMAC06   ', N'292510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Card] ([ID_Card], [TenChuthe], [Date Expired], [Name_CardType], [ID_CardType], [ID_ac], [rowguid]) VALUES (N'HCMCD07   ', N'TRÊTRT', CAST(N'2029-05-29' AS Date), N'CREDITCARD', N'C02       ', N'HCMAC07   ', N'ae1d23b0-681e-ef11-ba74-60dd8e1e088d')
GO
INSERT [dbo].[CardType] ([ID_CardType], [name]) VALUES (N'C01       ', N'DEBITCARD')
INSERT [dbo].[CardType] ([ID_CardType], [name]) VALUES (N'C02       ', N'CREDITCARD')
INSERT [dbo].[CardType] ([ID_CardType], [name]) VALUES (N'C03       ', N'TTTCARD')
INSERT [dbo].[CardType] ([ID_CardType], [name]) VALUES (N'C04       ', N'GHINOCARD')
GO
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'CTKH13    ', N'Nguyễn Mạnh Hùng', N'1231231233', CAST(N'2001-05-06' AS Date), CAST(N'1213-12-12' AS Date), N'Lai Châu Điẹn Biên', N'12323123', N'CT01      ', N'Nữ', N'e12410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'CTKH14    ', N'Dỗ Xuân Tiến', N'131312313', CAST(N'2001-01-12' AS Date), CAST(N'0122-12-12' AS Date), N'Ninh Kiều Ninh Bình', N'123211231', N'CT01      ', N'Nam', N'e22410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'CTKH15    ', N'Trương Vĩnh Tiến', N'12131233', CAST(N'1000-12-12' AS Date), CAST(N'0122-12-12' AS Date), N'Lục Ngạn Bắc Giang', N'12123233', N'CT02      ', N'Nữ', N'e32410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'CTKH16    ', N'Ngọ Văn Thứ', N'12123321', CAST(N'2000-12-12' AS Date), CAST(N'1967-10-10' AS Date), N'Thăng Bình Nông Cống', N'132131', N'CT02      ', N'Nam', N'e42410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'CTKH17    ', N'Ngọ Văn Vũ', N'123132123', CAST(N'2001-12-13' AS Date), CAST(N'1312-02-12' AS Date), N'Thăng Bình bÌNH dƯƠNG', N'12312123', N'CT03      ', N'Nam', N'e52410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'CTKH18    ', N'Ngọ Văn Long', N'1223133312', CAST(N'2001-12-15' AS Date), CAST(N'1222-12-19' AS Date), N'Dĩ An Bình Dương', N'12231321', N'CT03      ', N'Nam', N'e62410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'CTKH19    ', N'Nguyeenx Hair', N'13123423', CAST(N'2001-01-01' AS Date), CAST(N'2002-01-02' AS Date), N'Đà nẵng cần thơ', N'13214232342', N'CT02      ', N'Nữ', N'20407106-0a11-ef11-accf-744ca18fe7c8')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'DNKH01    ', N'Duong Quá', N'8574656', CAST(N'2024-05-01' AS Date), CAST(N'2003-05-08' AS Date), N'Ð?c Cô M? Ki?m', N'07876865', N'DN04      ', N'Nam', N'42abcd7e-971d-ef11-9302-f47b094c2010')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'DNKH07    ', N'Nguyễn Như Thiệu', N'05343565345', CAST(N'2003-04-08' AS Date), CAST(N'1993-12-12' AS Date), N'Chí linh hải dương', N'0343234322', N'DN01      ', N'Nam', N'e72410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'DNKH08    ', N'Nguyễn Thu Phương', N'090345234', CAST(N'2003-12-12' AS Date), CAST(N'1992-12-12' AS Date), N'Thăng Bihf Nông Cống Thanh Hóa', N'0222212121', N'DN02      ', N'Nữ', N'e82410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'DNKH09    ', N'Nguyễn Thi Linh', N'094324234', CAST(N'2003-12-13' AS Date), CAST(N'1222-12-13' AS Date), N'ThăngBinhf Nông Cống Thanh Hóa', N'1211231322', N'DN02      ', N'Nữ', N'e92410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'DNKH10    ', N'Đỗ Văn Minh', N'022231323', CAST(N'2003-12-13' AS Date), CAST(N'1543-12-13' AS Date), N'mINH kHÔI Lào Cai', N'123122312', N'DN03      ', N'Nam', N'ea2410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'DNKH11    ', N'Nguyễn Mạnh Quý', N'022232132', CAST(N'2004-12-12' AS Date), CAST(N'1432-12-13' AS Date), N'Trường Giang , Yên Bái', N'1232123123', N'DN03      ', N'Nữ', N'eb2410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'DNKH12    ', N'Nguy?n Hoàng Quang', N'1223132313', CAST(N'2001-12-13' AS Date), CAST(N'1333-12-13' AS Date), N'Mi?n Núi tuyên quang', N'131321', N'DN01      ', N'Nam', N'ec2410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'DNKH13    ', N'NGUYEN VAN A', N'12-02-2004', CAST(N'2002-12-15' AS Date), CAST(N'2001-01-01' AS Date), N'HA DONG , HA NOI', N'123232', N'DN02      ', N'Nam', N'3c05cdae-6010-ef11-92f1-088fc3395e0a')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'DNKH14    ', N'trong', N'12-12-2004', CAST(N'2002-12-12' AS Date), CAST(N'2001-01-01' AS Date), N'ha noi', N'12312322', N'DN01      ', N'Nữ', N'd3ac44a4-0911-ef11-92f1-088fc3395e0a')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'DNKH15    ', N'Nguyễn Văn Quang', N'0903456789', CAST(N'2021-05-17' AS Date), CAST(N'2003-07-16' AS Date), N'Bán Đỏ Sơn Trà Đà Nẵng', N'054353465', N'DN01      ', N'Nam', N'7571d6ca-4614-ef11-b4b7-ee9fad07eb01')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'DNKH16    ', N'Ngo Van Linh', N'1232423242', CAST(N'2022-10-10' AS Date), CAST(N'2002-01-01' AS Date), N'Tien Du Da Nang', N'032032323', N'DN02      ', N'Nam', N'20a16edc-9815-ef11-92f7-f47b094c2010')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'DNKH17    ', N'LE HAI DANG', N'1423234324', CAST(N'2010-01-01' AS Date), CAST(N'2003-04-04' AS Date), N'Cat Ba Da Nang', N'090403045', N'DN03      ', N'Nam', N'b4d53059-9d15-ef11-92f7-f47b094c2010')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'DNKH18    ', N'TTTTTT', N'13213321', CAST(N'2010-02-02' AS Date), CAST(N'2000-03-03' AS Date), N'NNNNN', N'432435435', N'DN02      ', N'Nữ', N'40a25070-df15-ef11-92f7-f47b094c2010')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'HCMKH01   ', N'Ngọ Văn Trọng', N'038203023353', CAST(N'2003-05-17' AS Date), CAST(N'2003-07-16' AS Date), N'KTXB2 - Hà Đông Hà Nội', N'0904078498', N'HCM01     ', N'Nam', N'ed2410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'HCMKH02   ', N'Nguyễn Hoàng Hải', N'038203022253', CAST(N'2003-05-17' AS Date), CAST(N'2003-09-19' AS Date), N'Vũ trong khánh - Hà đông , hà nội', N'090470898', N'HCM01     ', N'Nam', N'ee2410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'HCMKH03   ', N'Nguyễn Thị Hương Ly', N'03820302335', CAST(N'2003-08-28' AS Date), CAST(N'2003-08-28' AS Date), N'Thăng Bình Nông Cống Thanh Hóa', N'090708498', N'HCM02     ', N'Nữ', N'ef2410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'HCMKH04   ', N'Phạm Thị Nga', N'09070898', CAST(N'2003-03-03' AS Date), CAST(N'2003-04-05' AS Date), N'QUẬN 1 tphcm', N'035298732', N'HCM02     ', N'Nữ', N'f02410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'HCMKH05   ', N'Ngọ Thị Thúy', N'033456756', CAST(N'2003-04-05' AS Date), CAST(N'1992-10-10' AS Date), N'Quận 2 TPHCM', N'0333224222', N'HCM04     ', N'Nữ', N'f12410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'HCMKH06   ', N'Ngọ Thị Thơm', N'033344424', CAST(N'2003-04-05' AS Date), CAST(N'1993-02-23' AS Date), N'Quận 4 TPHCM', N'03334424325', N'HCM04     ', N'Nữ', N'f22410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'HCMKH07   ', N'TRÊTRT', N'341232', CAST(N'2024-05-08' AS Date), CAST(N'2024-05-02' AS Date), N'GHDFGD', N'089778', N'HCM03     ', N'Nam', N'736a7cee-bf1d-ef11-ba74-60dd8e1e088d')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'HCMKH08   ', N'Nguyen Van Mui', N'312321', CAST(N'2024-12-12' AS Date), CAST(N'2003-04-06' AS Date), N'dfgfddfds', N'09867', N'HCM01     ', N'Nam', N'441e3f00-ca1d-ef11-ba74-60dd8e1e088d')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'HCMKH09   ', N'Nguy?n Van Mùi', N'312534', CAST(N'2021-09-09' AS Date), CAST(N'2002-03-03' AS Date), N'Thanh Hóa', N'097876', N'HCM01     ', N'N?', N'7cd0647b-cb1d-ef11-ba74-60dd8e1e088d')
INSERT [dbo].[Customer] ([ID], [name], [CCCD], [Ngaycap], [Dob], [adress], [Sdt], [ID_Dp], [gender], [rowguid]) VALUES (N'hcmkh100  ', N'Nguyen Van A', NULL, NULL, NULL, NULL, NULL, N'HCM01     ', NULL, N'aaee1eff-f21e-ef11-ba74-60dd8e1e088d')
GO
INSERT [dbo].[Dp] ([ID_dp], [adress], [name], [hotline], [ID_HQ], [rowguid]) VALUES (N'CT01      ', N'Quận Ninh Kiều , Cần Thơ', N'NVT BANK Chi nhánh Ninh Kiều', N'07777777', N'TSCT      ', N'd82410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Dp] ([ID_dp], [adress], [name], [hotline], [ID_HQ], [rowguid]) VALUES (N'CT02      ', N'Quận Bình Thủy , Cần Thơ', N'NVT BANK Chi nhánh Bình Thủy', N'08888888', N'TSCT      ', N'd92410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Dp] ([ID_dp], [adress], [name], [hotline], [ID_HQ], [rowguid]) VALUES (N'CT03      ', N'Quận Thốt Nốt , Cần Thơ', N'NVT BANK Chi nhánh Thốt Nốt', N'09999999', N'TSCT      ', N'da2410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Dp] ([ID_dp], [adress], [name], [hotline], [ID_HQ], [rowguid]) VALUES (N'DN01      ', N'Quận Hải Châu , Đà Nẵng', N'NVT BANK Chi nhánh Hải Châu', N'04444444', N'TSDN      ', N'db2410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Dp] ([ID_dp], [adress], [name], [hotline], [ID_HQ], [rowguid]) VALUES (N'DN02      ', N'Quận Sơn Trà , Đà Nẵng', N'NVT BANK Chi nhánh Sơn Trà', N'05555555', N'TSDN      ', N'dc2410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Dp] ([ID_dp], [adress], [name], [hotline], [ID_HQ], [rowguid]) VALUES (N'DN03      ', N'Quận Thanh Khê, Đà Nẵng', N'NVT BANK Chi nhánh Thanh Khê', N'06666666', N'TSDN      ', N'dd2410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Dp] ([ID_dp], [adress], [name], [hotline], [ID_HQ], [rowguid]) VALUES (N'DN04      ', N'Quạn Cát Bà , Đà Nẵng', N'NVT BANK Đà Nẵng Chi Nhánh Cát Bà', N'066667777', N'TSDN      ', N'a6daa704-6d16-ef11-92f7-f47b094c2010')
INSERT [dbo].[Dp] ([ID_dp], [adress], [name], [hotline], [ID_HQ], [rowguid]) VALUES (N'DN05      ', N'REWEW', N'REWRWE', N'089678654', N'TSDN      ', N'779b0805-a51d-ef11-9302-f47b094c2010')
INSERT [dbo].[Dp] ([ID_dp], [adress], [name], [hotline], [ID_HQ], [rowguid]) VALUES (N'HCM01     ', N'Quận 1 , TPHCM', N' NVT BANK Chi nhánh Quận 1 ', N'01111111', N'TSHCM     ', N'de2410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Dp] ([ID_dp], [adress], [name], [hotline], [ID_HQ], [rowguid]) VALUES (N'HCM02     ', N'Quận 2 ,TPHCM', N'NVT BANK Chi nhánh Quận 2', N'02222222', N'TSHCM     ', N'df2410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Dp] ([ID_dp], [adress], [name], [hotline], [ID_HQ], [rowguid]) VALUES (N'HCM03     ', N'Quạn Thủ đức tphcm', N'NVT BANK Chi nhánh thủ đức ', N'0789976867', N'TSHCM     ', N'569cdb5a-bf1d-ef11-ba74-60dd8e1e088d')
INSERT [dbo].[Dp] ([ID_dp], [adress], [name], [hotline], [ID_HQ], [rowguid]) VALUES (N'HCM04     ', N'Quận 4 , TPHCM', N'NVT BANK Chi nhánh Quận 4', N'03333333', N'TSHCM     ', N'e02410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Dp] ([ID_dp], [adress], [name], [hotline], [ID_HQ], [rowguid]) VALUES (N'HN01      ', N'Trung Hòa Cầu Giấy', N'NVT BANK Trụ Sở Tổng', N'011111111', N'TSHN      ', N'6d8a6fa6-b319-ef11-b4b7-ee9fad07eb01')
GO
INSERT [dbo].[Hq] ([ID_hq], [adress], [name], [hotline], [rowguid]) VALUES (N'TSCT      ', N'Phường An Bình, quận Ninh Kiều, TP. Cần Thơ', N'Ngân hàng NVT BANK Trụ Sở Cần Thơ', N'033443905
', N'd42410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Hq] ([ID_hq], [adress], [name], [hotline], [rowguid]) VALUES (N'TSDN      ', N'Phường Hòa Hải, Quận Ngũ Hành Sơn, TP Đà Nẵng', N'Ngân hàng NVT BANK Trụ Sở Đà Nẵng', N'03758543355 ', N'd52410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Hq] ([ID_hq], [adress], [name], [hotline], [rowguid]) VALUES (N'TSHCM     ', N' đường D1, Khu Công Nghệ Cao, Quận 9 , TP.HCM ', N'Ngân hàng NVT BANK Trụ Sở TP.HCM ', N'0352987324', N'd62410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Hq] ([ID_hq], [adress], [name], [hotline], [rowguid]) VALUES (N'TSHN      ', N'01 Nguyễn Trãi , Hà Đông , Hà Nội', N'Ngân hàng NVTBANK Trụ sở Hà Nội', N'0904708498
', N'd72410f0-5b10-ef11-b4b5-ee9fad07eb01')
GO
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'CTNV01    ', N'Nguyễn Như Thiệu', N'Nam', N'09322456789', CAST(N'2003-05-14' AS Date), N'123', N'Quản Trị Viên', N'CT01      ', N'a0df9686-411b-ef11-acd0-744ca18fe7c8')
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'CTNV02    ', N'Nguyễn Thị Linh', N'Nữ', N'082234345', CAST(N'2003-05-08' AS Date), N'123', N'Giao Dịch Viên', N'CT02      ', N'bacd16d5-421b-ef11-acd0-744ca18fe7c8')
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'CTNV08    ', N'Trần Thanh Tuấn', N'Nam', N'02122323', CAST(N'2003-04-04' AS Date), N'12345', N'Giao Dịch Viên', N'CT01      ', N'f32410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'CTNV10    ', N'VŨ ANH QUÂN', N'Nam', N'4344324', CAST(N'2011-12-01' AS Date), N'3233123', N'Giao Dịch Viên', N'CT02      ', N'f42410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'CTNV11    ', N'NGUYỄN THỊ HUỆ', N'Nữ', N'1222331232', CAST(N'2001-01-01' AS Date), N'232223332', N'Giao Dịch Viên', N'CT03      ', N'f52410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'CTNV20    ', N'NGUY?N THI?U', N'Nam', N'09765645', CAST(N'2003-04-05' AS Date), N'14312123', N'Qu?n Tr? Viên', N'CT03      ', N'14982b66-c51d-ef11-b4b7-ee9fad07eb01')
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'DNNV01    ', N'Trương Vĩnh Tiến', N'Nam', N'086734234', CAST(N'2003-03-03' AS Date), N'123', N'Quản Trị Viên', N'DN01      ', N'85d97a16-461b-ef11-b4b7-ee9fad07eb01')
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'DNNV02    ', N'TienDepGai', N'Nữ', N'0986776', CAST(N'2001-05-10' AS Date), N'123', N'Giao Dịch Viên', N'DN04      ', N'0657c319-981d-ef11-9302-f47b094c2010')
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'DNNV05    ', N'LÊ DUY QUYẾT', N'Nam', N'4344343', CAST(N'2003-03-03' AS Date), N'123', N'Giao Dịch Viên', N'DN01      ', N'f62410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'DNNV06    ', N'LÊ NGỌC NAM', N'Nam', N'342232132', CAST(N'2004-05-05' AS Date), N'12345', N'Giao Dịch Viên', N'DN02      ', N'f72410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'DNNV07    ', N'TRẦN THANH TUẤN', N'Nam', N'3214223233', CAST(N'2003-09-09' AS Date), N'1234', N'Giao Dịch Viên', N'DN03      ', N'f82410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'DNNV08    ', N'LÊ HUY HOÀNG', N'Nữ', N'123122', CAST(N'2003-05-05' AS Date), N'12345', N'Giao Dịch Viên', N'DN02      ', N'5aa27bb2-e715-ef11-92f7-f47b094c2010')
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'HCMNV01   ', N'NGUYỄN THANH TÙNG', N'Nam', N'09023232', CAST(N'1994-12-12' AS Date), N'123', N'Quản Trị Viên', N'HCM01     ', N'f92410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'HCMNV02   ', N'NGUYỄN ĐẮC THÀNH', N'Nam', N'0322321321', CAST(N'1994-12-12' AS Date), N'123', N'Giao Dịch Viên', N'HCM01     ', N'fa2410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'HCMNV03   ', N'NGUYỄN DUY TÚ', N'Nam', N'4324222', CAST(N'1994-12-12' AS Date), N'123', N'Giao Dịch Viên', N'HCM02     ', N'fb2410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'HCMNV04   ', N'NGUYỄN QUỐC TOÀN', N'Nam', N'32132', CAST(N'2003-02-02' AS Date), N'1234567', N'Giao Dịch Viên', N'HCM04     ', N'fc2410f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'HCMNV05   ', N'Nguyễn Hoàng Hải', N'Nam', N'0352987324', CAST(N'2003-05-15' AS Date), N'123', N'Quản Trị Viên', N'HCM01     ', N'c15e316e-b91a-ef11-ba73-60dd8e1e088d')
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'HCMNV06   ', N'Ngọ Van Trọng', N'Nam', N'0876765', CAST(N'2003-07-16' AS Date), N'32132', N'Quản Trị Viên', N'HCM03     ', N'd2ffdf13-c11d-ef11-ba74-60dd8e1e088d')
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'HCMNV08   ', N'NGUY?N H?I', N'Nam', N'09765645', CAST(N'2003-04-05' AS Date), N'14312123', N'Qu?n Tr? Viên', N'HCM03     ', N'13982b66-c51d-ef11-b4b7-ee9fad07eb01')
INSERT [dbo].[Staff] ([ID], [name], [Gioitinh], [SDT], [Dob], [CCCD], [Chucvu], [ID_Dp], [rowguid]) VALUES (N'HNNV01    ', N'Ngọ Văn Trọng', N'Nam', N'090708498', CAST(N'2003-08-13' AS Date), N'123', N'Quản Trị Viên', N'HN01      ', N'6e8a6fa6-b319-ef11-b4b7-ee9fad07eb01')
GO
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'CTCR01    ', N'CTAC13', N'RÚT TIỀN', CAST(N'2024-05-26T17:43:35.293' AS DateTime), N'100000000', N'CTNV02    ', N'332731cc-4c1b-ef11-acd0-744ca18fe7c8')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'CTCR02    ', N'CTAC14', N'RÚT TIỀN', CAST(N'2024-05-26T17:58:54.913' AS DateTime), N'12000000', N'CTNV02    ', N'316063f0-4e1b-ef11-acd0-744ca18fe7c8')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'CTCR03    ', N'CTAC15', N'RÚT TIỀN', CAST(N'2024-05-26T18:00:17.177' AS DateTime), N'12000000000', N'CTNV02    ', N'e3906521-4f1b-ef11-acd0-744ca18fe7c8')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'CTCR08    ', N'CTAC13', N'RÚT TIỀN', CAST(N'2000-12-12T00:00:00.000' AS DateTime), N'500000', N'CTNV08    ', N'0f2510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'CTCR09    ', N'CTAC15', N'CHUYỂN TIỀN', CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'150000', N'CTNV10    ', N'102510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'CTCR10    ', N'CTAC17', N'RÚT TIỀN', CAST(N'2020-12-20T00:00:00.000' AS DateTime), N'390000', N'CTNV11    ', N'112510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'DNCR01    ', N'DNAC07', N'RÚT TIỀN', CAST(N'2024-05-27T05:16:13.303' AS DateTime), N'5000000', N'DNNV01    ', N'0749c18d-ad1b-ef11-92ff-f47b094c2010')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'DNCR02    ', N'DNAC11', N'CHUYỂN TIỀN', CAST(N'2024-05-27T05:18:02.890' AS DateTime), N'1000000', N'DNNV01    ', N'13c211cf-ad1b-ef11-92ff-f47b094c2010')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'DNCR04    ', N'DNAC12', N'CHUYỂN TIỀN', CAST(N'2100-01-01T00:00:00.000' AS DateTime), N'100000', N'DNNV05    ', N'122510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'DNCR05    ', N'DNAC09', N'CHUYỂN TIỀN', CAST(N'2003-02-02T00:00:00.000' AS DateTime), N'200000', N'DNNV06    ', N'132510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'DNCR07    ', N'DNAC10', N'RÚT TIỀN', CAST(N'2000-12-12T00:00:00.000' AS DateTime), N'400000', N'DNNV07    ', N'142510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'HCMCR01   ', N'HCMAC01', N'CHUYỂN TIỀN', CAST(N'2222-12-12T00:00:00.000' AS DateTime), N'500000', N'HCMNV01   ', N'152510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'HCMCR02   ', N'HCMAC02', N'RÚT TIỀN', CAST(N'2013-12-12T00:00:00.000' AS DateTime), N'300000', N'HCMNV02   ', N'162510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'HCMCR03   ', N'HCMAC05', N'RÚT TIỀN', CAST(N'2014-12-12T00:00:00.000' AS DateTime), N'500000', N'HCMNV04   ', N'172510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'hcmcr25   ', N'hcmac100', N'chuyenTien', NULL, N'1000000', N'hcmnv01   ', N'2990dd0b-fc1e-ef11-ba74-60dd8e1e088d')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'hcmcr26   ', N'hcmac100', N'chuyenTien', NULL, N'1000000', N'hcmnv01   ', N'f0aadccf-fc1e-ef11-ba74-60dd8e1e088d')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'hcmcr27   ', N'hcmac100', N'chuyenTien', NULL, N'1000000', N'hcmnv01   ', N'ebb351ee-fc1e-ef11-ba74-60dd8e1e088d')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'hcmcr28   ', N'hcmac100', N'chuyenTien', NULL, N'1000000', N'hcmnv01   ', N'f33ea303-fd1e-ef11-ba74-60dd8e1e088d')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'hcmcr29   ', N'hcmac100', N'chuyenTien', NULL, N'1000000', N'hcmnv01   ', N'f5165837-261f-ef11-ba74-60dd8e1e088d')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'hcmcr30   ', N'hcmac100', N'chuyenTien', NULL, N'1000000', N'hcmnv01   ', N'ccdd339d-5b1f-ef11-ba74-60dd8e1e088d')
INSERT [dbo].[TransactionCR] ([ID_CR], [STK], [LoaiGD], [Day], [Money], [ID_NV], [rowguid]) VALUES (N'hcmcr31   ', N'hcmac100', N'chuyenTien', CAST(N'2222-12-12T00:00:00.000' AS DateTime), N'1000000', N'hcmnv01   ', N'789ea614-601f-ef11-ba74-60dd8e1e088d')
GO
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'CTGD09    ', N'CTAC14', N'HCMAC02', N'100000', CAST(N'2000-10-20T00:00:00.000' AS DateTime), N'CTNV08    ', N'182510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'CTGD10    ', N'CTAC13', N'DNAC08', N'100000', CAST(N'2024-05-29T23:13:55.507' AS DateTime), N'CTNV02    ', N'a7c50e7d-d61d-ef11-acd0-744ca18fe7c8')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'CTGD12    ', N'CTAC17', N'CTAC18', N'350000', CAST(N'2015-04-12T00:00:00.000' AS DateTime), N'CTNV11    ', N'192510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'DNGD01    ', N'DNAC07', N'DNAC11', N'10000000', CAST(N'2024-05-27T03:47:50.530' AS DateTime), N'DNNV01    ', N'518b2935-a11b-ef11-92ff-f47b094c2010')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'DNGD02    ', N'DNAC09', N'HCMAC06', N'10000000', CAST(N'2024-05-27T11:53:19.067' AS DateTime), N'DNNV01    ', N'bdbf7b0c-e51b-ef11-92ff-f47b094c2010')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'DNGD03    ', N'DNAC07', N'HCMAC06', N'2000000', CAST(N'2024-05-27T15:45:09.380' AS DateTime), N'DNNV01    ', N'a1ddfa6b-051c-ef11-92ff-f47b094c2010')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'DNGD04    ', N'DNAC10', N'HCMAC02', N'120900', CAST(N'2023-12-20T00:00:00.000' AS DateTime), N'DNNV07    ', N'1a2510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'DNGD05    ', N'CTAC15', N'DNAC11', N'130000', CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'CTNV10    ', N'1b2510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'DNGD06    ', N'DNAC07', N'HCMAC01', N'200000', CAST(N'2016-10-10T00:00:00.000' AS DateTime), N'DNNV05    ', N'1c2510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'DNGD07    ', N'DNAC08', N'HCMAC05', N'300000', CAST(N'2004-01-13T00:00:00.000' AS DateTime), N'DNNV06    ', N'1d2510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'DNGD08    ', N'DNAC12', N'CTAC13', N'200000', CAST(N'2019-10-12T00:00:00.000' AS DateTime), N'DNNV05    ', N'1e2510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'DNGD09    ', N'DNAC11', N'HCMAC05', N'1000000', CAST(N'2024-05-27T19:29:24.780' AS DateTime), N'DNNV01    ', N'b336cfc3-241c-ef11-92ff-f47b094c2010')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'DNGD10    ', N'DNAC09', N'HCMAC03', N'100000', CAST(N'2024-05-28T01:42:41.550' AS DateTime), N'DNNV01    ', N'd9f583e6-581c-ef11-9300-f47b094c2010')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'DNGD11    ', N'DNAC01', N'HCMAC01', N'2000000', CAST(N'2024-05-29T17:25:30.373' AS DateTime), N'DNNV02    ', N'139ec4c6-a51d-ef11-9302-f47b094c2010')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'DNGD12    ', N'DNAC08', N'HCMAC04', N'123456', CAST(N'2024-05-28T01:29:51.887' AS DateTime), N'DNNV01    ', N'7c26f514-571c-ef11-9300-f47b094c2010')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'DNGD13    ', N'DNAC01', N'HCMAC01', N'2000000', CAST(N'2024-05-30T23:37:43.817' AS DateTime), N'DNNV02    ', N'8a9c0cf0-a21e-ef11-9303-f47b094c2010')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'DNGD14    ', N'DNAC01', N'HCMAC01', N'2000000', CAST(N'2024-05-31T23:51:19.800' AS DateTime), N'DNNV02    ', N'5dfb9c00-6e1f-ef11-9303-f47b094c2010')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'DNGD15    ', N'DNAC01', N'HCMAC01', N'2000000', CAST(N'2024-06-01T08:32:56.063' AS DateTime), N'DNNV02    ', N'832b40de-b61f-ef11-9303-f47b094c2010')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'DNGD20    ', N'DNAC07', N'DNAC01', N'2000000', CAST(N'2024-05-29T00:00:00.000' AS DateTime), N'DNNV02    ', N'3f1854e2-bb1d-ef11-9303-f47b094c2010')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'DNGD21    ', N'DNAC01', N'HCMAC01', N'2000000', CAST(N'2024-06-01T10:55:17.403' AS DateTime), N'DNNV01    ', N'3b259fc1-ca1f-ef11-9303-f47b094c2010')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'DNGD22    ', N'DNAC01', N'HCMAC01', N'1000000', CAST(N'2024-06-01T10:56:31.510' AS DateTime), N'DNNV01    ', N'fcf6caed-ca1f-ef11-9303-f47b094c2010')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'DNGD26    ', N'DNAC01', N'HCMAC01', N'1000000', CAST(N'2024-06-01T11:48:55.273' AS DateTime), N'DNNV02    ', N'54049f3f-d21f-ef11-9303-f47b094c2010')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'HCMGD01   ', N'HCMAC01', N'HCMAC03', N'20000', CAST(N'2003-12-21T00:00:00.000' AS DateTime), N'HCMNV01   ', N'1f2510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'HCMGD02   ', N'HCMAC03', N'DNAC10', N'100000', CAST(N'2014-10-01T00:00:00.000' AS DateTime), N'HCMNV03   ', N'202510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'HCMGD03   ', N'HCMAC04', N'HCMAC05', N'200000', CAST(N'2019-12-12T12:00:00.000' AS DateTime), N'HCMNV03   ', N'212510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'HCMGD04   ', N'HCMAC02', N'CTAC13', N'2000000', CAST(N'2024-05-29T20:23:29.897' AS DateTime), N'HCMNV01   ', N'95ce2da4-be1d-ef11-ba74-60dd8e1e088d')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'HCMGD10   ', N'HCMAC02', N'HCMAC01', N'200000', CAST(N'2006-01-13T00:00:00.000' AS DateTime), N'HCMNV01   ', N'222510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'HCMGD11   ', N'HCMAC05', N'HCMAC06', N'460000', CAST(N'2020-10-13T00:00:00.000' AS DateTime), N'HCMNV04   ', N'232510f0-5b10-ef11-b4b5-ee9fad07eb01')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'hcmgd22   ', N'hcmac01', N'hcmac101', N'1234567.12', NULL, N'hcmnv01   ', N'915cce45-f71e-ef11-ba74-60dd8e1e088d')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'hcmgd23   ', N'hcmac01', N'hcmac101', N'1234567.12', NULL, N'hcmnv01   ', N'8eced961-f71e-ef11-ba74-60dd8e1e088d')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'hcmgd24   ', N'hcmac01', N'hcmac101', N'1234567.12', NULL, N'hcmnv01   ', N'07e86070-f71e-ef11-ba74-60dd8e1e088d')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'hcmgd25   ', N'hcmac01', N'hcmac101', N'1234567.12', NULL, N'hcmnv01   ', N'881c984e-f81e-ef11-ba74-60dd8e1e088d')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'hcmgd26   ', N'hcmac01', N'hcmac101', N'1234567.12', NULL, N'hcmnv01   ', N'2f90f18b-261f-ef11-ba74-60dd8e1e088d')
INSERT [dbo].[TransactionGD] ([ID_HD], [STK1], [STK2], [Money], [Day], [ID_Nv], [rowguid]) VALUES (N'hcmgd27   ', N'hcmac01', N'hcmac101', N'1000000', NULL, N'hcmnv01   ', N'6ff62ee0-261f-ef11-ba74-60dd8e1e088d')
GO
/****** Object:  Index [MSmerge_index_581577110]    Script Date: 15/06/2024 6:46:08 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_581577110] ON [dbo].[Account]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_613577224]    Script Date: 15/06/2024 6:46:08 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_613577224] ON [dbo].[Card]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_677577452]    Script Date: 15/06/2024 6:46:08 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_677577452] ON [dbo].[Customer]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_709577566]    Script Date: 15/06/2024 6:46:08 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_709577566] ON [dbo].[Dp]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_741577680]    Script Date: 15/06/2024 6:46:08 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_741577680] ON [dbo].[Hq]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_773577794]    Script Date: 15/06/2024 6:46:08 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_773577794] ON [dbo].[Staff]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_805577908]    Script Date: 15/06/2024 6:46:08 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_805577908] ON [dbo].[TransactionCR]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_837578022]    Script Date: 15/06/2024 6:46:08 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_837578022] ON [dbo].[TransactionGD]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [MSmerge_df_rowguid_46A34FA8F3134788AB49E88DCA08BCEB]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Card] ADD  CONSTRAINT [MSmerge_df_rowguid_40CA44F4586D42EB9F52FC72CA74C085]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [MSmerge_df_rowguid_D8BE1504B8BE4E9E92DF1A1D09A5EBE7]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Dp] ADD  CONSTRAINT [MSmerge_df_rowguid_31BC9949F35F4EB4B8F1E54B0E147F6B]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Hq] ADD  CONSTRAINT [MSmerge_df_rowguid_FDB4D40E1EA048A895B7B0918489DB83]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Staff] ADD  CONSTRAINT [MSmerge_df_rowguid_C9D0064E03C942BF9651FDFE725CA4C4]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[TransactionCR] ADD  CONSTRAINT [MSmerge_df_rowguid_52457D83D030436AA90633328B789F48]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[TransactionGD] ADD  CONSTRAINT [MSmerge_df_rowguid_779714BA281F4CCA95CDC3500A3DB97C]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Customer] FOREIGN KEY([ID_Customer])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Customer]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Dp] FOREIGN KEY([ID_Dp])
REFERENCES [dbo].[Dp] ([ID_dp])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Dp]
GO
ALTER TABLE [dbo].[Card]  WITH CHECK ADD  CONSTRAINT [FK_Card_Account] FOREIGN KEY([ID_ac])
REFERENCES [dbo].[Account] ([STK])
GO
ALTER TABLE [dbo].[Card] CHECK CONSTRAINT [FK_Card_Account]
GO
ALTER TABLE [dbo].[Card]  WITH CHECK ADD  CONSTRAINT [FK_Card_CardType] FOREIGN KEY([ID_CardType])
REFERENCES [dbo].[CardType] ([ID_CardType])
GO
ALTER TABLE [dbo].[Card] CHECK CONSTRAINT [FK_Card_CardType]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Dp] FOREIGN KEY([ID_Dp])
REFERENCES [dbo].[Dp] ([ID_dp])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Dp]
GO
ALTER TABLE [dbo].[Dp]  WITH CHECK ADD  CONSTRAINT [FK_Dp_Hq] FOREIGN KEY([ID_HQ])
REFERENCES [dbo].[Hq] ([ID_hq])
GO
ALTER TABLE [dbo].[Dp] CHECK CONSTRAINT [FK_Dp_Hq]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Dp] FOREIGN KEY([ID_Dp])
REFERENCES [dbo].[Dp] ([ID_dp])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Dp]
GO
ALTER TABLE [dbo].[TransactionCR]  WITH CHECK ADD  CONSTRAINT [FK_TransactionCR_Staff] FOREIGN KEY([ID_NV])
REFERENCES [dbo].[Staff] ([ID])
GO
ALTER TABLE [dbo].[TransactionCR] CHECK CONSTRAINT [FK_TransactionCR_Staff]
GO
ALTER TABLE [dbo].[TransactionGD]  WITH CHECK ADD  CONSTRAINT [FK_TransactionGD_Staff] FOREIGN KEY([ID_Nv])
REFERENCES [dbo].[Staff] ([ID])
GO
ALTER TABLE [dbo].[TransactionGD] CHECK CONSTRAINT [FK_TransactionGD_Staff]
GO
/****** Object:  StoredProcedure [dbo].[Count_Customer_Dp]    Script Date: 15/06/2024 6:46:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Count_Customer_Dp] 
AS
BEGIN
	 SELECT Hq.ID_hq, Hq.name, count(Customer.ID) as number_customer
    FROM (( Customer INNER JOIN Dp ON Customer.ID_Dp = Dp.ID_dp) INNER JOIN Hq ON Dp.ID_HQ =Hq.ID_hq)
   Group by Hq.ID_hq, Hq.name
END
GO
/****** Object:  StoredProcedure [dbo].[COUNT_STAFF_Dp]    Script Date: 15/06/2024 6:46:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[COUNT_STAFF_Dp]
AS
BEGIN
 SELECT Hq.ID_hq, Hq.name, count(Staff.ID) as number_staff
    FROM (( Staff INNER JOIN Dp ON Staff.ID_Dp = Dp.ID_dp) INNER JOIN Hq ON Dp.ID_HQ =Hq.ID_hq)
   Group by Hq.ID_hq, Hq.name
END;
GO
/****** Object:  StoredProcedure [dbo].[Total_GD_KHAC_Dp]    Script Date: 15/06/2024 6:46:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
CREATE PROCEDURE [dbo].[Total_GD_KHAC_Dp]
AS
BEGIN
    SELECT 
        Hq.ID_hq, 
        Hq.name, 
        COUNT(TransactionGD.ID_HD) AS number_transactionGiaoDich, 
         SUM(CAST(TransactionGD.Money AS decimal(18, 2))) AS total_money
    FROM 
        TransactionGD
    INNER JOIN 
        Staff ON TransactionGD.ID_Nv = Staff.ID 
    INNER JOIN 
        Dp ON Staff.ID_Dp = Dp.ID_dp 
    INNER JOIN 
        Hq ON Dp.ID_HQ = Hq.ID_hq
   
    GROUP BY 
        Hq.ID_hq, 
        Hq.name;
END;
GO
/****** Object:  StoredProcedure [dbo].[Total_GD_RutMoney_Dp]    Script Date: 15/06/2024 6:46:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
CREATE PROCEDURE [dbo].[Total_GD_RutMoney_Dp]
AS
BEGIN
    SELECT 
        Hq.ID_hq, 
        Hq.name, 
        COUNT(TransactionCR.ID_CR) AS number_transactionRutTien, 
         SUM(CAST(TransactionCR.Money AS decimal(18, 2))) AS total_money
    FROM 
        TransactionCR 
    INNER JOIN 
        Staff ON TransactionCR.ID_NV = Staff.ID 
    INNER JOIN 
        Dp ON Staff.ID_Dp = Dp.ID_dp 
    INNER JOIN 
        Hq ON Dp.ID_HQ = Hq.ID_hq
    WHERE 
        LoaiGD = N'RÚT TIỀN'
    GROUP BY 
        Hq.ID_hq, 
        Hq.name;
END;
GO
/****** Object:  StoredProcedure [dbo].[Total_GD_SendMoney_Dp]    Script Date: 15/06/2024 6:46:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
CREATE PROCEDURE [dbo].[Total_GD_SendMoney_Dp]
AS
BEGIN
    SELECT 
        Hq.ID_hq, 
        Hq.name, 
        COUNT(TransactionCR.ID_CR) AS number_transactionCT, 
         SUM(CAST(TransactionCR.Money AS decimal(18, 2))) AS total_money
    FROM 
        TransactionCR 
    INNER JOIN 
        Staff ON TransactionCR.ID_NV = Staff.ID 
    INNER JOIN 
        Dp ON Staff.ID_Dp = Dp.ID_dp 
    INNER JOIN 
        Hq ON Dp.ID_HQ = Hq.ID_hq
    WHERE 
        LoaiGD = N'CHUYỂN TIỀN'
    GROUP BY 
        Hq.ID_hq, 
        Hq.name;
END;
GO
/****** Object:  StoredProcedure [dbo].[TransferMoney]    Script Date: 15/06/2024 6:46:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:        <Author,,Name>
-- Create date: <Create Date,,>
-- Description: <Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TransferMoney]
    @ID_HD NVARCHAR(50),
    @STK1 NVARCHAR(50),
    @STK2 NVARCHAR(50),
    @Money NVARCHAR(50),
    @ID_NV NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN DISTRIBUTED TRANSACTION;

    DECLARE @Balance1 DECIMAL(18, 2);
    DECLARE @Balance2 DECIMAL(18, 2);
    DECLARE @Balance3 DECIMAL(18, 2);
    DECLARE @MoneyDecimal DECIMAL(18, 2);
    SET @MoneyDecimal = CAST(@Money AS DECIMAL(18, 2));
    DECLARE @ServerName2 NVARCHAR(100) = 'CURRENT_SERVER';
    DECLARE @DBName2 NVARCHAR(100) = 'CURRENT_DB';

    -- Kiểm tra tài khoản 1
    SELECT @Balance1 = CAST(Sodu AS DECIMAL(18, 2)) FROM Account WHERE STK = @STK1;
    IF @Balance1 IS NULL
    BEGIN
        RAISERROR('Tài khoản %s không tồn tại ở hệ thống này!', 16, 1, @STK1);
        ROLLBACK TRANSACTION;
        RETURN;
    END

    -- Kiểm tra tài khoản 2
    SELECT @Balance2 = CAST(Sodu AS DECIMAL(18, 2)) FROM Account WHERE STK = @STK2;
    IF @Balance2 IS NULL
    BEGIN
        -- Xác định linked server dựa trên mã tài khoản
        IF @STK2 LIKE 'CTAC%'
        BEGIN
            SET @ServerName2 = 'LINK_SERVER_TO_THIEU';
            SET @DBName2 = 'QLNH_TSCT';
        END
        ELSE IF @STK2 LIKE 'DNAC%'
        BEGIN
            SET @ServerName2 = 'LINK_SERVER_TO_TIEN';
            SET @DBName2 = 'QLNH_TSDN';
        END
        ELSE IF @STK2 LIKE 'HCMAC%'
        BEGIN
            SET @ServerName2 = 'LINK_SERVER_TO_HAI';
            SET @DBName2 = 'QLNH_TSHCM';
        END

        -- Kiểm tra tài khoản 2 trên máy chủ liên kết
        BEGIN TRY
            DECLARE @sql NVARCHAR(MAX);
            SET @sql = 'SELECT @Balance3 = CAST(Sodu AS DECIMAL(18, 2)) FROM [' + @ServerName2 + '].[' + @DBName2 + '].[DBO].Account WHERE STK = @STK2';
            EXEC sp_executesql @sql, N'@Balance3 DECIMAL(18, 2) OUTPUT, @STK2 NVARCHAR(50)', @Balance3 OUTPUT, @STK2;
        END TRY
        BEGIN CATCH
            RAISERROR('Server %s không hoạt động hoặc đang bảo trì!', 16, 1, @DBName2);
            ROLLBACK TRANSACTION;
            RETURN;
        END CATCH

        IF @Balance3 IS NULL
        BEGIN
            RAISERROR('Tài khoản %s không tồn tại trong toàn hệ thống!', 16, 1, @STK2);
            ROLLBACK TRANSACTION;
            RETURN;
        END
    END

    -- Kiểm tra số dư tài khoản 1
    IF @Balance1 < @MoneyDecimal
    BEGIN
        RAISERROR('Số dư tài khoản %s không đủ để thực hiện giao dịch!', 16, 1, @STK1);
        ROLLBACK TRANSACTION;
        RETURN;
    END

    -- Cập nhật số dư tài khoản 1
    DECLARE @Tien DECIMAL(18, 2);
    SET @Tien = @Balance1 - @MoneyDecimal;
    UPDATE Account SET Sodu = CAST(@Tien AS NVARCHAR(50)) WHERE STK = @STK1;

    -- Cập nhật số dư tài khoản 2
    DECLARE @Tien2 DECIMAL(18, 2);
    IF @ServerName2 = 'CURRENT_SERVER'
    BEGIN
        SET @Tien2 = @Balance2 + @MoneyDecimal;
        UPDATE Account SET Sodu = CAST(@Tien2 AS NVARCHAR(50)) WHERE STK = @STK2;
    END
    ELSE
    BEGIN
        DECLARE @sql2 NVARCHAR(MAX);
        SET @sql2 = 'UPDATE [' + @ServerName2 + '].[' + @DBName2 + '].[DBO].Account SET Sodu = CAST(@Tien2 AS NVARCHAR(50)) WHERE STK = @STK2';
        EXEC sp_executesql @sql2, N'@Tien2 DECIMAL(18, 2), @STK2 NVARCHAR(50)', @Tien2, @STK2;
    END

    -- Thêm vào bảng TransactionGD
    INSERT INTO TransactionGD (ID_HD, STK1, STK2, Money, Day, ID_NV)
    VALUES (@ID_HD, @STK1, @STK2, @Money, GETDATE(), @ID_NV);

    COMMIT TRANSACTION;
END;
GO
/****** Object:  StoredProcedure [dbo].[TransferMoneytong]    Script Date: 15/06/2024 6:46:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TransferMoneytong]
    @ID_HD NVARCHAR(50),
    @STK1 NVARCHAR(50),
    @STK2 NVARCHAR(50),
    @Money NVARCHAR(50),
    @ID_NV NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN DISTRIBUTED TRANSACTION;

    DECLARE @Balance1 DECIMAL(18, 2);
    DECLARE @Balance2 DECIMAL(18, 2);
    DECLARE @Balance3 DECIMAL(18, 2);
    DECLARE @MoneyDecimal DECIMAL(18, 2);
    SET @MoneyDecimal = CAST(@Money AS DECIMAL(18, 2));

    -- Kiểm tra tài khoản 1
    SELECT @Balance1 = CAST(Sodu AS DECIMAL(18, 2)) FROM Account WHERE STK = @STK1;
    IF @Balance1 IS NULL
    BEGIN
        RAISERROR('Tài khoản %s không tồn tại!', 16, 1, @STK1);
        ROLLBACK TRANSACTION;
        RETURN;
    END

    -- Kiểm tra tài khoản 2
    SELECT @Balance2 = CAST(Sodu AS DECIMAL(18, 2)) FROM Account WHERE STK = @STK2;
    IF @Balance2 IS NULL
    BEGIN
        -- Kiểm tra tài khoản 2 trên máy chủ liên kết
        BEGIN TRY
            SELECT @Balance3 = CAST(Sodu AS DECIMAL(18, 2)) FROM [LINK_SERVER_TO_TRONG].[QLNH].[DBO].Account WHERE STK = @STK2;
        END TRY
        BEGIN CATCH
            RAISERROR('Máy chủ không hoạt động hoặc đang bảo trì!', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END CATCH

        IF @Balance3 IS NULL
        BEGIN
            RAISERROR('Tài khoản %s không tồn tại trong toàn hệ thống!', 16, 1, @STK2);
            ROLLBACK TRANSACTION;
            RETURN;
        END
    END

    -- Kiểm tra số dư tài khoản 1
    IF @Balance1 < @MoneyDecimal
    BEGIN
        RAISERROR('Số dư tài khoản %s không đủ để thực hiện giao dịch!', 16, 1, @STK1);
        ROLLBACK TRANSACTION;
        RETURN;
    END

    -- Cập nhật số dư tài khoản 1
    DECLARE @Tien DECIMAL(18, 2);
    SET @Tien = @Balance1 - @MoneyDecimal;
    UPDATE Account SET Sodu = CAST(@Tien AS NVARCHAR(50)) WHERE STK = @STK1;

    -- Cập nhật số dư tài khoản 2
    DECLARE @Tien2 DECIMAL(18, 2);
    IF @Balance2 IS NOT NULL
    BEGIN
        SET @Tien2 = @Balance2 + @MoneyDecimal;
        UPDATE Account SET Sodu = CAST(@Tien2 AS NVARCHAR(50)) WHERE STK = @STK2;
    END
    ELSE
    BEGIN
        SET @Tien2 = @Balance3 + @MoneyDecimal;
        UPDATE [LINK_SERVER_TO_TRONG].[QLNH].[DBO].Account SET Sodu = CAST(@Tien2 AS NVARCHAR(50)) WHERE STK = @STK2;
    END

    -- Thêm vào bảng TransactionGD
    INSERT INTO TransactionGD (ID_HD, STK1, STK2, Money, Day, ID_NV)
    VALUES (@ID_HD, @STK1, @STK2, @Money, GETDATE(), @ID_NV);

    COMMIT TRANSACTION;
END;
GO
USE [master]
GO
ALTER DATABASE [QLNH] SET  READ_WRITE 
GO
