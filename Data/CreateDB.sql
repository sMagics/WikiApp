USE [master]
GO
/****** Object:  Database [EWiki]    Script Date: 9/12/2016 1:54:41 AM ******/
CREATE DATABASE [EWiki]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EWiki', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\EWiki.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EWiki_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\EWiki_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [EWiki] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EWiki].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EWiki] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EWiki] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EWiki] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EWiki] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EWiki] SET ARITHABORT OFF 
GO
ALTER DATABASE [EWiki] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EWiki] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EWiki] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EWiki] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EWiki] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EWiki] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EWiki] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EWiki] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EWiki] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EWiki] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EWiki] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EWiki] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EWiki] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EWiki] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EWiki] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EWiki] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [EWiki] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EWiki] SET RECOVERY FULL 
GO
ALTER DATABASE [EWiki] SET  MULTI_USER 
GO
ALTER DATABASE [EWiki] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EWiki] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EWiki] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EWiki] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EWiki] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EWiki', N'ON'
GO
ALTER DATABASE [EWiki] SET QUERY_STORE = OFF
GO
USE [EWiki]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [EWiki]
GO
/****** Object:  User [NT AUTHORITY\SYSTEM]    Script Date: 9/12/2016 1:54:41 AM ******/
CREATE USER [NT AUTHORITY\SYSTEM] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/12/2016 1:54:42 AM ******/
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
/****** Object:  Table [dbo].[Archives]    Script Date: 9/12/2016 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Archives](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArchiveComment] [nvarchar](max) NULL,
	[ArchiveLength] [int] NOT NULL,
	[ArchivePageId] [int] NULL,
	[ArchiveParentId] [int] NULL,
	[BelongToUserId] [nvarchar](450) NULL,
	[ContentId] [int] NULL,
	[ContentText] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[IsDeleted] [bit] NOT NULL,
	[NameSpace] [int] NOT NULL,
	[ReversionId] [int] NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Archives] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 9/12/2016 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/12/2016 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/12/2016 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/12/2016 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/12/2016 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/12/2016 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 9/12/2016 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BlockedIps]    Script Date: 9/12/2016 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlockedIps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnonymousOnly] [bit] NOT NULL,
	[BlockByUserId] [nvarchar](450) NULL,
	[BlockCreateAccount] [bit] NOT NULL,
	[BlockExpiry] [decimal](18, 2) NOT NULL,
	[BlockReason] [nvarchar](max) NULL,
	[BlockUserEdit] [bit] NOT NULL,
	[BlockedIpId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[IpAddress] [nvarchar](max) NULL,
	[IpRangeEnd] [nvarchar](max) NULL,
	[IpRangeStart] [nvarchar](max) NULL,
	[ParentBlock] [int] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UserBlockedId] [nvarchar](450) NULL,
 CONSTRAINT [PK_BlockedIps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 9/12/2016 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatPages] [int] NULL,
	[CatTitle] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[NumberOfSubcat] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[CatTitleVI] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CharacterInfoGroups]    Script Date: 9/12/2016 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterInfoGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Name] [nvarchar](max) NULL,
	[Priority] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_CharacterInfoGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CharacterInfos]    Script Date: 9/12/2016 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterInfos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterId] [int] NOT NULL,
	[CharacterInfoGroupId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[IsMain] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Priority] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_CharacterInfos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Characters]    Script Date: 9/12/2016 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Characters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Attack] [int] NOT NULL,
	[CPGain] [real] NOT NULL,
	[Candy] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Defense] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[EvolveFromId] [int] NOT NULL,
	[Height] [real] NOT NULL,
	[MaxCP] [real] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Number] [nvarchar](max) NULL,
	[Slug] [nvarchar](max) NULL,
	[Species] [nvarchar](max) NULL,
	[Stamina] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[Weight] [real] NOT NULL,
	[EvolveIntos] [nvarchar](max) NULL,
 CONSTRAINT [PK_Characters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CharacterSectionGroups]    Script Date: 9/12/2016 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterSectionGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Name] [nvarchar](max) NULL,
	[Priority] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_CharacterSectionGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CharacterSections]    Script Date: 9/12/2016 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterSections](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterId] [int] NOT NULL,
	[CharacterSectionGroupId] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Description] [nvarchar](max) NULL,
	[Priority] [int] NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_CharacterSections] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FileArchives]    Script Date: 9/12/2016 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileArchives](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArchiveName] [nvarchar](max) NULL,
	[BitDepth] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[DeletedReason] [nvarchar](max) NULL,
	[FileDescription] [nvarchar](max) NULL,
	[FileMediaType] [nvarchar](max) NULL,
	[FileMime] [nvarchar](max) NULL,
	[FileSize] [int] NOT NULL,
	[FileSource] [nvarchar](max) NULL,
	[Height] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UploadedUserId] [nvarchar](450) NULL,
	[Width] [int] NOT NULL,
 CONSTRAINT [PK_FileArchives] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InfoValues]    Script Date: 9/12/2016 1:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfoValues](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterInfoId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[LinkTo] [int] NOT NULL,
	[LinkToId] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UrlFormat] [nvarchar](max) NULL,
 CONSTRAINT [PK_InfoValues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Locations]    Script Date: 9/12/2016 1:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[LocationType] [int] NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Moves]    Script Date: 9/12/2016 1:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moves](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cooldown] [real] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[CritChange] [real] NOT NULL,
	[DPS] [real] NOT NULL,
	[Energy] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Power] [real] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[WithSTAB] [real] NOT NULL,
	[MoveCategoryId] [int] NULL,
	[MoveType] [int] NULL,
 CONSTRAINT [PK_Moves] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PageContents]    Script Date: 9/12/2016 1:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageContents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContentFlags] [nvarchar](max) NULL,
	[ContentText] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_PageContents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PageLangs]    Script Date: 9/12/2016 1:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageLangs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Language] [nvarchar](max) NULL,
	[PageId] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_PageLangs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PageMetas]    Script Date: 9/12/2016 1:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageMetas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaValue] [nvarchar](max) NULL,
	[PageId] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_PageMetas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PageRestrictions]    Script Date: 9/12/2016 1:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageRestrictions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[IsCascade] [bit] NOT NULL,
	[PageResctrictedId] [int] NULL,
	[PageRestrictedId] [int] NOT NULL,
	[ResLevel] [int] NOT NULL,
	[ResType] [int] NOT NULL,
	[ResctrictionExpiry] [decimal](18, 2) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_PageRestrictions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pages]    Script Date: 9/12/2016 1:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContentLanguage] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[IsNewPage] [bit] NOT NULL,
	[IsRedirect] [bit] NOT NULL,
	[NameSpace] [int] NOT NULL,
	[NewestContent] [int] NULL,
	[PageLength] [decimal](18, 2) NOT NULL,
	[TagId] [int] NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Pages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PokemonLocation]    Script Date: 9/12/2016 1:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PokemonLocation](
	[CharacterId] [int] NOT NULL,
	[LocationId] [int] NOT NULL,
 CONSTRAINT [PK_PokemonLocation] PRIMARY KEY CLUSTERED 
(
	[CharacterId] ASC,
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PokemonMove]    Script Date: 9/12/2016 1:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PokemonMove](
	[CharacterId] [int] NOT NULL,
	[MoveId] [int] NOT NULL,
 CONSTRAINT [PK_PokemonMove] PRIMARY KEY CLUSTERED 
(
	[CharacterId] ASC,
	[MoveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PokemonSpecialMove]    Script Date: 9/12/2016 1:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PokemonSpecialMove](
	[CharacterId] [int] NOT NULL,
	[MoveId] [int] NOT NULL,
 CONSTRAINT [PK_PokemonSpecialMove] PRIMARY KEY CLUSTERED 
(
	[CharacterId] ASC,
	[MoveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProtectedTitles]    Script Date: 9/12/2016 1:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProtectedTitles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[NameSpace] [int] NOT NULL,
	[ProtectExpiry] [decimal](18, 2) NOT NULL,
	[ProtectReason] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UserId] [int] NULL,
	[UserProtectedId] [nvarchar](450) NULL,
 CONSTRAINT [PK_ProtectedTitles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RecentChanges]    Script Date: 9/12/2016 1:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecentChanges](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ChangeComment] [nvarchar](max) NULL,
	[ChangeFromIpAddress] [nvarchar](max) NULL,
	[ChangeNewLength] [decimal](18, 2) NULL,
	[ChangeOldLength] [decimal](18, 2) NULL,
	[ChangeType] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[IsCreateNew] [bit] NOT NULL,
	[IsDeletedAction] [bit] NOT NULL,
	[NameSpace] [int] NOT NULL,
	[PageId] [int] NULL,
	[PageTitle] [nvarchar](max) NULL,
	[RevisionId] [int] NULL,
	[RevisionParentId] [int] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UserId] [int] NOT NULL,
	[UserMakeChangeId] [nvarchar](450) NULL,
 CONSTRAINT [PK_RecentChanges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[References]    Script Date: 9/12/2016 1:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[References](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Description] [nvarchar](max) NULL,
	[LinkTo] [int] NOT NULL,
	[LinkToId] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UrlFormat] [nvarchar](max) NULL,
 CONSTRAINT [PK_References] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Revisions]    Script Date: 9/12/2016 1:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Revisions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BelongToUserId] [nvarchar](450) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[PageContentId] [int] NOT NULL,
	[PageId] [int] NOT NULL,
	[RevParentId] [int] NULL,
	[RevisionComment] [nvarchar](max) NULL,
	[RevivsionIsDeleted] [bit] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Revisions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sites]    Script Date: 9/12/2016 1:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[SiteConfig] [nvarchar](max) NULL,
	[SiteDomain] [nvarchar](max) NULL,
	[SiteGroup] [nvarchar](max) NULL,
	[SiteKey] [nvarchar](max) NULL,
	[SiteLanguage] [nvarchar](max) NULL,
	[SiteProtocol] [nvarchar](max) NULL,
	[SiteSource] [nvarchar](max) NULL,
	[SiteType] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Sites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tags]    Script Date: 9/12/2016 1:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[FullName] [nvarchar](max) NULL,
	[Level] [smallint] NOT NULL,
	[NickName] [nvarchar](max) NULL,
	[SearchCount] [int] NOT NULL,
	[ShortName] [nvarchar](max) NULL,
	[Slug] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Type]    Script Date: 9/12/2016 1:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[CharacterId] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[CharacterId] ASC,
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserMetas]    Script Date: 9/12/2016 1:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMetas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaValue] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UserId] [int] NOT NULL,
	[UserInUseId] [nvarchar](450) NULL,
 CONSTRAINT [PK_UserMetas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserNewtalks]    Script Date: 9/12/2016 1:54:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNewtalks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UserId] [int] NOT NULL,
	[UserIp] [nvarchar](max) NULL,
	[UserLastSeen] [datetime2](7) NOT NULL,
	[UserSeenId] [nvarchar](450) NULL,
 CONSTRAINT [PK_UserNewtalks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WatchLists]    Script Date: 9/12/2016 1:54:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WatchLists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[NameSpace] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UserId] [int] NOT NULL,
	[WatchTitle] [nvarchar](max) NULL,
	[WatchedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_WatchLists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WikiImages]    Script Date: 9/12/2016 1:54:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WikiImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BitDepth] [int] NOT NULL,
	[CharacterId] [int] NULL,
	[CharacterId1] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[ImageDescription] [nvarchar](max) NULL,
	[ImageHeight] [int] NOT NULL,
	[ImageMediaType] [nvarchar](max) NULL,
	[ImageMime] [nvarchar](max) NULL,
	[ImageName] [nvarchar](max) NULL,
	[ImageSize] [int] NOT NULL,
	[ImageWidth] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_WikiImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WikiVideos]    Script Date: 9/12/2016 1:54:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WikiVideos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Picture] [nvarchar](max) NULL,
	[Priority] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[Url] [nvarchar](max) NULL,
	[VideoType] [int] NOT NULL,
 CONSTRAINT [PK_WikiVideos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160828184740_EWiki', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160904101855_EWiki', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160911100857_UpdateRelationship', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160911171833_UpdateEntity', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160911172356_UpdateForgeinKey', N'1.0.0-rtm-21431')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (20, 1, N'Normal', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Thường')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (21, 1, N'Fire', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Lửa')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (22, 1, N'Water', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Nước')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (23, 1, N'Electric', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Điện')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (24, 1, N'Grass', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Cỏ')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (25, 1, N'Ice', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Băng')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (26, 1, N'Fighting', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Giác Đấu')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (27, 1, N'Poison', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Độc')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (28, 1, N'Ground', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Đất')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (29, 1, N'Flying', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Bay')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (30, 1, N'Psychic', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Tâm Linh')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (31, 1, N'Bug', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Bọ')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (32, 1, N'Rock', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Đá')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (33, 1, N'Ghost', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Ma')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (34, 1, N'Dragon', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Rồng')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (35, 1, N'Dark', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Bóng Tối')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (36, 1, N'Steel', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Thép')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (37, 1, N'Fairy', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Tiên')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (38, 1, N'Fast', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Nhanh')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (39, 1, N'Charge', CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Tập Kích')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Characters] ON 

INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1002, 164, 23.1, 0, CAST(N'2016-09-12T01:22:27.6515218' AS DateTime2), NULL, 152, N'', 0, 1, 1739, N'Tangela', N'#114', N'tangela', N'Pokémon', 130, NULL, NULL, 35, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1003, 190, 30.2, 0, CAST(N'2016-09-12T01:22:27.6145289' AS DateTime2), NULL, 198, N'', 1062, 1.2, 2250, N'Weezing', N'#110', N'weezing', N'Pokémon', 130, NULL, NULL, 9.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1004, 156, 22.4, 0, CAST(N'2016-09-12T01:22:27.8110481' AS DateTime2), NULL, 158, N'', 0, 0.8, 1691, N'Porygon', N'#137', N'porygon', N'Pokémon', 130, NULL, NULL, 36.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1005, 232, 40.1, 0, CAST(N'2016-09-12T01:22:27.5464702' AS DateTime2), NULL, 164, N'', 1144, 2, 2955, N'Exeggutor', N'#103', N'exeggutor', N'Pokémon', 190, NULL, NULL, 120, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1006, 222, 34.1, 0, CAST(N'2016-09-12T01:22:26.9963517' AS DateTime2), NULL, 152, N'Victreebel có những sợi dây leo dài trên đầu giúp nó hấp dẫn con mồi và nuốt chửng chúng.', 1124, 1.7, 2530, N'Victreebel', N'#071', N'victreebel', N'Pokémon Đớp Ruồi', 160, NULL, NULL, 15.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1007, 220, 44.9, 0, CAST(N'2016-09-12T01:22:27.9019161' AS DateTime2), NULL, 220, N'', 0, 0.4, 3299, N'Mew', N'#151', N'mew', N'Pokémon', 200, NULL, NULL, 4, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1008, 202, 33.6, 0, CAST(N'2016-09-12T01:22:26.8008934' AS DateTime2), NULL, 190, N'Vileplume thường thả ra phấn độc gây dịnh ứng mỗi khi bị tiếp cận từ bông hoa xinh đẹp trên đầu nó. Vì vậy, tốt nhất nên tránh xa các bông hoa lớn và đẹp trong rừng.', 1105, 1.2, 2492, N'Vileplume', N'#045', N'vileplume', N'Pokémon Hoa', 150, NULL, NULL, 18.6, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1009, 242, 44.1, 0, CAST(N'2016-09-12T01:22:27.8678907' AS DateTime2), NULL, 194, N'', 0, 2, 3240, N'Moltres', N'#146', N'moltres', N'Pokémon', 180, NULL, NULL, 60, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1010, 148, 14.2, 50, CAST(N'2016-09-12T01:22:27.8315828' AS DateTime2), NULL, 142, N'', 0, 0.5, 1104, N'Kabuto', N'#140', N'kabuto', N'Pokémon', 60, NULL, NULL, 11.5, N'#141')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1011, 168, 20, 50, CAST(N'2016-09-12T01:22:27.0458001' AS DateTime2), NULL, 138, N'Ponyta khá yếu khi còn nhỏ và dần trở nên mạnh hơn sau nhiều cố gắng để chạy theo mẹ của chúng.', 0, 1, 1516, N'Ponyta', N'#077', N'ponyta', N'Pokémon Ngựa Lửa', 100, NULL, NULL, 30, N'#078')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1012, 160, 20.5, 100, CAST(N'2016-09-12T01:22:26.4541520' AS DateTime2), NULL, 140, N'Charmeleon rất hiếu chiến với bộ vuốt sắc nhọn của nó. Ở trạng thái hưng phấn khi đối đầu với đối thủ mạnh, ngọn lửa trên đuôi của Charmeleon chuyển sang màu trắng xanh.', 1069, 1.1, 1557, N'Charmeleon', N'#005', N'charmeleon', N'Pokémon Lửa', 116, NULL, NULL, 19, N'#006')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1013, 214, 30.4, 0, CAST(N'2016-09-12T01:22:27.7492247' AS DateTime2), NULL, 158, N'', 0, 1.3, 2265, N'Magmar', N'#126', N'magmar', N'Pokémon', 130, NULL, NULL, 44.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1014, 250, 47.7, 0, CAST(N'2016-09-12T01:22:27.8869132' AS DateTime2), NULL, 212, N'', 1018, 2.2, 3500, N'Dragonite', N'#149', N'dragonite', N'Pokémon', 182, NULL, NULL, 210, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1015, 164, 25.6, 0, CAST(N'2016-09-12T01:22:26.7803160' AS DateTime2), NULL, 164, N'Golbat thường hút máu của động vật sống và nó thường hoạt động về đêm.', 1103, 1.6, 1921, N'Golbat', N'#042', N'golbat', N'Pokémon Dơi', 150, NULL, NULL, 55, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1016, 190, 28.5, 0, CAST(N'2016-09-12T01:22:27.8385839' AS DateTime2), NULL, 190, N'', 1010, 1.3, 2130, N'Kabutops', N'#141', N'kabutops', N'Pokémon', 120, NULL, NULL, 40.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1017, 122, 10, 50, CAST(N'2016-09-12T01:22:27.6685267' AS DateTime2), NULL, 100, N'', 0, 0.4, 794, N'Horsea', N'#116', N'horsea', N'Pokémon', 60, NULL, NULL, 8, N'#117')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1018, 170, 23.2, 100, CAST(N'2016-09-12T01:22:27.8798889' AS DateTime2), NULL, 152, N'', 1031, 4, 1747, N'Dragonair', N'#148', N'dragonair', N'Pokémon', 122, NULL, NULL, 16.5, N'#149')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1019, 180, 30, 0, CAST(N'2016-09-12T01:22:27.8255961' AS DateTime2), NULL, 202, N'', 1065, 1, 2233, N'Omastar', N'#139', N'omastar', N'Pokémon', 140, NULL, NULL, 35, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1020, 182, 29, 0, CAST(N'2016-09-12T01:22:27.8452541' AS DateTime2), NULL, 162, N'', 0, 1.8, 2165, N'Aerodactyl', N'#142', N'aerodactyl', N'Pokémon', 160, NULL, NULL, 59, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1021, 198, 40.4, 0, CAST(N'2016-09-12T01:22:27.8572344' AS DateTime2), NULL, 242, N'', 0, 1.7, 2978, N'Articuno', N'#144', N'articuno', N'Pokémon', 180, NULL, NULL, 55.4, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1022, 184, 28.4, 0, CAST(N'2016-09-12T01:22:27.7552251' AS DateTime2), NULL, 186, N'', 0, 1.5, 2121, N'Pinsir', N'#127', N'pinsir', N'Pokémon', 130, NULL, NULL, 55, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1023, 172, 25.2, 0, CAST(N'2016-09-12T01:22:26.8269590' AS DateTime2), NULL, 154, N'Venomoth sống về đêm và thường săn bắt côn trùng nhỏ. Nó thường bị hấp dẫn bởi những đốm ánh sáng vào ban đêm.', 1107, 1.5, 1890, N'Venomoth', N'#049', N'venomoth', N'Pokémon Bướm Đêm', 140, NULL, NULL, 12.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1024, 110, 11.8, 0, CAST(N'2016-09-12T01:22:27.7830632' AS DateTime2), NULL, 110, N'', 0, 0.3, 919, N'Ditto', N'#132', N'ditto', N'Pokémon', 96, NULL, NULL, 4, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1025, 284, 56.8, 0, CAST(N'2016-09-12T01:22:27.8924034' AS DateTime2), NULL, 202, N'', 0, 2, 4144, N'Mewtwo', N'#150', N'mewtwo', N'Pokémon', 212, NULL, NULL, 122, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1026, 176, 27.7, 0, CAST(N'2016-09-12T01:22:27.7311250' AS DateTime2), NULL, 180, N'', 0, 1.5, 2073, N'Scyther', N'#123', N'scyther', N'Pokémon', 140, NULL, NULL, 56, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1027, 106, 11.6, 50, CAST(N'2016-09-12T01:22:27.0042505' AS DateTime2), NULL, 136, N'Cơ thể của Tentacool được cấu thành từ nước và dễ dàng khô lại rong không khí nên chúng chỉ có thể sống dưới biển.', 0, 0.9, 905, N'Tentacool', N'#072', N'tentacool', N'Pokémon Sứa', 80, NULL, NULL, 45.5, N'#073')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1028, 172, 27.3, 0, CAST(N'2016-09-12T01:22:27.6985390' AS DateTime2), NULL, 160, N'', 1148, 1.3, 2043, N'Seaking', N'#119', N'seaking', N'Pokémon', 160, NULL, NULL, 39, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1029, 182, 24.4, 0, CAST(N'2016-09-12T01:22:27.2042910' AS DateTime2), NULL, 150, N'Khi mà ba đầu của Dodrio nhìn theo ba hướng khác nhau thì tốt nhất không nên lại gần vì chúng đang rất cảnh giác xung quanh và có thể tấn công bạn.', 1133, 1.8, 1836, N'Dodrio', N'#085', N'dodrio', N'Pokémon Tam Điểu', 120, NULL, NULL, 85.2, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1030, 180, 42.2, 0, CAST(N'2016-09-12T01:22:27.8512335' AS DateTime2), NULL, 180, N'', 0, 2.1, 3112, N'Snorlax', N'#143', N'snorlax', N'Pokémon', 320, NULL, NULL, 460, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1031, 128, 12.6, 25, CAST(N'2016-09-12T01:22:27.8738924' AS DateTime2), NULL, 110, N'', 0, 1.8, 983, N'Dratini', N'#147', N'dratini', N'Pokémon', 82, NULL, NULL, 3.3, N'#148')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1032, 114, 13.9, 25, CAST(N'2016-09-12T01:22:27.7882990' AS DateTime2), NULL, 128, N'', 0, 0.3, 1077, N'Eevee', N'#133', N'eevee', N'Pokémon', 110, NULL, NULL, 6.5, N'#134,#135,#136')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1033, 146, 19, 0, CAST(N'2016-09-12T01:22:26.6137685' AS DateTime2), NULL, 150, N'Với cặp răng nanh lớn, Raticate có khả năng gặm nhấm gỗ, đá và thậm chí là bức tường nhà.', 1083, 0.7, 1444, N'Raticate', N'#020', N'raticate', N'Pokémon Chuột', 110, NULL, NULL, 18.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1034, 180, 35.1, 0, CAST(N'2016-09-12T01:22:27.2852118' AS DateTime2), NULL, 188, N'Toàn bộ cơ thể của Muk được bao quanh bởi một lớp bùn quánh độc hại. Chỉ một giọt dịch cơ thể của nó cũng đủ làm ô nhiễm một hồ nước.', 1050, 1.2, 2602, N'Muk', N'#089', N'muk', N'Pokémon Bùn', 210, NULL, NULL, 30, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1035, 204, 27.8, 0, CAST(N'2016-09-12T01:22:27.3723742' AS DateTime2), NULL, 156, N'', 1138, 1.5, 2078, N'Gengar', N'#094', N'gengar', N'Pokémon Bóng', 120, NULL, NULL, 40.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1036, 232, 42.3, 0, CAST(N'2016-09-12T01:22:27.8628910' AS DateTime2), NULL, 194, N'', 0, 1.6, 3114, N'Zapdos', N'#145', N'zapdos', N'Pokémon', 180, NULL, NULL, 52.6, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1037, 150, 21.8, 0, CAST(N'2016-09-12T01:22:27.5101097' AS DateTime2), NULL, 174, N'', 1143, 1.2, 1646, N'Electrode', N'#101', N'electrode', N'Pokémon', 120, NULL, NULL, 66.6, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1038, 142, 27.3, 0, CAST(N'2016-09-12T01:22:27.6605184' AS DateTime2), NULL, 178, N'', 0, 2.2, 2043, N'Kangaskhan', N'#115', N'kangaskhan', N'Pokémon', 210, NULL, NULL, 80, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1039, 198, 28.3, 0, CAST(N'2016-09-12T01:22:27.7432251' AS DateTime2), NULL, 160, N'', 0, 1.1, 2119, N'Electabuzz', N'#125', N'electabuzz', N'Pokémon', 130, NULL, NULL, 30, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1040, 166, 30.1, 0, CAST(N'2016-09-12T01:22:27.6345320' AS DateTime2), NULL, 160, N'', 1042, 1.9, 2243, N'Rhydon', N'#112', N'rhydon', N'Pokémon', 210, NULL, NULL, 120, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1041, 178, 24.2, 0, CAST(N'2016-09-12T01:22:27.4689223' AS DateTime2), NULL, 168, N'', 1142, 1.3, 1823, N'Kingler', N'#099', N'kingler', N'Pokémon', 110, NULL, NULL, 60, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1042, 110, 15.4, 50, CAST(N'2016-09-12T01:22:27.6235314' AS DateTime2), NULL, 116, N'', 0, 1, 1182, N'Rhyhorn', N'#111', N'rhyhorn', N'Pokémon', 160, NULL, NULL, 115, N'#112')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1043, 148, 24.5, 0, CAST(N'2016-09-12T01:22:27.7610326' AS DateTime2), NULL, 184, N'', 0, 1.4, 1844, N'Tauros', N'#128', N'tauros', N'Pokémon', 150, NULL, NULL, 88.4, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1044, 154, 19.6, 0, CAST(N'2016-09-12T01:22:27.7261168' AS DateTime2), NULL, 196, N'', 0, 1.3, 1494, N'Mr. Mime', N'#122', N'mr. mime', N'Pokémon', 80, NULL, NULL, 54.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1045, 98, 11.6, 50, CAST(N'2016-09-12T01:22:26.7584252' AS DateTime2), NULL, 54, N'Bằng vào khả năng điều chỉnh giọng của mình, giọng hát của Jigglypuff có khả năng ru ngủ đối thủ.', 0, 0.5, 917, N'Jigglypuff', N'#039', N'jigglypuff', N'Pokémon Bóng Bay', 230, NULL, NULL, 5.5, N'#040')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1046, 40, 8, 0, CAST(N'2016-09-12T01:22:27.6435196' AS DateTime2), NULL, 60, N'', 0, 1.1, 675, N'Chansey', N'#113', N'chansey', N'Pokémon', 500, NULL, NULL, 34.6, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1047, 156, 21.6, 0, CAST(N'2016-09-12T01:22:26.8561738' AS DateTime2), NULL, 146, N'Bộ ria của Persian giúp nó trông mạnh mẽ hơn và giúp nó cảm nhận không khí xung quanh. Nhưng bộ ria cũng là điểm yếu của nó khi bị chạm vào.', 1110, 1, 1631, N'Persian', N'#053', N'persian', N'Pokémon Mèo', 130, NULL, NULL, 32, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1048, 136, 10.1, 25, CAST(N'2016-09-12T01:22:27.3417366' AS DateTime2), NULL, 82, N'Phần lớn cơ thể của Gastly là các loại khí gas. Nhưng vì vậy mà nó cũng có thể bị gió cuốn đi.', 0, 1.3, 804, N'Gastly', N'#092', N'gastly', N'Pokémon Khí Độc', 60, NULL, NULL, 0.1, N'#093')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1049, 162, 23.2, 0, CAST(N'2016-09-12T01:22:26.8137252' AS DateTime2), NULL, 170, N'Parasect thường tàn phá các cây lớn bằng việc sống và hút chất dinh dưỡng từ các gốc cây.', 1106, 1, 1747, N'Parasect', N'#047', N'parasect', N'Pokémon Nấm', 120, NULL, NULL, 29.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1050, 124, 16.8, 50, CAST(N'2016-09-12T01:22:27.2647404' AS DateTime2), NULL, 110, N'Cơ thể nhớt nhợt của Grimer có thể lách qua bất cứ khe hở nào, cho dù nó có nhỏ đến đâu. Nó thích uống nước thải từ các cống rãnh.', 0, 0.9, 1284, N'Grimer', N'#088', N'grimer', N'Pokémon Bùn', 160, NULL, NULL, 30, N'#089')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1051, 194, 29.2, 0, CAST(N'2016-09-12T01:22:27.7181342' AS DateTime2), NULL, 192, N'', 1056, 1.1, 2182, N'Starmie', N'#121', N'starmie', N'Pokémon', 120, NULL, NULL, 80, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1052, 198, 35, 0, CAST(N'2016-09-12T01:22:26.9720789' AS DateTime2), NULL, 180, N'Machamp có đủ sức mạnh để quăng bất cứ thứ gì. Nhưng do có bốn tay mà không suy nghĩ trước khi làm khiến tay của nó thường vướng với nhau.', 1122, 1.6, 2594, N'Machamp', N'#068', N'machamp', N'Pokémon Sức Mạnh', 180, NULL, NULL, 130, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1053, 138, 19.9, 0, CAST(N'2016-09-12T01:22:27.5849852' AS DateTime2), NULL, 204, N'', 0, 1.4, 1516, N'Hitmonchan', N'#107', N'hitmonchan', N'Pokémon', 100, NULL, NULL, 50.2, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1054, 148, 19.6, 0, CAST(N'2016-09-12T01:22:27.5744747' AS DateTime2), NULL, 172, N'', 0, 1.5, 1492, N'Hitmonlee', N'#106', N'hitmonlee', N'Pokémon', 100, NULL, NULL, 49.8, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1055, 230, 40.5, 0, CAST(N'2016-09-12T01:22:26.9010681' AS DateTime2), NULL, 180, N'Arcanine được biết đến với khả năng chạy kì nhanh dựa vào nguồn năng lượng lửa bên trong cơ thể nó.', 1115, 1.9, 2983, N'Arcanine', N'#059', N'arcanine', N'Pokémon Huyền Thoại', 180, NULL, NULL, 155, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1056, 130, 12, 50, CAST(N'2016-09-12T01:22:27.7071336' AS DateTime2), NULL, 128, N'', 0, 0.8, 937, N'Staryu', N'#120', N'staryu', N'Pokémon', 60, NULL, NULL, 34.5, N'#121')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1057, 132, 17.6, 100, CAST(N'2016-09-12T01:22:26.9161061' AS DateTime2), NULL, 132, N'Bề mặt da của Poliwhirl khá trơn và nhầy giúp nó có thể trượt và tránh đòn dễ dàng trong chiến đấu.', 1116, 1, 1340, N'Poliwhirl', N'#061', N'poliwhirl', N'Pokémon Nòng Nọc', 130, NULL, NULL, 20, N'#062')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1058, 172, 22.8, 0, CAST(N'2016-09-12T01:22:27.7372251' AS DateTime2), NULL, 134, N'', 0, 1.4, 1716, N'Jynx', N'#124', N'jynx', N'Pokémon', 130, NULL, NULL, 40.6, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1059, 138, 16.5, 0, CAST(N'2016-09-12T01:22:27.1609893' AS DateTime2), NULL, 132, N'Farfetch''d thường cầm một cây hành bên người để ăn cũng như làm vũ khí.', 0, 0.8, 1263, N'Farfetch''d', N'#083', N'farfetch''d', N'PokémonVịt', 104, NULL, NULL, 15, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1060, 186, 25, 0, CAST(N'2016-09-12T01:22:27.1449629' AS DateTime2), NULL, 180, N'Magneton thường phóng ra các luồng từ tính mạng làm nhiễu sóng radio và gây hại tới các thiết bị điện tử.', 1132, 1, 1879, N'Magneton', N'#082', N'magneton', N'Pokémon Nam Châm', 100, NULL, NULL, 60, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1061, 186, 40.4, 0, CAST(N'2016-09-12T01:22:27.7790258' AS DateTime2), NULL, 190, N'', 0, 2.5, 2980, N'Lapras', N'#131', N'lapras', N'Pokémon', 260, NULL, NULL, 220, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1062, 136, 14.9, 50, CAST(N'2016-09-12T01:22:27.6045256' AS DateTime2), NULL, 142, N'', 0, 0.6, 1151, N'Koffing', N'#109', N'koffing', N'Pokémon', 80, NULL, NULL, 1, N'#110')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1063, 140, 21.9, 0, CAST(N'2016-09-12T01:22:27.5654846' AS DateTime2), NULL, 202, N'', 1145, 1, 1656, N'Marowak', N'#105', N'marowak', N'Pokémon', 120, NULL, NULL, 45, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1064, 42, 3, 400, CAST(N'2016-09-12T01:22:27.7650154' AS DateTime2), NULL, 84, N'', 0, 0.9, 262, N'Magikarp', N'#129', N'magikarp', N'Pokémon', 40, NULL, NULL, 10, N'#130')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1065, 132, 14.4, 50, CAST(N'2016-09-12T01:22:27.8186026' AS DateTime2), NULL, 160, N'', 0, 0.4, 1119, N'Omanyte', N'#138', N'omanyte', N'Pokémon', 70, NULL, NULL, 7.5, N'#139')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1066, 126, 13.8, 25, CAST(N'2016-09-12T01:22:26.4333697' AS DateTime2), NULL, 126, N'Trên lưng của Bulbasaur có một hạt giống có thể nở nhờ ánh sáng nên nó thường ngủ trưa dưới ánh mặt trời. ', 0, 0.7, 1071, N'Bulbasaur', N'#001', N'bulbasaur', N'Pokémon Hạt Giống', 90, NULL, NULL, 6.9, N'#002')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1067, 156, 21.6, 100, CAST(N'2016-09-12T01:22:26.4401386' AS DateTime2), NULL, 158, N'Sau khi tiến hoá từ Bulbasaur, hạt giống trên lưng trở thành nụ hoa. Vì vậy nó dành nhiều hơn thời gian dưới ánh mặt trời để tiến hoá.', 1066, 1, 1632, N'Ivysaur', N'#002', N'ivysaur', N'Pokémon Hạt Giống', 120, NULL, NULL, 13, N'#003')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1068, 198, 34.8, 0, CAST(N'2016-09-12T01:22:26.4451469' AS DateTime2), NULL, 200, N'Dạng tiến hoá cao nhất khi mà hạt giống trên lưng đã nở thành hoa.Hương thơm từ hoa có thể làm dịu cảm xúc khi hít phải.', 1067, 2, 2580, N'Venusaur', N'#003', N'venusaur', N'Pokémon Hạt Giống', 160, NULL, NULL, 100, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1069, 128, 12.2, 25, CAST(N'2016-09-12T01:22:26.4491450' AS DateTime2), NULL, 108, N'Ngọn lửa cháy trên đuôi biểu hiện cho cảm xúc của Charmander. Ngọn lửa nhấp nháy những lúc vui buồn hoặc cháy dữ dội khi chiến đấu.', 0, 0.6, 955, N'Charmander', N'#004', N'charmander', N'Pokémon Thằn Lằn', 78, NULL, NULL, 8.5, N'#005')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1070, 212, 35.1, 0, CAST(N'2016-09-12T01:22:26.4591470' AS DateTime2), NULL, 182, N'Charizard có khả năng bay lượn và luôn tìm những đối thủ mạnh mẽ hơn nó để chiến đấu. Nó có khả năng thổi ra những ngọn lửa với nhiệt độ cực cao và làm tan chảy tất cả.', 1012, 1.7, 2602, N'Charizard', N'#006', N'charizard', N'Pokémon Lửa', 156, NULL, NULL, 90.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1071, 112, 13, 25, CAST(N'2016-09-12T01:22:26.4651440' AS DateTime2), NULL, 142, N'Mai của Squirtle ngoài khả năng phòng thủ còn giúp nó bơi lội cực nhanh trong nước bằng vào hình dáng tròn trịa của mình.', 0, 0.5, 1008, N'Squirtle', N'#007', N'squirtle', N'Pokémon Rùa Con', 88, NULL, NULL, 9, N'#008')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1072, 144, 20.9, 100, CAST(N'2016-09-12T01:22:26.4711444' AS DateTime2), NULL, 176, N'Sau khi tiến hoá, đuôi của Wartortle lớn và dày hơn, đồng thời màu sắc của đuôi cũng đại diện cho tuổi thọ của nó. Bên cạnh đó, những vết sẹo trên mai cũng thể hiện cho chiến tích của nó qua những trận đấu.', 1071, 1, 1582, N'Wartortle', N'#008', N'wartortle', N'Pokémon Rùa', 118, NULL, NULL, 22.5, N'#009')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1073, 186, 34.3, 0, CAST(N'2016-09-12T01:22:26.4781601' AS DateTime2), NULL, 222, N'Blastoise có hai cây súng nước trên mai của nó với khả năng bắn ra nhưng viên đạn nước có độ chính xác cực cao và xa.', 1072, 1.6, 2542, N'Blastoise', N'#009', N'blastoise', N'Pokémon Rùa', 158, NULL, NULL, 85.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1074, 62, 5.3, 12, CAST(N'2016-09-12T01:22:26.4836837' AS DateTime2), NULL, 66, N'Caterpie rất tham ăn, nó có thể ăn lượng lá cây lớn hơn nó nhiều lần. Sừng của nó có khả năng toả ra mùi cực mạnh để xua đuổi pokémon khác.', 0, 0.3, 443, N'Caterpie', N'#010', N'caterpie', N'Pokémon Sâu', 90, NULL, NULL, 2.9, N'#011')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1075, 56, 5.8, 50, CAST(N'2016-09-12T01:22:26.4895058' AS DateTime2), NULL, 86, N'Metapod có lớp vỏ cứng như sắt. Nó rất ít di chuyển mà chờ đợi tới lúc tiến hoá sau này.', 1074, 0.7, 477, N'Metapod', N'#011', N'metapod', N'Pokémon Nhộng', 100, NULL, NULL, 9.9, N'#012')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1076, 144, 19.1, 0, CAST(N'2016-09-12T01:22:26.5002279' AS DateTime2), NULL, 144, N'Butterfree rất giỏi trong việc tìm kiếm và thu thập mật hoa từ khoảng cách xa.', 1075, 1.1, 1454, N'Butterfree', N'#012', N'butterfree', N'Pokémon Bướm', 120, NULL, NULL, 32, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1077, 68, 5.4, 12, CAST(N'2016-09-12T01:22:26.5092189' AS DateTime2), NULL, 64, N'Weedle có khứa giác rất nhạy. Bằng cái mũi to tròn của mình nó có thể tìm kiếm những loại lá yêu thích.', 0, 0.3, 449, N'Weedle', N'#013', N'weedle', N'Pokémon Sâu Lông', 80, NULL, NULL, 3.2, N'#014')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1078, 62, 5.9, 50, CAST(N'2016-09-12T01:22:26.5182266' AS DateTime2), NULL, 82, N'Kakuna luôn treo mình trên cây để chuẩn bị tiến hoá. Quá trình tiến hoá càng lâu, vỏ của nó sẽ càng nóng.', 1077, 0.6, 485, N'Kakuna', N'#014', N'kakuna', N'Pokémon Nhộng', 90, NULL, NULL, 10, N'#015')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1079, 144, 18.9, 0, CAST(N'2016-09-12T01:22:26.5308087' AS DateTime2), NULL, 130, N'Beedrill trở nên cực kì nguy hiểm khi có người tiếp cận tổ của nó. Đáng sợ nhất là nó luôn tấn công theo bầy.', 1078, 1, 1439, N'Beedrill', N'#015', N'beedrill', N'Pokémon Ong độc', 130, NULL, NULL, 29.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1080, 94, 8.5, 12, CAST(N'2016-09-12T01:22:26.5418096' AS DateTime2), NULL, 90, N'Pidgey có khả năng xác định phương hướng rất tốt giúp nó di chuyển khoảng cách xa mà không bị lac.', 0, 0.3, 679, N'Pidgey', N'#016', N'pidgey', N'Pokémon Chim Con', 80, NULL, NULL, 1.8, N'#017')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1081, 126, 16, 50, CAST(N'2016-09-12T01:22:26.5737208' AS DateTime2), NULL, 122, N'Pidgeotto luôn chiếm một khu vực lãnh thổ rất rộng và luôn tấn công những kẻ xâm nhập bằng bộ móng sắc nhọn của nó.', 1080, 1.1, 1223, N'Pidgeotto', N'#017', N'pidgeotto', N'Pokémon Chim', 126, NULL, NULL, 30, N'#018')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1082, 170, 28, 0, CAST(N'2016-09-12T01:22:26.5892331' AS DateTime2), NULL, 166, N'Pidgeot có một bộ lông rực rỡ với nhưng chiếc lông lộng lẫy. Đặc biệt là những chiếc lông trên đầu của nó khiến rất nhiều huấn luyện viên chọn Pidgeot trở thành pokémon của họ.', 1081, 1.5, 2091, N'Pidgeot', N'#018', N'pidgeot', N'Pokémon Chim', 166, NULL, NULL, 39.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1083, 92, 7.2, 25, CAST(N'2016-09-12T01:22:26.6022761' AS DateTime2), NULL, 86, N'Rattata cực kì cẩn thận và đề phòng xung quanh bằng đôi tai lớn của nó. Nó khá dễ tính và có thể sống ở bất cứ đâu.', 0, 0.3, 581, N'Rattata', N'#019', N'rattata', N'Pokémon Chuột', 60, NULL, NULL, 3.5, N'#020')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1084, 102, 8.6, 50, CAST(N'2016-09-12T01:22:26.6207748' AS DateTime2), NULL, 78, N'Spearow có tiếng kêu rất lớn nhằm cảnh báo nguy hiểm cho đồng loại của nó.', 0, 0.3, 686, N'Spearow', N'#021', N'spearow', N'Pokémon Chim Con', 80, NULL, NULL, 2, N'#022')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1085, 168, 23.2, 0, CAST(N'2016-09-12T01:22:26.6287805' AS DateTime2), NULL, 146, N'Fearow có cổ và đặc biệt là mỏ của nó khá dài giúp nó dễ dàng di chuyển và bắt mồi.', 1084, 1.2, 1746, N'Fearow', N'#022', N'fearow', N'Pokémon Chim', 130, NULL, NULL, 38, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1086, 112, 10.5, 50, CAST(N'2016-09-12T01:22:26.6357735' AS DateTime2), NULL, 112, N'Ekans thường cuộn tròn lại nằm nghỉ đồng thời giúp nó phản ứng nhanh khi có nguy hiểm xung quanh.', 0, 2, 824, N'Ekans', N'#023', N'ekans', N'Pokémon Rắn', 70, NULL, NULL, 6.9, N'#024')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1087, 166, 23.5, 0, CAST(N'2016-09-12T01:22:26.6440165' AS DateTime2), NULL, 166, N'Bằng khả năng quấn chặt cực mạnh của mình,đối thủ của  Arbok gần như không thể thoát khỏi khi bị nó quấn phải.', 1086, 3.5, 1767, N'Arbok', N'#024', N'arbok', N'Pokémon Rắn Hổ Mang', 120, NULL, NULL, 65, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1088, 124, 11.3, 50, CAST(N'2016-09-12T01:22:26.6570035' AS DateTime2), NULL, 108, N'Pikachu thường thể hiện sự hứng thú của nó bằng các tia điện. Nếu bạn nhìn thì quả berry bị điện cháy đen thì chắc chắn là do Pikachu làm.', 0, 0.4, 887, N'Pikachu', N'#025', N'pikachu', N'Pokémon Chuột', 70, NULL, NULL, 6, N'#026')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1089, 200, 27.1, 0, CAST(N'2016-09-12T01:22:26.6650173' AS DateTime2), NULL, 154, N'Do có khả năng phóng điện mạnh nên mỗi khi dòng điện tích luỹ quá lớn, Raichu thường phóng thích dòng điện xuống đất qua cái đuôi bén nhọn của nó.', 1088, 0.8, 2028, N'Raichu', N'#026', N'raichu', N'Pokémon Chuột', 120, NULL, NULL, 30, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1090, 90, 10.1, 50, CAST(N'2016-09-12T01:22:26.6720172' AS DateTime2), NULL, 114, N'Cơ thể của Sandshrew hấp thu nước tốt giúp nó có thể sinh sống trong khu vực sa mạc. Nó thường cuộn tròn cơ thể của mình khi phòng thủ.', 0, 0.6, 798, N'Sandshrew', N'#027', N'sandshrew', N'Pokémon Chuột', 100, NULL, NULL, 12, N'#028')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1091, 150, 24.1, 0, CAST(N'2016-09-12T01:22:26.6800036' AS DateTime2), NULL, 172, N'Sandslash có những cái gai bén nhọn giúp nó phòng thủ cũng như tấn công. Bộ gai của nó thường được thay thế mỗi năm một lần.', 1090, 1, 1810, N'Sandslash', N'#028', N'sandslash', N'Pokémon Chuột', 150, NULL, NULL, 29.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1092, 100, 11.2, 25, CAST(N'2016-09-12T01:22:26.6864236' AS DateTime2), NULL, 104, N'Nidoran♀ có những gai cực độc trên cơ thể để bảo vệ nó. Độc cũng có thể truyền từ sừng của nó khi tấn công.', 0, 0.4, 876, N'Nidoran♀', N'#029', N'nidoran♀', N'Pokémon Gai Độc', 110, NULL, NULL, 7, N'#030')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1093, 132, 18.4, 100, CAST(N'2016-09-12T01:22:26.6939238' AS DateTime2), NULL, 136, N'Nidorina có khả năng thu lại những gai độc của mình khi ở cùng với đồng loại của mình. Nó thường khá lo lắng khi bị tách khỏi bầy của mình.', 1092, 0.8, 1404, N'Nidorina', N'#030', N'nidorina', N'Pokémon Gai Độc', 140, NULL, NULL, 20, N'#031')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1094, 184, 33.5, 0, CAST(N'2016-09-12T01:22:26.7044334' AS DateTime2), NULL, 190, N'Nidoqueen có cơ thể to lớn với bộ giáp cực kì cứng giúp nó dễ dàng húc bay đối thủ. Nidoqueen trở nên rất đáng sợ khi có kẻ đụng vào con của nó.', 1093, 1.3, 2485, N'Nidoqueen', N'#031', N'nidoqueen', N'Pokémon Mũi Khoan', 180, NULL, NULL, 60, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1095, 110, 10.7, 25, CAST(N'2016-09-12T01:22:26.7114457' AS DateTime2), NULL, 94, N'Nidoran♂ có đôi tai cực lớn giúp nó nhận biết xung quanh và di chuyển một cách an toàn.', 0, 0.5, 843, N'Nidoran♂', N'#032', N'nidoran♂', N'Pokémon Gai Độc', 92, NULL, NULL, 9, N'#033')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1096, 142, 18, 100, CAST(N'2016-09-12T01:22:26.7194342' AS DateTime2), NULL, 128, N'Nidorino có sừng cứng hơn cả kim cương. Khi cảm thấy nguy hiểm, gai lưng của nó thường dựng lên để chiến đấu.', 1095, 0.9, 1372, N'Nidorino', N'#033', N'nidorino', N'Pokémon Gai Độc', 122, NULL, NULL, 19.5, N'#034')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1097, 204, 33.3, 0, CAST(N'2016-09-12T01:22:26.7284449' AS DateTime2), NULL, 170, N'Với cái đuôi to lớn và mạnh mẽ có thể phá nát kim loại, rất ít pokémon có thể ngăn cản Nidoking khi nó nổi giận.', 1096, 1.4, 2475, N'Nidoking', N'#034', N'nidoking', N'Pokémon Mũi Khoan', 162, NULL, NULL, 62, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1098, 116, 15.6, 50, CAST(N'2016-09-12T01:22:26.7344299' AS DateTime2), NULL, 124, N'Clefairy thường xuất hiện vào đêm trăng tròn để chơi cùng đồng bọn và trở về tổ khi bình minh đến.', 0, 0.6, 1200, N'Clefairy', N'#035', N'clefairy', N'Pokémon Tiên', 140, NULL, NULL, 7.5, N'#036')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1099, 178, 32.3, 0, CAST(N'2016-09-12T01:22:26.7414255' AS DateTime2), NULL, 178, N'Clefable có thể nhảy nhẹ nhàng bằng cặp cánh nhỏ của nó, kể cả trên nước. Nó thường đi dạo trên mặt hồ vào đêm trăng.', 1098, 1.3, 2397, N'Clefable', N'#036', N'clefable', N'Pokémon Tiên', 190, NULL, NULL, 40, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1100, 106, 10.6, 50, CAST(N'2016-09-12T01:22:26.7464261' AS DateTime2), NULL, 118, N'Vulpix có một đuôi khi sinh ra và dần dần mọc tới sáu đuôi khi lớn. Đuôi của nó rất cong và đẹp.', 0, 0.6, 831, N'Vulpix', N'#037', N'vulpix', N'Pokémon Cáo', 76, NULL, NULL, 9.9, N'#038')
GO
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1101, 176, 29.3, 0, CAST(N'2016-09-12T01:22:26.7524261' AS DateTime2), NULL, 194, N'Đôi mắt của Ninetales có thể phóng ra ánh sáng với khả năng điều khiển đối thủ. Ninetales được cho là có khả năng sống tới một ngàn năm.', 1100, 1.1, 2188, N'Ninetales', N'#038', N'ninetales', N'Pokémon Cáo', 146, NULL, NULL, 19.9, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1102, 168, 29.1, 0, CAST(N'2016-09-12T01:22:26.7663334' AS DateTime2), NULL, 108, N'Wigglytuff có đôi mắt đẹp to tròn với một lớp nước mắt bảo vệ mắt nó khỏi bụi bẩn.', 1045, 1, 2177, N'Wigglytuff', N'#040', N'wigglytuff', N'Pokémon Bóng Bay', 280, NULL, NULL, 12, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1103, 88, 8, 50, CAST(N'2016-09-12T01:22:26.7733170' AS DateTime2), NULL, 90, N'Zubat có thể bị thiêu cháy dưới ánh sáng mặt trời nên nó thường trốn trong bóng tối vào ban ngày.', 0, 0.8, 642, N'Zubat', N'#041', N'zubat', N'Pokémon Dơi', 80, NULL, NULL, 7.5, N'#042')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1104, 134, 14.9, 25, CAST(N'2016-09-12T01:22:26.7863374' AS DateTime2), NULL, 130, N'Oddish thường chôn mình dưới đất để hấp thu chất dinh dưỡng. Càng nhiều chất dinh dưỡng được hấp thu, lá của nó càng sáng bóng.', 0, 0.5, 1148, N'Oddish', N'#043', N'oddish', N'Pokémon Cỏ', 90, NULL, NULL, 5.4, N'#044')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1105, 162, 22.4, 100, CAST(N'2016-09-12T01:22:26.7933291' AS DateTime2), NULL, 158, N'Khi cảm thấy nguy hiểm, Gloom phóng thích mùi hôi từ nhuỵ của nó để đe doạ kẻ thù.', 1104, 0.8, 1689, N'Gloom', N'#044', N'gloom', N'Pokémon Cỏ', 120, NULL, NULL, 8.6, N'#045')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1106, 122, 11.7, 50, CAST(N'2016-09-12T01:22:26.8067254' AS DateTime2), NULL, 120, N'Paras có hai cây nấm sống kí sinh trên lưng nó. Chúng lớn lên bằng chất dinh dưỡng Paras hút từ cây lớn và là vị thuốc có giá trị giúp kéo dài tuổi thọ.', 0, 0.3, 916, N'Paras', N'#046', N'paras', N'Pokémon Nấm', 70, NULL, NULL, 5.4, N'#047')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1107, 108, 13.3, 50, CAST(N'2016-09-12T01:22:26.8189516' AS DateTime2), NULL, 118, N'Venonat có một bộ lông xù, mỏng và cứng giúp bảo vệ cơ thể của nó. Đôi mắt lớn giúp nó phát hiện con mồi dù rất nhỏ.', 0, 1, 1029, N'Venonat', N'#048', N'venonat', N'Pokémon Côn Trùng', 120, NULL, NULL, 30, N'#049')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1108, 108, 5.3, 50, CAST(N'2016-09-12T01:22:26.8339691' AS DateTime2), NULL, 86, N'Diglett thường chôn mình dưới đất và sống trong các trang trại. Nhờ có nó mà đất rất màu mỡ và thích hợp để trồng cây.', 0, 0.2, 456, N'Diglett', N'#050', N'diglett', N'Pokémon Chuột Chũi', 20, NULL, NULL, 0.8, N'#051')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1109, 148, 15.1, 0, CAST(N'2016-09-12T01:22:26.8411554' AS DateTime2), NULL, 140, N'Dugtrio có ba đầu trên một cơ thể giúp nó phối hợp đào đất nhanh hơn.', 1108, 0.7, 1168, N'Dugtrio', N'#051', N'dugtrio', N'Pokémon Chuột Chũi', 70, NULL, NULL, 33.3, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1110, 104, 9.6, 50, CAST(N'2016-09-12T01:22:26.8481668' AS DateTime2), NULL, 94, N'Meowth thu bộ vuốt của nó lại để di chuyển nhẹ nhàng hơn. Nó rất thích các đồng tiền sáng lấp lánh.', 0, 0.4, 756, N'Meowth', N'#052', N'meowth', N'Pokémon Mèo Cào', 80, NULL, NULL, 4.2, N'#053')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1111, 132, 14.4, 50, CAST(N'2016-09-12T01:22:26.8642128' AS DateTime2), NULL, 112, N'Psyduck có năng lực bí ẩn phát ra sóng não chỉ xuất hiện khi ngủ. Nhưng điều này còn gây tranh cãi khá nhiều giữa các nhà nghiên cứu.', 0, 0.8, 1109, N'Psyduck', N'#054', N'psyduck', N'Pokémon Vịt', 100, NULL, NULL, 19.6, N'#055')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1112, 194, 32.1, 0, CAST(N'2016-09-12T01:22:26.8722134' AS DateTime2), NULL, 176, N'Màng tay, chân và cơ thể dạng thuỷ động học giúp Golduck bơi rất nhanh dưới nước.', 1111, 1.7, 2386, N'Golduck', N'#055', N'golduck', N'Pokémon Vịt', 160, NULL, NULL, 76.6, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1113, 122, 11.2, 50, CAST(N'2016-09-12T01:22:26.8797730' AS DateTime2), NULL, 96, N'Thở mạnh là dấu hiệu cho thấy Mankey đang nổi giận. Không có bất cứ ai có thể thoát khỏi cơn thịnh nộ của nó.', 0, 0.5, 878, N'Mankey', N'#056', N'mankey', N'Pokémon Khỉ Heo', 80, NULL, NULL, 28, N'#057')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1114, 178, 24.8, 0, CAST(N'2016-09-12T01:22:26.8872963' AS DateTime2), NULL, 150, N'Khi Primeape nổi giận, máu trong cơ thể nó vận chuyển nhanh hơn làm tăng sức mạnh cơ bắp nhưng cũng khiến nó trở nên khá ngu ngốc.', 1113, 1, 1864, N'Primeape', N'#057', N'primeape', N'Pokémon Khỉ Heo', 130, NULL, NULL, 32, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1115, 156, 17.5, 50, CAST(N'2016-09-12T01:22:26.8942979' AS DateTime2), NULL, 110, N'Growlithe có khả năng đánh hơi và ghi nhớ mùi mạnh mẽ. Khứu giác của nó còn có khả năng nhận biết được cảm xúc của sinh vật sống khác.', 0, 0.7, 1335, N'Growlithe', N'#058', N'growlithe', N'Pokémon Chó Con', 110, NULL, NULL, 19, N'#059')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1116, 108, 10.1, 25, CAST(N'2016-09-12T01:22:26.9080727' AS DateTime2), NULL, 98, N'Poliwag có da mỏng nhưng cũng rất mềm dẻo đủ để giúp nó chống lại những chiếc răng nanh bén nhọn.', 0, 0.6, 795, N'Poliwag', N'#060', N'poliwag', N'Pokémon Nòng Nọc', 80, NULL, NULL, 12.4, N'#061')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1117, 180, 33.8, 0, CAST(N'2016-09-12T01:22:26.9258913' AS DateTime2), NULL, 202, N'Poliwrath có cơ bắp cực kì mạnh mẽ và không biết mệt mỏi giúp nó có thể dễ dàng bơi xuyên đại dương.', 1057, 1.3, 2505, N'Poliwrath', N'#062', N'poliwrath', N'Pokémon Nòng Nọc', 180, NULL, NULL, 54, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1118, 110, 7.4, 25, CAST(N'2016-09-12T01:22:26.9338902' AS DateTime2), NULL, 76, N'Abra ngủ 18 giờ một ngày nhưng nó vẫn có thể cảm nhận nguy hiểm xung quanh và dịch chuyển để bỏ chạy.', 0, 0.9, 600, N'Abra', N'#063', N'abra', N'Pokémon Tâm Linh', 50, NULL, NULL, 19.5, N'#064')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1119, 150, 14.6, 100, CAST(N'2016-09-12T01:22:26.9418903' AS DateTime2), NULL, 112, N'Kadabra luôn phát ra một luồng sóng alpha xung quanh nó gây nhức đầu cho người khác. Vì vậy, chỉ có những nhà huấn luyện có năng lực tâm linh mạnh mẽ mới điều khiển được nó.', 1118, 1.3, 1131, N'Kadabra', N'#064', N'kadabra', N'Pokémon Tâm Linh', 80, NULL, NULL, 56.5, N'#065')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1120, 186, 24.1, 0, CAST(N'2016-09-12T01:22:26.9495962' AS DateTime2), NULL, 152, N'Não của Alakazam phát triển liên tục khiến cho đầu ngày càng to ra đến mức nó phải dùng năng lực tâm linh để nâng đầu lên.', 1119, 1.5, 1813, N'Alakazam', N'#065', N'alakazam', N'Pokémon Tâm Linh', 110, NULL, NULL, 48, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1121, 118, 14.1, 25, CAST(N'2016-09-12T01:22:26.9565819' AS DateTime2), NULL, 96, N'Cơ bắp của Machop không bao giờ cảm thấy mệt mỏi trong khi sức mạnh của nó đủ để nâng hàng trăm người.', 0, 0.8, 1089, N'Machop', N'#066', N'machop', N'Pokémon Sức Mạnh', 140, NULL, NULL, 19.5, N'#067')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1122, 154, 23.4, 100, CAST(N'2016-09-12T01:22:26.9643383' AS DateTime2), NULL, 144, N'Machoke luôn rèn luyện cơ bắp của nó trở nên cứng như thép. Nó có thể dễ dàng nâng một Sumo chỉ bằng một ngón tay.', 1121, 1.5, 1760, N'Machoke', N'#067', N'machoke', N'Pokémon Sức Mạnh', 160, NULL, NULL, 70.5, N'#068')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1123, 158, 14.4, 25, CAST(N'2016-09-12T01:22:26.9790915' AS DateTime2), NULL, 78, N'Với cơ thể nhỏ và mêm dẽo, Bellsprout có thể dễ dàng né tránh các đòn đánh. Còn miệng của nó thì có khả năng phun ra chất dịch có thể ăn mòn cả sắt.', 0, 0.7, 1117, N'Bellsprout', N'#069', N'bellsprout', N'Pokémon Hoa', 100, NULL, NULL, 4, N'#070')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1124, 190, 22.8, 100, CAST(N'2016-09-12T01:22:26.9878555' AS DateTime2), NULL, 110, N'Weepinbell có một cái móc nhỏ trên đầu giúp nó treo lơ lửng trên cây khi ngủ. Dù nó cỏ thể dễ dàng rơi xuống đất khi nhúc nhích.', 1123, 1, 1723, N'Weepinbell', N'#070', N'weepinbell', N'Pokémon Đớp Ruồi', 130, NULL, NULL, 6.4, N'#071')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1125, 170, 29.8, 0, CAST(N'2016-09-12T01:22:27.0138120' AS DateTime2), NULL, 196, N'Hai quả cầu trên đầu Tentacruel có khả năng phát ra sóng siêu âm cực mạnh để tấn công đối thủ xung quanh.', 1027, 1.6, 2220, N'Tentacruel', N'#073', N'tentacruel', N'Pokémon Sứa', 160, NULL, NULL, 55, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1126, 106, 10.8, 25, CAST(N'2016-09-12T01:22:27.0217967' AS DateTime2), NULL, 118, N'Geodude sống càng lâu thì cơ thể nó càng trở nên trơn và tròn.', 0, 0.4, 849, N'Geodude', N'#074', N'geodude', N'Pokémon Đá', 80, NULL, NULL, 20, N'#075')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1127, 142, 18.8, 100, CAST(N'2016-09-12T01:22:27.0307980' AS DateTime2), NULL, 156, N'Graveler dùng đá làm thức ăn và ăn một lượng lớn mỗi ngày. Món yêu thích của nó là đá có rêu.', 1126, 1, 1433, N'Graveler', N'#075', N'graveler', N'Pokémon Đá', 110, NULL, NULL, 105, N'#076')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1128, 176, 30.9, 0, CAST(N'2016-09-12T01:22:27.0387994' AS DateTime2), NULL, 198, N'Golem thường sống trên núi. Do ảnh hưởng của động đất mà chúng có thể lăn xuống núi và tàn phá tất cả trên đường đi.', 1127, 1.4, 2303, N'Golem', N'#076', N'golem', N'Pokémon Siêu Trọng', 160, NULL, NULL, 300, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1129, 200, 29.5, 0, CAST(N'2016-09-12T01:22:27.0537998' AS DateTime2), NULL, 170, N'Rapidash thường xuất hiện tại cánh đồng hoặc thảo nguyên. Chúng có thể phi cực nhanh bằng vào năng lượng toả ra từ cái bờm đầy lửa của mình.', 1011, 1.7, 2199, N'Rapidash', N'#078', N'rapidash', N'Pokémon Ngựa Lửa', 130, NULL, NULL, 95, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1130, 110, 15.9, 50, CAST(N'2016-09-12T01:22:27.0617969' AS DateTime2), NULL, 110, N'Slowpoke dùng đuôi của nó để bắt cá nhưng nó rất hay quên và thường nằm cả ngày bên bờ sông.', 0, 1.2, 1218, N'Slowpoke', N'#079', N'slowpoke', N'Pokémon Ngốc', 180, NULL, NULL, 36, N'#080')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1131, 184, 35.1, 0, CAST(N'2016-09-12T01:22:27.0687964' AS DateTime2), NULL, 198, N'Slowpoke tiến hoá thành Slowbro sau khi bị Shellder cắn vào đuôi nó. Vì vậy, nó không thể câu cá nữa mà phải tự bơi đi kiếm ăn.', 1130, 1.6, 2597, N'Slowbro', N'#080', N'slowbro', N'Pokémon Cua', 190, NULL, NULL, 78.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1132, 128, 11.3, 50, CAST(N'2016-09-12T01:22:27.0747972' AS DateTime2), NULL, 138, N'Magnemite sống dựa trên các nguồn điện nên chúng thường bám vào các đường đây điện hoặc cấu chì.', 0, 0.3, 890, N'Magnemite', N'#081', N'magnemite', N'Pokémon Nam Châm', 50, NULL, NULL, 6, N'#082')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1133, 126, 10.9, 50, CAST(N'2016-09-12T01:22:27.1824969' AS DateTime2), NULL, 96, N'Hai đầu của Doduo luôn thay nhau ngủ để đề phòng kẻ thù xung quanh.', 0, 1.4, 855, N'Doduo', N'#084', N'doduo', N'Pokémon Song Điểu', 70, NULL, NULL, 39.2, N'#085')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1134, 104, 14.3, 50, CAST(N'2016-09-12T01:22:27.2222722' AS DateTime2), NULL, 138, N'Seel thích sống và bơi trong môi trường lạnh. Chiếc sừng nhô ra ở đầu nó rất cứng và có thể xuyên thủng lớp băng dày.', 0, 1.1, 1107, N'Seel', N'#086', N'seel', N'Pokémon Sư Tử Biển', 130, NULL, NULL, 90, N'#087')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1135, 156, 28.7, 0, CAST(N'2016-09-12T01:22:27.2472570' AS DateTime2), NULL, 192, N'Dewgong thích ngủ trong môi trường băng lạnh. Thỉnh thoảng nó nằm trên những tảng băng trôi và từng bị nhìn nhầm là nàng tiên cá bởi các thủy thủ.', 1134, 1.7, 2145, N'Dewgong', N'#087', N'dewgong', N'Pokémon Sư Tử Biển', 180, NULL, NULL, 120, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1136, 120, 10.4, 50, CAST(N'2016-09-12T01:22:27.3034551' AS DateTime2), NULL, 112, N'Vỏ của Shellder cứng hơn cả kim cương, có thể chịu được mọi đòn tấn công. Vào ban đêm, nó dùng chiếc lưỡi để đào một hốc nhỏ trên bề mặt đáy biển để ngủ.', 0, 0.3, 822, N'Shellder', N'#090', N'shellder', N'Pokémon Vỏ Sò', 60, NULL, NULL, 4, N'#091')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1137, 196, 27.4, 0, CAST(N'2016-09-12T01:22:27.3304568' AS DateTime2), NULL, 196, N'Cloyster bơi bằng cách hút nước vào cơ thể rồi bơm ra ngoài theo các rãnh trên vỏ. Nó bắn các gai cũng bằng cơ chế này.', 1136, 1.5, 2052, N'Cloyster', N'#091', N'cloyster', N'Pokémon Vỏ Sò', 100, NULL, NULL, 132.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1138, 172, 18, 100, CAST(N'2016-09-12T01:22:27.3543592' AS DateTime2), NULL, 118, N'', 1048, 1.6, 1380, N'Haunter', N'#093', N'haunter', N'Pokémon Khí Độc', 90, NULL, NULL, 0.1, N'#094')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1139, 90, 10.9, 0, CAST(N'2016-09-12T01:22:27.3928986' AS DateTime2), NULL, 186, N'', 0, 8.8, 857, N'Onix', N'#095', N'onix', N'Pokémon', 70, NULL, NULL, 210, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1140, 104, 13.9, 50, CAST(N'2016-09-12T01:22:27.4108315' AS DateTime2), NULL, 140, N'', 0, 1, 1075, N'Drowzee', N'#096', N'drowzee', N'Pokémon', 120, NULL, NULL, 32.4, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1141, 162, 29.3, 0, CAST(N'2016-09-12T01:22:27.4287844' AS DateTime2), NULL, 196, N'', 0, 1.6, 2184, N'Hypno', N'#097', N'hypno', N'Pokémon', 170, NULL, NULL, 75.6, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1142, 116, 10, 50, CAST(N'2016-09-12T01:22:27.4478073' AS DateTime2), NULL, 110, N'', 0, 0.4, 792, N'Krabby', N'#098', N'krabby', N'Pokémon', 60, NULL, NULL, 6.5, N'#099')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1143, 102, 10.7, 50, CAST(N'2016-09-12T01:22:27.4894545' AS DateTime2), NULL, 124, N'', 0, 0.5, 839, N'Voltorb', N'#100', N'voltorb', N'Pokémon', 80, NULL, NULL, 10.4, N'#101')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1144, 110, 14.2, 50, CAST(N'2016-09-12T01:22:27.5290950' AS DateTime2), NULL, 132, N'', 0, 0.4, 1099, N'Exeggcute', N'#102', N'exeggcute', N'Pokémon', 120, NULL, NULL, 2.5, N'#103')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1145, 102, 13, 50, CAST(N'2016-09-12T01:22:27.5554694' AS DateTime2), NULL, 150, N'', 0, 0.4, 1006, N'Cubone', N'#104', N'cubone', N'Pokémon', 100, NULL, NULL, 6.5, N'#105')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1146, 126, 21.5, 0, CAST(N'2016-09-12T01:22:27.5939899' AS DateTime2), NULL, 160, N'', 0, 1.2, 1626, N'Lickitung', N'#108', N'lickitung', N'Pokémon', 180, NULL, NULL, 65.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1147, 176, 22.7, 0, CAST(N'2016-09-12T01:22:27.6785316' AS DateTime2), NULL, 150, N'', 1017, 1.2, 1713, N'Seadra', N'#117', N'seadra', N'Pokémon', 110, NULL, NULL, 25, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1148, 112, 12.4, 50, CAST(N'2016-09-12T01:22:27.6890477' AS DateTime2), NULL, 126, N'', 0, 0.6, 965, N'Goldeen', N'#118', N'goldeen', N'Pokémon', 90, NULL, NULL, 15, N'#119')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1149, 192, 36.4, 0, CAST(N'2016-09-12T01:22:27.7730258' AS DateTime2), NULL, 196, N'', 1064, 6.5, 2688, N'Gyarados', N'#130', N'gyarados', N'Pokémon', 190, NULL, NULL, 235, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1150, 186, 38.1, 0, CAST(N'2016-09-12T01:22:27.7943157' AS DateTime2), NULL, 168, N'', 1032, 1, 2816, N'Vaporeon', N'#134', N'vaporeon', N'Pokémon', 260, NULL, NULL, 29, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1151, 192, 28.6, 0, CAST(N'2016-09-12T01:22:27.8005864' AS DateTime2), NULL, 174, N'', 1032, 0.8, 2140, N'Jolteon', N'#135', N'jolteon', N'Pokémon', 130, NULL, NULL, 24.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1152, 238, 35.6, 0, CAST(N'2016-09-12T01:22:27.8055852' AS DateTime2), NULL, 178, N'', 1032, 0.9, 2643, N'Flareon', N'#136', N'flareon', N'Pokémon', 130, NULL, NULL, 25, N'')
SET IDENTITY_INSERT [dbo].[Characters] OFF
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (19, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Khu Dân Cư,Trường Học', NULL, NULL, 20)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (20, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Khu Dân Cư,Thành Phố,Khí Hậu Nóng,Khí Hậu Ẩm,Bãi Biển,Công Viên', NULL, NULL, 21)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (21, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Kênh,Hồ,Biển,Sông,Đầm Lầy,Cảng,Bể Nước', NULL, NULL, 22)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (22, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Khu Công Nghiệp,Khu Dân Cư,Trường Học,Đường,Khu Mua Sắm', NULL, NULL, 23)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (23, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Công Viên,Khu Nông Nghiệp,Rừng,Đường,Vườn,Sân Gôn,Bãi Cỏ,Khu Bảo Tồn Thiên Nhiên', NULL, NULL, 24)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (24, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Gần Nước,Khí Hậu Lạnh, Đồng Cỏ', NULL, NULL, 25)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (25, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Gym,Sân Vận Động,Khu Giải Trí', NULL, NULL, 26)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (26, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Khu Công Nghiệp,Hồ,Đầm Lầy', NULL, NULL, 27)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (27, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Công Viên,Mỏ,Khu Nông Nghiệp,Sân Gôn', NULL, NULL, 28)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (28, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Khu Công Nghiệp,Rừng,Bãi Cỏ,Khu Bảo Tồn Thiên Nhiên,Khu Giải Trí,Công Viên,Vườn', NULL, NULL, 29)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (29, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'Trừ Mew và Mewtwo chỉ xuất hiện trong các sự kiện đặc biệt', N'Khu Dân Cư(Đêm),Bệnh Viện,Bãi Cỏ', NULL, NULL, 30)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (30, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Công Viên,Khu Nông Nghiệp,Rừng,Vườn, Sân Gôn,Bãi Cỏ,Khu Bảo Tồn Thiên Nhiên', NULL, NULL, 31)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (31, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Mỏ,Khu Nông Nghiệp,Thành Phố,Đường,Khu Bảo Tồn Thiên Nhiên', NULL, NULL, 32)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (32, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Nhà Thờ,Khu Dân Cư(Đêm),Nghĩa Trang', NULL, NULL, 33)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (33, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Sân Gôn,Địa Danh,Khu Du Lịch', NULL, NULL, 34)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (34, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'Chưa xác định', N'', NULL, NULL, 35)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (35, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Toà Nhà,Đường', NULL, NULL, 36)
INSERT [dbo].[Locations] ([Id], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [LocationType]) VALUES (36, CAST(N'2016-09-12T00:43:56.7631474' AS DateTime2), NULL, N'', N'Nhà Thờ,Địa Danh,Khu Du Lịch,Nghĩa Trang', NULL, NULL, 37)
SET IDENTITY_INSERT [dbo].[Locations] OFF
SET IDENTITY_INSERT [dbo].[Moves] ON 

INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (1, 1.56, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 32.05, -50, N'Body Slam', 50, NULL, NULL, 40.06, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (2, 2.9, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.62, -25, N'Bubble Beam', 25, NULL, NULL, 10.78, 39, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (3, 2.9, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.62, -25, N'Aerial Ace', 25, NULL, NULL, 10.78, 39, 29)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (4, 1.15, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.7, 10, N'Peck', 10, NULL, NULL, 10.87, 38, 29)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (5, 4, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.75, -33, N'Scald', 35, NULL, NULL, 10.94, 39, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (6, 1.36, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.82, 7, N'Rock Throw', 12, NULL, NULL, 11.03, 38, 32)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (7, 3.4, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.82, -25, N'Bulldoze', 30, NULL, NULL, 11.03, 39, 28)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (8, 1.695, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.85, -20, N'Struggle', 15, NULL, NULL, 11.06, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (9, 2.8, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.93, -25, N'Magnet Bomb', 25, NULL, NULL, 11.16, 39, 36)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (10, 2.2, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 9.09, -25, N'Horn Attack', 20, NULL, NULL, 11.36, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (11, 3.3, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 9.09, -25, N'Water Pulse', 30, NULL, NULL, 11.36, 39, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (12, 3.8, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 9.21, -25, N'Psybeam', 35, NULL, NULL, 11.51, 39, 30)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (13, 2.7, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.25, 9.26, -25, N'Night Slash', 25, NULL, NULL, 11.57, 39, 35)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (14, 1.05, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 9.52, 7, N'Acid', 10, NULL, NULL, 11.9, 38, 27)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (15, 1.05, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 9.52, 7, N'Ember', 10, NULL, NULL, 11.9, 38, 21)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (16, 2.1, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 9.52, -25, N'Shadow Punch', 20, NULL, NULL, 11.9, 39, 33)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (17, 2.6, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 9.62, -25, N'Mud Bomb', 25, NULL, NULL, 12.02, 39, 28)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (18, 2.6, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 9.62, -25, N'Sludge', 25, NULL, NULL, 12.02, 39, 27)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (19, 3.6, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 9.72, -33, N'Giga Drain', 35, NULL, NULL, 12.15, 39, 24)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (20, 0.7, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 10, 4, N'Spark', 7, NULL, NULL, 12.5, 38, 23)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (21, 0.7, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 10, 4, N'Sucker Punch', 7, NULL, NULL, 12.5, 38, 35)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (22, 1.45, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 10.34, 7, N'Razor Leaf', 15, NULL, NULL, 12.93, 38, 24)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (23, 0.575, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 10.43, 4, N'Poison Sting', 6, NULL, NULL, 13.04, 38, 27)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (24, 1.13, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 10.62, 7, N'Cut', 12, NULL, NULL, 13.27, 38, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (25, 4.2, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 10.71, -33, N'Dazzling Gleam', 45, NULL, NULL, 13.39, 39, 37)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (26, 1.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 10.91, 7, N'Tackle', 12, NULL, NULL, 13.64, 38, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (27, 2.25, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 11.11, -25, N'Low Sweep', 25, NULL, NULL, 13.89, 39, 26)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (28, 2.7, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 11.11, -33, N'Drill Peck', 30, NULL, NULL, 13.89, 39, 29)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (29, 1.33, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 11.28, 4, N'Steel Wing', 15, NULL, NULL, 14.1, 38, 36)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (30, 3.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 11.29, -33, N'Rest', 35, NULL, NULL, 14.11, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (31, 3.6, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.33, -25, N'Ancient Power', 30, NULL, NULL, 10.42, 39, 32)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (32, 2.4, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.33, -25, N'Brine', 20, NULL, NULL, 10.42, 39, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (33, 3, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.33, -25, N'Swift', 25, NULL, NULL, 10.42, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (34, 0.6, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.33, 7, N'Thunder Shock', 5, NULL, NULL, 10.42, 38, 23)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (35, 3.8, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 3.95, -20, N'Icy Wind', 15, NULL, NULL, 4.93, 39, 25)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (36, 3.7, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 4.05, -20, N'Wrap Pink', 15, NULL, NULL, 5.07, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (37, 3.7, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 4.05, -20, N'Wrap Green', 15, NULL, NULL, 5.07, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (38, 1.35, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 4.44, 9, N'Mud Slap', 6, NULL, NULL, 5.56, 38, 28)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (39, 3.2, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 4.69, -20, N'Mega Drain', 15, NULL, NULL, 5.86, 39, 24)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (40, 3.1, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 4.84, -20, N'Shadow Sneak', 15, NULL, NULL, 6.05, 39, 33)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (41, 3.9, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 5.13, -20, N'Disarming Voice', 20, NULL, NULL, 6.41, 39, 37)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (42, 2.8, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 5.36, -20, N'Draining Kiss', 15, NULL, NULL, 6.7, 39, 37)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (43, 2.7, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 5.56, -20, N'Twister', 15, NULL, NULL, 6.94, 39, 34)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (44, 2.4, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 6.25, -20, N'Poison Fang', 15, NULL, NULL, 7.81, 39, 27)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (45, 2.35, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 6.38, -20, N'Aqua Jet', 15, NULL, NULL, 7.98, 39, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (46, 3.1, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 6.45, -20, N'Flame Charge', 20, NULL, NULL, 8.06, 39, 21)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (47, 2.3, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 6.52, 15, N'Bubble', 15, NULL, NULL, 8.15, 38, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (48, 2.1, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.14, -20, N'Parabolic Charge', 15, NULL, NULL, 8.93, 39, 23)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (49, 3.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 11.29, -33, N'Signal Beam', 35, NULL, NULL, 14.11, 39, 31)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (50, 2.1, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.14, -20, N'Vice Grip', 15, NULL, NULL, 8.93, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (51, 3.4, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.25, 7.35, -25, N'Rock Tomb', 25, NULL, NULL, 9.19, 39, 32)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (52, 0.8, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.5, 7, N'Karate Chop', 6, NULL, NULL, 9.38, 38, 26)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (53, 0.4, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.5, 12, N'Fury Cutter', 3, NULL, NULL, 9.38, 38, 31)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (54, 1.33, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.52, 7, N'Quick Attack', 10, NULL, NULL, 9.4, 38, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (55, 3.3, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.25, 7.58, -25, N'Air Cutter', 25, NULL, NULL, 9.47, 39, 29)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (56, 4.6, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.61, -25, N'Flame Wheel', 35, NULL, NULL, 9.51, 39, 21)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (57, 5.8, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.76, -33, N'Dig', 45, NULL, NULL, 9.7, 39, 28)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (58, 2.55, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.84, -25, N'Heart Stamp', 20, NULL, NULL, 9.8, 39, 30)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (59, 1.51, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.95, 7, N'Confusion', 12, NULL, NULL, 9.93, 38, 30)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (60, 3.1, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.06, -25, N'Ominous Wind', 25, NULL, NULL, 10.08, 39, 33)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (61, 1.23, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.13, 7, N'Splash', 10, NULL, NULL, 10.16, 38, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (62, 0.84, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.33, 4, N'Fire Fang', 7, NULL, NULL, 10.42, 38, 21)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (63, 1.2, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.33, 7, N'Bullet Punch', 10, NULL, NULL, 10.42, 38, 36)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (64, 0.6, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 8.33, 7, N'Low Kick', 5, NULL, NULL, 10.42, 38, 26)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (65, 1.4, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 7.14, 7, N'Ice Shard', 10, NULL, NULL, 8.93, 38, 25)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (66, 1.04, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 11.54, 7, N'Feint Attack', 12, NULL, NULL, 14.42, 38, 35)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (67, 4.25, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 11.76, -50, N'Bug Buzz', 50, NULL, NULL, 14.71, 39, 31)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (68, 3.4, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.25, 11.76, -33, N'Drill Run', 40, NULL, NULL, 14.71, 39, 28)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (69, 3.8, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 15.79, -100, N'Hydro Pump', 60, NULL, NULL, 19.74, 39, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (70, 3.8, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 15.79, -100, N'Heat Wave', 60, NULL, NULL, 19.74, 39, 21)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (71, 0.75, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 16, 7, N'Wing Attack', 12, NULL, NULL, 20, 38, 29)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (72, 2.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 16, -33, N'Discharge', 40, NULL, NULL, 20, 39, 23)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (73, 2.8, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.25, 16.07, -50, N'Leaf Blade', 45, NULL, NULL, 20.09, 39, 24)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (74, 2.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 16.67, -33, N'Hyper Fang', 35, NULL, NULL, 20.83, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (75, 2.4, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 16.67, -33, N'Thunder Punch', 40, NULL, NULL, 20.83, 39, 23)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (76, 0.95, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 16.84, 7, N'Shadow Claw', 16, NULL, NULL, 21.05, 38, 33)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (77, 3.2, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 17.19, -100, N'Megahorn', 55, NULL, NULL, 21.48, 39, 31)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (78, 2.9, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 17.24, -50, N'Play Rough', 50, NULL, NULL, 21.55, 39, 37)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (79, 2.9, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 17.24, -50, N'Flamethrower', 50, NULL, NULL, 21.55, 39, 21)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (80, 3.4, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 17.65, -100, N'Sludge Wave', 60, NULL, NULL, 22.06, 39, 27)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (81, 3.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.5, 17.74, -100, N'Stone Edge', 55, NULL, NULL, 22.18, 39, 32)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (82, 2.8, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 17.86, -50, N'Psychic', 50, NULL, NULL, 22.32, 39, 30)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (83, 3.2, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 15.63, -50, N'Petal Blizzard', 50, NULL, NULL, 19.53, 39, 24)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (84, 2.7, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 18.52, -50, N'Thunderbolt', 50, NULL, NULL, 23.15, 39, 23)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (85, 3.2, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 18.75, -100, N'Hurricane', 60, NULL, NULL, 23.44, 39, 29)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (86, 0.63, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 19.05, 7, N'Metal Claw', 12, NULL, NULL, 23.81, 38, 36)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (87, 2.6, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 19.23, -50, N'Sludge Bomb', 50, NULL, NULL, 24.04, 39, 27)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (88, 0.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 20, 7, N'Water Gun', 10, NULL, NULL, 25, 38, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (89, 0.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 20, 7, N'Scratch', 10, NULL, NULL, 25, 38, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (90, 0.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 20, 7, N'Lick', 10, NULL, NULL, 25, 38, 33)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (91, 3, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 20, -100, N'Gunk Shot', 60, NULL, NULL, 25, 39, 27)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (92, 2, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 20, -33, N'Iron Head', 40, NULL, NULL, 25, 39, 36)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (93, 2.35, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 21.28, -50, N'Aqua Tail', 50, NULL, NULL, 26.6, 39, 22)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (94, 2.8, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.25, 21.43, -100, N'Power Whip', 60, NULL, NULL, 26.79, 39, 24)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (95, 0.55, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 21.82, 7, N'Mud Shot', 12, NULL, NULL, 27.27, 38, 28)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (96, 0.57, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 26.32, 7, N'Psycho Cut', 15, NULL, NULL, 32.89, 38, 30)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (97, 1.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.25, 26.67, -50, N'Dragon Claw', 40, NULL, NULL, 33.33, 39, 34)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (98, 2, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.25, 27.5, -100, N'Cross Chop', 55, NULL, NULL, 34.38, 39, 26)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (99, 1.6, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.25, 18.75, -33, N'Brick Break', 30, NULL, NULL, 23.44, 39, 26)
GO
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (100, 4, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 3.75, -20, N'Wrap', 15, NULL, NULL, 4.69, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (101, 3.9, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 15.38, -100, N'Blizzard', 60, NULL, NULL, 19.23, 39, 25)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (102, 4.3, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 15.12, -100, N'Thunder', 65, NULL, NULL, 18.9, 39, 23)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (103, 2.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 11.9, -25, N'Stomp', 25, NULL, NULL, 14.88, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (104, 2.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 11.9, -25, N'Flame Burst', 25, NULL, NULL, 14.88, 39, 21)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (105, 0.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 12, 7, N'Dragon Breath', 6, NULL, NULL, 15, 38, 34)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (106, 0.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 12, 7, N'Bite', 6, NULL, NULL, 15, 38, 35)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (107, 2.8, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 12.5, -33, N'Fire Punch', 35, NULL, NULL, 15.63, 39, 21)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (108, 1.6, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 12.5, -25, N'Bone Club', 20, NULL, NULL, 15.63, 39, 28)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (109, 3.2, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 12.5, -33, N'Rock Slide', 40, NULL, NULL, 15.63, 39, 32)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (110, 2.4, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 12.5, -33, N'Seed Bomb', 30, NULL, NULL, 15.63, 39, 24)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (111, 3.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 12.86, -33, N'Ice Punch', 45, NULL, NULL, 16.07, 39, 25)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (112, 3.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 12.86, -33, N'Dark Pulse', 45, NULL, NULL, 16.07, 39, 35)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (113, 3.08, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 12.99, -33, N'Shadow Ball', 40, NULL, NULL, 16.23, 39, 33)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (114, 4.9, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 13.27, -100, N'Solar Beam', 65, NULL, NULL, 16.58, 39, 24)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (115, 0.45, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 13.33, 7, N'Bug Bite', 6, NULL, NULL, 16.67, 38, 31)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (116, 1.5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.25, 13.33, -25, N'Cross Poison', 20, NULL, NULL, 16.67, 39, 27)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (117, 0.65, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 15.38, 7, N'Vine Whip', 10, NULL, NULL, 19.23, 38, 24)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (118, 3.65, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 13.7, -50, N'Ice Beam', 50, NULL, NULL, 17.12, 39, 25)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (119, 2.9, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 13.79, -33, N'Power Gem', 40, NULL, NULL, 17.24, 39, 32)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (120, 3.6, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 13.89, -50, N'Dragon Pulse', 50, NULL, NULL, 17.36, 39, 34)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (121, 5, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14, -100, N'Hyper Beam', 70, NULL, NULL, 17.5, 39, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (122, 3.9, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.1, -33, N'Flash Cannon', 55, NULL, NULL, 17.63, 39, 36)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (123, 1.05, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.29, 4, N'Zen Headbutt', 15, NULL, NULL, 17.86, 38, 30)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (124, 1.05, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.29, 7, N'Poison Jab', 15, NULL, NULL, 17.86, 38, 27)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (125, 2.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.29, -33, N'X Scissor', 30, NULL, NULL, 17.86, 39, 31)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (126, 2.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.29, -33, N'Submission', 30, NULL, NULL, 17.86, 39, 26)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (127, 4.2, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.29, -100, N'Earthquake', 60, NULL, NULL, 17.86, 39, 28)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (128, 4.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.63, -100, N'Fire Blast', 60, NULL, NULL, 18.29, 39, 21)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (129, 4.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.63, -100, N'Moonblast', 60, NULL, NULL, 18.29, 39, 37)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (130, 0.54, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.81, 7, N'Pound', 8, NULL, NULL, 18.52, 38, 20)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (131, 0.81, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.81, 7, N'Frost Breath', 12, NULL, NULL, 18.52, 38, 25)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (132, 2.7, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 14.81, -33, N'Psyshock', 40, NULL, NULL, 18.52, 39, 30)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (133, 5.1, CAST(N'2016-09-12T00:55:09.6170473' AS DateTime2), NULL, 0.05, 13.73, -100, N'Psystrike', 70, NULL, NULL, 17.16, 39, 30)
INSERT [dbo].[Moves] ([Id], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [UpdatedDate], [UpdatedUserId], [WithSTAB], [MoveCategoryId], [MoveType]) VALUES (134, 1.41, CAST(N'2016-09-12T00:55:09.6180476' AS DateTime2), NULL, 0.05, 3.55, 7, N'Rock Smash', 5, NULL, NULL, 4.43, 38, 26)
SET IDENTITY_INSERT [dbo].[Moves] OFF
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1004, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1024, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1029, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1030, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1032, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1033, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1038, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1043, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1045, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1046, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1047, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1059, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1080, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1081, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1082, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1083, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1084, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1085, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1102, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1110, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1133, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1146, 19)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1009, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1011, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1012, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1013, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1055, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1069, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1070, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1100, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1101, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1115, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1129, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1152, 20)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1010, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1016, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1017, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1019, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1027, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1028, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1041, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1051, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1056, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1057, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1061, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1064, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1065, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1071, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1072, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1073, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1111, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1112, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1116, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1117, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1125, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1130, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1131, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1134, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1135, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1136, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1137, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1142, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1147, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1148, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1149, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1150, 21)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1036, 22)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1037, 22)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1039, 22)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1060, 22)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1088, 22)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1089, 22)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1132, 22)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1143, 22)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1151, 22)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1002, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1005, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1006, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1008, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1049, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1066, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1067, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1068, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1104, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1105, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1106, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1123, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1124, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1144, 23)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1021, 24)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1058, 24)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1061, 24)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1135, 24)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1137, 24)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1052, 25)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1053, 25)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1054, 25)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1113, 25)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1114, 25)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1117, 25)
GO
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1121, 25)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1122, 25)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1003, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1006, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1008, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1015, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1023, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1027, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1034, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1035, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1048, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1050, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1062, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1066, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1067, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1068, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1077, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1078, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1079, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1086, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1087, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1092, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1093, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1094, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1095, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1096, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1097, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1103, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1104, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1105, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1107, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1123, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1124, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1125, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1138, 26)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1040, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1042, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1063, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1090, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1091, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1094, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1097, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1108, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1109, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1126, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1127, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1128, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1139, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1145, 27)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1009, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1014, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1015, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1020, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1021, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1026, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1029, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1036, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1059, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1070, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1076, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1080, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1081, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1082, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1084, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1085, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1103, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1133, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1149, 28)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1005, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1007, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1025, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1044, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1051, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1058, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1118, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1119, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1120, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1130, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1131, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1140, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1141, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1144, 29)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1022, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1023, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1026, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1049, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1074, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1075, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1076, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1077, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1078, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1079, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1106, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1107, 30)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1010, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1016, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1019, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1020, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1040, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1042, 31)
GO
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1065, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1126, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1127, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1128, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1139, 31)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1035, 32)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1048, 32)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1138, 32)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1014, 33)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1018, 33)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1031, 33)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1060, 35)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1132, 35)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1044, 36)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1045, 36)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1098, 36)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1099, 36)
INSERT [dbo].[PokemonLocation] ([CharacterId], [LocationId]) VALUES (1102, 36)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1028, 4)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1084, 4)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1085, 4)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1095, 4)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1133, 4)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1148, 4)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1019, 6)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1126, 6)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1127, 6)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1128, 6)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1139, 6)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1003, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1006, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1008, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1034, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1050, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1062, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1086, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1087, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1104, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1105, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1123, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1124, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1125, 14)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1009, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1011, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1012, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1013, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1069, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1070, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1100, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1101, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1115, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1129, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1152, 15)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1037, 20)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1060, 20)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1089, 20)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1132, 20)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1143, 20)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1035, 21)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1048, 21)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1109, 21)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1006, 22)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1008, 22)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1067, 22)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1068, 22)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1104, 22)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1105, 22)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1124, 22)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1027, 23)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1077, 23)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1078, 23)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1086, 23)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1092, 23)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1093, 23)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1095, 23)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1096, 23)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1059, 24)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1003, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1004, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1011, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1032, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1037, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1043, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1062, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1066, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1071, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1074, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1075, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1080, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1083, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1126, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1136, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1139, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1143, 26)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1014, 29)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1020, 29)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1026, 29)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1029, 29)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1081, 29)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1082, 29)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1085, 29)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1036, 34)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1039, 34)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1060, 34)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1088, 34)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1089, 34)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1132, 34)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1151, 34)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1038, 38)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1040, 38)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1042, 38)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1050, 38)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1063, 38)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1145, 38)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1017, 47)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1027, 47)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1057, 47)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1071, 47)
GO
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1116, 47)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1117, 47)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1142, 47)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1013, 52)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1052, 52)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1113, 52)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1114, 52)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1121, 52)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1122, 52)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1016, 53)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1022, 53)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1026, 53)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1049, 53)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1059, 53)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1097, 53)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1004, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1032, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1033, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1051, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1056, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1080, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1083, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1084, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1088, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1100, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1103, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1133, 54)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1005, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1023, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1025, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1044, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1076, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1107, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1112, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1119, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1120, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1130, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1131, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1140, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1141, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1144, 59)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1064, 61)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1055, 62)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1052, 63)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1053, 63)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1038, 64)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1039, 64)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1054, 64)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1114, 64)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1121, 64)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1122, 64)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1129, 64)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1061, 65)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1134, 65)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1135, 65)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1136, 65)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1137, 65)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1029, 66)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1045, 66)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1047, 66)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1101, 66)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1102, 66)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1015, 71)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1070, 71)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1081, 71)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1082, 71)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1035, 76)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1138, 76)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1041, 86)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1091, 86)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1017, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1019, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1051, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1056, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1065, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1072, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1073, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1111, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1112, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1130, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1131, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1134, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1147, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1150, 88)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1010, 89)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1012, 89)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1047, 89)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1069, 89)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1090, 89)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1106, 89)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1108, 89)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1110, 89)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1113, 89)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1030, 90)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1048, 90)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1138, 90)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1146, 90)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1010, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1016, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1041, 95)
GO
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1057, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1065, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1090, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1091, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1108, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1109, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1116, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1117, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1127, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1128, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1142, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1148, 95)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1025, 96)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1119, 96)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1120, 96)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1014, 105)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1018, 105)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1031, 105)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1147, 105)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1149, 105)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1015, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1020, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1033, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1055, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1072, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1073, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1087, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1092, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1093, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1094, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1103, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1110, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1115, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1149, 106)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1023, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1049, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1074, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1075, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1076, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1077, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1078, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1079, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1106, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1107, 115)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1002, 117)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1066, 117)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1067, 117)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1068, 117)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1123, 117)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1005, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1030, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1043, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1044, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1046, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1098, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1099, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1111, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1118, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1141, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1146, 123)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1028, 124)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1034, 124)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1079, 124)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1094, 124)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1096, 124)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1097, 124)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1125, 124)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1007, 130)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1024, 130)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1045, 130)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1046, 130)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1058, 130)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1098, 130)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1099, 130)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1102, 130)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1140, 130)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1021, 131)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1058, 131)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1061, 131)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1135, 131)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1137, 131)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1022, 134)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1040, 134)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1042, 134)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1053, 134)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1054, 134)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1063, 134)
INSERT [dbo].[PokemonMove] ([CharacterId], [MoveId]) VALUES (1145, 134)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1030, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1032, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1045, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1083, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1092, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1095, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1098, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1100, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1110, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1115, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1116, 1)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1017, 2)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1027, 2)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1056, 2)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1057, 2)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1116, 2)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1136, 2)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1142, 2)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1029, 3)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1059, 3)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1079, 3)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1080, 3)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1081, 3)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1082, 3)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1084, 3)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1085, 3)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1133, 3)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1057, 5)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1042, 7)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1055, 7)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1091, 7)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1145, 7)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1024, 8)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1064, 8)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1074, 8)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1075, 8)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1077, 8)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1078, 8)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1060, 9)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1132, 9)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1042, 10)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1043, 10)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1095, 10)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1096, 10)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1148, 10)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1016, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1027, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1041, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1071, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1130, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1131, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1136, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1142, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1148, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1150, 11)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1004, 12)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1044, 12)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1046, 12)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1051, 12)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1107, 12)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1111, 12)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1119, 12)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1140, 12)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1026, 13)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1047, 13)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1110, 13)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1114, 13)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1050, 17)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1057, 17)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1108, 17)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1109, 17)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1116, 17)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1050, 18)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1062, 18)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1046, 25)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1099, 25)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1102, 25)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1107, 25)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1119, 25)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1120, 25)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1054, 27)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1113, 27)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1114, 27)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1121, 27)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1029, 28)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1084, 28)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1133, 28)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1010, 31)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1016, 31)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1019, 31)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1020, 31)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1065, 31)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1128, 31)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1144, 31)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1065, 32)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1032, 33)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1056, 33)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1133, 33)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1021, 35)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1028, 35)
GO
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1134, 35)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1135, 35)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1136, 35)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1137, 35)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1045, 41)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1098, 41)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1058, 42)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1031, 43)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1080, 43)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1081, 43)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1084, 43)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1085, 43)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1149, 43)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1015, 44)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1023, 44)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1092, 44)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1093, 44)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1103, 44)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1010, 45)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1071, 45)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1072, 45)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1134, 45)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1135, 45)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1011, 46)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1069, 46)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1100, 46)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1004, 49)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1076, 49)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1118, 49)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1143, 49)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1022, 50)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1041, 50)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1142, 50)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1010, 51)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1065, 51)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1090, 51)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1091, 51)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1108, 51)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1126, 51)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1015, 55)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1029, 55)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1059, 55)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1080, 55)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1081, 55)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1082, 55)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1103, 55)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1011, 56)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1115, 56)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1032, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1033, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1063, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1083, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1090, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1093, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1096, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1108, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1126, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1127, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1145, 57)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1015, 60)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1048, 60)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1023, 67)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1026, 67)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1076, 67)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1028, 68)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1085, 68)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1129, 68)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1019, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1051, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1072, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1073, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1112, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1117, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1125, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1137, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1147, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1149, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1150, 69)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1009, 70)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1101, 70)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1129, 70)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1152, 70)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1004, 72)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1036, 72)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1037, 72)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1060, 72)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1088, 72)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1132, 72)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1143, 72)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1151, 72)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1006, 73)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1059, 73)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1033, 74)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1083, 74)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1039, 75)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1053, 75)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1089, 75)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1028, 77)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1040, 77)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1097, 77)
GO
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1045, 78)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1047, 78)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1102, 78)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1009, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1012, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1013, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1055, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1069, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1070, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1100, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1101, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1115, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1152, 79)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1034, 80)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1035, 80)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1087, 80)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1094, 80)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1097, 80)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1125, 80)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1016, 81)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1040, 81)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1052, 81)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1054, 81)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1094, 81)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1109, 81)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1127, 81)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1128, 81)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1139, 81)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1005, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1007, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1023, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1025, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1044, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1046, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1076, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1099, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1112, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1120, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1130, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1131, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1140, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1141, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1144, 82)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1008, 83)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1068, 83)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1105, 83)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1036, 84)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1037, 84)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1039, 84)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1088, 84)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1132, 84)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1143, 84)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1151, 84)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1007, 85)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1082, 85)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1002, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1003, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1006, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1048, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1050, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1062, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1066, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1067, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1068, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1079, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1086, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1092, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1093, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1095, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1096, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1103, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1104, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1105, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1123, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1124, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1138, 87)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1034, 91)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1086, 91)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1087, 91)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1020, 92)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1043, 92)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1139, 92)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1018, 93)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1031, 93)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1071, 93)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1111, 93)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1134, 93)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1148, 93)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1150, 93)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1002, 94)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1066, 94)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1067, 94)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1123, 94)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1124, 94)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1146, 94)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1014, 97)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1070, 97)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1052, 98)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1111, 98)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1113, 98)
GO
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1114, 98)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1121, 98)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1122, 98)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1038, 99)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1053, 99)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1089, 99)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1113, 99)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1121, 99)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1122, 99)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1018, 100)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1027, 100)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1031, 100)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1086, 100)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1123, 100)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1021, 101)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1061, 101)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1125, 101)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1135, 101)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1137, 101)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1147, 101)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1007, 102)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1036, 102)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1039, 102)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1088, 102)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1089, 102)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1151, 102)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1038, 103)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1042, 103)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1054, 103)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1146, 103)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1012, 104)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1069, 104)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1012, 107)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1013, 107)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1053, 107)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1063, 108)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1145, 108)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1019, 109)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1090, 109)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1126, 109)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1127, 109)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1139, 109)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1005, 110)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1066, 110)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1104, 110)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1106, 110)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1124, 110)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1144, 110)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1053, 111)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1058, 111)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1117, 111)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1003, 112)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1034, 112)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1035, 112)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1048, 112)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1062, 112)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1087, 112)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1110, 112)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1138, 112)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1003, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1025, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1035, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1044, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1107, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1118, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1119, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1120, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1138, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1141, 113)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1002, 114)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1005, 114)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1006, 114)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1007, 114)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1008, 114)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1049, 114)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1067, 114)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1068, 114)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1049, 116)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1106, 116)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1021, 118)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1061, 118)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1072, 118)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1073, 118)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1112, 118)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1131, 118)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1047, 119)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1051, 119)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1056, 119)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1007, 120)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1014, 120)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1017, 120)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1018, 120)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1061, 120)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1147, 120)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1149, 120)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1007, 121)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1014, 121)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1020, 121)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1025, 121)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1030, 121)
GO
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1033, 121)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1037, 121)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1102, 121)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1146, 121)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1017, 122)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1060, 122)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1073, 122)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1022, 125)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1026, 125)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1041, 125)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1049, 125)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1079, 125)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1106, 125)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1022, 126)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1052, 126)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1117, 126)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1122, 126)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1007, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1030, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1038, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1040, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1043, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1063, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1091, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1094, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1097, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1109, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1128, 127)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1007, 128)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1009, 128)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1011, 128)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1013, 128)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1055, 128)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1070, 128)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1101, 128)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1129, 128)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1152, 128)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1007, 129)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1008, 129)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1098, 129)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1099, 129)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1104, 129)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1105, 129)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1058, 132)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1118, 132)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1130, 132)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1140, 132)
INSERT [dbo].[PokemonSpecialMove] ([CharacterId], [MoveId]) VALUES (1141, 132)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1004, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1024, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1029, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1030, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1032, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1033, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1038, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1043, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1045, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1046, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1047, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1059, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1080, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1081, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1082, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1083, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1084, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1085, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1102, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1110, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1133, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1146, 20)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1009, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1011, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1012, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1013, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1055, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1069, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1070, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1100, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1101, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1115, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1129, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1152, 21)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1010, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1016, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1017, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1019, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1027, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1028, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1041, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1051, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1056, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1057, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1061, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1064, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1065, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1071, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1072, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1073, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1111, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1112, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1116, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1117, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1125, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1130, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1131, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1134, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1135, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1136, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1137, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1142, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1147, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1148, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1149, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1150, 22)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1036, 23)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1037, 23)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1039, 23)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1060, 23)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1088, 23)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1089, 23)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1132, 23)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1143, 23)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1151, 23)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1002, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1005, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1006, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1008, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1049, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1066, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1067, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1068, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1104, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1105, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1106, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1123, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1124, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1144, 24)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1021, 25)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1058, 25)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1061, 25)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1135, 25)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1137, 25)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1052, 26)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1053, 26)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1054, 26)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1113, 26)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1114, 26)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1117, 26)
GO
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1121, 26)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1122, 26)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1003, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1006, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1008, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1015, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1023, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1027, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1034, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1035, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1048, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1050, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1062, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1066, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1067, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1068, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1077, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1078, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1079, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1086, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1087, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1092, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1093, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1094, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1095, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1096, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1097, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1103, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1104, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1105, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1107, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1123, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1124, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1125, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1138, 27)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1040, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1042, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1063, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1090, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1091, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1094, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1097, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1108, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1109, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1126, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1127, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1128, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1139, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1145, 28)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1009, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1014, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1015, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1020, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1021, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1026, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1029, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1036, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1059, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1070, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1076, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1080, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1081, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1082, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1084, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1085, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1103, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1133, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1149, 29)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1005, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1007, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1025, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1044, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1051, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1058, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1118, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1119, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1120, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1130, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1131, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1140, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1141, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1144, 30)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1022, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1023, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1026, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1049, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1074, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1075, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1076, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1077, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1078, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1079, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1106, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1107, 31)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1010, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1016, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1019, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1020, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1040, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1042, 32)
GO
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1065, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1126, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1127, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1128, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1139, 32)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1035, 33)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1048, 33)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1138, 33)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1014, 34)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1018, 34)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1031, 34)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1060, 36)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1132, 36)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1044, 37)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1045, 37)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1098, 37)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1099, 37)
INSERT [dbo].[Type] ([CharacterId], [TypeId]) VALUES (1102, 37)
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Archives_BelongToUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Archives_BelongToUserId] ON [dbo].[Archives]
(
	[BelongToUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Archives_ContentId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Archives_ContentId] ON [dbo].[Archives]
(
	[ContentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Archives_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Archives_CreatedUserId] ON [dbo].[Archives]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Archives_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Archives_UpdatedUserId] ON [dbo].[Archives]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_UserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_BlockedIps_BlockByUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_BlockedIps_BlockByUserId] ON [dbo].[BlockedIps]
(
	[BlockByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BlockedIps_BlockedIpId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_BlockedIps_BlockedIpId] ON [dbo].[BlockedIps]
(
	[BlockedIpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_BlockedIps_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_BlockedIps_CreatedUserId] ON [dbo].[BlockedIps]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_BlockedIps_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_BlockedIps_UpdatedUserId] ON [dbo].[BlockedIps]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_BlockedIps_UserBlockedId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_BlockedIps_UserBlockedId] ON [dbo].[BlockedIps]
(
	[UserBlockedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Categories_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Categories_CreatedUserId] ON [dbo].[Categories]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Categories_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Categories_UpdatedUserId] ON [dbo].[Categories]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CharacterInfoGroups_CharacterId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterInfoGroups_CharacterId] ON [dbo].[CharacterInfoGroups]
(
	[CharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CharacterInfoGroups_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterInfoGroups_CreatedUserId] ON [dbo].[CharacterInfoGroups]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CharacterInfoGroups_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterInfoGroups_UpdatedUserId] ON [dbo].[CharacterInfoGroups]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CharacterInfos_CharacterId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterInfos_CharacterId] ON [dbo].[CharacterInfos]
(
	[CharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CharacterInfos_CharacterInfoGroupId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterInfos_CharacterInfoGroupId] ON [dbo].[CharacterInfos]
(
	[CharacterInfoGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CharacterInfos_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterInfos_CreatedUserId] ON [dbo].[CharacterInfos]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CharacterInfos_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterInfos_UpdatedUserId] ON [dbo].[CharacterInfos]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Characters_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Characters_CreatedUserId] ON [dbo].[Characters]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Characters_EvolveFromId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Characters_EvolveFromId] ON [dbo].[Characters]
(
	[EvolveFromId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Characters_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Characters_UpdatedUserId] ON [dbo].[Characters]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CharacterSectionGroups_CharacterId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterSectionGroups_CharacterId] ON [dbo].[CharacterSectionGroups]
(
	[CharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CharacterSectionGroups_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterSectionGroups_CreatedUserId] ON [dbo].[CharacterSectionGroups]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CharacterSectionGroups_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterSectionGroups_UpdatedUserId] ON [dbo].[CharacterSectionGroups]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CharacterSections_CharacterId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterSections_CharacterId] ON [dbo].[CharacterSections]
(
	[CharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CharacterSections_CharacterSectionGroupId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterSections_CharacterSectionGroupId] ON [dbo].[CharacterSections]
(
	[CharacterSectionGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CharacterSections_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterSections_CreatedUserId] ON [dbo].[CharacterSections]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CharacterSections_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterSections_UpdatedUserId] ON [dbo].[CharacterSections]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_FileArchives_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_FileArchives_CreatedUserId] ON [dbo].[FileArchives]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_FileArchives_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_FileArchives_UpdatedUserId] ON [dbo].[FileArchives]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_FileArchives_UploadedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_FileArchives_UploadedUserId] ON [dbo].[FileArchives]
(
	[UploadedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InfoValues_CharacterInfoId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_InfoValues_CharacterInfoId] ON [dbo].[InfoValues]
(
	[CharacterInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_InfoValues_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_InfoValues_CreatedUserId] ON [dbo].[InfoValues]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_InfoValues_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_InfoValues_UpdatedUserId] ON [dbo].[InfoValues]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Locations_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Locations_CreatedUserId] ON [dbo].[Locations]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Locations_LocationType]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Locations_LocationType] ON [dbo].[Locations]
(
	[LocationType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Locations_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Locations_UpdatedUserId] ON [dbo].[Locations]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Moves_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Moves_CreatedUserId] ON [dbo].[Moves]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Moves_MoveCategoryId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Moves_MoveCategoryId] ON [dbo].[Moves]
(
	[MoveCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Moves_MoveType]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Moves_MoveType] ON [dbo].[Moves]
(
	[MoveType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Moves_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Moves_UpdatedUserId] ON [dbo].[Moves]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PageContents_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_PageContents_CreatedUserId] ON [dbo].[PageContents]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PageContents_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_PageContents_UpdatedUserId] ON [dbo].[PageContents]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PageLangs_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_PageLangs_CreatedUserId] ON [dbo].[PageLangs]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PageLangs_PageId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_PageLangs_PageId] ON [dbo].[PageLangs]
(
	[PageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PageLangs_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_PageLangs_UpdatedUserId] ON [dbo].[PageLangs]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PageMetas_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_PageMetas_CreatedUserId] ON [dbo].[PageMetas]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PageMetas_PageId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_PageMetas_PageId] ON [dbo].[PageMetas]
(
	[PageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PageMetas_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_PageMetas_UpdatedUserId] ON [dbo].[PageMetas]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PageRestrictions_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_PageRestrictions_CreatedUserId] ON [dbo].[PageRestrictions]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PageRestrictions_PageResctrictedId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_PageRestrictions_PageResctrictedId] ON [dbo].[PageRestrictions]
(
	[PageResctrictedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PageRestrictions_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_PageRestrictions_UpdatedUserId] ON [dbo].[PageRestrictions]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Pages_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Pages_CreatedUserId] ON [dbo].[Pages]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pages_TagId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Pages_TagId] ON [dbo].[Pages]
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Pages_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Pages_UpdatedUserId] ON [dbo].[Pages]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PokemonLocation_CharacterId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_PokemonLocation_CharacterId] ON [dbo].[PokemonLocation]
(
	[CharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PokemonLocation_LocationId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_PokemonLocation_LocationId] ON [dbo].[PokemonLocation]
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PokemonMove_CharacterId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_PokemonMove_CharacterId] ON [dbo].[PokemonMove]
(
	[CharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PokemonMove_MoveId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_PokemonMove_MoveId] ON [dbo].[PokemonMove]
(
	[MoveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PokemonSpecialMove_CharacterId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_PokemonSpecialMove_CharacterId] ON [dbo].[PokemonSpecialMove]
(
	[CharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PokemonSpecialMove_MoveId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_PokemonSpecialMove_MoveId] ON [dbo].[PokemonSpecialMove]
(
	[MoveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ProtectedTitles_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProtectedTitles_CreatedUserId] ON [dbo].[ProtectedTitles]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ProtectedTitles_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProtectedTitles_UpdatedUserId] ON [dbo].[ProtectedTitles]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ProtectedTitles_UserProtectedId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProtectedTitles_UserProtectedId] ON [dbo].[ProtectedTitles]
(
	[UserProtectedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RecentChanges_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_RecentChanges_CreatedUserId] ON [dbo].[RecentChanges]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RecentChanges_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_RecentChanges_UpdatedUserId] ON [dbo].[RecentChanges]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RecentChanges_UserMakeChangeId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_RecentChanges_UserMakeChangeId] ON [dbo].[RecentChanges]
(
	[UserMakeChangeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_References_CharacterId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_References_CharacterId] ON [dbo].[References]
(
	[CharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_References_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_References_CreatedUserId] ON [dbo].[References]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_References_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_References_UpdatedUserId] ON [dbo].[References]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Revisions_BelongToUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Revisions_BelongToUserId] ON [dbo].[Revisions]
(
	[BelongToUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Revisions_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Revisions_CreatedUserId] ON [dbo].[Revisions]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Revisions_PageContentId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Revisions_PageContentId] ON [dbo].[Revisions]
(
	[PageContentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Revisions_PageId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Revisions_PageId] ON [dbo].[Revisions]
(
	[PageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Revisions_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Revisions_UpdatedUserId] ON [dbo].[Revisions]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Sites_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Sites_CreatedUserId] ON [dbo].[Sites]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Sites_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Sites_UpdatedUserId] ON [dbo].[Sites]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Tags_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Tags_CreatedUserId] ON [dbo].[Tags]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Tags_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Tags_UpdatedUserId] ON [dbo].[Tags]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Type_CharacterId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Type_CharacterId] ON [dbo].[Type]
(
	[CharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Type_TypeId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Type_TypeId] ON [dbo].[Type]
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserMetas_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserMetas_CreatedUserId] ON [dbo].[UserMetas]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserMetas_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserMetas_UpdatedUserId] ON [dbo].[UserMetas]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserMetas_UserInUseId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserMetas_UserInUseId] ON [dbo].[UserMetas]
(
	[UserInUseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserNewtalks_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserNewtalks_CreatedUserId] ON [dbo].[UserNewtalks]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserNewtalks_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserNewtalks_UpdatedUserId] ON [dbo].[UserNewtalks]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserNewtalks_UserSeenId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserNewtalks_UserSeenId] ON [dbo].[UserNewtalks]
(
	[UserSeenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_WatchLists_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_WatchLists_CreatedUserId] ON [dbo].[WatchLists]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_WatchLists_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_WatchLists_UpdatedUserId] ON [dbo].[WatchLists]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_WatchLists_WatchedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_WatchLists_WatchedUserId] ON [dbo].[WatchLists]
(
	[WatchedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WikiImages_CharacterId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_WikiImages_CharacterId] ON [dbo].[WikiImages]
(
	[CharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WikiImages_CharacterId1]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_WikiImages_CharacterId1] ON [dbo].[WikiImages]
(
	[CharacterId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_WikiImages_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_WikiImages_CreatedUserId] ON [dbo].[WikiImages]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_WikiImages_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_WikiImages_UpdatedUserId] ON [dbo].[WikiImages]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WikiVideos_CharacterId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_WikiVideos_CharacterId] ON [dbo].[WikiVideos]
(
	[CharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_WikiVideos_CreatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_WikiVideos_CreatedUserId] ON [dbo].[WikiVideos]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_WikiVideos_UpdatedUserId]    Script Date: 9/12/2016 1:54:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_WikiVideos_UpdatedUserId] ON [dbo].[WikiVideos]
(
	[UpdatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Archives]  WITH CHECK ADD  CONSTRAINT [FK_Archives_AspNetUsers_BelongToUserId] FOREIGN KEY([BelongToUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Archives] CHECK CONSTRAINT [FK_Archives_AspNetUsers_BelongToUserId]
GO
ALTER TABLE [dbo].[Archives]  WITH CHECK ADD  CONSTRAINT [FK_Archives_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Archives] CHECK CONSTRAINT [FK_Archives_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Archives]  WITH CHECK ADD  CONSTRAINT [FK_Archives_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Archives] CHECK CONSTRAINT [FK_Archives_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Archives]  WITH CHECK ADD  CONSTRAINT [FK_Archives_PageContents_ContentId] FOREIGN KEY([ContentId])
REFERENCES [dbo].[PageContents] ([Id])
GO
ALTER TABLE [dbo].[Archives] CHECK CONSTRAINT [FK_Archives_PageContents_ContentId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BlockedIps]  WITH CHECK ADD  CONSTRAINT [FK_BlockedIps_AspNetUsers_BlockByUserId] FOREIGN KEY([BlockByUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BlockedIps] CHECK CONSTRAINT [FK_BlockedIps_AspNetUsers_BlockByUserId]
GO
ALTER TABLE [dbo].[BlockedIps]  WITH CHECK ADD  CONSTRAINT [FK_BlockedIps_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BlockedIps] CHECK CONSTRAINT [FK_BlockedIps_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[BlockedIps]  WITH CHECK ADD  CONSTRAINT [FK_BlockedIps_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BlockedIps] CHECK CONSTRAINT [FK_BlockedIps_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[BlockedIps]  WITH CHECK ADD  CONSTRAINT [FK_BlockedIps_AspNetUsers_UserBlockedId] FOREIGN KEY([UserBlockedId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BlockedIps] CHECK CONSTRAINT [FK_BlockedIps_AspNetUsers_UserBlockedId]
GO
ALTER TABLE [dbo].[BlockedIps]  WITH CHECK ADD  CONSTRAINT [FK_BlockedIps_BlockedIps_BlockedIpId] FOREIGN KEY([BlockedIpId])
REFERENCES [dbo].[BlockedIps] ([Id])
GO
ALTER TABLE [dbo].[BlockedIps] CHECK CONSTRAINT [FK_BlockedIps_BlockedIps_BlockedIpId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[CharacterInfoGroups]  WITH CHECK ADD  CONSTRAINT [FK_CharacterInfoGroups_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterInfoGroups] CHECK CONSTRAINT [FK_CharacterInfoGroups_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[CharacterInfoGroups]  WITH CHECK ADD  CONSTRAINT [FK_CharacterInfoGroups_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterInfoGroups] CHECK CONSTRAINT [FK_CharacterInfoGroups_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[CharacterInfoGroups]  WITH CHECK ADD  CONSTRAINT [FK_CharacterInfoGroups_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
GO
ALTER TABLE [dbo].[CharacterInfoGroups] CHECK CONSTRAINT [FK_CharacterInfoGroups_Characters_CharacterId]
GO
ALTER TABLE [dbo].[CharacterInfos]  WITH CHECK ADD  CONSTRAINT [FK_CharacterInfos_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterInfos] CHECK CONSTRAINT [FK_CharacterInfos_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[CharacterInfos]  WITH CHECK ADD  CONSTRAINT [FK_CharacterInfos_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterInfos] CHECK CONSTRAINT [FK_CharacterInfos_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[CharacterInfos]  WITH CHECK ADD  CONSTRAINT [FK_CharacterInfos_CharacterInfoGroups_CharacterInfoGroupId] FOREIGN KEY([CharacterInfoGroupId])
REFERENCES [dbo].[CharacterInfoGroups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterInfos] CHECK CONSTRAINT [FK_CharacterInfos_CharacterInfoGroups_CharacterInfoGroupId]
GO
ALTER TABLE [dbo].[CharacterInfos]  WITH CHECK ADD  CONSTRAINT [FK_CharacterInfos_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterInfos] CHECK CONSTRAINT [FK_CharacterInfos_Characters_CharacterId]
GO
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[CharacterSectionGroups]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSectionGroups_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterSectionGroups] CHECK CONSTRAINT [FK_CharacterSectionGroups_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[CharacterSectionGroups]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSectionGroups_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterSectionGroups] CHECK CONSTRAINT [FK_CharacterSectionGroups_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[CharacterSectionGroups]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSectionGroups_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
GO
ALTER TABLE [dbo].[CharacterSectionGroups] CHECK CONSTRAINT [FK_CharacterSectionGroups_Characters_CharacterId]
GO
ALTER TABLE [dbo].[CharacterSections]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSections_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterSections] CHECK CONSTRAINT [FK_CharacterSections_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[CharacterSections]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSections_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterSections] CHECK CONSTRAINT [FK_CharacterSections_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[CharacterSections]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSections_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterSections] CHECK CONSTRAINT [FK_CharacterSections_Characters_CharacterId]
GO
ALTER TABLE [dbo].[CharacterSections]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSections_CharacterSectionGroups_CharacterSectionGroupId] FOREIGN KEY([CharacterSectionGroupId])
REFERENCES [dbo].[CharacterSectionGroups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterSections] CHECK CONSTRAINT [FK_CharacterSections_CharacterSectionGroups_CharacterSectionGroupId]
GO
ALTER TABLE [dbo].[FileArchives]  WITH CHECK ADD  CONSTRAINT [FK_FileArchives_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FileArchives] CHECK CONSTRAINT [FK_FileArchives_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[FileArchives]  WITH CHECK ADD  CONSTRAINT [FK_FileArchives_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FileArchives] CHECK CONSTRAINT [FK_FileArchives_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[FileArchives]  WITH CHECK ADD  CONSTRAINT [FK_FileArchives_AspNetUsers_UploadedUserId] FOREIGN KEY([UploadedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FileArchives] CHECK CONSTRAINT [FK_FileArchives_AspNetUsers_UploadedUserId]
GO
ALTER TABLE [dbo].[InfoValues]  WITH CHECK ADD  CONSTRAINT [FK_InfoValues_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[InfoValues] CHECK CONSTRAINT [FK_InfoValues_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[InfoValues]  WITH CHECK ADD  CONSTRAINT [FK_InfoValues_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[InfoValues] CHECK CONSTRAINT [FK_InfoValues_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[InfoValues]  WITH CHECK ADD  CONSTRAINT [FK_InfoValues_CharacterInfos_CharacterInfoId] FOREIGN KEY([CharacterInfoId])
REFERENCES [dbo].[CharacterInfos] ([Id])
GO
ALTER TABLE [dbo].[InfoValues] CHECK CONSTRAINT [FK_InfoValues_CharacterInfos_CharacterInfoId]
GO
ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_Locations_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_Locations_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_Categories_LocationType] FOREIGN KEY([LocationType])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_Locations_Categories_LocationType]
GO
ALTER TABLE [dbo].[Moves]  WITH CHECK ADD  CONSTRAINT [FK_Moves_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Moves] CHECK CONSTRAINT [FK_Moves_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Moves]  WITH CHECK ADD  CONSTRAINT [FK_Moves_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Moves] CHECK CONSTRAINT [FK_Moves_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Moves]  WITH CHECK ADD  CONSTRAINT [FK_Moves_Categories_MoveCategoryId] FOREIGN KEY([MoveCategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Moves] CHECK CONSTRAINT [FK_Moves_Categories_MoveCategoryId]
GO
ALTER TABLE [dbo].[Moves]  WITH CHECK ADD  CONSTRAINT [FK_Moves_Categories_MoveType] FOREIGN KEY([MoveType])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Moves] CHECK CONSTRAINT [FK_Moves_Categories_MoveType]
GO
ALTER TABLE [dbo].[PageContents]  WITH CHECK ADD  CONSTRAINT [FK_PageContents_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageContents] CHECK CONSTRAINT [FK_PageContents_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[PageContents]  WITH CHECK ADD  CONSTRAINT [FK_PageContents_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageContents] CHECK CONSTRAINT [FK_PageContents_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[PageLangs]  WITH CHECK ADD  CONSTRAINT [FK_PageLangs_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageLangs] CHECK CONSTRAINT [FK_PageLangs_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[PageLangs]  WITH CHECK ADD  CONSTRAINT [FK_PageLangs_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageLangs] CHECK CONSTRAINT [FK_PageLangs_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[PageLangs]  WITH CHECK ADD  CONSTRAINT [FK_PageLangs_Pages_PageId] FOREIGN KEY([PageId])
REFERENCES [dbo].[Pages] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PageLangs] CHECK CONSTRAINT [FK_PageLangs_Pages_PageId]
GO
ALTER TABLE [dbo].[PageMetas]  WITH CHECK ADD  CONSTRAINT [FK_PageMetas_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageMetas] CHECK CONSTRAINT [FK_PageMetas_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[PageMetas]  WITH CHECK ADD  CONSTRAINT [FK_PageMetas_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageMetas] CHECK CONSTRAINT [FK_PageMetas_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[PageMetas]  WITH CHECK ADD  CONSTRAINT [FK_PageMetas_Pages_PageId] FOREIGN KEY([PageId])
REFERENCES [dbo].[Pages] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PageMetas] CHECK CONSTRAINT [FK_PageMetas_Pages_PageId]
GO
ALTER TABLE [dbo].[PageRestrictions]  WITH CHECK ADD  CONSTRAINT [FK_PageRestrictions_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageRestrictions] CHECK CONSTRAINT [FK_PageRestrictions_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[PageRestrictions]  WITH CHECK ADD  CONSTRAINT [FK_PageRestrictions_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageRestrictions] CHECK CONSTRAINT [FK_PageRestrictions_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[PageRestrictions]  WITH CHECK ADD  CONSTRAINT [FK_PageRestrictions_Pages_PageResctrictedId] FOREIGN KEY([PageResctrictedId])
REFERENCES [dbo].[Pages] ([Id])
GO
ALTER TABLE [dbo].[PageRestrictions] CHECK CONSTRAINT [FK_PageRestrictions_Pages_PageResctrictedId]
GO
ALTER TABLE [dbo].[Pages]  WITH CHECK ADD  CONSTRAINT [FK_Pages_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Pages] CHECK CONSTRAINT [FK_Pages_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Pages]  WITH CHECK ADD  CONSTRAINT [FK_Pages_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Pages] CHECK CONSTRAINT [FK_Pages_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Pages]  WITH CHECK ADD  CONSTRAINT [FK_Pages_Tags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([Id])
GO
ALTER TABLE [dbo].[Pages] CHECK CONSTRAINT [FK_Pages_Tags_TagId]
GO
ALTER TABLE [dbo].[PokemonLocation]  WITH CHECK ADD  CONSTRAINT [FK_PokemonLocation_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PokemonLocation] CHECK CONSTRAINT [FK_PokemonLocation_Characters_CharacterId]
GO
ALTER TABLE [dbo].[PokemonLocation]  WITH CHECK ADD  CONSTRAINT [FK_PokemonLocation_Locations_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Locations] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PokemonLocation] CHECK CONSTRAINT [FK_PokemonLocation_Locations_LocationId]
GO
ALTER TABLE [dbo].[PokemonMove]  WITH CHECK ADD  CONSTRAINT [FK_PokemonMove_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PokemonMove] CHECK CONSTRAINT [FK_PokemonMove_Characters_CharacterId]
GO
ALTER TABLE [dbo].[PokemonMove]  WITH CHECK ADD  CONSTRAINT [FK_PokemonMove_Moves_MoveId] FOREIGN KEY([MoveId])
REFERENCES [dbo].[Moves] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PokemonMove] CHECK CONSTRAINT [FK_PokemonMove_Moves_MoveId]
GO
ALTER TABLE [dbo].[PokemonSpecialMove]  WITH CHECK ADD  CONSTRAINT [FK_PokemonSpecialMove_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PokemonSpecialMove] CHECK CONSTRAINT [FK_PokemonSpecialMove_Characters_CharacterId]
GO
ALTER TABLE [dbo].[PokemonSpecialMove]  WITH CHECK ADD  CONSTRAINT [FK_PokemonSpecialMove_Moves_MoveId] FOREIGN KEY([MoveId])
REFERENCES [dbo].[Moves] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PokemonSpecialMove] CHECK CONSTRAINT [FK_PokemonSpecialMove_Moves_MoveId]
GO
ALTER TABLE [dbo].[ProtectedTitles]  WITH CHECK ADD  CONSTRAINT [FK_ProtectedTitles_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProtectedTitles] CHECK CONSTRAINT [FK_ProtectedTitles_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[ProtectedTitles]  WITH CHECK ADD  CONSTRAINT [FK_ProtectedTitles_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProtectedTitles] CHECK CONSTRAINT [FK_ProtectedTitles_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[ProtectedTitles]  WITH CHECK ADD  CONSTRAINT [FK_ProtectedTitles_AspNetUsers_UserProtectedId] FOREIGN KEY([UserProtectedId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProtectedTitles] CHECK CONSTRAINT [FK_ProtectedTitles_AspNetUsers_UserProtectedId]
GO
ALTER TABLE [dbo].[RecentChanges]  WITH CHECK ADD  CONSTRAINT [FK_RecentChanges_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[RecentChanges] CHECK CONSTRAINT [FK_RecentChanges_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[RecentChanges]  WITH CHECK ADD  CONSTRAINT [FK_RecentChanges_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[RecentChanges] CHECK CONSTRAINT [FK_RecentChanges_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[RecentChanges]  WITH CHECK ADD  CONSTRAINT [FK_RecentChanges_AspNetUsers_UserMakeChangeId] FOREIGN KEY([UserMakeChangeId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[RecentChanges] CHECK CONSTRAINT [FK_RecentChanges_AspNetUsers_UserMakeChangeId]
GO
ALTER TABLE [dbo].[References]  WITH CHECK ADD  CONSTRAINT [FK_References_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[References] CHECK CONSTRAINT [FK_References_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[References]  WITH CHECK ADD  CONSTRAINT [FK_References_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[References] CHECK CONSTRAINT [FK_References_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[References]  WITH CHECK ADD  CONSTRAINT [FK_References_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
GO
ALTER TABLE [dbo].[References] CHECK CONSTRAINT [FK_References_Characters_CharacterId]
GO
ALTER TABLE [dbo].[Revisions]  WITH CHECK ADD  CONSTRAINT [FK_Revisions_AspNetUsers_BelongToUserId] FOREIGN KEY([BelongToUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Revisions] CHECK CONSTRAINT [FK_Revisions_AspNetUsers_BelongToUserId]
GO
ALTER TABLE [dbo].[Revisions]  WITH CHECK ADD  CONSTRAINT [FK_Revisions_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Revisions] CHECK CONSTRAINT [FK_Revisions_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Revisions]  WITH CHECK ADD  CONSTRAINT [FK_Revisions_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Revisions] CHECK CONSTRAINT [FK_Revisions_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Revisions]  WITH CHECK ADD  CONSTRAINT [FK_Revisions_PageContents_PageContentId] FOREIGN KEY([PageContentId])
REFERENCES [dbo].[PageContents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Revisions] CHECK CONSTRAINT [FK_Revisions_PageContents_PageContentId]
GO
ALTER TABLE [dbo].[Revisions]  WITH CHECK ADD  CONSTRAINT [FK_Revisions_Pages_PageId] FOREIGN KEY([PageId])
REFERENCES [dbo].[Pages] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Revisions] CHECK CONSTRAINT [FK_Revisions_Pages_PageId]
GO
ALTER TABLE [dbo].[Sites]  WITH CHECK ADD  CONSTRAINT [FK_Sites_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Sites] CHECK CONSTRAINT [FK_Sites_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Sites]  WITH CHECK ADD  CONSTRAINT [FK_Sites_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Sites] CHECK CONSTRAINT [FK_Sites_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Tags]  WITH CHECK ADD  CONSTRAINT [FK_Tags_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Tags] CHECK CONSTRAINT [FK_Tags_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Tags]  WITH CHECK ADD  CONSTRAINT [FK_Tags_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Tags] CHECK CONSTRAINT [FK_Tags_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Type]  WITH CHECK ADD  CONSTRAINT [FK_Type_Categories_TypeId] FOREIGN KEY([TypeId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Type] CHECK CONSTRAINT [FK_Type_Categories_TypeId]
GO
ALTER TABLE [dbo].[Type]  WITH CHECK ADD  CONSTRAINT [FK_Type_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Type] CHECK CONSTRAINT [FK_Type_Characters_CharacterId]
GO
ALTER TABLE [dbo].[UserMetas]  WITH CHECK ADD  CONSTRAINT [FK_UserMetas_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserMetas] CHECK CONSTRAINT [FK_UserMetas_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[UserMetas]  WITH CHECK ADD  CONSTRAINT [FK_UserMetas_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserMetas] CHECK CONSTRAINT [FK_UserMetas_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[UserMetas]  WITH CHECK ADD  CONSTRAINT [FK_UserMetas_AspNetUsers_UserInUseId] FOREIGN KEY([UserInUseId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserMetas] CHECK CONSTRAINT [FK_UserMetas_AspNetUsers_UserInUseId]
GO
ALTER TABLE [dbo].[UserNewtalks]  WITH CHECK ADD  CONSTRAINT [FK_UserNewtalks_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserNewtalks] CHECK CONSTRAINT [FK_UserNewtalks_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[UserNewtalks]  WITH CHECK ADD  CONSTRAINT [FK_UserNewtalks_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserNewtalks] CHECK CONSTRAINT [FK_UserNewtalks_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[UserNewtalks]  WITH CHECK ADD  CONSTRAINT [FK_UserNewtalks_AspNetUsers_UserSeenId] FOREIGN KEY([UserSeenId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserNewtalks] CHECK CONSTRAINT [FK_UserNewtalks_AspNetUsers_UserSeenId]
GO
ALTER TABLE [dbo].[WatchLists]  WITH CHECK ADD  CONSTRAINT [FK_WatchLists_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WatchLists] CHECK CONSTRAINT [FK_WatchLists_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[WatchLists]  WITH CHECK ADD  CONSTRAINT [FK_WatchLists_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WatchLists] CHECK CONSTRAINT [FK_WatchLists_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[WatchLists]  WITH CHECK ADD  CONSTRAINT [FK_WatchLists_AspNetUsers_WatchedUserId] FOREIGN KEY([WatchedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WatchLists] CHECK CONSTRAINT [FK_WatchLists_AspNetUsers_WatchedUserId]
GO
ALTER TABLE [dbo].[WikiImages]  WITH CHECK ADD  CONSTRAINT [FK_WikiImages_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WikiImages] CHECK CONSTRAINT [FK_WikiImages_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[WikiImages]  WITH CHECK ADD  CONSTRAINT [FK_WikiImages_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WikiImages] CHECK CONSTRAINT [FK_WikiImages_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[WikiImages]  WITH CHECK ADD  CONSTRAINT [FK_WikiImages_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
GO
ALTER TABLE [dbo].[WikiImages] CHECK CONSTRAINT [FK_WikiImages_Characters_CharacterId]
GO
ALTER TABLE [dbo].[WikiImages]  WITH CHECK ADD  CONSTRAINT [FK_WikiImages_Characters_CharacterId1] FOREIGN KEY([CharacterId1])
REFERENCES [dbo].[Characters] ([Id])
GO
ALTER TABLE [dbo].[WikiImages] CHECK CONSTRAINT [FK_WikiImages_Characters_CharacterId1]
GO
ALTER TABLE [dbo].[WikiVideos]  WITH CHECK ADD  CONSTRAINT [FK_WikiVideos_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WikiVideos] CHECK CONSTRAINT [FK_WikiVideos_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[WikiVideos]  WITH CHECK ADD  CONSTRAINT [FK_WikiVideos_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WikiVideos] CHECK CONSTRAINT [FK_WikiVideos_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[WikiVideos]  WITH CHECK ADD  CONSTRAINT [FK_WikiVideos_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
GO
ALTER TABLE [dbo].[WikiVideos] CHECK CONSTRAINT [FK_WikiVideos_Characters_CharacterId]
GO
USE [master]
GO
ALTER DATABASE [EWiki] SET  READ_WRITE 
GO
