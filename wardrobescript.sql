USE [master]
GO
/****** Object:  Database [WardrobeDB]    Script Date: 11/5/2017 9:59:14 PM ******/
CREATE DATABASE [WardrobeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeDB] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeDB]
GO
/****** Object:  Table [dbo].[Accessory]    Script Date: 11/5/2017 9:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accessory](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [varchar](50) NOT NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
	[TypeID] [int] NOT NULL,
	[AccessoryPhoto] [varchar](200) NULL,
	[AccessoryNotes] [varchar](100) NULL,
 CONSTRAINT [PK_Accessory] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bottom]    Script Date: 11/5/2017 9:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bottom](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [varchar](50) NOT NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
	[TypeID] [int] NOT NULL,
	[BottomPhoto] [varchar](200) NULL,
	[BottomNotes] [varchar](100) NULL,
 CONSTRAINT [PK_Bottom] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClothesType]    Script Date: 11/5/2017 9:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClothesType](
	[TypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ClothesType] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Color]    Script Date: 11/5/2017 9:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Color](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Occasion]    Script Date: 11/5/2017 9:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Occasion](
	[OccasionID] [int] IDENTITY(1,1) NOT NULL,
	[OccasionName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Occasion] PRIMARY KEY CLUSTERED 
(
	[OccasionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Outfit]    Script Date: 11/5/2017 9:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Outfit](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NULL,
	[AccessoryID] [int] NULL,
	[OutfitName] [varchar](50) NULL,
 CONSTRAINT [PK_Outfit] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Season]    Script Date: 11/5/2017 9:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Season](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[SeasonName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Season] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shoe]    Script Date: 11/5/2017 9:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shoe](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeName] [varchar](50) NOT NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
	[TypeID] [int] NOT NULL,
	[ShoePhoto] [varchar](200) NULL,
	[ShoeNotes] [varchar](100) NULL,
 CONSTRAINT [PK_Shoe] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Top]    Script Date: 11/5/2017 9:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Top](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [varchar](50) NOT NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
	[TypeID] [int] NOT NULL,
	[TopPhoto] [varchar](200) NULL,
	[TopNotes] [varchar](100) NULL,
 CONSTRAINT [PK_Top] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accessory] ON 

INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [ColorID], [SeasonID], [OccasionID], [TypeID], [AccessoryPhoto], [AccessoryNotes]) VALUES (1, N'Diving Gear', 11, 2, 7, 4, N'\Content\WardrobePics\divergear.jpg', N'For underwater revolutions')
INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [ColorID], [SeasonID], [OccasionID], [TypeID], [AccessoryPhoto], [AccessoryNotes]) VALUES (2, N'Astronaut Suit', 10, 4, 7, 4, N'\Content\WardrobePics\astronaut.jpg', N'For those revolutions in space')
INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [ColorID], [SeasonID], [OccasionID], [TypeID], [AccessoryPhoto], [AccessoryNotes]) VALUES (3, N'Guy Fawkes', 10, 1, 1, 4, N'\Content\WardrobePics\guyfawkesmask.jpeg', N'For every formal occassion')
SET IDENTITY_INSERT [dbo].[Accessory] OFF
SET IDENTITY_INSERT [dbo].[Bottom] ON 

INSERT [dbo].[Bottom] ([BottomID], [BottomName], [ColorID], [SeasonID], [OccasionID], [TypeID], [BottomPhoto], [BottomNotes]) VALUES (1, N'Ripped Jeans', 5, 1, 4, 2, N'\Content\WardrobePics\rippedjeans.jpeg', N'Ripped in combat')
INSERT [dbo].[Bottom] ([BottomID], [BottomName], [ColorID], [SeasonID], [OccasionID], [TypeID], [BottomPhoto], [BottomNotes]) VALUES (2, N'Khakis', 11, 3, 3, 2, N'\Content\WardrobePics\khaki.jpeg', NULL)
INSERT [dbo].[Bottom] ([BottomID], [BottomName], [ColorID], [SeasonID], [OccasionID], [TypeID], [BottomPhoto], [BottomNotes]) VALUES (3, N'Skinnys', 9, 4, 3, 2, N'\Content\WardrobePics\skinnygreypants.jpeg', NULL)
SET IDENTITY_INSERT [dbo].[Bottom] OFF
SET IDENTITY_INSERT [dbo].[ClothesType] ON 

INSERT [dbo].[ClothesType] ([TypeID], [TypeName]) VALUES (1, N'Top')
INSERT [dbo].[ClothesType] ([TypeID], [TypeName]) VALUES (2, N'Bottom')
INSERT [dbo].[ClothesType] ([TypeID], [TypeName]) VALUES (3, N'Shoes')
INSERT [dbo].[ClothesType] ([TypeID], [TypeName]) VALUES (4, N'Accessory')
SET IDENTITY_INSERT [dbo].[ClothesType] OFF
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (1, N'Red')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (2, N'Orange')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (3, N'Yellow')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (4, N'Green')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (5, N'Blue')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (6, N'Indigo')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (7, N'Violet')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (8, N'Black')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (9, N'Grey')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (10, N'White')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (11, N'Beige')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (12, N'Brown')
SET IDENTITY_INSERT [dbo].[Color] OFF
SET IDENTITY_INSERT [dbo].[Occasion] ON 

INSERT [dbo].[Occasion] ([OccasionID], [OccasionName]) VALUES (1, N'Formal')
INSERT [dbo].[Occasion] ([OccasionID], [OccasionName]) VALUES (2, N'Business Formal')
INSERT [dbo].[Occasion] ([OccasionID], [OccasionName]) VALUES (3, N'Business Casual')
INSERT [dbo].[Occasion] ([OccasionID], [OccasionName]) VALUES (4, N'Casual')
INSERT [dbo].[Occasion] ([OccasionID], [OccasionName]) VALUES (5, N'Comfy')
INSERT [dbo].[Occasion] ([OccasionID], [OccasionName]) VALUES (6, N'Club')
INSERT [dbo].[Occasion] ([OccasionID], [OccasionName]) VALUES (7, N'Active')
SET IDENTITY_INSERT [dbo].[Occasion] OFF
SET IDENTITY_INSERT [dbo].[Season] ON 

INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (1, N'Spring')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (2, N'Summer')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (3, N'Fall')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (4, N'Winter')
SET IDENTITY_INSERT [dbo].[Season] OFF
SET IDENTITY_INSERT [dbo].[Shoe] ON 

INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ColorID], [SeasonID], [OccasionID], [TypeID], [ShoePhoto], [ShoeNotes]) VALUES (1, N'Converse', 8, 2, 4, 3, N'\Content\WardrobePics\converseblack.jpeg', N'Obviously.')
INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ColorID], [SeasonID], [OccasionID], [TypeID], [ShoePhoto], [ShoeNotes]) VALUES (2, N'Work Boots', 1, 4, 7, 3, N'\Content\WardrobePics\workboots.jpeg', N'For working.')
INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ColorID], [SeasonID], [OccasionID], [TypeID], [ShoePhoto], [ShoeNotes]) VALUES (3, N'Bear Feet', 12, 2, 5, 3, N'\Content\WardrobePics\bearfeet.jpg', N'The bear necessities.')
SET IDENTITY_INSERT [dbo].[Shoe] OFF
SET IDENTITY_INSERT [dbo].[Top] ON 

INSERT [dbo].[Top] ([TopID], [TopName], [ColorID], [SeasonID], [OccasionID], [TypeID], [TopPhoto], [TopNotes]) VALUES (1, N'Plaid', 8, 4, 4, 1, N'\Content\WardrobePics\plaidbuttonup.jpeg', N'It''s plaid. We like plaid.')
INSERT [dbo].[Top] ([TopID], [TopName], [ColorID], [SeasonID], [OccasionID], [TypeID], [TopPhoto], [TopNotes]) VALUES (2, N'T-Shirt', 9, 2, 5, 1, N'\Content\WardrobePics\tshirt.jpeg', N'Look at that breast.')
INSERT [dbo].[Top] ([TopID], [TopName], [ColorID], [SeasonID], [OccasionID], [TypeID], [TopPhoto], [TopNotes]) VALUES (3, N'Money', 5, 1, 3, 1, N'\Content\WardrobePics\wearablemoney.jpeg', N'When you need to convince them that money is not even an issue.')
SET IDENTITY_INSERT [dbo].[Top] OFF
ALTER TABLE [dbo].[Accessory]  WITH CHECK ADD  CONSTRAINT [FK_Accessory_ClothesType] FOREIGN KEY([TypeID])
REFERENCES [dbo].[ClothesType] ([TypeID])
GO
ALTER TABLE [dbo].[Accessory] CHECK CONSTRAINT [FK_Accessory_ClothesType]
GO
ALTER TABLE [dbo].[Accessory]  WITH CHECK ADD  CONSTRAINT [FK_Accessory_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Accessory] CHECK CONSTRAINT [FK_Accessory_Color]
GO
ALTER TABLE [dbo].[Accessory]  WITH CHECK ADD  CONSTRAINT [FK_Accessory_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Accessory] CHECK CONSTRAINT [FK_Accessory_Occasion]
GO
ALTER TABLE [dbo].[Accessory]  WITH CHECK ADD  CONSTRAINT [FK_Accessory_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Accessory] CHECK CONSTRAINT [FK_Accessory_Season]
GO
ALTER TABLE [dbo].[Bottom]  WITH CHECK ADD  CONSTRAINT [FK_Bottom_ClothesType] FOREIGN KEY([TypeID])
REFERENCES [dbo].[ClothesType] ([TypeID])
GO
ALTER TABLE [dbo].[Bottom] CHECK CONSTRAINT [FK_Bottom_ClothesType]
GO
ALTER TABLE [dbo].[Bottom]  WITH CHECK ADD  CONSTRAINT [FK_Bottom_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Bottom] CHECK CONSTRAINT [FK_Bottom_Color]
GO
ALTER TABLE [dbo].[Bottom]  WITH CHECK ADD  CONSTRAINT [FK_Bottom_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Bottom] CHECK CONSTRAINT [FK_Bottom_Occasion]
GO
ALTER TABLE [dbo].[Bottom]  WITH CHECK ADD  CONSTRAINT [FK_Bottom_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Bottom] CHECK CONSTRAINT [FK_Bottom_Season]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Accessory] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessory] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Accessory]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Bottom] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottom] ([BottomID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Bottom]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Shoe] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoe] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Shoe]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Top] FOREIGN KEY([TopID])
REFERENCES [dbo].[Top] ([TopID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Top]
GO
ALTER TABLE [dbo].[Shoe]  WITH CHECK ADD  CONSTRAINT [FK_Shoe_ClothesType] FOREIGN KEY([TypeID])
REFERENCES [dbo].[ClothesType] ([TypeID])
GO
ALTER TABLE [dbo].[Shoe] CHECK CONSTRAINT [FK_Shoe_ClothesType]
GO
ALTER TABLE [dbo].[Shoe]  WITH CHECK ADD  CONSTRAINT [FK_Shoe_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Shoe] CHECK CONSTRAINT [FK_Shoe_Color]
GO
ALTER TABLE [dbo].[Shoe]  WITH CHECK ADD  CONSTRAINT [FK_Shoe_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Shoe] CHECK CONSTRAINT [FK_Shoe_Occasion]
GO
ALTER TABLE [dbo].[Shoe]  WITH CHECK ADD  CONSTRAINT [FK_Shoe_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Shoe] CHECK CONSTRAINT [FK_Shoe_Season]
GO
ALTER TABLE [dbo].[Top]  WITH CHECK ADD  CONSTRAINT [FK_Top_ClothesType] FOREIGN KEY([TypeID])
REFERENCES [dbo].[ClothesType] ([TypeID])
GO
ALTER TABLE [dbo].[Top] CHECK CONSTRAINT [FK_Top_ClothesType]
GO
ALTER TABLE [dbo].[Top]  WITH CHECK ADD  CONSTRAINT [FK_Top_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Top] CHECK CONSTRAINT [FK_Top_Color]
GO
ALTER TABLE [dbo].[Top]  WITH CHECK ADD  CONSTRAINT [FK_Top_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Top] CHECK CONSTRAINT [FK_Top_Occasion]
GO
ALTER TABLE [dbo].[Top]  WITH CHECK ADD  CONSTRAINT [FK_Top_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Top] CHECK CONSTRAINT [FK_Top_Season]
GO
USE [master]
GO
ALTER DATABASE [WardrobeDB] SET  READ_WRITE 
GO
