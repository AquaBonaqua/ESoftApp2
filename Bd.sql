USE [eSoft2]
GO
/****** Object:  Table [dbo].[Apartment]    Script Date: 19.09.2019 17:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Apartment](
	[Id] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[Surface] [decimal](10, 2) NOT NULL,
	[RoomsCount] [int] NOT NULL,
	[Entrance] [int] NOT NULL,
	[Floor] [int] NOT NULL,
	[SellStatusId] [int] NOT NULL,
	[PlusFinishCost] [decimal](10, 2) NOT NULL,
	[BuildingCost] [decimal](10, 2) NOT NULL,
	[HouseId] [int] NOT NULL,
 CONSTRAINT [PK_Apartment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 19.09.2019 17:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Complex]    Script Date: 19.09.2019 17:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complex](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[ConstructionStatusId] [int] NOT NULL,
	[PlusCost] [decimal](10, 2) NOT NULL,
	[BuildingCost] [decimal](10, 2) NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_Complex] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConstructionStatus]    Script Date: 19.09.2019 17:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConstructionStatus](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ConstructionStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House]    Script Date: 19.09.2019 17:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House](
	[Id] [int] NOT NULL,
	[Street] [nvarchar](max) NOT NULL,
	[Number] [nvarchar](max) NOT NULL,
	[BuildingCost] [decimal](10, 2) NOT NULL,
	[PlusCost] [decimal](10, 2) NOT NULL,
	[ComplexId] [int] NOT NULL,
 CONSTRAINT [PK_House] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SellStatus]    Script Date: 19.09.2019 17:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellStatus](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_SellStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (1, 1, CAST(67.60 AS Decimal(10, 2)), 2, 1, 1, 2, CAST(300000.00 AS Decimal(10, 2)), CAST(11882000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (2, 2, CAST(79.20 AS Decimal(10, 2)), 3, 1, 1, 2, CAST(375000.00 AS Decimal(10, 2)), CAST(13925000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (3, 320, CAST(79.20 AS Decimal(10, 2)), 3, 2, 15, 2, CAST(375000.00 AS Decimal(10, 2)), CAST(13925000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (4, 321, CAST(35.40 AS Decimal(10, 2)), 1, 2, 15, 2, CAST(200000.00 AS Decimal(10, 2)), CAST(7852000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (5, 322, CAST(35.40 AS Decimal(10, 2)), 1, 2, 15, 2, CAST(200000.00 AS Decimal(10, 2)), CAST(7852000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (6, 467, CAST(79.20 AS Decimal(10, 2)), 3, 2, 39, 1, CAST(375000.00 AS Decimal(10, 2)), CAST(13925000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (7, 468, CAST(67.60 AS Decimal(10, 2)), 2, 2, 39, 2, CAST(300000.00 AS Decimal(10, 2)), CAST(11882000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (8, 1, CAST(67.60 AS Decimal(10, 2)), 2, 1, 1, 2, CAST(300000.00 AS Decimal(10, 2)), CAST(10697000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (9, 2, CAST(79.20 AS Decimal(10, 2)), 3, 1, 1, 1, CAST(375000.00 AS Decimal(10, 2)), CAST(12558000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (10, 78, CAST(67.60 AS Decimal(10, 2)), 2, 1, 13, 2, CAST(300000.00 AS Decimal(10, 2)), CAST(10697000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (11, 79, CAST(67.60 AS Decimal(10, 2)), 2, 1, 14, 2, CAST(300000.00 AS Decimal(10, 2)), CAST(10697000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (12, 80, CAST(79.20 AS Decimal(10, 2)), 3, 1, 14, 2, CAST(375000.00 AS Decimal(10, 2)), CAST(12558000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (13, 81, CAST(35.40 AS Decimal(10, 2)), 1, 1, 14, 1, CAST(200000.00 AS Decimal(10, 2)), CAST(6900000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (14, 228, CAST(67.60 AS Decimal(10, 2)), 2, 1, 38, 2, CAST(300000.00 AS Decimal(10, 2)), CAST(10697000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (15, 229, CAST(67.60 AS Decimal(10, 2)), 2, 1, 39, 2, CAST(300000.00 AS Decimal(10, 2)), CAST(10697000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (16, 230, CAST(79.20 AS Decimal(10, 2)), 3, 1, 39, 2, CAST(375000.00 AS Decimal(10, 2)), CAST(12558000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (17, 486, CAST(67.60 AS Decimal(10, 2)), 2, 3, 3, 2, CAST(300000.00 AS Decimal(10, 2)), CAST(10697000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (18, 487, CAST(67.60 AS Decimal(10, 2)), 2, 3, 4, 1, CAST(300000.00 AS Decimal(10, 2)), CAST(10697000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (19, 488, CAST(79.20 AS Decimal(10, 2)), 3, 3, 4, 1, CAST(375000.00 AS Decimal(10, 2)), CAST(12558000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (20, 21, CAST(35.40 AS Decimal(10, 2)), 1, 1, 4, 2, CAST(300000.00 AS Decimal(10, 2)), CAST(7200000.00 AS Decimal(10, 2)), 6)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (21, 22, CAST(35.40 AS Decimal(10, 2)), 1, 1, 4, 2, CAST(300000.00 AS Decimal(10, 2)), CAST(7200000.00 AS Decimal(10, 2)), 6)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (22, 23, CAST(79.70 AS Decimal(10, 2)), 3, 1, 4, 1, CAST(475000.00 AS Decimal(10, 2)), CAST(12560000.00 AS Decimal(10, 2)), 6)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (23, 210, CAST(68.70 AS Decimal(10, 2)), 2, 2, 8, 1, CAST(400000.00 AS Decimal(10, 2)), CAST(10854000.00 AS Decimal(10, 2)), 6)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (24, 211, CAST(68.70 AS Decimal(10, 2)), 2, 2, 9, 2, CAST(400000.00 AS Decimal(10, 2)), CAST(10854000.00 AS Decimal(10, 2)), 6)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (25, 28, CAST(35.40 AS Decimal(10, 2)), 1, 1, 5, 1, CAST(350000.00 AS Decimal(10, 2)), CAST(8955000.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (26, 29, CAST(79.70 AS Decimal(10, 2)), 3, 1, 5, 2, CAST(525000.00 AS Decimal(10, 2)), CAST(14432000.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (27, 30, CAST(68.70 AS Decimal(10, 2)), 2, 1, 5, 1, CAST(450000.00 AS Decimal(10, 2)), CAST(16885000.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (28, 31, CAST(68.70 AS Decimal(10, 2)), 2, 1, 6, 1, CAST(450000.00 AS Decimal(10, 2)), CAST(16885000.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (29, 324, CAST(68.70 AS Decimal(10, 2)), 2, 2, 27, 1, CAST(450000.00 AS Decimal(10, 2)), CAST(16885000.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (30, 1, CAST(68.90 AS Decimal(10, 2)), 2, 1, 1, 2, CAST(375000.00 AS Decimal(10, 2)), CAST(10975000.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (31, 2, CAST(79.20 AS Decimal(10, 2)), 3, 1, 1, 2, CAST(420000.00 AS Decimal(10, 2)), CAST(12787000.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (32, 323, CAST(79.20 AS Decimal(10, 2)), 3, 2, 27, 2, CAST(420000.00 AS Decimal(10, 2)), CAST(14432000.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (33, 324, CAST(68.90 AS Decimal(10, 2)), 2, 2, 27, 1, CAST(375000.00 AS Decimal(10, 2)), CAST(16885000.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (34, 1, CAST(68.90 AS Decimal(10, 2)), 2, 1, 1, 1, CAST(420000.00 AS Decimal(10, 2)), CAST(14552000.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (35, 2, CAST(59.10 AS Decimal(10, 2)), 3, 1, 1, 1, CAST(440000.00 AS Decimal(10, 2)), CAST(11198000.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (36, 189, CAST(39.50 AS Decimal(10, 2)), 1, 2, 8, 2, CAST(305000.00 AS Decimal(10, 2)), CAST(8196000.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (37, 190, CAST(39.50 AS Decimal(10, 2)), 1, 2, 8, 2, CAST(305000.00 AS Decimal(10, 2)), CAST(8196000.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (38, 37, CAST(65.50 AS Decimal(10, 2)), 2, 2, 1, 1, CAST(650000.00 AS Decimal(10, 2)), CAST(7731000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (39, 38, CAST(40.60 AS Decimal(10, 2)), 1, 2, 1, 1, CAST(390000.00 AS Decimal(10, 2)), CAST(5850000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (40, 39, CAST(40.60 AS Decimal(10, 2)), 1, 2, 1, 1, CAST(390000.00 AS Decimal(10, 2)), CAST(5850000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (41, 91, CAST(40.90 AS Decimal(10, 2)), 1, 3, 5, 1, CAST(350000.00 AS Decimal(10, 2)), CAST(5955000.00 AS Decimal(10, 2)), 11)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (42, 92, CAST(62.70 AS Decimal(10, 2)), 2, 3, 5, 2, CAST(450000.00 AS Decimal(10, 2)), CAST(7453000.00 AS Decimal(10, 2)), 11)
INSERT [dbo].[Apartment] ([Id], [Number], [Surface], [RoomsCount], [Entrance], [Floor], [SellStatusId], [PlusFinishCost], [BuildingCost], [HouseId]) VALUES (43, 93, CAST(63.30 AS Decimal(10, 2)), 2, 3, 6, 1, CAST(450000.00 AS Decimal(10, 2)), CAST(7453000.00 AS Decimal(10, 2)), 11)
INSERT [dbo].[City] ([Id], [Name]) VALUES (1, N'Москва')
INSERT [dbo].[City] ([Id], [Name]) VALUES (2, N'Spb')
INSERT [dbo].[Complex] ([Id], [Name], [ConstructionStatusId], [PlusCost], [BuildingCost], [CityId]) VALUES (1, N'Level Амурская
', 1, CAST(500000.00 AS Decimal(10, 2)), CAST(60000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Complex] ([Id], [Name], [ConstructionStatusId], [PlusCost], [BuildingCost], [CityId]) VALUES (2, N'Испанские кварталы
', 2, CAST(7000000.00 AS Decimal(10, 2)), CAST(950000.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[ConstructionStatus] ([Id], [Name]) VALUES (1, N'Built')
INSERT [dbo].[ConstructionStatus] ([Id], [Name]) VALUES (2, N'Plan')
INSERT [dbo].[ConstructionStatus] ([Id], [Name]) VALUES (3, N'Release')
INSERT [dbo].[House] ([Id], [Street], [Number], [BuildingCost], [PlusCost], [ComplexId]) VALUES (1, N'Амурская', N'Г8', CAST(400000.00 AS Decimal(10, 2)), CAST(500000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[House] ([Id], [Street], [Number], [BuildingCost], [PlusCost], [ComplexId]) VALUES (3, N'Амурская', N'Г7', CAST(500000.00 AS Decimal(10, 2)), CAST(550000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[House] ([Id], [Street], [Number], [BuildingCost], [PlusCost], [ComplexId]) VALUES (5, N'Амурская', N'А2', CAST(700000.00 AS Decimal(10, 2)), CAST(850000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[House] ([Id], [Street], [Number], [BuildingCost], [PlusCost], [ComplexId]) VALUES (6, N'Амурская', N'А1', CAST(700000.00 AS Decimal(10, 2)), CAST(850000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[House] ([Id], [Street], [Number], [BuildingCost], [PlusCost], [ComplexId]) VALUES (8, N'Амурская', N'Б3', CAST(450000.00 AS Decimal(10, 2)), CAST(550000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[House] ([Id], [Street], [Number], [BuildingCost], [PlusCost], [ComplexId]) VALUES (9, N'Амурская', N'Б4', CAST(450000.00 AS Decimal(10, 2)), CAST(550000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[House] ([Id], [Street], [Number], [BuildingCost], [PlusCost], [ComplexId]) VALUES (10, N'Калужское шоссе', N'1.1', CAST(650000.00 AS Decimal(10, 2)), CAST(700000.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[House] ([Id], [Street], [Number], [BuildingCost], [PlusCost], [ComplexId]) VALUES (11, N'Калужское шоссе', N'1.2', CAST(450000.00 AS Decimal(10, 2)), CAST(500000.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[SellStatus] ([Id], [Name]) VALUES (1, N'Ready')
INSERT [dbo].[SellStatus] ([Id], [Name]) VALUES (2, N'Sold')
ALTER TABLE [dbo].[Apartment]  WITH CHECK ADD  CONSTRAINT [FK_Apartment_House] FOREIGN KEY([HouseId])
REFERENCES [dbo].[House] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Apartment] CHECK CONSTRAINT [FK_Apartment_House]
GO
ALTER TABLE [dbo].[Apartment]  WITH CHECK ADD  CONSTRAINT [FK_Apartment_SellStatus] FOREIGN KEY([SellStatusId])
REFERENCES [dbo].[SellStatus] ([Id])
GO
ALTER TABLE [dbo].[Apartment] CHECK CONSTRAINT [FK_Apartment_SellStatus]
GO
ALTER TABLE [dbo].[Complex]  WITH CHECK ADD  CONSTRAINT [FK_Complex_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [dbo].[Complex] CHECK CONSTRAINT [FK_Complex_City]
GO
ALTER TABLE [dbo].[Complex]  WITH CHECK ADD  CONSTRAINT [FK_Complex_ConstructionStatus] FOREIGN KEY([ConstructionStatusId])
REFERENCES [dbo].[ConstructionStatus] ([Id])
GO
ALTER TABLE [dbo].[Complex] CHECK CONSTRAINT [FK_Complex_ConstructionStatus]
GO
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_House_Complex] FOREIGN KEY([ComplexId])
REFERENCES [dbo].[Complex] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_House_Complex]
GO
