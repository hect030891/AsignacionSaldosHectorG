-- * PRUEBA TÉCNICA HECTOR GUTIÉRREZ* --
-- * SCRIPT PARA LA CREACIÓN DE DB Y LAS ENTIDADES * --

IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'GestoresCobrosHG')
BEGIN
   
    CREATE DATABASE GestoresCobrosHG;
    PRINT 'Base de datos GestoresCobrosDB creada exitosamente.';
END
ELSE
BEGIN
    PRINT 'La base de datos GestoresCobrosHG ya existe.';
END
GO


USE [GestoresCobrosHG]
GO
/****** Object:  Table [dbo].[Asignaciones]    Script Date: 3/10/2024 01:31:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignaciones](
	[Id] [uniqueidentifier] NOT NULL,
	[GestorId] [uniqueidentifier] NULL,
	[CuentaId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuentas]    Script Date: 3/10/2024 01:31:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuentas](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](255) NULL,
	[Saldo] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gestores]    Script Date: 3/10/2024 01:31:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gestores](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'88bc30d5-fa25-42c2-a203-06a26b33c03f', N'5cb7e178-8156-4901-9747-429121059169', N'5e88caae-745e-42a1-9526-b2afdc4378ba')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'fc673ddc-a32c-42d8-a808-132057e1847e', N'0fe690b8-1f7f-4ae4-81de-fd3effcb7854', N'341768fa-9722-484e-87bc-4f23f1c668cd')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'5d122959-3f8a-4a30-9d4c-1525db4e44da', N'01f3d81c-9d50-4c5e-9aed-bd6458cdacda', N'64d46337-2611-4210-b541-a246aa7b62ed')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'667dccba-6980-4f1a-b0ee-1a3d9516f375', N'251ee6d4-0c4b-4c47-bec2-ccc2a8189f39', N'acd0b6a0-05f5-4104-a852-e7767d584cb4')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'a7bb3cf7-fe14-4a61-980f-1d52613d1540', N'251ee6d4-0c4b-4c47-bec2-ccc2a8189f39', N'40298f7a-436a-4714-adb4-c4f8312d2191')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'8afe0f68-6274-4a79-932a-1dfb9649c580', N'cbe63ddb-b598-4d9a-94e7-16decbe5c386', N'136e6a24-1212-4070-9ee5-7aeb43efaefa')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'88099e19-af09-4fb0-ac6e-1efe4ad90526', N'a3e8cfa4-f38c-4fbf-9b27-4168d90be245', N'5e70b5af-2950-46ca-a42c-3f780f19828b')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'13a22f92-32ff-49be-b4ee-23e57912b894', N'58a79793-1142-4873-8da6-62eac8432ab9', N'2b4e3058-d882-49ec-924f-ccdb0e8a11ab')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'2721c7d3-f728-4ec9-ab8f-37dc9ae6bc14', N'cbe63ddb-b598-4d9a-94e7-16decbe5c386', N'5ba45efc-b016-4d82-ba05-2e54d248329b')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'cbb42c5f-d242-41da-912a-3d7074a6d894', N'7e664c11-fc10-4871-9063-e022c7f81388', N'96682365-4ea4-4036-bd79-8cb9aea349f0')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'f70afbfb-dc03-4b15-bc0f-4527a6f64ed6', N'01f3d81c-9d50-4c5e-9aed-bd6458cdacda', N'f14640f4-a783-477a-bec3-c6400980d7e1')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'e801bd79-f732-4249-b77d-489e43372953', N'f415214a-8848-4ce8-953e-d2cbc77b2ba4', N'b070101c-727d-49ef-91b2-00813d690196')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'd450154f-28c9-4146-8f3f-4d58871771f6', N'234bf1f0-7b2b-485d-a3f7-5b90cfa193b5', N'bf8d2420-d467-4994-aeed-6b2286eee773')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'a652b0e3-dfb5-4de3-89de-4ef0f8eb3eb5', N'234bf1f0-7b2b-485d-a3f7-5b90cfa193b5', N'9c5594c1-5e02-47b6-bde8-4d1a430ccb97')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'0806d0ca-6d2b-48cd-b66b-528ad9a0af5b', N'0fe690b8-1f7f-4ae4-81de-fd3effcb7854', N'7a767a05-bedf-4086-9ef9-9928f39362d4')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'4de9cbda-0454-4596-84d4-60a412f7663d', N'7e664c11-fc10-4871-9063-e022c7f81388', N'cf1df50b-bdf4-4b0a-8b04-1847274efb63')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'3435bb42-7f93-40ee-93df-664f1f7852dd', N'58a79793-1142-4873-8da6-62eac8432ab9', N'52159a39-8db9-4f69-a0da-d4d551e4c67b')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'1f0ec06f-d256-47ae-b008-667d10ba8dc9', N'58a79793-1142-4873-8da6-62eac8432ab9', N'6d290cee-dd7d-4c80-b7a5-5a6a33ed5e6f')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'c2da1236-d00c-48f4-adc1-6be26f41da0b', N'5cb7e178-8156-4901-9747-429121059169', N'06a99e8a-1fdf-4a0e-8a86-4332df5b1767')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'18dfcb56-7afe-4c44-ba7b-7a6266b7ea65', N'234bf1f0-7b2b-485d-a3f7-5b90cfa193b5', N'99b37d31-64db-48e2-b514-2e97268f346b')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'3b84fbd2-1727-4370-8418-7cdcbf7d38d2', N'5cb7e178-8156-4901-9747-429121059169', N'72a4f33b-26a1-4fa6-ab4c-c4c43e401643')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'ff0e0911-3b52-4e95-bae9-87f70b3c3b51', N'0fe690b8-1f7f-4ae4-81de-fd3effcb7854', N'2f6b704e-7a3e-4392-b9d5-3fe33bd36782')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'f133465f-dcbb-4a12-acb5-88f159072e4b', N'f415214a-8848-4ce8-953e-d2cbc77b2ba4', N'a5c56746-6ae5-442a-b7f7-165978f850ff')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'ecbf1059-39ca-428e-81ad-8cbe266bd687', N'7e664c11-fc10-4871-9063-e022c7f81388', N'2c18ada3-0cf4-41e0-8439-0bf211314605')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'b0d4e498-17db-46e4-8c1f-96adb1c638f6', N'5cb7e178-8156-4901-9747-429121059169', N'586432d8-a111-4203-ad0a-5a060ca487d0')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'd9ba1b1a-d0cd-42f8-a46b-99453db9fa46', N'01f3d81c-9d50-4c5e-9aed-bd6458cdacda', N'90b2a836-bc37-42ad-85a1-fcb6b10c7643')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'e4eba1cf-af08-42b9-8802-a05d621d6410', N'01f3d81c-9d50-4c5e-9aed-bd6458cdacda', N'a81fc16b-dd62-43e5-90b2-5e26f086806e')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'fd9f127c-9ff5-4c79-8dce-a0ca857a5b9f', N'a3e8cfa4-f38c-4fbf-9b27-4168d90be245', N'e449133d-b218-4014-88f0-517ec7e2c437')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'142b04bc-8fa9-4a14-84b7-a2e9aac56380', N'f415214a-8848-4ce8-953e-d2cbc77b2ba4', N'd229aef5-2236-42d6-969d-2d81d6e71d30')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'4c988c32-87d7-47aa-9e79-a8747073363c', N'a3e8cfa4-f38c-4fbf-9b27-4168d90be245', N'774dd736-a3a4-4eda-962d-704e614fd0ff')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'0e04b18f-9ec3-45e2-ab4e-aef1a28f806b', N'0fe690b8-1f7f-4ae4-81de-fd3effcb7854', N'902e01b9-5aa9-48dd-a028-24ae60ddd8aa')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'1ef4aeab-785d-4c87-936f-b3b7f5d2950a', N'7e664c11-fc10-4871-9063-e022c7f81388', N'9a161053-bd70-43e4-ab12-e77758abea61')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'a6d0e360-6ae7-4ecc-8e5e-b9392bf8b060', N'f415214a-8848-4ce8-953e-d2cbc77b2ba4', N'ebabbf57-326c-49cf-a324-701834524db4')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'a13e7150-be73-452e-9751-bcb7108d8552', N'cbe63ddb-b598-4d9a-94e7-16decbe5c386', N'7b303fa5-bc44-475e-8ad3-fd10c0038856')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'151805d1-14f6-4883-a58b-c2bc4da7b85b', N'cbe63ddb-b598-4d9a-94e7-16decbe5c386', N'ea1a84a0-242b-43b7-a133-b8c4a94abc3f')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'fa7f3ce3-28a9-4a13-8fa6-d432e86495c2', N'a3e8cfa4-f38c-4fbf-9b27-4168d90be245', N'b8c7d802-c543-4e4e-a837-010e97d9ae3b')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'e6b267a7-cb35-4c9e-815e-d656abfc9e0c', N'01f3d81c-9d50-4c5e-9aed-bd6458cdacda', N'6c0e206d-aa0e-4ca4-9e0f-d52409515f01')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'7f20d582-75ee-4ba7-aee2-d65d910f3ddf', N'f415214a-8848-4ce8-953e-d2cbc77b2ba4', N'cf0706c2-3e8a-4590-b88d-8dc867c9b210')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'64d55026-db5b-4813-9de9-d91d83b77b60', N'251ee6d4-0c4b-4c47-bec2-ccc2a8189f39', N'49af1473-fa02-4ded-bd6b-9234ee80e1d9')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'97f449ab-03d9-4dce-ac70-dbaeb994cfe9', N'58a79793-1142-4873-8da6-62eac8432ab9', N'e423411f-1a37-4a9a-b422-c4c3ba0f4555')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'acc6fad0-6081-48f0-adcd-e1013fae3ba5', N'a3e8cfa4-f38c-4fbf-9b27-4168d90be245', N'1c2c4700-e4b5-4b40-abf5-3302789950d7')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'5a5c684b-ea56-49e8-80d9-e3fa07a9cde7', N'251ee6d4-0c4b-4c47-bec2-ccc2a8189f39', N'cb82e46a-1754-48fd-bebc-732e2fa7f874')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'0677008a-7013-49fc-8e68-e421b2831043', N'234bf1f0-7b2b-485d-a3f7-5b90cfa193b5', N'92a1f059-a7d1-4429-91fd-9d1c16bdbcc0')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'531b08ea-6687-4f5f-b8da-e4c1f8422a94', N'0fe690b8-1f7f-4ae4-81de-fd3effcb7854', N'58d29b90-fe52-42e5-8f69-0a6735c8a666')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'a5b99408-550a-47e6-bf6e-eb42b316f44f', N'7e664c11-fc10-4871-9063-e022c7f81388', N'4ea519b5-ed6b-4f02-9d67-c4d3022ba184')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'5af63551-d9c7-4081-9b04-edae0d3f572e', N'251ee6d4-0c4b-4c47-bec2-ccc2a8189f39', N'ad96980f-dc62-44a3-bbb7-9047fedccd16')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'dd2e163c-3e1a-40ff-bb33-f2c455acea92', N'234bf1f0-7b2b-485d-a3f7-5b90cfa193b5', N'3cc7f922-4530-4fe0-9164-dd2eafbc44b4')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'9b18e6f5-d919-424d-a66a-fd6f363e2396', N'58a79793-1142-4873-8da6-62eac8432ab9', N'09c3b64b-6735-4962-9398-96cb83720a1c')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'0dd0449f-bb0d-42be-b232-feb512e9006b', N'5cb7e178-8156-4901-9747-429121059169', N'7efb448a-2b4c-452b-9ed6-8d9f06b41107')
INSERT [dbo].[Asignaciones] ([Id], [GestorId], [CuentaId]) VALUES (N'e47931c7-7b6f-4797-801d-ff22eeb8f578', N'cbe63ddb-b598-4d9a-94e7-16decbe5c386', N'74fdd4db-d3db-4922-8ff0-aed6b163e9e1')
GO
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'b070101c-727d-49ef-91b2-00813d690196', N'Cuenta Cliente 33', CAST(4424.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'b8c7d802-c543-4e4e-a837-010e97d9ae3b', N'Cuenta Cliente 39', CAST(4120.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'58d29b90-fe52-42e5-8f69-0a6735c8a666', N'Cuenta Cliente 45', CAST(272.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'2c18ada3-0cf4-41e0-8439-0bf211314605', N'Cuenta Cliente 35', CAST(2643.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'a5c56746-6ae5-442a-b7f7-165978f850ff', N'Cuenta Cliente 14', CAST(3613.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'cf1df50b-bdf4-4b0a-8b04-1847274efb63', N'Cuenta Cliente 5', CAST(627.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'902e01b9-5aa9-48dd-a028-24ae60ddd8aa', N'Cuenta Cliente 37', CAST(4193.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'd229aef5-2236-42d6-969d-2d81d6e71d30', N'Cuenta Cliente 38', CAST(2893.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'5ba45efc-b016-4d82-ba05-2e54d248329b', N'Cuenta Cliente 16', CAST(4130.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'99b37d31-64db-48e2-b514-2e97268f346b', N'Cuenta Cliente 8', CAST(3958.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'1c2c4700-e4b5-4b40-abf5-3302789950d7', N'Cuenta Cliente 31', CAST(4900.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'5e70b5af-2950-46ca-a42c-3f780f19828b', N'Cuenta Cliente 41', CAST(2355.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'2f6b704e-7a3e-4392-b9d5-3fe33bd36782', N'Cuenta Cliente 17', CAST(2007.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'06a99e8a-1fdf-4a0e-8a86-4332df5b1767', N'Cuenta Cliente 27', CAST(3286.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'9c5594c1-5e02-47b6-bde8-4d1a430ccb97', N'Cuenta Cliente 28', CAST(2293.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'341768fa-9722-484e-87bc-4f23f1c668cd', N'Cuenta Cliente 19', CAST(2591.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'e449133d-b218-4014-88f0-517ec7e2c437', N'Cuenta Cliente 30', CAST(3315.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'586432d8-a111-4203-ad0a-5a060ca487d0', N'Cuenta Cliente 50', CAST(4011.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'6d290cee-dd7d-4c80-b7a5-5a6a33ed5e6f', N'Cuenta Cliente 43', CAST(3064.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'a81fc16b-dd62-43e5-90b2-5e26f086806e', N'Cuenta Cliente 34', CAST(4505.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'bf8d2420-d467-4994-aeed-6b2286eee773', N'Cuenta Cliente 3', CAST(4726.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'ebabbf57-326c-49cf-a324-701834524db4', N'Cuenta Cliente 11', CAST(2166.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'774dd736-a3a4-4eda-962d-704e614fd0ff', N'Cuenta Cliente 6', CAST(1784.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'cb82e46a-1754-48fd-bebc-732e2fa7f874', N'Cuenta Cliente 22', CAST(2975.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'136e6a24-1212-4070-9ee5-7aeb43efaefa', N'Cuenta Cliente 15', CAST(2389.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'96682365-4ea4-4036-bd79-8cb9aea349f0', N'Cuenta Cliente 26', CAST(3588.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'7efb448a-2b4c-452b-9ed6-8d9f06b41107', N'Cuenta Cliente 13', CAST(2325.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'cf0706c2-3e8a-4590-b88d-8dc867c9b210', N'Cuenta Cliente 32', CAST(794.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'ad96980f-dc62-44a3-bbb7-9047fedccd16', N'Cuenta Cliente 23', CAST(4470.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'49af1473-fa02-4ded-bd6b-9234ee80e1d9', N'Cuenta Cliente 21', CAST(3888.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'09c3b64b-6735-4962-9398-96cb83720a1c', N'Cuenta Cliente 24', CAST(2291.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'7a767a05-bedf-4086-9ef9-9928f39362d4', N'Cuenta Cliente 25', CAST(3393.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'92a1f059-a7d1-4429-91fd-9d1c16bdbcc0', N'Cuenta Cliente 4', CAST(1414.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'64d46337-2611-4210-b541-a246aa7b62ed', N'Cuenta Cliente 46', CAST(1299.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'74fdd4db-d3db-4922-8ff0-aed6b163e9e1', N'Cuenta Cliente 49', CAST(4927.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'5e88caae-745e-42a1-9526-b2afdc4378ba', N'Cuenta Cliente 7', CAST(1634.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'ea1a84a0-242b-43b7-a133-b8c4a94abc3f', N'Cuenta Cliente 40', CAST(3352.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'e423411f-1a37-4a9a-b422-c4c3ba0f4555', N'Cuenta Cliente 10', CAST(1347.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'72a4f33b-26a1-4fa6-ab4c-c4c43e401643', N'Cuenta Cliente 44', CAST(4893.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'4ea519b5-ed6b-4f02-9d67-c4d3022ba184', N'Cuenta Cliente 29', CAST(4353.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'40298f7a-436a-4714-adb4-c4f8312d2191', N'Cuenta Cliente 12', CAST(820.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'f14640f4-a783-477a-bec3-c6400980d7e1', N'Cuenta Cliente 20', CAST(3940.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'2b4e3058-d882-49ec-924f-ccdb0e8a11ab', N'Cuenta Cliente 47', CAST(4725.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'52159a39-8db9-4f69-a0da-d4d551e4c67b', N'Cuenta Cliente 2', CAST(3953.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'6c0e206d-aa0e-4ca4-9e0f-d52409515f01', N'Cuenta Cliente 1', CAST(2277.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'3cc7f922-4530-4fe0-9164-dd2eafbc44b4', N'Cuenta Cliente 42', CAST(3219.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'acd0b6a0-05f5-4104-a852-e7767d584cb4', N'Cuenta Cliente 36', CAST(2217.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'9a161053-bd70-43e4-ab12-e77758abea61', N'Cuenta Cliente 9', CAST(2156.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'90b2a836-bc37-42ad-85a1-fcb6b10c7643', N'Cuenta Cliente 18', CAST(3027.00 AS Decimal(18, 2)))
INSERT [dbo].[Cuentas] ([Id], [Nombre], [Saldo]) VALUES (N'7b303fa5-bc44-475e-8ad3-fd10c0038856', N'Cuenta Cliente 48', CAST(1900.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Gestores] ([Id], [Nombre]) VALUES (N'cbe63ddb-b598-4d9a-94e7-16decbe5c386', N'Gestor 9')
INSERT [dbo].[Gestores] ([Id], [Nombre]) VALUES (N'a3e8cfa4-f38c-4fbf-9b27-4168d90be245', N'Gestor 3')
INSERT [dbo].[Gestores] ([Id], [Nombre]) VALUES (N'5cb7e178-8156-4901-9747-429121059169', N'Gestor 6')
INSERT [dbo].[Gestores] ([Id], [Nombre]) VALUES (N'234bf1f0-7b2b-485d-a3f7-5b90cfa193b5', N'Gestor 1')
INSERT [dbo].[Gestores] ([Id], [Nombre]) VALUES (N'58a79793-1142-4873-8da6-62eac8432ab9', N'Gestor 2')
INSERT [dbo].[Gestores] ([Id], [Nombre]) VALUES (N'01f3d81c-9d50-4c5e-9aed-bd6458cdacda', N'Gestor 8')
INSERT [dbo].[Gestores] ([Id], [Nombre]) VALUES (N'251ee6d4-0c4b-4c47-bec2-ccc2a8189f39', N'Gestor 10')
INSERT [dbo].[Gestores] ([Id], [Nombre]) VALUES (N'f415214a-8848-4ce8-953e-d2cbc77b2ba4', N'Gestor 5')
INSERT [dbo].[Gestores] ([Id], [Nombre]) VALUES (N'7e664c11-fc10-4871-9063-e022c7f81388', N'Gestor 7')
INSERT [dbo].[Gestores] ([Id], [Nombre]) VALUES (N'0fe690b8-1f7f-4ae4-81de-fd3effcb7854', N'Gestor 4')
GO
ALTER TABLE [dbo].[Asignaciones] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Cuentas] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Gestores] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Asignaciones]  WITH CHECK ADD FOREIGN KEY([CuentaId])
REFERENCES [dbo].[Cuentas] ([Id])
GO
ALTER TABLE [dbo].[Asignaciones]  WITH CHECK ADD FOREIGN KEY([GestorId])
REFERENCES [dbo].[Gestores] ([Id])
GO
/****** Object:  StoredProcedure [dbo].[PROC_ASIGNACION_SALDO]    Script Date: 3/10/2024 01:31:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_ASIGNACION_SALDO]
AS
BEGIN
    -- Variables necesarias
    DECLARE @GestorId UNIQUEIDENTIFIER;
    DECLARE @CuentaId UNIQUEIDENTIFIER;
    DECLARE @Saldo DECIMAL(18, 2);
    DECLARE @SaldosCount INT;
    DECLARE @GestoresCount INT;
    DECLARE @Iteraciones INT;
    DECLARE @Index INT = 1;

    PRINT 'Inicio del procedimiento almacenado';

    -- Crear una tabla temporal para almacenar los saldos ordenados
    CREATE TABLE #SaldosOrdenados (
        Id UNIQUEIDENTIFIER,
        Saldo DECIMAL(18, 2)
    );

    -- Insertar los saldos de la tabla Cuentas en la tabla temporal
    INSERT INTO #SaldosOrdenados (Id, Saldo)
    SELECT Id, Saldo
    FROM Cuentas
    ORDER BY Saldo DESC;

    -- Contar el número total de saldos y gestores
    SELECT @SaldosCount = COUNT(*) FROM #SaldosOrdenados;
    SELECT @GestoresCount = COUNT(*) FROM Gestores;

    PRINT 'Número de gestores: ' + CAST(@GestoresCount AS NVARCHAR(10));
    PRINT 'Número de saldos: ' + CAST(@SaldosCount AS NVARCHAR(10));

    -- Calcular el número de iteraciones (redondeo hacia arriba)
    SET @Iteraciones = CEILING((1.0 * @SaldosCount) / @GestoresCount);
    PRINT 'Número de iteraciones: ' + CAST(@Iteraciones AS NVARCHAR(10));

	-- Garantizar que la tabla de Asignaciones se encuentre vacia
	DELETE FROM Asignaciones

    -- Bucle para asignar saldos a gestores
    WHILE @Index <= @Iteraciones
    BEGIN
		PRINT '-----**************************************************-----*'
        PRINT 'Numero actual de iteración: ' + CAST(@Index AS NVARCHAR(10));

        -- Cursor para recorrer los gestores (se abre en cada iteración)
        DECLARE GestoresCursor CURSOR FOR
        SELECT Id FROM Gestores;

        OPEN GestoresCursor;

        -- Asignar saldos a los gestores en cada iteración
        FETCH NEXT FROM GestoresCursor INTO @GestorId;

        WHILE @@FETCH_STATUS = 0
        BEGIN
            -- Obtener el saldo correspondiente
            SELECT TOP 1 @CuentaId = Id, @Saldo = Saldo
            FROM #SaldosOrdenados
            WHERE Id NOT IN (SELECT CuentaId FROM Asignaciones)
            ORDER BY Saldo DESC;

            IF @CuentaId IS NOT NULL
            BEGIN
                -- Insertar la asignación en la tabla de asignaciones
                INSERT INTO Asignaciones (GestorId, CuentaId)
                VALUES (@GestorId, @CuentaId);
                PRINT 'Asignado CuentaId: ' + CAST(@CuentaId AS NVARCHAR(36)) + ' a GestorId: ' + CAST(@GestorId AS NVARCHAR(36));
            END
            ELSE
            BEGIN
                PRINT 'No hay más saldos disponibles para asignar.';
            END

            -- Pasar al siguiente gestor
            FETCH NEXT FROM GestoresCursor INTO @GestorId;
        END

        -- Cerrar
        CLOSE GestoresCursor;
        DEALLOCATE GestoresCursor;

        -- Incrementar el índice de la iteración
        SET @Index = @Index + 1;
    END

    -- Devolver los resultados de la tabla de asignaciones
    SELECT 
	    G.Nombre AS NombreGestor,
	    C.Nombre AS NombreCuenta,
	    C.Saldo AS SaldoCuenta,
	    SUM(C.Saldo) OVER (PARTITION BY G.Nombre) AS TotalSaldosPorGestor
	FROM 
	    Asignaciones A
	INNER JOIN 
	    Gestores G ON A.GestorId = G.Id
	INNER JOIN 
	    Cuentas C ON A.CuentaId = C.Id
	ORDER BY 
	    TRY_CAST(SUBSTRING(G.Nombre, PATINDEX('%[0-9]%', G.Nombre), LEN(G.Nombre)) AS INT),
	    G.Nombre,
	    C.Saldo DESC;

    -- Limpiar la tabla temporal
    DROP TABLE #SaldosOrdenados;
END;
GO
