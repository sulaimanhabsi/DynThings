USE [master]
GO
/****** Object:  Database [DynThings]    Script Date: 7/2/2016 7:02:28 PM ******/
CREATE DATABASE [DynThings]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DynThings', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DynThings.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DynThings_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DynThings_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DynThings] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DynThings].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DynThings] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DynThings] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DynThings] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DynThings] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DynThings] SET ARITHABORT OFF 
GO
ALTER DATABASE [DynThings] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DynThings] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DynThings] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DynThings] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DynThings] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DynThings] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DynThings] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DynThings] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DynThings] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DynThings] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DynThings] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DynThings] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DynThings] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DynThings] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DynThings] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DynThings] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DynThings] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DynThings] SET RECOVERY FULL 
GO
ALTER DATABASE [DynThings] SET  MULTI_USER 
GO
ALTER DATABASE [DynThings] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DynThings] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DynThings] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DynThings] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DynThings] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DynThings', N'ON'
GO
USE [DynThings]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CssIcons]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CssIcons](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Css] [nvarchar](50) NULL,
 CONSTRAINT [PK_CssIcons] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeviceCommands]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceCommands](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[DeviceID] [bigint] NULL,
	[CommandCode] [nvarchar](50) NULL,
	[OwnerID] [nvarchar](50) NULL,
 CONSTRAINT [PK_Commands] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeviceIOs]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceIOs](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DeviceID] [bigint] NULL,
	[IOTypeID] [bigint] NULL,
	[Valu] [nvarchar](250) NULL,
	[TimeStamp] [datetime] NULL,
	[ExecTimeStamp] [datetime] NULL,
	[ScheduleTimeStamp] [datetime] NULL,
 CONSTRAINT [PK_DeviceIOs_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Devices]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Devices](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[GUID] [uniqueidentifier] NULL,
	[KeyPass] [uniqueidentifier] NULL,
	[PinCode] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[StatusID] [bigint] NULL,
 CONSTRAINT [PK_Devices_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeviceStatus]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceStatus](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_DeviceStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DynSettings]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DynSettings](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DBVersion] [real] NOT NULL,
	[DevelopmentMode] [bit] NOT NULL,
	[DefaultRecordsPerMaster] [int] NOT NULL,
	[DefaultRecordsPerChild] [int] NOT NULL,
	[PlatformKey] [uniqueidentifier] NOT NULL,
	[PublicAccess] [bit] NOT NULL,
	[PublicSignUP] [bit] NOT NULL,
	[EnableSystemLogger] [bit] NOT NULL,
 CONSTRAINT [PK_DynSettings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EndPointCommands]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EndPointCommands](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[EndPointID] [bigint] NULL,
	[CommandCode] [nvarchar](50) NULL,
	[OwnerID] [nvarchar](50) NULL,
 CONSTRAINT [PK_EndPointCommands] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EndPointIOs]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EndPointIOs](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[EndPointID] [bigint] NOT NULL,
	[IOTypeID] [bigint] NOT NULL,
	[Valu] [nvarchar](50) NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[ExecTimeStamp] [datetime] NULL,
	[ScheduleTimeStamp] [datetime] NULL,
 CONSTRAINT [PK_DeviceIOs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Endpoints]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Endpoints](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[KeyPass] [uniqueidentifier] NOT NULL,
	[PinCode] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[DeviceID] [bigint] NOT NULL,
	[TypeID] [bigint] NOT NULL,
 CONSTRAINT [PK_Devices] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EndPointTypeCategorys]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EndPointTypeCategorys](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EndPointTypeCategorys] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EndPointTypes]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EndPointTypes](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[measurement] [nvarchar](50) NULL,
	[TypeCategoryID] [bigint] NULL,
	[IconID] [bigint] NULL,
 CONSTRAINT [PK_EndPointTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IOTypes]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IOTypes](
	[ID] [bigint] NOT NULL,
	[IO] [nvarchar](12) NULL,
	[Title] [nvarchar](128) NULL,
 CONSTRAINT [PK_IO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LinkEndpointsLocations]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkEndpointsLocations](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[LocationID] [bigint] NULL,
	[EndpointID] [bigint] NULL,
 CONSTRAINT [PK_LinkEndpointsLocations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LinkLocationsLocationViews]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkLocationsLocationViews](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[LocationID] [bigint] NOT NULL,
	[LocationViewID] [bigint] NOT NULL,
 CONSTRAINT [PK_LinkLocationsLocationViews] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Locations]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[LongitudeY] [nvarchar](50) NOT NULL,
	[LatitudeX] [nvarchar](50) NOT NULL,
	[isActive] [bit] NOT NULL,
	[Status] [bigint] NOT NULL,
	[IconID] [bigint] NOT NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LocationViews]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationViews](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[OwnerID] [nvarchar](50) NOT NULL,
	[LocationViewTypeID] [bigint] NOT NULL,
	[X] [nvarchar](50) NOT NULL,
	[Y] [nvarchar](50) NOT NULL,
	[Z] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LocationViews] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LocationViewTypes]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationViewTypes](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LocationViewTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ResultMessages]    Script Date: 7/2/2016 7:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultMessages](
	[ID] [bigint] NOT NULL,
	[Message] [nvarchar](500) NULL,
	[IsError] [bit] NULL,
 CONSTRAINT [PK_ErrorMessages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'367df69f-c059-4295-95b0-718c93dfa843', N'cmoussalli@gmail.com', 0, N'ALwtfGaSrttw1t7mVutBUXjw1u/7CgWgBeIxkRWlPVMmuBZb517J4JNc1UsFplmZ0g==', N'6304491a-a9ec-493b-9fbe-8a827c93a492', NULL, 0, 0, NULL, 1, 0, N'cmoussalli@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[CssIcons] ON 

GO
INSERT [dbo].[CssIcons] ([ID], [Title], [Css]) VALUES (1, N'Temprature', N'glyphicons
glyphicons-temperature')
GO
INSERT [dbo].[CssIcons] ([ID], [Title], [Css]) VALUES (2, N'Humidity', N'glyphicons
glyphicons-tint')
GO
INSERT [dbo].[CssIcons] ([ID], [Title], [Css]) VALUES (3, N'Power', N'glyphicon glyphicon-off')
GO
SET IDENTITY_INSERT [dbo].[CssIcons] OFF
GO
SET IDENTITY_INSERT [dbo].[DeviceCommands] ON 

GO
INSERT [dbo].[DeviceCommands] ([ID], [Title], [Description], [DeviceID], [CommandCode], [OwnerID]) VALUES (1, N'Restart Device 1', N'this will restart device 1', 1, N'restart', N'1')
GO
INSERT [dbo].[DeviceCommands] ([ID], [Title], [Description], [DeviceID], [CommandCode], [OwnerID]) VALUES (2, N'Restart Device 2', N'this will restart device 2', 2, N'restart', N'1')
GO
INSERT [dbo].[DeviceCommands] ([ID], [Title], [Description], [DeviceID], [CommandCode], [OwnerID]) VALUES (3, N'Update Device 1', N'this will update device 1', 1, N'update', N'1')
GO
SET IDENTITY_INSERT [dbo].[DeviceCommands] OFF
GO
SET IDENTITY_INSERT [dbo].[DeviceIOs] ON 

GO
INSERT [dbo].[DeviceIOs] ([ID], [DeviceID], [IOTypeID], [Valu], [TimeStamp], [ExecTimeStamp], [ScheduleTimeStamp]) VALUES (1, 3, 1, N'1', CAST(N'2016-04-13 22:25:54.857' AS DateTime), CAST(N'2016-04-13 00:00:00.000' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[DeviceIOs] OFF
GO
SET IDENTITY_INSERT [dbo].[Devices] ON 

GO
INSERT [dbo].[Devices] ([ID], [GUID], [KeyPass], [PinCode], [Title], [StatusID]) VALUES (1, N'83683a8a-b0e5-4120-86f7-8e8d3e06a78b', N'b7a8b819-def8-4111-9263-699feb5e8198', N'111', N'Raspberry 1', 1)
GO
INSERT [dbo].[Devices] ([ID], [GUID], [KeyPass], [PinCode], [Title], [StatusID]) VALUES (2, N'5ff35d59-f074-4de9-8ab4-c5035ebf0b9b', N'84cf15ef-2a9a-4fe8-b951-cb63b5dbf84a', N'222', N'Arduino 1', 1)
GO
INSERT [dbo].[Devices] ([ID], [GUID], [KeyPass], [PinCode], [Title], [StatusID]) VALUES (3, N'b640980f-2155-4ada-92c7-df9f0cd91081', N'55a7c513-ad7f-4ec5-953b-e813779a2dd5', N'333', N'Raspberry 2', 1)
GO
INSERT [dbo].[Devices] ([ID], [GUID], [KeyPass], [PinCode], [Title], [StatusID]) VALUES (4, N'a7468b52-495e-43ce-92f3-b3904223ebd5', N'6487a005-3a1f-4bbb-9838-14f590529c30', N'0000', N'Arduino 2', 1)
GO
SET IDENTITY_INSERT [dbo].[Devices] OFF
GO
SET IDENTITY_INSERT [dbo].[DeviceStatus] ON 

GO
INSERT [dbo].[DeviceStatus] ([ID], [Title]) VALUES (1, N'New')
GO
INSERT [dbo].[DeviceStatus] ([ID], [Title]) VALUES (2, N'Connected')
GO
INSERT [dbo].[DeviceStatus] ([ID], [Title]) VALUES (3, N'Disonnected')
GO
INSERT [dbo].[DeviceStatus] ([ID], [Title]) VALUES (4, N'Deleted')
GO
SET IDENTITY_INSERT [dbo].[DeviceStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[DynSettings] ON 

GO
INSERT [dbo].[DynSettings] ([ID], [DBVersion], [DevelopmentMode], [DefaultRecordsPerMaster], [DefaultRecordsPerChild], [PlatformKey], [PublicAccess], [PublicSignUP], [EnableSystemLogger]) VALUES (1, 0.103, 1, 4, 2, N'a86bb826-988d-4f9a-9f43-169045506194', 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[DynSettings] OFF
GO
SET IDENTITY_INSERT [dbo].[EndPointCommands] ON 

GO
INSERT [dbo].[EndPointCommands] ([ID], [Title], [Description], [EndPointID], [CommandCode], [OwnerID]) VALUES (1, N'END Command 11', N'EndPoint 1 Command1', 1, N'Turn ON', N'1')
GO
INSERT [dbo].[EndPointCommands] ([ID], [Title], [Description], [EndPointID], [CommandCode], [OwnerID]) VALUES (2, N'END Command 2', N'EndPoint 1 Command 2', 1, N'Turn Off', N'1')
GO
INSERT [dbo].[EndPointCommands] ([ID], [Title], [Description], [EndPointID], [CommandCode], [OwnerID]) VALUES (3, N'End Command 3', N'EndPoint 2  Coomand 1', 2, N'Turn ON', N'1')
GO
SET IDENTITY_INSERT [dbo].[EndPointCommands] OFF
GO
SET IDENTITY_INSERT [dbo].[EndPointIOs] ON 

GO
INSERT [dbo].[EndPointIOs] ([ID], [EndPointID], [IOTypeID], [Valu], [TimeStamp], [ExecTimeStamp], [ScheduleTimeStamp]) VALUES (1, 1, 1, N'2', CAST(N'2016-04-13 22:26:12.727' AS DateTime), CAST(N'2016-04-13 00:00:00.000' AS DateTime), CAST(N'2016-04-13 00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[EndPointIOs] OFF
GO
SET IDENTITY_INSERT [dbo].[Endpoints] ON 

GO
INSERT [dbo].[Endpoints] ([ID], [GUID], [KeyPass], [PinCode], [Title], [DeviceID], [TypeID]) VALUES (1, N'76304ad7-a8a4-466c-9383-41adb276be4e', N'f8528184-5f09-4aa5-8d70-2e1fbd0e9968', N'1234', N'Ozaiba Temprature', 2, 1)
GO
INSERT [dbo].[Endpoints] ([ID], [GUID], [KeyPass], [PinCode], [Title], [DeviceID], [TypeID]) VALUES (2, N'76631207-2d3e-495d-a2a7-81930c9663be', N'5a85419e-3b31-4767-a043-c558cabd3506', N'1234', N'Sensor 2', 2, 2)
GO
INSERT [dbo].[Endpoints] ([ID], [GUID], [KeyPass], [PinCode], [Title], [DeviceID], [TypeID]) VALUES (3, N'ec5ad01c-1662-4e6a-bd35-87fb765318c5', N'7c758c94-3f2b-4bed-8a8d-38325699b5b8', N'1232', N'Sensor 3', 2, 1)
GO
INSERT [dbo].[Endpoints] ([ID], [GUID], [KeyPass], [PinCode], [Title], [DeviceID], [TypeID]) VALUES (4, N'f5be9aa5-024d-4256-bc23-3641f36fc89a', N'1900f853-3a39-42c0-b217-78fcf4342dfe', N'1234', N'Sensor 42', 1, 1)
GO
INSERT [dbo].[Endpoints] ([ID], [GUID], [KeyPass], [PinCode], [Title], [DeviceID], [TypeID]) VALUES (5, N'882ca47e-1827-4fc4-a817-0d8a4550e149', N'7475e7bf-d258-4db3-8a10-1ba0380b6dde', N'0000', N'1112', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Endpoints] OFF
GO
SET IDENTITY_INSERT [dbo].[EndPointTypeCategorys] ON 

GO
INSERT [dbo].[EndPointTypeCategorys] ([ID], [Title]) VALUES (1, N'Input Only')
GO
INSERT [dbo].[EndPointTypeCategorys] ([ID], [Title]) VALUES (2, N'Output Only')
GO
INSERT [dbo].[EndPointTypeCategorys] ([ID], [Title]) VALUES (3, N'Complex')
GO
SET IDENTITY_INSERT [dbo].[EndPointTypeCategorys] OFF
GO
SET IDENTITY_INSERT [dbo].[EndPointTypes] ON 

GO
INSERT [dbo].[EndPointTypes] ([ID], [Title], [measurement], [TypeCategoryID], [IconID]) VALUES (1, N'Temprature', N'Celsius', 1, 1)
GO
INSERT [dbo].[EndPointTypes] ([ID], [Title], [measurement], [TypeCategoryID], [IconID]) VALUES (2, N'Humidity', N'%', 1, 2)
GO
INSERT [dbo].[EndPointTypes] ([ID], [Title], [measurement], [TypeCategoryID], [IconID]) VALUES (3, N'Light', N'', 1, 3)
GO
INSERT [dbo].[EndPointTypes] ([ID], [Title], [measurement], [TypeCategoryID], [IconID]) VALUES (4, N'Noise', N'', 1, 1)
GO
INSERT [dbo].[EndPointTypes] ([ID], [Title], [measurement], [TypeCategoryID], [IconID]) VALUES (5, N'GPS Location', N'', 1, 1)
GO
INSERT [dbo].[EndPointTypes] ([ID], [Title], [measurement], [TypeCategoryID], [IconID]) VALUES (6, N'Gas', N'', 1, 1)
GO
INSERT [dbo].[EndPointTypes] ([ID], [Title], [measurement], [TypeCategoryID], [IconID]) VALUES (7, N'PH', N'', 1, 1)
GO
INSERT [dbo].[EndPointTypes] ([ID], [Title], [measurement], [TypeCategoryID], [IconID]) VALUES (8, N'Motion', N'', 1, 1)
GO
INSERT [dbo].[EndPointTypes] ([ID], [Title], [measurement], [TypeCategoryID], [IconID]) VALUES (9, N'Voltage', N'Volt', 1, 1)
GO
INSERT [dbo].[EndPointTypes] ([ID], [Title], [measurement], [TypeCategoryID], [IconID]) VALUES (10, N'AMPs', N'Ampere', 1, 1)
GO
INSERT [dbo].[EndPointTypes] ([ID], [Title], [measurement], [TypeCategoryID], [IconID]) VALUES (11, N'Switch', N'', 1, 1)
GO
INSERT [dbo].[EndPointTypes] ([ID], [Title], [measurement], [TypeCategoryID], [IconID]) VALUES (12, N'Vibration', N'', 1, 1)
GO
INSERT [dbo].[EndPointTypes] ([ID], [Title], [measurement], [TypeCategoryID], [IconID]) VALUES (13, N'Analoge Input', N'', 1, 1)
GO
INSERT [dbo].[EndPointTypes] ([ID], [Title], [measurement], [TypeCategoryID], [IconID]) VALUES (14, N'Moisture', N'', 1, 1)
GO
INSERT [dbo].[EndPointTypes] ([ID], [Title], [measurement], [TypeCategoryID], [IconID]) VALUES (15, N'Alcohol', N'', 1, 1)
GO
INSERT [dbo].[EndPointTypes] ([ID], [Title], [measurement], [TypeCategoryID], [IconID]) VALUES (16, N'Light', N'', 1, 1)
GO
INSERT [dbo].[EndPointTypes] ([ID], [Title], [measurement], [TypeCategoryID], [IconID]) VALUES (17, N'Fan', N'', 2, 1)
GO
INSERT [dbo].[EndPointTypes] ([ID], [Title], [measurement], [TypeCategoryID], [IconID]) VALUES (18, N'Motor', N'', 2, 1)
GO
INSERT [dbo].[EndPointTypes] ([ID], [Title], [measurement], [TypeCategoryID], [IconID]) VALUES (19, N'Switch', N'', 2, 1)
GO
SET IDENTITY_INSERT [dbo].[EndPointTypes] OFF
GO
INSERT [dbo].[IOTypes] ([ID], [IO], [Title]) VALUES (1, N'I', N'Input')
GO
INSERT [dbo].[IOTypes] ([ID], [IO], [Title]) VALUES (2, N'C', N'Command')
GO
INSERT [dbo].[IOTypes] ([ID], [IO], [Title]) VALUES (3, N'L', N'Log')
GO
SET IDENTITY_INSERT [dbo].[LinkEndpointsLocations] ON 

GO
INSERT [dbo].[LinkEndpointsLocations] ([ID], [LocationID], [EndpointID]) VALUES (1, 1, 1)
GO
INSERT [dbo].[LinkEndpointsLocations] ([ID], [LocationID], [EndpointID]) VALUES (2, 1, 2)
GO
INSERT [dbo].[LinkEndpointsLocations] ([ID], [LocationID], [EndpointID]) VALUES (3, 1, 3)
GO
INSERT [dbo].[LinkEndpointsLocations] ([ID], [LocationID], [EndpointID]) VALUES (4, 2, 4)
GO
SET IDENTITY_INSERT [dbo].[LinkEndpointsLocations] OFF
GO
SET IDENTITY_INSERT [dbo].[LinkLocationsLocationViews] ON 

GO
INSERT [dbo].[LinkLocationsLocationViews] ([ID], [LocationID], [LocationViewID]) VALUES (3, 3, 2)
GO
INSERT [dbo].[LinkLocationsLocationViews] ([ID], [LocationID], [LocationViewID]) VALUES (16, 1, 2)
GO
INSERT [dbo].[LinkLocationsLocationViews] ([ID], [LocationID], [LocationViewID]) VALUES (17, 2, 2)
GO
INSERT [dbo].[LinkLocationsLocationViews] ([ID], [LocationID], [LocationViewID]) VALUES (51, 1, 1)
GO
INSERT [dbo].[LinkLocationsLocationViews] ([ID], [LocationID], [LocationViewID]) VALUES (52, 2, 1)
GO
INSERT [dbo].[LinkLocationsLocationViews] ([ID], [LocationID], [LocationViewID]) VALUES (53, 3, 1)
GO
SET IDENTITY_INSERT [dbo].[LinkLocationsLocationViews] OFF
GO
SET IDENTITY_INSERT [dbo].[Locations] ON 

GO
INSERT [dbo].[Locations] ([ID], [GUID], [Title], [LongitudeY], [LatitudeX], [isActive], [Status], [IconID]) VALUES (1, N'f3067e63-eb6b-45dc-9d63-0feb0daa61b3', N'Location 1', N'58.3591538389074', N'23.596558259530582', 1, 1, 1)
GO
INSERT [dbo].[Locations] ([ID], [GUID], [Title], [LongitudeY], [LatitudeX], [isActive], [Status], [IconID]) VALUES (2, N'aab8efe9-43b7-41f2-a15b-757ae24211b5', N'Location 2', N'58.380393', N'23.593109', 1, 1, 1)
GO
INSERT [dbo].[Locations] ([ID], [GUID], [Title], [LongitudeY], [LatitudeX], [isActive], [Status], [IconID]) VALUES (3, N'49790eb8-8409-4562-a5e1-3fb53a8e9e0f', N'Location 3', N'58.360393', N'23.595109', 1, 1, 1)
GO
INSERT [dbo].[Locations] ([ID], [GUID], [Title], [LongitudeY], [LatitudeX], [isActive], [Status], [IconID]) VALUES (4, N'c69e685c-6e45-4421-8d91-b8759a987688', N'Location 4', N'58.364609', N'23.595255', 0, 1, 1)
GO
INSERT [dbo].[Locations] ([ID], [GUID], [Title], [LongitudeY], [LatitudeX], [isActive], [Status], [IconID]) VALUES (5, N'e8c53fe9-6d8e-4b64-aa12-db3cbb476276', N'Location 5', N'58.364074', N'23.589220', 0, 1, 1)
GO
INSERT [dbo].[Locations] ([ID], [GUID], [Title], [LongitudeY], [LatitudeX], [isActive], [Status], [IconID]) VALUES (6, N'ee12a2da-1a2e-490f-8a33-4d3fb256c219', N'1', N'', N'', 0, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Locations] OFF
GO
SET IDENTITY_INSERT [dbo].[LocationViews] ON 

GO
INSERT [dbo].[LocationViews] ([ID], [Title], [IsActive], [OwnerID], [LocationViewTypeID], [X], [Y], [Z]) VALUES (1, N'Location View 1', 1, N'1', 1, N'23.595871952755317', N'58.36894947803896', N'15')
GO
INSERT [dbo].[LocationViews] ([ID], [Title], [IsActive], [OwnerID], [LocationViewTypeID], [X], [Y], [Z]) VALUES (2, N'Location View 2', 1, N'1', 2, N'23.5972750548066', N'58.36019218865334', N'16')
GO
SET IDENTITY_INSERT [dbo].[LocationViews] OFF
GO
SET IDENTITY_INSERT [dbo].[LocationViewTypes] ON 

GO
INSERT [dbo].[LocationViewTypes] ([ID], [Title]) VALUES (1, N'Single Location')
GO
INSERT [dbo].[LocationViewTypes] ([ID], [Title]) VALUES (2, N'List')
GO
INSERT [dbo].[LocationViewTypes] ([ID], [Title]) VALUES (3, N'Map')
GO
INSERT [dbo].[LocationViewTypes] ([ID], [Title]) VALUES (4, N'Image')
GO
SET IDENTITY_INSERT [dbo].[LocationViewTypes] OFF
GO
INSERT [dbo].[ResultMessages] ([ID], [Message], [IsError]) VALUES (0, N'Ok', 0)
GO
INSERT [dbo].[ResultMessages] ([ID], [Message], [IsError]) VALUES (1, N'Generic Error', 1)
GO
INSERT [dbo].[ResultMessages] ([ID], [Message], [IsError]) VALUES (2, N'Device GUID not found', 1)
GO
INSERT [dbo].[ResultMessages] ([ID], [Message], [IsError]) VALUES (3, N'EndPoint GUID not Found', 1)
GO
INSERT [dbo].[ResultMessages] ([ID], [Message], [IsError]) VALUES (4, N'The selected LocationView is already attached to this record', 1)
GO
INSERT [dbo].[ResultMessages] ([ID], [Message], [IsError]) VALUES (5, N'The selected Location is already attached to this record', 1)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/2/2016 7:02:28 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 7/2/2016 7:02:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 7/2/2016 7:02:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 7/2/2016 7:02:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 7/2/2016 7:02:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/2/2016 7:02:28 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[DeviceCommands]  WITH CHECK ADD  CONSTRAINT [FK__Commands__Device__4D94879B] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Devices] ([ID])
GO
ALTER TABLE [dbo].[DeviceCommands] CHECK CONSTRAINT [FK__Commands__Device__4D94879B]
GO
ALTER TABLE [dbo].[DeviceIOs]  WITH CHECK ADD  CONSTRAINT [FK__DeviceIOs__Devic__19AACF41] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Devices] ([ID])
GO
ALTER TABLE [dbo].[DeviceIOs] CHECK CONSTRAINT [FK__DeviceIOs__Devic__19AACF41]
GO
ALTER TABLE [dbo].[DeviceIOs]  WITH CHECK ADD FOREIGN KEY([IOTypeID])
REFERENCES [dbo].[IOTypes] ([ID])
GO
ALTER TABLE [dbo].[Devices]  WITH CHECK ADD  CONSTRAINT [FK__Devices__StatusI__01D345B0] FOREIGN KEY([StatusID])
REFERENCES [dbo].[DeviceStatus] ([ID])
GO
ALTER TABLE [dbo].[Devices] CHECK CONSTRAINT [FK__Devices__StatusI__01D345B0]
GO
ALTER TABLE [dbo].[EndPointCommands]  WITH CHECK ADD FOREIGN KEY([EndPointID])
REFERENCES [dbo].[Endpoints] ([ID])
GO
ALTER TABLE [dbo].[EndPointIOs]  WITH CHECK ADD  CONSTRAINT [FK__EndPointI__EndPo__29572725] FOREIGN KEY([EndPointID])
REFERENCES [dbo].[Endpoints] ([ID])
GO
ALTER TABLE [dbo].[EndPointIOs] CHECK CONSTRAINT [FK__EndPointI__EndPo__29572725]
GO
ALTER TABLE [dbo].[EndPointIOs]  WITH CHECK ADD FOREIGN KEY([IOTypeID])
REFERENCES [dbo].[IOTypes] ([ID])
GO
ALTER TABLE [dbo].[Endpoints]  WITH CHECK ADD  CONSTRAINT [FK__Endpoints__Devic__00DF2177] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Devices] ([ID])
GO
ALTER TABLE [dbo].[Endpoints] CHECK CONSTRAINT [FK__Endpoints__Devic__00DF2177]
GO
ALTER TABLE [dbo].[Endpoints]  WITH CHECK ADD  CONSTRAINT [FK__EndPoints__TypeI__21B6055D] FOREIGN KEY([TypeID])
REFERENCES [dbo].[EndPointTypes] ([ID])
GO
ALTER TABLE [dbo].[Endpoints] CHECK CONSTRAINT [FK__EndPoints__TypeI__21B6055D]
GO
ALTER TABLE [dbo].[EndPointTypes]  WITH CHECK ADD  CONSTRAINT [FK__EndPointT__IconI__3FD07829] FOREIGN KEY([IconID])
REFERENCES [dbo].[CssIcons] ([ID])
GO
ALTER TABLE [dbo].[EndPointTypes] CHECK CONSTRAINT [FK__EndPointT__IconI__3FD07829]
GO
ALTER TABLE [dbo].[EndPointTypes]  WITH CHECK ADD FOREIGN KEY([TypeCategoryID])
REFERENCES [dbo].[EndPointTypeCategorys] ([ID])
GO
ALTER TABLE [dbo].[LinkEndpointsLocations]  WITH CHECK ADD  CONSTRAINT [FK__LinkEndpo__Endpo__32E0915F] FOREIGN KEY([EndpointID])
REFERENCES [dbo].[Endpoints] ([ID])
GO
ALTER TABLE [dbo].[LinkEndpointsLocations] CHECK CONSTRAINT [FK__LinkEndpo__Endpo__32E0915F]
GO
ALTER TABLE [dbo].[LinkEndpointsLocations]  WITH CHECK ADD FOREIGN KEY([LocationID])
REFERENCES [dbo].[Locations] ([ID])
GO
ALTER TABLE [dbo].[LinkLocationsLocationViews]  WITH CHECK ADD  CONSTRAINT [FK__LinkLocat__Locat__35BCFE0A] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Locations] ([ID])
GO
ALTER TABLE [dbo].[LinkLocationsLocationViews] CHECK CONSTRAINT [FK__LinkLocat__Locat__35BCFE0A]
GO
ALTER TABLE [dbo].[LinkLocationsLocationViews]  WITH CHECK ADD  CONSTRAINT [FK__LinkLocat__Locat__36B12243] FOREIGN KEY([LocationViewID])
REFERENCES [dbo].[LocationViews] ([ID])
GO
ALTER TABLE [dbo].[LinkLocationsLocationViews] CHECK CONSTRAINT [FK__LinkLocat__Locat__36B12243]
GO
ALTER TABLE [dbo].[LocationViews]  WITH CHECK ADD  CONSTRAINT [FK__LocationV__Locat__286302EC] FOREIGN KEY([LocationViewTypeID])
REFERENCES [dbo].[LocationViewTypes] ([ID])
GO
ALTER TABLE [dbo].[LocationViews] CHECK CONSTRAINT [FK__LocationV__Locat__286302EC]
GO
USE [master]
GO
ALTER DATABASE [DynThings] SET  READ_WRITE 
GO
