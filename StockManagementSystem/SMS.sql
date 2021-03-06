USE [StockManagementSystem]
GO
/****** Object:  Table [dbo].[CategorySetup]    Script Date: 5/7/2018 1:21:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategorySetup](
	[Sl] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CatagorySetup] PRIMARY KEY CLUSTERED 
(
	[Sl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 5/7/2018 1:21:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[Sl] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Sl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemSetup]    Script Date: 5/7/2018 1:21:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemSetup](
	[Sl] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
	[CompanyName] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[ReorderLevel] [int] NULL,
 CONSTRAINT [PK_ItemSetup] PRIMARY KEY CLUSTERED 
(
	[Sl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockIn]    Script Date: 5/7/2018 1:21:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockIn](
	[Sl] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NULL,
	[ItemId] [int] NULL,
	[AvailableQuantity] [int] NULL,
	[StockInQuantity] [int] NULL,
	[ItemName] [varchar](50) NULL,
 CONSTRAINT [PK_StockIn] PRIMARY KEY CLUSTERED 
(
	[Sl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockOut]    Script Date: 5/7/2018 1:21:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockOut](
	[ItemId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[StockOutQty] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](100) NOT NULL,
	[StockStatus] [varchar](50) NOT NULL,
	[dtEntry] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CategorySetup] ON 

INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (1, N'Desktops')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (2, N'Notebook')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (4, N'Netbook-Mini')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (5, N'NotePad')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (1001, N'Home Applience')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (1002, N'Kitchen Applience')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (1003, N'Cosmetics')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (1004, N'Electronics Applience')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (1005, N'Stationary')
SET IDENTITY_INSERT [dbo].[CategorySetup] OFF
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([Sl], [Name]) VALUES (1, N'Samsung')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (2, N'HP')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (3, N'Dell')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (4, N'RFL')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (5, N'Best Electronics')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (6, N'Jomuna')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (7, N'Basundhara')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (8, N'Loriel')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (9, N'GUCCI')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (10, N'Quanta')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (11, N'Apple')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (12, N'Camel')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (13, N'Fujitsu')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (14, N'Acer')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (15, N'ASUS')
SET IDENTITY_INSERT [dbo].[Company] OFF
SET IDENTITY_INSERT [dbo].[ItemSetup] ON 

INSERT [dbo].[ItemSetup] ([Sl], [CategoryName], [CompanyName], [ItemName], [ReorderLevel]) VALUES (1, N'1', N'5', N'Slim', 2)
INSERT [dbo].[ItemSetup] ([Sl], [CategoryName], [CompanyName], [ItemName], [ReorderLevel]) VALUES (2, N'2', N'10', N'Pavilion G6', 10)
INSERT [dbo].[ItemSetup] ([Sl], [CategoryName], [CompanyName], [ItemName], [ReorderLevel]) VALUES (3, N'7', N'4', N'Ultra', 2)
INSERT [dbo].[ItemSetup] ([Sl], [CategoryName], [CompanyName], [ItemName], [ReorderLevel]) VALUES (4, N'9', N'7', N'Keyboard', 100)
INSERT [dbo].[ItemSetup] ([Sl], [CategoryName], [CompanyName], [ItemName], [ReorderLevel]) VALUES (5, N'1002', N'4', N'Sink', 10)
INSERT [dbo].[ItemSetup] ([Sl], [CategoryName], [CompanyName], [ItemName], [ReorderLevel]) VALUES (6, N'1003', N'8', N'Kajal', 5)
INSERT [dbo].[ItemSetup] ([Sl], [CategoryName], [CompanyName], [ItemName], [ReorderLevel]) VALUES (7, N'1001', N'5', N'Fan', 10)
SET IDENTITY_INSERT [dbo].[ItemSetup] OFF
SET IDENTITY_INSERT [dbo].[StockIn] ON 

INSERT [dbo].[StockIn] ([Sl], [CompanyId], [ItemId], [AvailableQuantity], [StockInQuantity], [ItemName]) VALUES (1, 4, 3, 81, 2, N'Ultra')
INSERT [dbo].[StockIn] ([Sl], [CompanyId], [ItemId], [AvailableQuantity], [StockInQuantity], [ItemName]) VALUES (2, 10, 2, 382, 2, N'Pavilion G6')
INSERT [dbo].[StockIn] ([Sl], [CompanyId], [ItemId], [AvailableQuantity], [StockInQuantity], [ItemName]) VALUES (3, 5, 1, 240, 100, N'Slim')
INSERT [dbo].[StockIn] ([Sl], [CompanyId], [ItemId], [AvailableQuantity], [StockInQuantity], [ItemName]) VALUES (1002, 7, 4, 200, 200, N'Keyboard')
INSERT [dbo].[StockIn] ([Sl], [CompanyId], [ItemId], [AvailableQuantity], [StockInQuantity], [ItemName]) VALUES (1003, 8, 6, 500, 500, N'Kajal')
SET IDENTITY_INSERT [dbo].[StockIn] OFF
SET IDENTITY_INSERT [dbo].[StockOut] ON 

INSERT [dbo].[StockOut] ([ItemId], [CompanyId], [StockOutQty], [Id], [ItemName], [StockStatus], [dtEntry]) VALUES (3, 4, 10, 1, N'Ultra', N'Sell', CAST(0xA8D70000 AS SmallDateTime))
INSERT [dbo].[StockOut] ([ItemId], [CompanyId], [StockOutQty], [Id], [ItemName], [StockStatus], [dtEntry]) VALUES (3, 4, 10, 2, N'Ultra', N'Sell', CAST(0xA8D70000 AS SmallDateTime))
INSERT [dbo].[StockOut] ([ItemId], [CompanyId], [StockOutQty], [Id], [ItemName], [StockStatus], [dtEntry]) VALUES (3, 4, 10, 3, N'Ultra', N'Sell', CAST(0xA8D70000 AS SmallDateTime))
INSERT [dbo].[StockOut] ([ItemId], [CompanyId], [StockOutQty], [Id], [ItemName], [StockStatus], [dtEntry]) VALUES (1, 5, 2, 4, N'Slim', N'Sell', CAST(0xA8D70000 AS SmallDateTime))
INSERT [dbo].[StockOut] ([ItemId], [CompanyId], [StockOutQty], [Id], [ItemName], [StockStatus], [dtEntry]) VALUES (1, 5, 10, 5, N'Slim', N'Sell', CAST(0xA8D70000 AS SmallDateTime))
INSERT [dbo].[StockOut] ([ItemId], [CompanyId], [StockOutQty], [Id], [ItemName], [StockStatus], [dtEntry]) VALUES (2, 10, 2, 6, N'Pavilion G6', N'Sell', CAST(0xA8D70000 AS SmallDateTime))
INSERT [dbo].[StockOut] ([ItemId], [CompanyId], [StockOutQty], [Id], [ItemName], [StockStatus], [dtEntry]) VALUES (3, 4, 20, 8, N'Ultra', N'Sell', CAST(0xA8D80000 AS SmallDateTime))
INSERT [dbo].[StockOut] ([ItemId], [CompanyId], [StockOutQty], [Id], [ItemName], [StockStatus], [dtEntry]) VALUES (2, 10, 50, 9, N'Pavilion G6', N'Sell', CAST(0xA8D80000 AS SmallDateTime))
INSERT [dbo].[StockOut] ([ItemId], [CompanyId], [StockOutQty], [Id], [ItemName], [StockStatus], [dtEntry]) VALUES (1, 5, 50, 10, N'Slim', N'Sell', CAST(0xA8D80000 AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[StockOut] OFF
ALTER TABLE [dbo].[StockOut] ADD  CONSTRAINT [DF_StockOut_dtEntry]  DEFAULT (getdate()) FOR [dtEntry]
GO
