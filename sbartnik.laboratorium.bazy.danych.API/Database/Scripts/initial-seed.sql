USE [cars]
GO
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (N'cdeabba3-e22e-478a-bbf0-cfead7f7b7aa', N'BMW')
GO
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (N'0e5f27f1-dab1-4675-9806-f350b4be5c4e', N'Dacia')
GO
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (N'0225b662-29bc-455e-8a01-093e3e84b9e2', N'Skoda')
GO
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (N'2e8f0e5f-0ba2-4be7-9b78-1df452eb8bb5', N'Volvo')
GO
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (N'f021303a-682f-4ebb-bfb7-e5dc5431adef', N'VW')
GO
INSERT [dbo].[CarSpecification] ([Id], [CarModelId], [NumberOfDoors], [TrunkCapacity], [Towbar], [Weight], [Height], [Width]) VALUES (N'8b67a121-2f40-4113-9600-1475c6d89b26', N'c20f6c46-14f2-4273-8c84-4785241ceaf5', 5, 380, 0, 1320, 1322, 1430)
GO
INSERT [dbo].[CarSpecification] ([Id], [CarModelId], [NumberOfDoors], [TrunkCapacity], [Towbar], [Weight], [Height], [Width]) VALUES (N'a68b714c-5fab-4e50-babb-1c63f7ddadfd', N'ba995cc5-3f78-459d-bd1a-34ba07ee6593', 5, 450, 1, 1550, 1410, 1600)
GO
INSERT [dbo].[CarSpecification] ([Id], [CarModelId], [NumberOfDoors], [TrunkCapacity], [Towbar], [Weight], [Height], [Width]) VALUES (N'03460e75-3bdf-4c5e-9317-2d797016d9e1', N'74c89ee5-e239-48c0-8c11-c3ae465b3fae', 5, 400, 0, 1250, 1380, 1520)
GO
INSERT [dbo].[CarSpecification] ([Id], [CarModelId], [NumberOfDoors], [TrunkCapacity], [Towbar], [Weight], [Height], [Width]) VALUES (N'20957edf-3a01-4cf8-9093-3a675c7cadfb', N'd0e8e1a5-bbd8-49f4-bbbe-2a13742e4388', 5, 600, 1, 1950, 1890, 1800)
GO
INSERT [dbo].[CarSpecification] ([Id], [CarModelId], [NumberOfDoors], [TrunkCapacity], [Towbar], [Weight], [Height], [Width]) VALUES (N'dca621ab-5e44-4683-b33d-c38a08ffdae9', N'1582041f-f4e3-4a0f-849e-2c7e4c4f7edb', 5, 350, 0, 1600, 1452, 1650)
GO
INSERT [dbo].[CarSpecification] ([Id], [CarModelId], [NumberOfDoors], [TrunkCapacity], [Towbar], [Weight], [Height], [Width]) VALUES (N'300912dd-54dc-45f2-b6a2-c7eaf0aea60c', N'111f42ca-0603-45f5-a1d9-427d2e24f63f', 5, 500, 1, 1670, 1415, 1670)
GO
INSERT [dbo].[CarModels] ([Id], [Name], [CarSpecificationId], [BrandId], [ManufacturedFrom], [ManufacturedTo]) VALUES (N'd0e8e1a5-bbd8-49f4-bbbe-2a13742e4388', N'XC90', NULL, N'2e8f0e5f-0ba2-4be7-9b78-1df452eb8bb5', CAST(N'2016-09-12T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[CarModels] ([Id], [Name], [CarSpecificationId], [BrandId], [ManufacturedFrom], [ManufacturedTo]) VALUES (N'1582041f-f4e3-4a0f-849e-2c7e4c4f7edb', N'Seria 3', NULL, N'cdeabba3-e22e-478a-bbf0-cfead7f7b7aa', CAST(N'2016-04-01T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[CarModels] ([Id], [Name], [CarSpecificationId], [BrandId], [ManufacturedFrom], [ManufacturedTo]) VALUES (N'ba995cc5-3f78-459d-bd1a-34ba07ee6593', N'Octavia', NULL, N'0225b662-29bc-455e-8a01-093e3e84b9e2', CAST(N'2012-10-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-10-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[CarModels] ([Id], [Name], [CarSpecificationId], [BrandId], [ManufacturedFrom], [ManufacturedTo]) VALUES (N'111f42ca-0603-45f5-a1d9-427d2e24f63f', N'Passat', NULL, N'f021303a-682f-4ebb-bfb7-e5dc5431adef', CAST(N'2014-03-01T00:00:00.0000000' AS DateTime2), CAST(N'2019-10-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[CarModels] ([Id], [Name], [CarSpecificationId], [BrandId], [ManufacturedFrom], [ManufacturedTo]) VALUES (N'c20f6c46-14f2-4273-8c84-4785241ceaf5', N'Logan', NULL, N'0e5f27f1-dab1-4675-9806-f350b4be5c4e', CAST(N'2012-06-20T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[CarModels] ([Id], [Name], [CarSpecificationId], [BrandId], [ManufacturedFrom], [ManufacturedTo]) VALUES (N'74c89ee5-e239-48c0-8c11-c3ae465b3fae', N'Fabia', NULL, N'0225b662-29bc-455e-8a01-093e3e84b9e2', CAST(N'2008-04-01T00:00:00.0000000' AS DateTime2), CAST(N'2013-05-31T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Colors] ([Id], [Name], [Code]) VALUES (N'dde0fd22-a38c-42a6-a29d-130f59ef7373', N'Żółty', N'4212s')
GO
INSERT [dbo].[Colors] ([Id], [Name], [Code]) VALUES (N'041be4ca-d46d-4352-8272-8b57392c5a02', N'Niebieski', N'421SwW')
GO
INSERT [dbo].[Colors] ([Id], [Name], [Code]) VALUES (N'3e3e6d7c-2158-4c54-af9b-d3a46f15eb57', N'Zielony', N'2sa22')
GO
INSERT [dbo].[Colors] ([Id], [Name], [Code]) VALUES (N'910b7fb8-8c7a-413b-83fa-f015848db710', N'Czarny', N'22')
GO
INSERT [dbo].[Colors] ([Id], [Name], [Code]) VALUES (N'd70de415-7825-43bc-9cfe-f3a744febbdb', N'Czarny', N'2232')
GO
INSERT [dbo].[Colors] ([Id], [Name], [Code]) VALUES (N'fdd02b7d-4eaf-4a53-b8d1-f4c8e34ea72f', N'Srerbny', N'1233')
GO
INSERT [dbo].[Engine] ([Id], [Name], [EngineCapacity], [Power], [Torque], [NumberOfCylinders]) VALUES (N'87c83994-59b0-47d1-a2a8-0bdb4afc8e40', N'1.4 TSI', 1395, 125, 200, 4)
GO
INSERT [dbo].[Engine] ([Id], [Name], [EngineCapacity], [Power], [Torque], [NumberOfCylinders]) VALUES (N'2d992bf9-84c1-4f2f-9a44-1db684241bde', N'2.0 TSI', 1984, 280, 350, 4)
GO
INSERT [dbo].[Engine] ([Id], [Name], [EngineCapacity], [Power], [Torque], [NumberOfCylinders]) VALUES (N'b0ae84e5-b446-4e1b-9a80-61d0dbcf780d', N'2.0 TDI', 1968, 140, 350, 4)
GO
INSERT [dbo].[Engine] ([Id], [Name], [EngineCapacity], [Power], [Torque], [NumberOfCylinders]) VALUES (N'1c22e64d-330b-4d96-97b4-743d0d010735', N'M340i', 2965, 382, 500, 6)
GO
INSERT [dbo].[Engine] ([Id], [Name], [EngineCapacity], [Power], [Torque], [NumberOfCylinders]) VALUES (N'38ea962d-1f44-42f8-bdfe-9626c3301397', N'T6', 1985, 320, 400, 4)
GO
INSERT [dbo].[Engine] ([Id], [Name], [EngineCapacity], [Power], [Torque], [NumberOfCylinders]) VALUES (N'ae2efd1b-734d-426e-996b-b87030844f0c', N'1.6 16v K4M 690', 1598, 95, 152, 4)
GO
INSERT [dbo].[Engine] ([Id], [Name], [EngineCapacity], [Power], [Torque], [NumberOfCylinders]) VALUES (N'73f18ecb-8deb-41c8-beea-e767a87c371a', N'1.5 dCI', 1461, 65, 160, 4)
GO
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [EngineId], [CarModelId], [VehicleIdentificationNumber], [ProductionDate]) VALUES (N'3eb47a29-85a4-41ad-a061-00ce07baeff2', N'cdeabba3-e22e-478a-bbf0-cfead7f7b7aa', N'fdd02b7d-4eaf-4a53-b8d1-f4c8e34ea72f', N'1c22e64d-330b-4d96-97b4-743d0d010735', N'1582041f-f4e3-4a0f-849e-2c7e4c4f7edb', N'bmw22211122333', CAST(N'2019-10-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [EngineId], [CarModelId], [VehicleIdentificationNumber], [ProductionDate]) VALUES (N'ce5723f8-30da-4d8b-8f60-067347a36887', N'0225b662-29bc-455e-8a01-093e3e84b9e2', N'3e3e6d7c-2158-4c54-af9b-d3a46f15eb57', N'87c83994-59b0-47d1-a2a8-0bdb4afc8e40', N'74c89ee5-e239-48c0-8c11-c3ae465b3fae', N'skoda1123442112', CAST(N'2016-10-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [EngineId], [CarModelId], [VehicleIdentificationNumber], [ProductionDate]) VALUES (N'ccfe985c-e060-47b9-9635-5f4d84c2a171', N'2e8f0e5f-0ba2-4be7-9b78-1df452eb8bb5', N'910b7fb8-8c7a-413b-83fa-f015848db710', N'38ea962d-1f44-42f8-bdfe-9626c3301397', N'd0e8e1a5-bbd8-49f4-bbbe-2a13742e4388', N'volvovin222444', CAST(N'2020-10-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [EngineId], [CarModelId], [VehicleIdentificationNumber], [ProductionDate]) VALUES (N'7f12f7f9-e0db-4a21-bdb9-c09ad1b808a7', N'2e8f0e5f-0ba2-4be7-9b78-1df452eb8bb5', N'910b7fb8-8c7a-413b-83fa-f015848db710', N'38ea962d-1f44-42f8-bdfe-9626c3301397', N'd0e8e1a5-bbd8-49f4-bbbe-2a13742e4388', N'volvovin222', CAST(N'2020-10-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [EngineId], [CarModelId], [VehicleIdentificationNumber], [ProductionDate]) VALUES (N'55f38743-aaf1-417c-bb40-ed559569fe7f', N'f021303a-682f-4ebb-bfb7-e5dc5431adef', N'd70de415-7825-43bc-9cfe-f3a744febbdb', N'b0ae84e5-b446-4e1b-9a80-61d0dbcf780d', N'111f42ca-0603-45f5-a1d9-427d2e24f63f', N'vw11234421123', CAST(N'2017-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Client] ([Id], [Name], [Surname], [City], [Street], [PostalCode], [Country]) VALUES (N'b266b8af-c49b-45b3-b746-6237d8ed11e2', N'Łukasz', N'Gruszka', N'Szczecin', N'Warszawska', N'20-222', N'Poland')
GO
INSERT [dbo].[Client] ([Id], [Name], [Surname], [City], [Street], [PostalCode], [Country]) VALUES (N'80529bdd-463f-4cb0-a3bb-7b2a41d63c5f', N'Janina', N'Kornacka', N'Kraków', N'Krakowska', N'20-240', N'Poland')
GO
INSERT [dbo].[Client] ([Id], [Name], [Surname], [City], [Street], [PostalCode], [Country]) VALUES (N'32902ad6-0193-4623-8feb-99291703ab23', N'Kazimierz', N'Górny', N'Warszawa', N'Niepodległości', N'50-202', N'Poland')
GO
INSERT [dbo].[Client] ([Id], [Name], [Surname], [City], [Street], [PostalCode], [Country]) VALUES (N'0d413909-8636-47be-8305-db21dc851ca9', N'Janusz', N'Kowalski', N'Wrocław', N'Wrocławska', N'20-300', N'Poland')
GO
INSERT [dbo].[Client] ([Id], [Name], [Surname], [City], [Street], [PostalCode], [Country]) VALUES (N'aaea5d69-caa1-4fc9-9771-ddcbb6f842de', N'Hans', N'Schmit', N'Hamburg', N'Berliner strasse', N'22233', N'Germany')
GO
INSERT [dbo].[ContactInformation] ([Id], [ClientId], [MobileNumber], [Email]) VALUES (N'f254acb8-61e2-4056-ad9b-270354427c65', N'32902ad6-0193-4623-8feb-99291703ab23', 608092233, N'kaziu@wp.pl')
GO
INSERT [dbo].[ContactInformation] ([Id], [ClientId], [MobileNumber], [Email]) VALUES (N'2a9ca3d7-840e-4cb9-9613-39031d78acf5', N'80529bdd-463f-4cb0-a3bb-7b2a41d63c5f', 550222383, N'jkornacka2@gmail.com')
GO
INSERT [dbo].[ContactInformation] ([Id], [ClientId], [MobileNumber], [Email]) VALUES (N'2790f159-d252-40d7-b31e-5f0aeca59787', N'b266b8af-c49b-45b3-b746-6237d8ed11e2', 500600700, N'lgruszka@gmail.com')
GO
INSERT [dbo].[ContactInformation] ([Id], [ClientId], [MobileNumber], [Email]) VALUES (N'cfa23ad4-550f-43e5-be89-7af84d80b2f7', N'0d413909-8636-47be-8305-db21dc851ca9', 689984659, N'jkowalski@onet.pl')
GO
INSERT [dbo].[ContactInformation] ([Id], [ClientId], [MobileNumber], [Email]) VALUES (N'c1399d55-05b5-4f70-93c8-ee166d0910c0', N'aaea5d69-caa1-4fc9-9771-ddcbb6f842de', 665889145, N'hschmidt@gmail.com')
GO
INSERT [dbo].[Order] ([Id], [SummaryPrice], [OrderDate], [ClientId]) VALUES (N'96b5b738-c3b4-494c-8a97-1df36a0fb0f8', CAST(350000.00 AS Decimal(18, 2)), CAST(N'2021-03-21T00:00:00.0000000' AS DateTime2), N'0d413909-8636-47be-8305-db21dc851ca9')
GO
INSERT [dbo].[Order] ([Id], [SummaryPrice], [OrderDate], [ClientId]) VALUES (N'5101c596-c48d-4d67-ae07-2fb8bd738acc', CAST(150000.00 AS Decimal(18, 2)), CAST(N'2019-04-03T00:00:00.0000000' AS DateTime2), N'32902ad6-0193-4623-8feb-99291703ab23')
GO
INSERT [dbo].[Order] ([Id], [SummaryPrice], [OrderDate], [ClientId]) VALUES (N'7cf19dee-1009-42cd-a9a5-46c62de74bf1', CAST(40000.00 AS Decimal(18, 2)), CAST(N'2020-05-13T00:00:00.0000000' AS DateTime2), N'80529bdd-463f-4cb0-a3bb-7b2a41d63c5f')
GO
INSERT [dbo].[Order] ([Id], [SummaryPrice], [OrderDate], [ClientId]) VALUES (N'5948e81c-c0bf-4bfc-b1a1-7712f3ef5b47', CAST(70000.00 AS Decimal(18, 2)), CAST(N'2021-03-15T00:00:00.0000000' AS DateTime2), N'b266b8af-c49b-45b3-b746-6237d8ed11e2')
GO
INSERT [dbo].[Order] ([Id], [SummaryPrice], [OrderDate], [ClientId]) VALUES (N'd24c1b0d-4fb6-4d96-8f09-e0b70e47793b', CAST(280000.00 AS Decimal(18, 2)), CAST(N'2020-12-15T00:00:00.0000000' AS DateTime2), N'aaea5d69-caa1-4fc9-9771-ddcbb6f842de')
GO
INSERT [dbo].[CarModelColor] ([CarModelsId], [ColorsId]) VALUES (N'74c89ee5-e239-48c0-8c11-c3ae465b3fae', N'dde0fd22-a38c-42a6-a29d-130f59ef7373')
GO
INSERT [dbo].[CarModelColor] ([CarModelsId], [ColorsId]) VALUES (N'1582041f-f4e3-4a0f-849e-2c7e4c4f7edb', N'041be4ca-d46d-4352-8272-8b57392c5a02')
GO
INSERT [dbo].[CarModelColor] ([CarModelsId], [ColorsId]) VALUES (N'74c89ee5-e239-48c0-8c11-c3ae465b3fae', N'041be4ca-d46d-4352-8272-8b57392c5a02')
GO
INSERT [dbo].[CarModelColor] ([CarModelsId], [ColorsId]) VALUES (N'ba995cc5-3f78-459d-bd1a-34ba07ee6593', N'3e3e6d7c-2158-4c54-af9b-d3a46f15eb57')
GO
INSERT [dbo].[CarModelColor] ([CarModelsId], [ColorsId]) VALUES (N'111f42ca-0603-45f5-a1d9-427d2e24f63f', N'3e3e6d7c-2158-4c54-af9b-d3a46f15eb57')
GO
INSERT [dbo].[CarModelColor] ([CarModelsId], [ColorsId]) VALUES (N'74c89ee5-e239-48c0-8c11-c3ae465b3fae', N'3e3e6d7c-2158-4c54-af9b-d3a46f15eb57')
GO
INSERT [dbo].[CarModelColor] ([CarModelsId], [ColorsId]) VALUES (N'd0e8e1a5-bbd8-49f4-bbbe-2a13742e4388', N'910b7fb8-8c7a-413b-83fa-f015848db710')
GO
INSERT [dbo].[CarModelColor] ([CarModelsId], [ColorsId]) VALUES (N'111f42ca-0603-45f5-a1d9-427d2e24f63f', N'd70de415-7825-43bc-9cfe-f3a744febbdb')
GO
INSERT [dbo].[CarModelColor] ([CarModelsId], [ColorsId]) VALUES (N'd0e8e1a5-bbd8-49f4-bbbe-2a13742e4388', N'fdd02b7d-4eaf-4a53-b8d1-f4c8e34ea72f')
GO
INSERT [dbo].[CarModelColor] ([CarModelsId], [ColorsId]) VALUES (N'1582041f-f4e3-4a0f-849e-2c7e4c4f7edb', N'fdd02b7d-4eaf-4a53-b8d1-f4c8e34ea72f')
GO
INSERT [dbo].[CarModelColor] ([CarModelsId], [ColorsId]) VALUES (N'ba995cc5-3f78-459d-bd1a-34ba07ee6593', N'fdd02b7d-4eaf-4a53-b8d1-f4c8e34ea72f')
GO
INSERT [dbo].[CarModelColor] ([CarModelsId], [ColorsId]) VALUES (N'c20f6c46-14f2-4273-8c84-4785241ceaf5', N'fdd02b7d-4eaf-4a53-b8d1-f4c8e34ea72f')
GO
INSERT [dbo].[CarModelEngine] ([CarModelsId], [EnginesId]) VALUES (N'ba995cc5-3f78-459d-bd1a-34ba07ee6593', N'87c83994-59b0-47d1-a2a8-0bdb4afc8e40')
GO
INSERT [dbo].[CarModelEngine] ([CarModelsId], [EnginesId]) VALUES (N'74c89ee5-e239-48c0-8c11-c3ae465b3fae', N'87c83994-59b0-47d1-a2a8-0bdb4afc8e40')
GO
INSERT [dbo].[CarModelEngine] ([CarModelsId], [EnginesId]) VALUES (N'ba995cc5-3f78-459d-bd1a-34ba07ee6593', N'2d992bf9-84c1-4f2f-9a44-1db684241bde')
GO
INSERT [dbo].[CarModelEngine] ([CarModelsId], [EnginesId]) VALUES (N'111f42ca-0603-45f5-a1d9-427d2e24f63f', N'2d992bf9-84c1-4f2f-9a44-1db684241bde')
GO
INSERT [dbo].[CarModelEngine] ([CarModelsId], [EnginesId]) VALUES (N'ba995cc5-3f78-459d-bd1a-34ba07ee6593', N'b0ae84e5-b446-4e1b-9a80-61d0dbcf780d')
GO
INSERT [dbo].[CarModelEngine] ([CarModelsId], [EnginesId]) VALUES (N'111f42ca-0603-45f5-a1d9-427d2e24f63f', N'b0ae84e5-b446-4e1b-9a80-61d0dbcf780d')
GO
INSERT [dbo].[CarModelEngine] ([CarModelsId], [EnginesId]) VALUES (N'1582041f-f4e3-4a0f-849e-2c7e4c4f7edb', N'1c22e64d-330b-4d96-97b4-743d0d010735')
GO
INSERT [dbo].[CarModelEngine] ([CarModelsId], [EnginesId]) VALUES (N'd0e8e1a5-bbd8-49f4-bbbe-2a13742e4388', N'38ea962d-1f44-42f8-bdfe-9626c3301397')
GO
INSERT [dbo].[CarModelEngine] ([CarModelsId], [EnginesId]) VALUES (N'c20f6c46-14f2-4273-8c84-4785241ceaf5', N'ae2efd1b-734d-426e-996b-b87030844f0c')
GO
INSERT [dbo].[CarModelEngine] ([CarModelsId], [EnginesId]) VALUES (N'c20f6c46-14f2-4273-8c84-4785241ceaf5', N'73f18ecb-8deb-41c8-beea-e767a87c371a')
GO
INSERT [dbo].[CarOrder] ([CarsId], [OrdersId]) VALUES (N'3eb47a29-85a4-41ad-a061-00ce07baeff2', N'96b5b738-c3b4-494c-8a97-1df36a0fb0f8')
GO
INSERT [dbo].[CarOrder] ([CarsId], [OrdersId]) VALUES (N'ccfe985c-e060-47b9-9635-5f4d84c2a171', N'5101c596-c48d-4d67-ae07-2fb8bd738acc')
GO
INSERT [dbo].[CarOrder] ([CarsId], [OrdersId]) VALUES (N'ce5723f8-30da-4d8b-8f60-067347a36887', N'7cf19dee-1009-42cd-a9a5-46c62de74bf1')
GO
INSERT [dbo].[CarOrder] ([CarsId], [OrdersId]) VALUES (N'55f38743-aaf1-417c-bb40-ed559569fe7f', N'5948e81c-c0bf-4bfc-b1a1-7712f3ef5b47')
GO
INSERT [dbo].[CarOrder] ([CarsId], [OrdersId]) VALUES (N'7f12f7f9-e0db-4a21-bdb9-c09ad1b808a7', N'd24c1b0d-4fb6-4d96-8f09-e0b70e47793b')
GO
