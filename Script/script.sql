USE [master]
GO
/****** Object:  Database [PizzaOrderingSystem]    Script Date: 29.05.2022 17:30:36 ******/
CREATE DATABASE [PizzaOrderingSystem]
GO
ALTER DATABASE [PizzaOrderingSystem] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PizzaOrderingSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PizzaOrderingSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PizzaOrderingSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PizzaOrderingSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PizzaOrderingSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PizzaOrderingSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [PizzaOrderingSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PizzaOrderingSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PizzaOrderingSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PizzaOrderingSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PizzaOrderingSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PizzaOrderingSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PizzaOrderingSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PizzaOrderingSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PizzaOrderingSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PizzaOrderingSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PizzaOrderingSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PizzaOrderingSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PizzaOrderingSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PizzaOrderingSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PizzaOrderingSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PizzaOrderingSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PizzaOrderingSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PizzaOrderingSystem] SET RECOVERY FULL 
GO
ALTER DATABASE [PizzaOrderingSystem] SET  MULTI_USER 
GO
ALTER DATABASE [PizzaOrderingSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PizzaOrderingSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PizzaOrderingSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PizzaOrderingSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PizzaOrderingSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PizzaOrderingSystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PizzaOrderingSystem', N'ON'
GO
ALTER DATABASE [PizzaOrderingSystem] SET QUERY_STORE = OFF
GO
USE [PizzaOrderingSystem]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 29.05.2022 17:30:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Username] [nvarchar](15) NULL,
	[PizzaSize] [nvarchar](20) NULL,
	[PizzaCrust] [nvarchar](20) NULL,
	[PizzaToppings] [nvarchar](500) NULL,
	[PizzaDrinks] [nvarchar](500) NULL,
	[PizzaQuantity] [smallint] NULL,
	[OrderDate] [nvarchar](20) NULL,
	[OrderID] [smallint] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Userss]    Script Date: 29.05.2022 17:30:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Userss](
	[Username] [nvarchar](15) NULL,
	[Password] [nvarchar](15) NULL,
	[Adress] [nvarchar](50) NULL,
	[Phone] [nvarchar](15) NULL,
	[Date] [nvarchar](100) NULL,
	[ID] [smallint] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Username], [PizzaSize], [PizzaCrust], [PizzaToppings], [PizzaDrinks], [PizzaQuantity], [OrderDate], [OrderID]) VALUES (N'Mina', N'Medium', N'Cheesy', N'Sun Dried Tomatoes Jalapeno Mushroom ', N'Sprite Diet Coke ', 3, N'29.05.2022 17:26:10', 14)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Userss] ON 

INSERT [dbo].[Userss] ([Username], [Password], [Adress], [Phone], [Date], [ID]) VALUES (N'Mina', N'Mina123', N'İstanbul', N'(555) 555-5555', N'29.05.2022 17:25:46', 1)
SET IDENTITY_INSERT [dbo].[Userss] OFF
GO
USE [master]
GO
ALTER DATABASE [PizzaOrderingSystem] SET  READ_WRITE 
GO
