USE [SAVYRM]
GO
/****** Object:  User [adminSAVYRM]    Script Date: 27/03/2018 17:35:03 ******/
CREATE USER [adminSAVYRM] FOR LOGIN [adminSAVYRM] WITH DEFAULT_SCHEMA=[db_owner]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [adminSAVYRM]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Almacen](
	[idAlmacen] [int] IDENTITY(1,1) NOT NULL,
	[nombreAlmacen] [varchar](75) NOT NULL,
	[direccion] [varchar](250) NOT NULL,
	[capacidad] [float] NULL,
 CONSTRAINT [PK_Almacen] PRIMARY KEY CLUSTERED 
(
	[idAlmacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Formula]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Formula](
	[idFormula] [int] IDENTITY(1,1) NOT NULL,
	[nombreFormula] [varchar](250) NULL,
	[detalleFormula] [varchar](250) NULL,
 CONSTRAINT [PK_Formula] PRIMARY KEY CLUSTERED 
(
	[idFormula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Indicacion]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Indicacion](
	[idIndicacion] [int] IDENTITY(1,1) NOT NULL,
	[ordenIndicacion] [int] NOT NULL,
	[detalleIndicacion] [varchar](250) NOT NULL,
	[fk_idPreparacionIndicacion] [int] NOT NULL,
 CONSTRAINT [PK_Indicacion] PRIMARY KEY CLUSTERED 
(
	[idIndicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log](
	[idLog] [int] NOT NULL,
	[Componente] [varchar](75) NULL,
	[Servicio] [varchar](75) NULL,
	[fecha] [datetime] NOT NULL,
	[detalle] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lote]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lote](
	[idLote] [int] IDENTITY(1,1) NOT NULL,
	[codigoLote] [varchar](75) NOT NULL,
	[costoLote] [float] NULL,
	[cantidaUnidadesLote] [float] NOT NULL,
	[fechaCaducacionLote] [datetime] NULL,
 CONSTRAINT [PK_Lote] PRIMARY KEY CLUSTERED 
(
	[idLote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persona](
	[idPersona] [int] IDENTITY(1,1) NOT NULL,
	[nombrePersona] [varchar](50) NOT NULL,
	[apellidoPaternoPersona] [varchar](75) NULL,
	[apellidoMaternoPersona] [varchar](75) NULL,
	[documentoIdentidadPersona] [varchar](75) NOT NULL,
	[numeroDocumentoPersona] [varchar](75) NOT NULL,
	[numeroTelefonoPersona] [varchar](75) NULL,
	[correoPersona] [varchar](150) NOT NULL,
	[direccionPersona] [varchar](250) NOT NULL,
	[fk_idTipoPersona] [int] NOT NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[idPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Precio]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Precio](
	[idPrecio] [int] IDENTITY(1,1) NOT NULL,
	[unitarioPrecio] [float] NULL,
	[fechaInicioPrecio] [datetime] NOT NULL,
	[fechaFinPrecio] [datetime] NULL,
	[mayoriaPrecio] [float] NULL,
	[vigentePrecio] [bit] NOT NULL,
	[cantidadMayoriaPrecio] [float] NULL,
	[fk_idProducto] [int] NULL,
 CONSTRAINT [PK_Precio] PRIMARY KEY CLUSTERED 
(
	[idPrecio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Preparacion]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Preparacion](
	[idPreparacion] [int] IDENTITY(1,1) NOT NULL,
	[nombrePreparacion] [varchar](250) NULL,
	[fechaCreacionPreparacion] [datetime] NOT NULL,
	[detalleAdicionalPreparacion] [varchar](max) NOT NULL,
	[fk_idProducto] [int] NOT NULL,
 CONSTRAINT [PK_Preparacion] PRIMARY KEY CLUSTERED 
(
	[idPreparacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombreProducto] [varchar](75) NOT NULL,
	[codigoProducto] [varchar](75) NOT NULL,
	[estadoProducto] [bit] NULL,
	[fk_idUnidadMedida] [int] NULL,
	[fk_idTIpoProducto] [int] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductoFormula]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductoFormula](
	[idProductoFormula] [int] IDENTITY(1,1) NOT NULL,
	[fk_idProductoElaborado] [int] NOT NULL,
	[fk_idProductoInsumo] [int] NOT NULL,
	[fk_idFormula] [int] NOT NULL,
	[porcentaje] [float] NOT NULL,
 CONSTRAINT [PK_ProductoFormula] PRIMARY KEY CLUSTERED 
(
	[idProductoFormula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductoSeccion]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductoSeccion](
	[idProductoSeccion] [int] IDENTITY(1,1) NOT NULL,
	[fk_idProducto] [int] NOT NULL,
	[fk_idSeccion] [int] NOT NULL,
	[fk_idLote] [int] NOT NULL,
	[cantidadProductoSeccion] [float] NOT NULL,
	[fechaIngreso] [datetime] NOT NULL,
 CONSTRAINT [PK_ProductoSeccion] PRIMARY KEY CLUSTERED 
(
	[idProductoSeccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Seccion]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Seccion](
	[idSeccion] [int] IDENTITY(1,1) NOT NULL,
	[codigoSeccion] [varchar](75) NOT NULL,
	[capacidadSeccion] [float] NULL,
	[detalle] [varchar](250) NULL,
	[fk_idAlmacen] [int] NOT NULL,
 CONSTRAINT [PK_Seccion] PRIMARY KEY CLUSTERED 
(
	[idSeccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicio](
	[idServicio] [int] IDENTITY(1,1) NOT NULL,
	[horaInicioServicio] [datetime] NOT NULL,
	[horaFinServicio] [datetime] NOT NULL,
	[horaEdicionServicio] [datetime] NULL,
	[idPersonaAtendidaServicio] [int] NOT NULL,
	[idPersonaEmpleado] [int] NULL,
	[fk_idTipoServicio] [int] NOT NULL,
 CONSTRAINT [PK_Servicio] PRIMARY KEY CLUSTERED 
(
	[idServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ServicioProducto]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicioProducto](
	[idServicioProductoSeccion] [int] IDENTITY(1,1) NOT NULL,
	[fk_idServicio] [int] NOT NULL,
	[fk_idProductoSeccion] [int] NULL,
	[costoTotal] [float] NULL,
	[cantidadServicioProducto] [float] NULL,
 CONSTRAINT [PK_ServicioProducto] PRIMARY KEY CLUSTERED 
(
	[idServicioProductoSeccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo_Usuario]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipo_Usuario](
	[idTipoUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombreTipoUsuario] [varchar](75) NOT NULL,
 CONSTRAINT [PK_Tipo_Usuario] PRIMARY KEY CLUSTERED 
(
	[idTipoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoPersona]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoPersona](
	[idTipoPersona] [int] IDENTITY(1,1) NOT NULL,
	[nombreTipoPersona] [varchar](75) NOT NULL,
 CONSTRAINT [PK_TipoPersona] PRIMARY KEY CLUSTERED 
(
	[idTipoPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoProducto]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoProducto](
	[idTipoProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombreTipoProducto] [varchar](75) NOT NULL,
 CONSTRAINT [PK_TipoProducto] PRIMARY KEY CLUSTERED 
(
	[idTipoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoServicio]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoServicio](
	[idTipoServicio] [int] IDENTITY(1,1) NOT NULL,
	[nombreTipoServicio] [varchar](75) NOT NULL,
 CONSTRAINT [PK_TipoServicio] PRIMARY KEY CLUSTERED 
(
	[idTipoServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnidadMedida]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UnidadMedida](
	[idUnidadMedida] [int] IDENTITY(1,1) NOT NULL,
	[nombreUnidadMedida] [varchar](75) NOT NULL,
	[tipo] [bit] NOT NULL,
	[abreviacionUnidadMeida] [varchar](75) NOT NULL,
	[fkUnidadMedida] [int] NULL,
 CONSTRAINT [PK_UnidadMedida] PRIMARY KEY CLUSTERED 
(
	[idUnidadMedida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 27/03/2018 17:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombreUsuario] [varchar](75) NOT NULL,
	[contrasenhaUsuario] [varchar](75) NOT NULL,
	[fk_idPersona] [int] NOT NULL,
	[fk_idTipoUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Almacen] ON 

INSERT [dbo].[Almacen] ([idAlmacen], [nombreAlmacen], [direccion], [capacidad]) VALUES (4, N'Tienda Principal', N'Ovalos Santa Anita', NULL)
INSERT [dbo].[Almacen] ([idAlmacen], [nombreAlmacen], [direccion], [capacidad]) VALUES (5, N'Almacen Principal', N'Avenida La Molina 1045', NULL)
INSERT [dbo].[Almacen] ([idAlmacen], [nombreAlmacen], [direccion], [capacidad]) VALUES (6, N'Almacen Secundario', N'Centro de Lima', NULL)
INSERT [dbo].[Almacen] ([idAlmacen], [nombreAlmacen], [direccion], [capacidad]) VALUES (7, N'Almacen la Molina', N'Los Fresno 555', 1644)
INSERT [dbo].[Almacen] ([idAlmacen], [nombreAlmacen], [direccion], [capacidad]) VALUES (8, N'Almacen Santa Anita', N'Ov Santa Anita', 8560)
SET IDENTITY_INSERT [dbo].[Almacen] OFF
SET IDENTITY_INSERT [dbo].[Formula] ON 

INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (1, N'nombreFormula', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (4, N'Propenlicol Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (6, N'listo1 Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (8, N'Propenlicol Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (9, N'Propenlicol Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (10, N'gggg Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (11, N'asdasd Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (12, N'asdasd Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (13, N'Shampoo de Pera Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (14, N'asdasd Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (15, N'asdasd Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (16, N'asdasd Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (17, N'Shampoo de Pera Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (19, N'Shampoo de Pera Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (20, N'Tensoactivos Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (21, N'asdas Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (22, N'asdasd Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (23, N'producto de prueba Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (24, N'producto de prueba Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (25, N'Shampoo de Albaca Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (26, N'Perfume Channel Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (31, N'Propenlicol Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (32, N'Perfume Lacoste Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (33, N'Perfume Lacoste Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (34, N'Colonia Lacoste 1 - Preparada Formula Base', NULL)
INSERT [dbo].[Formula] ([idFormula], [nombreFormula], [detalleFormula]) VALUES (35, N'Colonia Aroma Lacoste2 Formula Base', NULL)
SET IDENTITY_INSERT [dbo].[Formula] OFF
SET IDENTITY_INSERT [dbo].[Indicacion] ON 

INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (13, 1, N'tens', 15)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (14, 1, N'aaasda', 16)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (15, 1, N'1111', 16)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (16, 1, N'aaa', 17)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (17, 1, N'ddd', 17)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (18, 1, N'batir bien', 18)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (19, 1, N'cerrar', 18)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (20, 1, N'abrir', 18)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (21, 1, N'batir bien', 19)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (22, 1, N'cerrar', 19)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (23, 1, N'agregar', 20)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (38, 1, N'primero', 26)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (39, 2, N'tercero', 26)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (40, 2, N'asdasd', 26)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (43, 1, N'Agregar Propenicol y batir', 28)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (44, 2, N'empaquetar', 28)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (45, 1, N'Agregar la Colonia base', 29)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (46, 2, N'agregar alcohol', 29)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (47, 3, N'homogenizar la mezcla', 29)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (48, 4, N'dejar reposar durante 15 minutos en un envase cerrado', 29)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (49, 1, N'Incluir Colonia base en un envase', 30)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (50, 2, N'incluir alcohol en el envase', 30)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (51, 3, N'homogeneizar la mezcla', 30)
INSERT [dbo].[Indicacion] ([idIndicacion], [ordenIndicacion], [detalleIndicacion], [fk_idPreparacionIndicacion]) VALUES (52, 4, N'embotellar y mantener a una temperatura menor a 10grados por media hora', 30)
SET IDENTITY_INSERT [dbo].[Indicacion] OFF
SET IDENTITY_INSERT [dbo].[Lote] ON 

INSERT [dbo].[Lote] ([idLote], [codigoLote], [costoLote], [cantidaUnidadesLote], [fechaCaducacionLote]) VALUES (1, N'Lote1', 890, 850, NULL)
INSERT [dbo].[Lote] ([idLote], [codigoLote], [costoLote], [cantidaUnidadesLote], [fechaCaducacionLote]) VALUES (2, N'Lote05072017', 4500, 900, NULL)
SET IDENTITY_INSERT [dbo].[Lote] OFF
SET IDENTITY_INSERT [dbo].[Persona] ON 

INSERT [dbo].[Persona] ([idPersona], [nombrePersona], [apellidoPaternoPersona], [apellidoMaternoPersona], [documentoIdentidadPersona], [numeroDocumentoPersona], [numeroTelefonoPersona], [correoPersona], [direccionPersona], [fk_idTipoPersona]) VALUES (1, N'Ted', N'Orellana', N'Rojas', N'DNI', N'71926746', N'941766670', N'tedorellana@gmail.com', N'Prolonfación los puquina 115  - Salamanca de Monterrico', 1)
SET IDENTITY_INSERT [dbo].[Persona] OFF
SET IDENTITY_INSERT [dbo].[Precio] ON 

INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (1, 78, CAST(0x0000A79D011C1039 AS DateTime), NULL, NULL, 0, NULL, 2)
INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (2, 45, CAST(0x0000A79D011E2F1D AS DateTime), NULL, NULL, 0, NULL, 2)
INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (3, 85, CAST(0x0000A79D011E3B9F AS DateTime), NULL, NULL, 0, NULL, 2)
INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (4, 12, CAST(0x0000A79D011F3541 AS DateTime), NULL, NULL, 0, NULL, 2)
INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (5, 33, CAST(0x0000A79D011F40FC AS DateTime), NULL, NULL, 0, NULL, 2)
INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (6, 333, CAST(0x0000A79D011F7AA6 AS DateTime), NULL, NULL, 0, NULL, 2)
INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (7, 11, CAST(0x0000A79D011FDAAB AS DateTime), NULL, NULL, 0, NULL, 2)
INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (8, 44, CAST(0x0000A79D012009C9 AS DateTime), NULL, NULL, 0, NULL, 2)
INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (9, 17, CAST(0x0000A79D0120647D AS DateTime), NULL, NULL, 0, NULL, 2)
INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (10, 16.5, CAST(0x0000A79D01206F77 AS DateTime), NULL, NULL, 0, NULL, 2)
INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (11, 14, CAST(0x0000A79D0120FBCC AS DateTime), NULL, NULL, 1, NULL, 33)
INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (12, 45, CAST(0x0000A79D0158411F AS DateTime), NULL, NULL, 1, NULL, 17)
INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (13, 15, CAST(0x0000A7A400FFC5D5 AS DateTime), NULL, NULL, 1, NULL, 9)
INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (14, 35, CAST(0x0000A7A70149378C AS DateTime), NULL, NULL, 1, NULL, 37)
INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (15, 10, CAST(0x0000A7A7014942DF AS DateTime), NULL, NULL, 1, NULL, 36)
INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (16, 10, CAST(0x0000A7A7014957BD AS DateTime), NULL, NULL, 1, NULL, 35)
INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (17, 15, CAST(0x0000A7A701504AD8 AS DateTime), NULL, NULL, 0, NULL, 38)
INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (18, 18, CAST(0x0000A7A701505115 AS DateTime), NULL, NULL, 0, NULL, 38)
INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (19, 25, CAST(0x0000A7A7015055DF AS DateTime), NULL, NULL, 1, NULL, 38)
INSERT [dbo].[Precio] ([idPrecio], [unitarioPrecio], [fechaInicioPrecio], [fechaFinPrecio], [mayoriaPrecio], [vigentePrecio], [cantidadMayoriaPrecio], [fk_idProducto]) VALUES (20, 123, CAST(0x0000A8A401391E02 AS DateTime), NULL, NULL, 1, NULL, 2)
SET IDENTITY_INSERT [dbo].[Precio] OFF
SET IDENTITY_INSERT [dbo].[Preparacion] ON 

INSERT [dbo].[Preparacion] ([idPreparacion], [nombrePreparacion], [fechaCreacionPreparacion], [detalleAdicionalPreparacion], [fk_idProducto]) VALUES (6, N'1', CAST(0x0000A7970037AA00 AS DateTime), N'asda', 1)
INSERT [dbo].[Preparacion] ([idPreparacion], [nombrePreparacion], [fechaCreacionPreparacion], [detalleAdicionalPreparacion], [fk_idProducto]) VALUES (15, N'Tensoactivos Preparación', CAST(0x0000A797003B2374 AS DateTime), N'', 21)
INSERT [dbo].[Preparacion] ([idPreparacion], [nombrePreparacion], [fechaCreacionPreparacion], [detalleAdicionalPreparacion], [fk_idProducto]) VALUES (16, N'asdas Preparación', CAST(0x0000A797003B8134 AS DateTime), N'', 29)
INSERT [dbo].[Preparacion] ([idPreparacion], [nombrePreparacion], [fechaCreacionPreparacion], [detalleAdicionalPreparacion], [fk_idProducto]) VALUES (17, N'asdasd Preparación', CAST(0x0000A797003C2FD0 AS DateTime), N'', 28)
INSERT [dbo].[Preparacion] ([idPreparacion], [nombrePreparacion], [fechaCreacionPreparacion], [detalleAdicionalPreparacion], [fk_idProducto]) VALUES (18, N'producto de prueba Preparación', CAST(0x0000A7970151A293 AS DateTime), N'no hay detalles', 32)
INSERT [dbo].[Preparacion] ([idPreparacion], [nombrePreparacion], [fechaCreacionPreparacion], [detalleAdicionalPreparacion], [fk_idProducto]) VALUES (19, N'producto de prueba Preparación', CAST(0x0000A7970151A293 AS DateTime), N'no hay detalles', 32)
INSERT [dbo].[Preparacion] ([idPreparacion], [nombrePreparacion], [fechaCreacionPreparacion], [detalleAdicionalPreparacion], [fk_idProducto]) VALUES (20, N'Shampoo de Albaca Preparación', CAST(0x0000A799000979A2 AS DateTime), N'', 33)
INSERT [dbo].[Preparacion] ([idPreparacion], [nombrePreparacion], [fechaCreacionPreparacion], [detalleAdicionalPreparacion], [fk_idProducto]) VALUES (26, N'Perfume Channel Preparación', CAST(0x0000A799001F244E AS DateTime), N'', 3)
INSERT [dbo].[Preparacion] ([idPreparacion], [nombrePreparacion], [fechaCreacionPreparacion], [detalleAdicionalPreparacion], [fk_idProducto]) VALUES (28, N'Perfume Lacoste Preparación', CAST(0x0000A79D015B23D1 AS DateTime), N'', 2)
INSERT [dbo].[Preparacion] ([idPreparacion], [nombrePreparacion], [fechaCreacionPreparacion], [detalleAdicionalPreparacion], [fk_idProducto]) VALUES (29, N'Colonia Lacoste 1 - Preparada Preparación', CAST(0x0000A7A701488D29 AS DateTime), N'', 37)
INSERT [dbo].[Preparacion] ([idPreparacion], [nombrePreparacion], [fechaCreacionPreparacion], [detalleAdicionalPreparacion], [fk_idProducto]) VALUES (30, N'Colonia Aroma Lacoste2 Preparación', CAST(0x0000A7A7014FF5C2 AS DateTime), N'', 38)
SET IDENTITY_INSERT [dbo].[Preparacion] OFF
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (1, N'', N'hola', 0, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (2, N'Perfume Lacoste', N'Perfume Lacoste', 1, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (3, N'Perfume Channel', N'Perfume Channel', 1, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (4, N'Shampoo de Coco', N'Shampoo de Coco', 0, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (5, N'Shampoo de Pera', N'Shampoo de Pera', 1, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (6, N'asdasd', N'asdasd', 1, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (7, N'rfefefef', N'rfefefef', 1, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (8, N'1111qqq', N'1111qqq', 0, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (9, N'Propenlicol', N'56', 1, 1, 3)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (10, N'asssss', N'asssss', 1, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (11, N'listo1', N'yyy', 1, 1, 2)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (12, N'hlola', N'hlola', 1, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (13, N'rrrr', N'rrrr', 0, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (14, N'asdas', N'asdas', 0, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (15, N'', N'', 0, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (16, N'', N'', 1, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (17, N'Jabon liquido de pera', N'asdas', 1, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (18, N'asdas', N'asdas', 1, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (19, N'Prodcuto', N'Prodcuto', 1, 2, 2)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (20, N'asdasd', N'asdasd', 1, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (21, N'Tensoactivos', N'Tensoactivos', 1, 2, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (22, N'gggg', N'gggg', 1, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (26, N'a', N'a', 0, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (27, N'asssss', N'asssss', 1, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (28, N'asdasd', N'asdasd', 1, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (29, N'asdas', N'asdas', 1, 1, 2)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (30, N'Hola', N'Hola', 0, 2, 2)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (31, N'111', N'assss', 0, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (32, N'producto de prueba', N'producto de prueba', 1, 2, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (33, N'Shampoo de Albaca', N'Shampoo de Albaca', 1, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (34, N'Shampoo A', N'Shampoo A', 1, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (35, N'Colonia Aroma Lacoste1 Base', N'Colonia Aroma Lacoste1 Base', 1, 1, 2)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (36, N'Alcohol', N'Alcohol', 1, 1, 3)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (37, N'Colonia Lacoste 1 - Preparada', N'Colonia Lacoste 1 - Preparada', 1, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (38, N'Colonia Aroma Lacoste2', N'Colonia Aroma Lacoste2', 1, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (39, N'produtco 3', N'produtco 3', 1, 2, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (40, N'Vitamina E Aceite', N'Vitamina E Aceite', 1, 1, 1)
INSERT [dbo].[Producto] ([idProducto], [nombreProducto], [codigoProducto], [estadoProducto], [fk_idUnidadMedida], [fk_idTIpoProducto]) VALUES (41, N'Vitamina E Crema', N'Vitamina E Crema', 1, 2, 1)
SET IDENTITY_INSERT [dbo].[Producto] OFF
SET IDENTITY_INSERT [dbo].[ProductoFormula] ON 

INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (3, 22, 11, 6, 33)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (4, 22, 14, 6, 12)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (5, 22, 9, 6, 1)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (12, 22, 11, 10, 10)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (13, 22, 9, 10, 85)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (14, 6, 9, 11, 12)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (15, 6, 9, 12, 12)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (17, 6, 9, 14, 12)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (18, 6, 9, 15, 12)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (19, 6, 9, 16, 44)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (25, 21, 11, 20, 100)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (26, 29, 9, 21, 12)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (27, 28, 9, 22, 12)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (28, 32, 9, 23, 10)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (29, 32, 11, 23, 25)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (30, 32, 9, 24, 10)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (31, 32, 11, 24, 25)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (32, 32, 9, 24, 12)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (33, 32, 11, 24, 12)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (34, 33, 9, 25, 100)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (45, 3, 9, 31, 12)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (46, 3, 11, 31, 23)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (49, 2, 11, 33, 23)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (50, 2, 9, 33, 55)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (51, 37, 35, 34, 60)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (52, 37, 36, 34, 40)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (53, 38, 35, 35, 75)
INSERT [dbo].[ProductoFormula] ([idProductoFormula], [fk_idProductoElaborado], [fk_idProductoInsumo], [fk_idFormula], [porcentaje]) VALUES (54, 38, 36, 35, 25)
SET IDENTITY_INSERT [dbo].[ProductoFormula] OFF
SET IDENTITY_INSERT [dbo].[ProductoSeccion] ON 

INSERT [dbo].[ProductoSeccion] ([idProductoSeccion], [fk_idProducto], [fk_idSeccion], [fk_idLote], [cantidadProductoSeccion], [fechaIngreso]) VALUES (3, 2, 1, 1, 2, CAST(0x0000A7A0015213D3 AS DateTime))
INSERT [dbo].[ProductoSeccion] ([idProductoSeccion], [fk_idProducto], [fk_idSeccion], [fk_idLote], [cantidadProductoSeccion], [fechaIngreso]) VALUES (4, 5, 1, 1, 45, CAST(0x0000A7A00154AB21 AS DateTime))
INSERT [dbo].[ProductoSeccion] ([idProductoSeccion], [fk_idProducto], [fk_idSeccion], [fk_idLote], [cantidadProductoSeccion], [fechaIngreso]) VALUES (5, 9, 1, 1, 44, CAST(0x0000A7A40173DE48 AS DateTime))
INSERT [dbo].[ProductoSeccion] ([idProductoSeccion], [fk_idProducto], [fk_idSeccion], [fk_idLote], [cantidadProductoSeccion], [fechaIngreso]) VALUES (6, 37, 1, 1, 84, CAST(0x0000A7A7014A22F1 AS DateTime))
INSERT [dbo].[ProductoSeccion] ([idProductoSeccion], [fk_idProducto], [fk_idSeccion], [fk_idLote], [cantidadProductoSeccion], [fechaIngreso]) VALUES (7, 36, 1, 1, 76, CAST(0x0000A7A7014A3057 AS DateTime))
INSERT [dbo].[ProductoSeccion] ([idProductoSeccion], [fk_idProducto], [fk_idSeccion], [fk_idLote], [cantidadProductoSeccion], [fechaIngreso]) VALUES (8, 38, 1, 1, 6, CAST(0x0000A7A7015088C4 AS DateTime))
SET IDENTITY_INSERT [dbo].[ProductoSeccion] OFF
SET IDENTITY_INSERT [dbo].[Seccion] ON 

INSERT [dbo].[Seccion] ([idSeccion], [codigoSeccion], [capacidadSeccion], [detalle], [fk_idAlmacen]) VALUES (1, N'Tie261498461451460', NULL, N'Sección de la tienda principal', 4)
INSERT [dbo].[Seccion] ([idSeccion], [codigoSeccion], [capacidadSeccion], [detalle], [fk_idAlmacen]) VALUES (5, N'Alm261498461809969', NULL, N'Seccion Productos Finales', 5)
INSERT [dbo].[Seccion] ([idSeccion], [codigoSeccion], [capacidadSeccion], [detalle], [fk_idAlmacen]) VALUES (6, N'Alm261498461872639', NULL, N'Insumos Primarios', 6)
INSERT [dbo].[Seccion] ([idSeccion], [codigoSeccion], [capacidadSeccion], [detalle], [fk_idAlmacen]) VALUES (7, N'Alm261498461889529', NULL, N'Productos Pre-Elaborados', 6)
INSERT [dbo].[Seccion] ([idSeccion], [codigoSeccion], [capacidadSeccion], [detalle], [fk_idAlmacen]) VALUES (8, N'Tie1231212312312', 123, N'1asdasds', 4)
INSERT [dbo].[Seccion] ([idSeccion], [codigoSeccion], [capacidadSeccion], [detalle], [fk_idAlmacen]) VALUES (9, N'Tie1231212312312', 123, N'1asdasds', 4)
INSERT [dbo].[Seccion] ([idSeccion], [codigoSeccion], [capacidadSeccion], [detalle], [fk_idAlmacen]) VALUES (10, N'12132asdas', 123123, N'zsdas', 4)
SET IDENTITY_INSERT [dbo].[Seccion] OFF
SET IDENTITY_INSERT [dbo].[Servicio] ON 

INSERT [dbo].[Servicio] ([idServicio], [horaInicioServicio], [horaFinServicio], [horaEdicionServicio], [idPersonaAtendidaServicio], [idPersonaEmpleado], [fk_idTipoServicio]) VALUES (1, CAST(0x0000A7A4016BDD02 AS DateTime), CAST(0x0000A7A4016BE716 AS DateTime), NULL, 1, 1, 2)
INSERT [dbo].[Servicio] ([idServicio], [horaInicioServicio], [horaFinServicio], [horaEdicionServicio], [idPersonaAtendidaServicio], [idPersonaEmpleado], [fk_idTipoServicio]) VALUES (2, CAST(0x0000A7A7014A4D7D AS DateTime), CAST(0x0000A7A7014A89F0 AS DateTime), NULL, 1, 1, 2)
INSERT [dbo].[Servicio] ([idServicio], [horaInicioServicio], [horaFinServicio], [horaEdicionServicio], [idPersonaAtendidaServicio], [idPersonaEmpleado], [fk_idTipoServicio]) VALUES (3, CAST(0x0000A7A7014B3ACD AS DateTime), CAST(0x0000A7A7014B4B4F AS DateTime), NULL, 1, 1, 2)
INSERT [dbo].[Servicio] ([idServicio], [horaInicioServicio], [horaFinServicio], [horaEdicionServicio], [idPersonaAtendidaServicio], [idPersonaEmpleado], [fk_idTipoServicio]) VALUES (4, CAST(0x0000A7A701509D6F AS DateTime), CAST(0x0000A7A70150C1B5 AS DateTime), NULL, 1, 1, 2)
SET IDENTITY_INSERT [dbo].[Servicio] OFF
SET IDENTITY_INSERT [dbo].[ServicioProducto] ON 

INSERT [dbo].[ServicioProducto] ([idServicioProductoSeccion], [fk_idServicio], [fk_idProductoSeccion], [costoTotal], [cantidadServicioProducto]) VALUES (1, 1, 3, 181.5, 11)
INSERT [dbo].[ServicioProducto] ([idServicioProductoSeccion], [fk_idServicio], [fk_idProductoSeccion], [costoTotal], [cantidadServicioProducto]) VALUES (2, 2, 7, 20, 2)
INSERT [dbo].[ServicioProducto] ([idServicioProductoSeccion], [fk_idServicio], [fk_idProductoSeccion], [costoTotal], [cantidadServicioProducto]) VALUES (3, 2, 6, 175, 5)
INSERT [dbo].[ServicioProducto] ([idServicioProductoSeccion], [fk_idServicio], [fk_idProductoSeccion], [costoTotal], [cantidadServicioProducto]) VALUES (4, 3, 3, 16.5, 1)
INSERT [dbo].[ServicioProducto] ([idServicioProductoSeccion], [fk_idServicio], [fk_idProductoSeccion], [costoTotal], [cantidadServicioProducto]) VALUES (5, 4, 7, 110, 11)
INSERT [dbo].[ServicioProducto] ([idServicioProductoSeccion], [fk_idServicio], [fk_idProductoSeccion], [costoTotal], [cantidadServicioProducto]) VALUES (6, 4, 8, 1100, 44)
SET IDENTITY_INSERT [dbo].[ServicioProducto] OFF
SET IDENTITY_INSERT [dbo].[Tipo_Usuario] ON 

INSERT [dbo].[Tipo_Usuario] ([idTipoUsuario], [nombreTipoUsuario]) VALUES (1, N'Administrador')
INSERT [dbo].[Tipo_Usuario] ([idTipoUsuario], [nombreTipoUsuario]) VALUES (2, N'Vendedor')
INSERT [dbo].[Tipo_Usuario] ([idTipoUsuario], [nombreTipoUsuario]) VALUES (3, N'Encargado Almacen')
INSERT [dbo].[Tipo_Usuario] ([idTipoUsuario], [nombreTipoUsuario]) VALUES (4, N'Encargado Preparacion')
INSERT [dbo].[Tipo_Usuario] ([idTipoUsuario], [nombreTipoUsuario]) VALUES (5, N'Empleado')
SET IDENTITY_INSERT [dbo].[Tipo_Usuario] OFF
SET IDENTITY_INSERT [dbo].[TipoPersona] ON 

INSERT [dbo].[TipoPersona] ([idTipoPersona], [nombreTipoPersona]) VALUES (1, N'Natural')
INSERT [dbo].[TipoPersona] ([idTipoPersona], [nombreTipoPersona]) VALUES (2, N'Jurídica')
SET IDENTITY_INSERT [dbo].[TipoPersona] OFF
SET IDENTITY_INSERT [dbo].[TipoProducto] ON 

INSERT [dbo].[TipoProducto] ([idTipoProducto], [nombreTipoProducto]) VALUES (1, N'Final')
INSERT [dbo].[TipoProducto] ([idTipoProducto], [nombreTipoProducto]) VALUES (2, N'Pre-Elaborado')
INSERT [dbo].[TipoProducto] ([idTipoProducto], [nombreTipoProducto]) VALUES (3, N'Primario')
SET IDENTITY_INSERT [dbo].[TipoProducto] OFF
SET IDENTITY_INSERT [dbo].[TipoServicio] ON 

INSERT [dbo].[TipoServicio] ([idTipoServicio], [nombreTipoServicio]) VALUES (1, N'Asesoría')
INSERT [dbo].[TipoServicio] ([idTipoServicio], [nombreTipoServicio]) VALUES (2, N'Venta')
SET IDENTITY_INSERT [dbo].[TipoServicio] OFF
SET IDENTITY_INSERT [dbo].[UnidadMedida] ON 

INSERT [dbo].[UnidadMedida] ([idUnidadMedida], [nombreUnidadMedida], [tipo], [abreviacionUnidadMeida], [fkUnidadMedida]) VALUES (1, N'Litros', 0, N'Lt             ', NULL)
INSERT [dbo].[UnidadMedida] ([idUnidadMedida], [nombreUnidadMedida], [tipo], [abreviacionUnidadMeida], [fkUnidadMedida]) VALUES (2, N'Kilogramos', 0, N'Kg             ', NULL)
SET IDENTITY_INSERT [dbo].[UnidadMedida] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([idUsuario], [nombreUsuario], [contrasenhaUsuario], [fk_idPersona], [fk_idTipoUsuario]) VALUES (1, N'adminSAVYRM', N'admin1234ADMIN', 1, 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
ALTER TABLE [dbo].[Indicacion]  WITH CHECK ADD  CONSTRAINT [FK_Indicacion_Preparacion] FOREIGN KEY([fk_idPreparacionIndicacion])
REFERENCES [dbo].[Preparacion] ([idPreparacion])
GO
ALTER TABLE [dbo].[Indicacion] CHECK CONSTRAINT [FK_Indicacion_Preparacion]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_TipoPersona] FOREIGN KEY([fk_idTipoPersona])
REFERENCES [dbo].[TipoPersona] ([idTipoPersona])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_TipoPersona]
GO
ALTER TABLE [dbo].[Precio]  WITH CHECK ADD  CONSTRAINT [FK_Precio_Producto] FOREIGN KEY([fk_idProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[Precio] CHECK CONSTRAINT [FK_Precio_Producto]
GO
ALTER TABLE [dbo].[Preparacion]  WITH CHECK ADD  CONSTRAINT [FK_Preparacion_Producto] FOREIGN KEY([fk_idProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[Preparacion] CHECK CONSTRAINT [FK_Preparacion_Producto]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_TipoProducto] FOREIGN KEY([fk_idTIpoProducto])
REFERENCES [dbo].[TipoProducto] ([idTipoProducto])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_TipoProducto]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_UnidadMedida] FOREIGN KEY([fk_idUnidadMedida])
REFERENCES [dbo].[UnidadMedida] ([idUnidadMedida])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_UnidadMedida]
GO
ALTER TABLE [dbo].[ProductoFormula]  WITH CHECK ADD  CONSTRAINT [FK_ProductoFormula_Formula] FOREIGN KEY([fk_idFormula])
REFERENCES [dbo].[Formula] ([idFormula])
GO
ALTER TABLE [dbo].[ProductoFormula] CHECK CONSTRAINT [FK_ProductoFormula_Formula]
GO
ALTER TABLE [dbo].[ProductoFormula]  WITH CHECK ADD  CONSTRAINT [FK_ProductoFormula_Producto] FOREIGN KEY([fk_idProductoElaborado])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[ProductoFormula] CHECK CONSTRAINT [FK_ProductoFormula_Producto]
GO
ALTER TABLE [dbo].[ProductoFormula]  WITH CHECK ADD  CONSTRAINT [FK_ProductoFormula_Producto1] FOREIGN KEY([fk_idProductoInsumo])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[ProductoFormula] CHECK CONSTRAINT [FK_ProductoFormula_Producto1]
GO
ALTER TABLE [dbo].[ProductoSeccion]  WITH CHECK ADD  CONSTRAINT [FK_ProductoSeccion_Lote] FOREIGN KEY([fk_idLote])
REFERENCES [dbo].[Lote] ([idLote])
GO
ALTER TABLE [dbo].[ProductoSeccion] CHECK CONSTRAINT [FK_ProductoSeccion_Lote]
GO
ALTER TABLE [dbo].[ProductoSeccion]  WITH CHECK ADD  CONSTRAINT [FK_ProductoSeccion_Producto] FOREIGN KEY([fk_idProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[ProductoSeccion] CHECK CONSTRAINT [FK_ProductoSeccion_Producto]
GO
ALTER TABLE [dbo].[ProductoSeccion]  WITH CHECK ADD  CONSTRAINT [FK_ProductoSeccion_Seccion] FOREIGN KEY([fk_idSeccion])
REFERENCES [dbo].[Seccion] ([idSeccion])
GO
ALTER TABLE [dbo].[ProductoSeccion] CHECK CONSTRAINT [FK_ProductoSeccion_Seccion]
GO
ALTER TABLE [dbo].[Seccion]  WITH CHECK ADD  CONSTRAINT [FK_Seccion_Almacen] FOREIGN KEY([fk_idAlmacen])
REFERENCES [dbo].[Almacen] ([idAlmacen])
GO
ALTER TABLE [dbo].[Seccion] CHECK CONSTRAINT [FK_Seccion_Almacen]
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD  CONSTRAINT [FK_Servicio_Persona] FOREIGN KEY([idPersonaAtendidaServicio])
REFERENCES [dbo].[Persona] ([idPersona])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [FK_Servicio_Persona]
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD  CONSTRAINT [FK_Servicio_Persona1] FOREIGN KEY([idPersonaEmpleado])
REFERENCES [dbo].[Persona] ([idPersona])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [FK_Servicio_Persona1]
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD  CONSTRAINT [FK_Servicio_TipoServicio] FOREIGN KEY([fk_idTipoServicio])
REFERENCES [dbo].[TipoServicio] ([idTipoServicio])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [FK_Servicio_TipoServicio]
GO
ALTER TABLE [dbo].[ServicioProducto]  WITH CHECK ADD  CONSTRAINT [FK_ServicioProducto_ProductoSeccion] FOREIGN KEY([fk_idProductoSeccion])
REFERENCES [dbo].[ProductoSeccion] ([idProductoSeccion])
GO
ALTER TABLE [dbo].[ServicioProducto] CHECK CONSTRAINT [FK_ServicioProducto_ProductoSeccion]
GO
ALTER TABLE [dbo].[ServicioProducto]  WITH CHECK ADD  CONSTRAINT [FK_ServicioProducto_Servicio] FOREIGN KEY([fk_idServicio])
REFERENCES [dbo].[Servicio] ([idServicio])
GO
ALTER TABLE [dbo].[ServicioProducto] CHECK CONSTRAINT [FK_ServicioProducto_Servicio]
GO
ALTER TABLE [dbo].[UnidadMedida]  WITH CHECK ADD  CONSTRAINT [FK_UnidadMedida_UnidadMedida] FOREIGN KEY([fkUnidadMedida])
REFERENCES [dbo].[UnidadMedida] ([idUnidadMedida])
GO
ALTER TABLE [dbo].[UnidadMedida] CHECK CONSTRAINT [FK_UnidadMedida_UnidadMedida]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Persona] FOREIGN KEY([fk_idPersona])
REFERENCES [dbo].[Persona] ([idPersona])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Persona]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Tipo_Usuario] FOREIGN KEY([fk_idTipoUsuario])
REFERENCES [dbo].[Tipo_Usuario] ([idTipoUsuario])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Tipo_Usuario]
GO
