USE [master]
GO
/****** Object:  Database [Recipe]    Script Date: 09/02/2024 21:29:11 ******/
CREATE DATABASE [Recipe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Recipe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Recipe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Recipe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Recipe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Recipe] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Recipe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Recipe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Recipe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Recipe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Recipe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Recipe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Recipe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Recipe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Recipe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Recipe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Recipe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Recipe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Recipe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Recipe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Recipe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Recipe] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Recipe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Recipe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Recipe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Recipe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Recipe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Recipe] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Recipe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Recipe] SET RECOVERY FULL 
GO
ALTER DATABASE [Recipe] SET  MULTI_USER 
GO
ALTER DATABASE [Recipe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Recipe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Recipe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Recipe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Recipe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Recipe] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Recipe', N'ON'
GO
ALTER DATABASE [Recipe] SET QUERY_STORE = ON
GO
ALTER DATABASE [Recipe] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Recipe]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 09/02/2024 21:29:11 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 09/02/2024 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 09/02/2024 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 09/02/2024 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 09/02/2024 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 09/02/2024 21:29:11 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 09/02/2024 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 09/02/2024 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 09/02/2024 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Active] [bit] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuisine]    Script Date: 09/02/2024 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuisine](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Active] [bit] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Cuisine] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipes]    Script Date: 09/02/2024 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipes](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
	[Description] [nvarchar](300) NOT NULL,
	[Ingreditents] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Cuisine] [nvarchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Recipes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240209092131_init', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240209092203_init', N'8.0.1')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7bf73b00-0cda-437a-8e2e-2fa830fb7d68', N'admin@example.com', N'ADMIN@EXAMPLE.COM', N'admin@example.com', N'ADMIN@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAED9XdRe7SVboSitNqv+bqFMQkb4QUIQoSlnF7hdYpWAZGeCZgYinQRo5r6oGwrxq7g==', N'4GRVKZKU5WISWN7Y6M2RRGPYZOKGQ5VD', N'cdafcca4-a0c5-46a7-b143-2242a500cde7', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'00bb68a7-dd24-46ef-b35d-7f6118ac11e7', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+b4755', N'[Description] value22222222222222', N'[Ingreditents] value3444', N'[Category]...', N'[[Cuisine]]...', 0, CAST(N'2024-02-09T20:27:53.1357602' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'01affb9f-bf09-4109-9b96-8a59ceb48434', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+f30a', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'054baad5-a256-48a4-8ef2-f171e2f9278e', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+0754', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'075726e6-e436-4653-9034-a7fffdb7f708', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+44d3', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'0b4b16a3-5c0c-44fc-8575-ad5640aedcb3', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+ae81', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'107a0208-3626-4552-b79a-812998709f26', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+66ab', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'110c31fc-af3f-47c5-9fd6-943bd27d59dd', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+b521', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'11295828-1763-427a-8694-ea3e5d638c16', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+405a', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'116aa010-b614-4490-bf25-333975853cd7', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+d927', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'19a0f838-53d5-4fad-b891-9b124f25155b', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+134c', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'1b02eca9-a1b4-48a1-9a10-17b4709af45a', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+51c9', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'1c6913a3-fb09-4eb3-befc-9a41090b68d3', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+ac3a', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'1ca65d3f-4c1b-4dd4-8d43-c1f5c8dd36d0', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+aeed', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'21a15536-770e-4f62-89bb-f41b57aef5c7', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+9aa9', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'225f5cc9-8a21-4008-819a-c76598875575', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+decc', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'2790cc3c-e94c-4940-aa49-15b741e6d893', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+0220', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'2d619673-aa18-40c7-8528-b749051abd48', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+7feb', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'2d6ba9eb-8787-4260-b5a7-89290400abff', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+f6ca', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'30483b32-4d0c-4791-a986-6074d331b88c', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+e0e1', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'348b8c93-b0c9-48c5-a6eb-296625725f1d', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+6cec', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'34fda962-6e66-4a70-8816-6eaf8e98e241', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+1354', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'3590ef04-6e10-4909-8dc4-fa9549c68d56', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+5041', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'388ede63-76ad-45aa-82d6-0b9cb6709a5f', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+62f6', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'3db56d04-7e9d-4351-8776-4728f7091f5c', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+ecf6', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'3ddfa3bb-26ca-435f-b458-11cf9c8b0d4d', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+9324', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'3fc1dc1d-5a9c-4bbb-aa64-19ee568ffe1f', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+37b4', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'3fca1788-c52c-44fc-8a35-8045cd59cdac', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+03ed', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'414fc3a7-2fa6-40e1-a3f4-13863a1f0764', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+5729', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'46c3fe74-3349-4af5-87b9-1938d54be4b1', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+e140', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'46e6dbc0-32b7-4090-ae01-4d8d0dc17a01', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+71b4', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'4877fc71-97e4-421f-846e-2e69c43475cd', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+d690', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'4ce540e6-68e9-44a2-a8a3-3488022ac20d', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+fbe6', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'509c2b42-a556-4a5a-b498-f21d2bbd0e04', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+1a8f', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'528c9c57-6aca-4ad5-83df-950b88f50403', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+4728', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'528fc400-c359-4d5c-acab-2ae8ca14b19e', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+63ac', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'5345b4d8-e1c2-414a-bb5a-769f3c145861', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+9c0d', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'5401a325-32a9-44d7-9088-eefcedb282b5', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+934b', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'559675d8-4d27-40fe-b845-e91c6a76f84e', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+8d58', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'58e03cf5-8b8f-48fc-a279-3c4f7a34e33c', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+bd1b', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'59720a93-f04e-49c5-8e7b-76e87b2826da', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+c75c', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'59bc5c4f-0497-4cc7-8b26-2c7a24ebba72', N'Test 1', N'Test 1', N'Ingreditents 1, Ingreditents 2, Ingreditents 3, Ingreditents 4, Ingreditents 5, Ingreditents 6', N'Test 1', N'Test 1', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'5e9702c8-e305-4c10-8cef-528952a51d6a', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+b8ba', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'5f7518f5-218b-4eff-9b91-03831ecc1dfc', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+b310', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'5fbb2ef4-6eae-4dd1-bf7b-12f5461c8d04', N'Test 2', N'Test 2', N'Ingreditents 11, Ingreditents 22, Ingreditents 33, Ingreditents 44, Ingreditents 55, Ingreditents 66', N'Test 2', N'Test 2', 1, CAST(N'2024-02-09T10:22:02.0061975' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'61ac8f17-a638-451a-93c0-b35be81e02a4', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+93a0', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'62ae5125-4e01-415a-be72-c312bd47fdb2', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+7fbb', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'65ee1020-df7e-4e6a-a37e-17b7b7cd190a', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+09e9', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'68f6c31f-557f-4a32-ab8e-3545b2dd3f02', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+e26b', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'6cf39000-860e-4b59-9818-dbb97b7af9ac', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+b689', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'731169d3-ac2d-4e2e-a025-446ef58c7ffc', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+b1cc', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'742b321e-9a73-426f-8884-a89dffbd6e66', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+174b', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'7607958c-6073-42b4-8aab-b7676672e72c', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+c84b', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'778a9360-be40-4b16-8518-f09736fd8b33', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+84ab', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'7bb2c476-c4ab-4bb9-be5d-d5802b75a2a1', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+2f67', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'7dc64847-4aeb-4df9-b109-d1610b0e9918', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+7ebc', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'821b8300-1097-423b-823c-db9d235661ac', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+a9f5', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'82b20ed8-fed3-4f9c-98f1-3c1c1fd9806b', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+0a34', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'8347a68e-1049-4ba9-a89a-131e13896ee3', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+8350', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'83c2f242-6e08-4f20-b795-6a42d30b64d7', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+d101', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'8798507c-0d8c-4f5d-b59f-c08010408fa8', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+500c', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'8dac7baf-8e8a-491d-8ceb-c0521f4198aa', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+fc6d', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'93624867-ddac-4a4d-b04b-98b059c98a12', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+04f3', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'9550e100-ec41-4f9d-bd1b-f77eaf9a8f24', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+0d51', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'957406a7-17f1-4d55-be01-9c2e7c0e519d', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+ab48', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'95889067-2e80-4401-b977-ac0bc9bc5542', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+0314', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'95a8b27b-285e-4eb0-9e0c-f23bbd26ffde', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+91c9', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'984fd864-0355-4a88-8201-e2161dcd89ee', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+6873', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'98b67531-1809-49bf-b0c9-167047236474', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+b148', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'9ccd49b8-893d-4891-b25d-c457b6bc7ab8', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+dfdd', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'9d736965-86d8-42ce-98e3-de9780abe349', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+284c', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'9dfcde7a-0c13-4c4a-adad-5025a0229e5f', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+2396', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'9e9ffd8a-b471-4fca-9065-5c1ecb0e9f5e', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+8741', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'a4acb316-331d-4136-9c68-f3eae77296fc', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+d99d', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'a71ecda4-b2dc-4bd7-b60f-708665fdc60c', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+1260', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'a963dfc6-2cbe-4a9f-a3ba-98421c4059b9', N'a testst', N'testt', N'test', N'testsets', N'setset', 0, CAST(N'2024-02-09T21:02:30.8114968' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'a9891a36-3dae-4a61-905c-e40449645f81', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+69dd', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'abc2897a-794e-4de7-919c-429af570f100', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+b807', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'ac291182-0638-4238-9341-bf055b93f5e8', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+7d59', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'ac93bb91-246f-4aec-ac3a-2266a241b239', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+b0df', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'acc9482f-8192-4870-a1bd-5a36078dc1e0', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+30c8', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'adb4f4d0-3199-45ac-a167-20cd6c5f82bf', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+397b', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'af027747-eae0-4582-bb91-1cb4284101ae', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+ddbb', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'b081b218-4e36-4a03-a7fa-7313a029c373', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+c613', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'b69994ff-30c4-467b-ba82-214cd6ecb323', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+c91a', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'b6ef9952-381e-4bac-9266-c7b44856fc01', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+078f', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'b86b18a2-b56a-46ae-918b-cd4046875b69', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+8b7f', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'bdd10bff-20b2-48de-8e9c-a7c42a5a1e9a', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+29d6', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'beb075da-a96c-462d-9bb6-48e6dd4cce50', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+a07e', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'c234b821-20d2-4182-8c4f-f506eb08a093', N'Test 3', N'Test 3', N'Ingreditents 111, Ingreditents 222, Ingreditents 333, Ingreditents 444, Ingreditents 555, Ingreditents 666', N'Test 3', N'Test 3', 1, CAST(N'2024-02-09T10:22:02.0061982' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'c6104d78-5abf-4b81-98df-484e44aee021', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+0292', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'c6fe100a-a714-4495-8d43-04f0b3591428', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+265b', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'ca6cc2c1-eccd-4616-b020-0f52aee15e2a', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+1ab0', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'cbf6d6f4-969d-4d0f-9934-2f40eb796203', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+ed13', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'd464fe43-bf9a-4d17-8b8a-9dd181d16448', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+883b', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'd78d2917-8073-4f00-8343-a3921cbd0857', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+4e0f', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'd97b5fe4-3c91-48df-99ad-93a3f0398f3b', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+996e', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'dca5cbf7-e233-4adc-b697-69b679b3505c', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+e74b', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'dd3af569-272a-4cd2-9973-931f518af151', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+b7f5', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'e0605a06-7ac2-488f-b10b-362323f03f7d', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+b4755', N'ghj', N'ghj', N'ghjgh', N'ghjhg', 1, CAST(N'2024-02-09T21:02:27.6965779' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'e08a6548-419e-452f-94ad-59f88ce8c7f0', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+6264', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
GO
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'e2f31f0c-1e83-4b81-886c-280fe08c47ee', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+3686', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'e41fc4fb-d94c-4578-8ce7-cae0ee6c5a15', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+a82c', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'e5da7bc0-aa11-4c68-a96f-ef58703e5ea5', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+bdfa', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'e7e76a5b-047c-4411-bef8-498759179fed', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+6d72', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'e846f425-07ef-487e-9d1d-10fabf2622ef', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+bf89', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'eab7834e-32de-46b8-9204-47e1d30acb4d', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+45e3', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'edfee3f1-4493-4b7d-bdc4-83ebfd0a2491', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+89e1', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'f4980a95-6645-4df1-856d-5cce2531b9eb', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+abf4', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'f5e0336e-d157-4f54-9349-274783701bb2', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+b976', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'f6116a55-5a37-499e-886c-1eb12eb04201', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+9e1d', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'f79f8c77-1f09-4b97-ac5a-241b0550d8e6', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+aa77', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'f885734f-1f31-4630-b768-6f737a344e75', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+3d27', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'fb2f1eda-4f3d-4c53-bf8e-419cf18e6291', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+7500', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'fc92330e-54ad-43e8-9039-bcf758d79125', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+f845', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'fd2fd767-e1c9-43c5-9f5e-1fab84704254', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+c91b', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
INSERT [dbo].[Recipes] ([Id], [Name], [Description], [Ingreditents], [Category], [Cuisine], [Active], [DateCreated]) VALUES (N'fea66ef2-f1cc-4009-8fa4-ea29d0ce59f7', N'Microsoft.AspNetCore.Mvc.ViewFeatures.StringHtmlContent+26d2', N'[Description] value2', N'[Ingreditents] value3', N'[Category]...', N'[[Cuisine]]...', 1, CAST(N'2024-02-09T10:22:02.0061925' AS DateTime2))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 09/02/2024 21:29:12 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 09/02/2024 21:29:12 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 09/02/2024 21:29:12 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 09/02/2024 21:29:12 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 09/02/2024 21:29:12 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 09/02/2024 21:29:12 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 09/02/2024 21:29:12 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [Recipe] SET  READ_WRITE 
GO
