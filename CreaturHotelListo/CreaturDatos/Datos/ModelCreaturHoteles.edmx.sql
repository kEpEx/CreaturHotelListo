
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/10/2015 01:04:49
-- Generated from EDMX file: C:\Users\Jose\Desktop\CreaturDatosRespaldo7\CreaturDatos\Datos\ModelCreaturHoteles.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DBCreaturHotel];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[tblUsuarios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblUsuarios];
GO
IF OBJECT_ID(N'[dbo].[tblDatos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblDatos];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'tblUsuarios'
CREATE TABLE [dbo].[tblUsuarios] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Correo] nvarchar(max)  NOT NULL,
    [TipoUsuario] nvarchar(max)  NOT NULL,
    [Contra] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tblDatos'
CREATE TABLE [dbo].[tblDatos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FacturaProveedor] nvarchar(max)  NULL,
    [ObservacionesAdministracion] nvarchar(max)  NULL,
    [NumFacturaCreatur] nvarchar(max)  NULL,
    [ObservacionIngreso] nvarchar(max)  NULL,
    [FacturaEfectiva] nvarchar(max)  NULL,
    [Agente] nvarchar(max)  NULL,
    [FechaCreacion] nvarchar(max)  NOT NULL,
    [Refacturacion] nvarchar(max)  NULL,
    [HK] nvarchar(max)  NULL,
    [GK] nvarchar(max)  NULL,
    [Huesped] nvarchar(max)  NULL,
    [Empresa] nvarchar(max)  NULL,
    [Hotel] nvarchar(max)  NULL,
    [CiudadUbicacionHotel] nvarchar(max)  NULL,
    [Confirmacion] nvarchar(max)  NULL,
    [FechaCheckIn] datetime  NULL,
    [FechaCheckOut] datetime  NULL,
    [NumeroNoches] int  NULL,
    [TarifaBaseConImpIncluidos] float  NULL,
    [TotalConImpIncluidos] float  NULL,
    [TotalTarifaBaseHotel] float  NULL,
    [ISH] nvarchar(max)  NULL,
    [TipoMoneda] nvarchar(max)  NULL,
    [PorcenGananSobreTotalImpuestosInclud] float  NULL,
    [ImporteGanancia] float  NOT NULL,
    [ServiciosAdicionales] nvarchar(max)  NULL,
    [CargoServicio] float  NULL,
    [ImporteServicioAdicional] float  NULL,
    [PorcenGananciaSobreServAdicional] float  NULL,
    [ImporteGananciaSobreServicioAdicional] float  NULL,
    [TotalFacHospedaje] float  NULL,
    [FormaPago] nvarchar(max)  NULL,
    [TipoTarifa] nvarchar(max)  NULL,
    [NumRechazadosDeTarjetas] nvarchar(max)  NULL,
    [ReservaEfectiva] nvarchar(max)  NULL,
    [ImporteCobrarHtl] nvarchar(max)  NULL,
    [FOPFinal] nvarchar(max)  NULL,
    [ObservacionDireccion] nvarchar(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'tblUsuarios'
ALTER TABLE [dbo].[tblUsuarios]
ADD CONSTRAINT [PK_tblUsuarios]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'tblDatos'
ALTER TABLE [dbo].[tblDatos]
ADD CONSTRAINT [PK_tblDatos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------