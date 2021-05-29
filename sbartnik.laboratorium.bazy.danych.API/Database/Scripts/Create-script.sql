USE [cars]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 5/29/2021 12:06:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands]
(
    [Id]   [uniqueidentifier] NOT NULL,
    [Name] [nvarchar](50)     NOT NULL,
    CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED
        (
         [Id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarModelColor]    Script Date: 5/29/2021 12:06:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarModelColor]
(
    [CarModelsId] [uniqueidentifier] NOT NULL,
    [ColorsId]    [uniqueidentifier] NOT NULL,
    CONSTRAINT [PK_CarModelColor] PRIMARY KEY CLUSTERED
        (
         [CarModelsId] ASC,
         [ColorsId] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarModelEngine]    Script Date: 5/29/2021 12:06:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarModelEngine]
(
    [CarModelsId] [uniqueidentifier] NOT NULL,
    [EnginesId]   [uniqueidentifier] NOT NULL,
    CONSTRAINT [PK_CarModelEngine] PRIMARY KEY CLUSTERED
        (
         [CarModelsId] ASC,
         [EnginesId] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarModels]    Script Date: 5/29/2021 12:06:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarModels]
(
    [Id]                 [uniqueidentifier] NOT NULL,
    [Name]               [nvarchar](50)     NOT NULL,
    [CarSpecificationId] [uniqueidentifier] NULL,
    [BrandId]            [uniqueidentifier] NOT NULL,
    [ManufacturedFrom]   [datetime2](7)     NOT NULL,
    [ManufacturedTo]     [datetime2](7)     NULL,
    CONSTRAINT [PK_CarModels] PRIMARY KEY CLUSTERED
        (
         [Id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarOrder]    Script Date: 5/29/2021 12:06:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarOrder]
(
    [CarsId]   [uniqueidentifier] NOT NULL,
    [OrdersId] [uniqueidentifier] NOT NULL,
    CONSTRAINT [PK_CarOrder] PRIMARY KEY CLUSTERED
        (
         [CarsId] ASC,
         [OrdersId] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 5/29/2021 12:06:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars]
(
    [Id]                          [uniqueidentifier] NOT NULL,
    [BrandId]                     [uniqueidentifier] NOT NULL,
    [ColorId]                     [uniqueidentifier] NOT NULL,
    [EngineId]                    [uniqueidentifier] NOT NULL,
    [CarModelId]                  [uniqueidentifier] NOT NULL,
    [VehicleIdentificationNumber] [nvarchar](17)     NOT NULL,
    [ProductionDate]              [datetime2](7)     NOT NULL,
    CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED
        (
         [Id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarSpecification]    Script Date: 5/29/2021 12:06:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarSpecification]
(
    [Id]            [uniqueidentifier] NOT NULL,
    [CarModelId]    [uniqueidentifier] NOT NULL,
    [NumberOfDoors] [int]              NOT NULL,
    [TrunkCapacity] [int]              NOT NULL,
    [Towbar]        [bit]              NOT NULL,
    [Weight]        [float]            NOT NULL,
    [Height]        [float]            NOT NULL,
    [Width]         [float]            NOT NULL,
    CONSTRAINT [PK_CarSpecification] PRIMARY KEY CLUSTERED
        (
         [Id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 5/29/2021 12:06:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client]
(
    [Id]         [uniqueidentifier] NOT NULL,
    [Name]       [nvarchar](max)    NOT NULL,
    [Surname]    [nvarchar](max)    NOT NULL,
    [City]       [nvarchar](max)    NOT NULL,
    [Street]     [nvarchar](max)    NOT NULL,
    [PostalCode] [nvarchar](max)    NULL,
    [Country]    [nvarchar](max)    NOT NULL,
    CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED
        (
         [Id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 5/29/2021 12:06:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors]
(
    [Id]   [uniqueidentifier] NOT NULL,
    [Name] [nvarchar](max)    NOT NULL,
    [Code] [nvarchar](450)    NOT NULL,
    CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED
        (
         [Id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactInformation]    Script Date: 5/29/2021 12:06:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactInformation]
(
    [Id]           [uniqueidentifier] NOT NULL,
    [ClientId]     [uniqueidentifier] NOT NULL,
    [MobileNumber] [int]              NOT NULL,
    [Email]        [nvarchar](max)    NOT NULL,
    CONSTRAINT [PK_ContactInformation] PRIMARY KEY CLUSTERED
        (
         [Id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Engine]    Script Date: 5/29/2021 12:06:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Engine]
(
    [Id]                [uniqueidentifier] NOT NULL,
    [Name]              [nvarchar](max)    NOT NULL,
    [EngineCapacity]    [float]            NOT NULL,
    [Power]             [float]            NOT NULL,
    [Torque]            [float]            NOT NULL,
    [NumberOfCylinders] [int]              NOT NULL,
    CONSTRAINT [PK_Engine] PRIMARY KEY CLUSTERED
        (
         [Id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 5/29/2021 12:06:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order]
(
    [Id]           [uniqueidentifier] NOT NULL,
    [SummaryPrice] [decimal](18, 2)   NOT NULL,
    [OrderDate]    [datetime2](7)     NOT NULL,
    [ClientId]     [uniqueidentifier] NOT NULL,
    CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED
        (
         [Id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Brands]
    ADD DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CarModels]
    ADD DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Cars]
    ADD DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CarSpecification]
    ADD DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Client]
    ADD DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Colors]
    ADD DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ContactInformation]
    ADD DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Engine]
    ADD DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Order]
    ADD DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CarModelColor]
    WITH CHECK ADD CONSTRAINT [FK_CarModelColor_CarModels_CarModelsId] FOREIGN KEY ([CarModelsId])
        REFERENCES [dbo].[CarModels] ([Id])
        ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarModelColor]
    CHECK CONSTRAINT [FK_CarModelColor_CarModels_CarModelsId]
GO
ALTER TABLE [dbo].[CarModelColor]
    WITH CHECK ADD CONSTRAINT [FK_CarModelColor_Colors_ColorsId] FOREIGN KEY ([ColorsId])
        REFERENCES [dbo].[Colors] ([Id])
        ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarModelColor]
    CHECK CONSTRAINT [FK_CarModelColor_Colors_ColorsId]
GO
ALTER TABLE [dbo].[CarModelEngine]
    WITH CHECK ADD CONSTRAINT [FK_CarModelEngine_CarModels_CarModelsId] FOREIGN KEY ([CarModelsId])
        REFERENCES [dbo].[CarModels] ([Id])
        ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarModelEngine]
    CHECK CONSTRAINT [FK_CarModelEngine_CarModels_CarModelsId]
GO
ALTER TABLE [dbo].[CarModelEngine]
    WITH CHECK ADD CONSTRAINT [FK_CarModelEngine_Engine_EnginesId] FOREIGN KEY ([EnginesId])
        REFERENCES [dbo].[Engine] ([Id])
        ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarModelEngine]
    CHECK CONSTRAINT [FK_CarModelEngine_Engine_EnginesId]
GO
ALTER TABLE [dbo].[CarModels]
    WITH CHECK ADD CONSTRAINT [FK_CarModels_Brands_BrandId] FOREIGN KEY ([BrandId])
        REFERENCES [dbo].[Brands] ([Id])
        ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarModels]
    CHECK CONSTRAINT [FK_CarModels_Brands_BrandId]
GO
ALTER TABLE [dbo].[CarModels]
    WITH CHECK ADD CONSTRAINT [FK_CarModels_CarSpecification_CarSpecificationId] FOREIGN KEY ([CarSpecificationId])
        REFERENCES [dbo].[CarSpecification] ([Id])
GO
ALTER TABLE [dbo].[CarModels]
    CHECK CONSTRAINT [FK_CarModels_CarSpecification_CarSpecificationId]
GO
ALTER TABLE [dbo].[CarOrder]
    WITH CHECK ADD CONSTRAINT [FK_CarOrder_Cars_CarsId] FOREIGN KEY ([CarsId])
        REFERENCES [dbo].[Cars] ([Id])
        ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarOrder]
    CHECK CONSTRAINT [FK_CarOrder_Cars_CarsId]
GO
ALTER TABLE [dbo].[CarOrder]
    WITH CHECK ADD CONSTRAINT [FK_CarOrder_Order_OrdersId] FOREIGN KEY ([OrdersId])
        REFERENCES [dbo].[Order] ([Id])
        ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarOrder]
    CHECK CONSTRAINT [FK_CarOrder_Order_OrdersId]
GO
ALTER TABLE [dbo].[Cars]
    WITH CHECK ADD CONSTRAINT [FK_Cars_Brands_BrandId] FOREIGN KEY ([BrandId])
        REFERENCES [dbo].[Brands] ([Id])
        ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cars]
    CHECK CONSTRAINT [FK_Cars_Brands_BrandId]
GO
ALTER TABLE [dbo].[Cars]
    WITH CHECK ADD CONSTRAINT [FK_Cars_CarModels_CarModelId] FOREIGN KEY ([CarModelId])
        REFERENCES [dbo].[CarModels] ([Id])
GO
ALTER TABLE [dbo].[Cars]
    CHECK CONSTRAINT [FK_Cars_CarModels_CarModelId]
GO
ALTER TABLE [dbo].[Cars]
    WITH CHECK ADD CONSTRAINT [FK_Cars_Colors_ColorId] FOREIGN KEY ([ColorId])
        REFERENCES [dbo].[Colors] ([Id])
        ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cars]
    CHECK CONSTRAINT [FK_Cars_Colors_ColorId]
GO
ALTER TABLE [dbo].[Cars]
    WITH CHECK ADD CONSTRAINT [FK_Cars_Engine_EngineId] FOREIGN KEY ([EngineId])
        REFERENCES [dbo].[Engine] ([Id])
        ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cars]
    CHECK CONSTRAINT [FK_Cars_Engine_EngineId]
GO
ALTER TABLE [dbo].[ContactInformation]
    WITH CHECK ADD CONSTRAINT [FK_ContactInformation_Client_ClientId] FOREIGN KEY ([ClientId])
        REFERENCES [dbo].[Client] ([Id])
GO
ALTER TABLE [dbo].[ContactInformation]
    CHECK CONSTRAINT [FK_ContactInformation_Client_ClientId]
GO
ALTER TABLE [dbo].[Order]
    WITH CHECK ADD CONSTRAINT [FK_Order_Client_ClientId] FOREIGN KEY ([ClientId])
        REFERENCES [dbo].[Client] ([Id])
        ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order]
    CHECK CONSTRAINT [FK_Order_Client_ClientId]
GO
