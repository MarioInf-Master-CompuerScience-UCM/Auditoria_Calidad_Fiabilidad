ALTER TABLE [dbo].[Usuarios] DROP CONSTRAINT [FK_Usuarios_Registros]
GO
ALTER TABLE [dbo].[Productos] DROP CONSTRAINT [FK_Productos_Promociones]
GO
ALTER TABLE [dbo].[Productos] DROP CONSTRAINT [FK_Productos_Estados]
GO
ALTER TABLE [dbo].[Productos] DROP CONSTRAINT [FK_Productos_Categorias]
GO
ALTER TABLE [dbo].[Facturas] DROP CONSTRAINT [FK_Facturas_Usuarios]
GO
ALTER TABLE [dbo].[Facturas] DROP CONSTRAINT [FK_Facturas_Productos]
GO
ALTER TABLE [dbo].[Facturas] DROP CONSTRAINT [FK_Facturas_Estados]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 25/01/2015 17:49:08 ******/
DROP TABLE [dbo].[Usuarios]
GO
/****** Object:  Table [dbo].[Registros]    Script Date: 25/01/2015 17:49:08 ******/
DROP TABLE [dbo].[Registros]
GO
/****** Object:  Table [dbo].[Promociones]    Script Date: 25/01/2015 17:49:08 ******/
DROP TABLE [dbo].[Promociones]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 25/01/2015 17:49:08 ******/
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 25/01/2015 17:49:08 ******/
DROP TABLE [dbo].[Facturas]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 25/01/2015 17:49:08 ******/
DROP TABLE [dbo].[Estados]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 25/01/2015 17:49:08 ******/
DROP TABLE [dbo].[Categorias]
GO
/****** Object:  StoredProcedure [dbo].[usp_Usuarios_Update]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Usuarios_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_Usuarios_SelectRow]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Usuarios_SelectRow]
GO
/****** Object:  StoredProcedure [dbo].[usp_Usuarios_SelectAll]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Usuarios_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Usuarios_Insert]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Usuarios_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Usuarios_DeleteRow]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Usuarios_DeleteRow]
GO
/****** Object:  StoredProcedure [dbo].[usp_Registros_Update]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Registros_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_Registros_SelectRow]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Registros_SelectRow]
GO
/****** Object:  StoredProcedure [dbo].[usp_Registros_SelectAll]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Registros_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Registros_Insert]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Registros_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Registros_DeleteRow]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Registros_DeleteRow]
GO
/****** Object:  StoredProcedure [dbo].[usp_Promociones_Update]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Promociones_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_Promociones_SelectRow]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Promociones_SelectRow]
GO
/****** Object:  StoredProcedure [dbo].[usp_Promociones_SelectAll]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Promociones_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Promociones_Insert]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Promociones_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Promociones_DeleteRow]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Promociones_DeleteRow]
GO
/****** Object:  StoredProcedure [dbo].[usp_Productos_Update_Estado]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Productos_Update_Estado]
GO
/****** Object:  StoredProcedure [dbo].[usp_Productos_Update]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Productos_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_Productos_SelectRow]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Productos_SelectRow]
GO
/****** Object:  StoredProcedure [dbo].[usp_Productos_SelectAll]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Productos_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Productos_Insert]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Productos_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Productos_DeleteRow]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Productos_DeleteRow]
GO
/****** Object:  StoredProcedure [dbo].[usp_Facturas_Update]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Facturas_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_Facturas_SelectRow]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Facturas_SelectRow]
GO
/****** Object:  StoredProcedure [dbo].[usp_Facturas_SelectAll]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Facturas_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Facturas_Insert]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Facturas_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Facturas_DeleteRow]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Facturas_DeleteRow]
GO
/****** Object:  StoredProcedure [dbo].[usp_Estados_Update]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Estados_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_Estados_SelectRow]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Estados_SelectRow]
GO
/****** Object:  StoredProcedure [dbo].[usp_Estados_SelectAll]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Estados_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Estados_Insert]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Estados_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Estados_DeleteRow]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Estados_DeleteRow]
GO
/****** Object:  StoredProcedure [dbo].[usp_Categorias_Update]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Categorias_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_Categorias_SelectRow]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Categorias_SelectRow]
GO
/****** Object:  StoredProcedure [dbo].[usp_Categorias_SelectAll]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Categorias_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Categorias_Insert]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Categorias_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Categorias_DeleteRow]    Script Date: 25/01/2015 17:49:08 ******/
DROP PROCEDURE [dbo].[usp_Categorias_DeleteRow]
GO
/****** Object:  Database [BDCARROONLINE]    Script Date: 25/01/2015 17:49:08 ******/
DROP DATABASE [BDCARROONLINE]
GO
/****** Object:  Database [BDCARROONLINE]    Script Date: 25/01/2015 17:49:08 ******/
CREATE DATABASE [BDCARROONLINE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDCARROONLINE', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BDCARROONLINE.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BDCARROONLINE_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BDCARROONLINE_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BDCARROONLINE] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDCARROONLINE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDCARROONLINE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDCARROONLINE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDCARROONLINE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDCARROONLINE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDCARROONLINE] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDCARROONLINE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDCARROONLINE] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BDCARROONLINE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDCARROONLINE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDCARROONLINE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDCARROONLINE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDCARROONLINE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDCARROONLINE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDCARROONLINE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDCARROONLINE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDCARROONLINE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BDCARROONLINE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDCARROONLINE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDCARROONLINE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDCARROONLINE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDCARROONLINE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDCARROONLINE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDCARROONLINE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDCARROONLINE] SET RECOVERY FULL 
GO
ALTER DATABASE [BDCARROONLINE] SET  MULTI_USER 
GO
ALTER DATABASE [BDCARROONLINE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDCARROONLINE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDCARROONLINE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDCARROONLINE] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BDCARROONLINE', N'ON'
GO
/****** Object:  StoredProcedure [dbo].[usp_Categorias_DeleteRow]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Categorias_DeleteRow
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:16:42
-- Description:	This stored procedure is intended for deleting a specific row from Categorias table
-- ==========================================================================================
Create Procedure [dbo].[usp_Categorias_DeleteRow]
	@Id_categoria int
As
Begin
	Delete Categorias
	Where
		[Id_categoria] = @Id_categoria

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Categorias_Insert]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Categorias_Insert
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:16:42
-- Description:	This stored procedure is intended for inserting values to Categorias table
-- ==========================================================================================
Create Procedure [dbo].[usp_Categorias_Insert]
	@Nombre_categoria varchar(100)
As
Begin
	Insert Into Categorias
		([Nombre_categoria])
	Values
		(@Nombre_categoria)

	Declare @ReferenceID int
	Select @ReferenceID = @@IDENTITY

	Return @ReferenceID

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Categorias_SelectAll]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Categorias_SelectAll
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:16:42
-- Description:	This stored procedure is intended for selecting all rows from Categorias table
-- ==========================================================================================
Create Procedure [dbo].[usp_Categorias_SelectAll]
As
Begin
	Select 
		[Id_categoria],
		[Nombre_categoria]
	From Categorias
End


GO
/****** Object:  StoredProcedure [dbo].[usp_Categorias_SelectRow]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Categorias_SelectRow
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:16:42
-- Description:	This stored procedure is intended for selecting a specific row from Categorias table
-- ==========================================================================================
Create Procedure [dbo].[usp_Categorias_SelectRow]
	@Id_categoria int
As
Begin
	Select 
		[Id_categoria],
		[Nombre_categoria]
	From Categorias
	Where
		[Id_categoria] = @Id_categoria
End


GO
/****** Object:  StoredProcedure [dbo].[usp_Categorias_Update]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Categorias_Update
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:16:42
-- Description:	This stored procedure is intended for updating Categorias table
-- ==========================================================================================
Create Procedure [dbo].[usp_Categorias_Update]
	@Id_categoria int,
	@Nombre_categoria varchar(100)
As
Begin
	Update Categorias
	Set
		[Nombre_categoria] = @Nombre_categoria
	Where		
		[Id_categoria] = @Id_categoria

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Estados_DeleteRow]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Estados_DeleteRow
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:18:00
-- Description:	This stored procedure is intended for deleting a specific row from Estados table
-- ==========================================================================================
Create Procedure [dbo].[usp_Estados_DeleteRow]
	@Id_estado int
As
Begin
	Delete Estados
	Where
		[Id_estado] = @Id_estado

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Estados_Insert]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Estados_Insert
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:18:00
-- Description:	This stored procedure is intended for inserting values to Estados table
-- ==========================================================================================
Create Procedure [dbo].[usp_Estados_Insert]
	@Nombre_estado varchar(100)
As
Begin
	Insert Into Estados
		([Nombre_estado])
	Values
		(@Nombre_estado)

	Declare @ReferenceID int
	Select @ReferenceID = @@IDENTITY

	Return @ReferenceID

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Estados_SelectAll]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Estados_SelectAll
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:18:00
-- Description:	This stored procedure is intended for selecting all rows from Estados table
-- ==========================================================================================
Create Procedure [dbo].[usp_Estados_SelectAll]
As
Begin
	Select 
		[Id_estado],
		[Nombre_estado]
	From Estados
End


GO
/****** Object:  StoredProcedure [dbo].[usp_Estados_SelectRow]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Estados_SelectRow
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:18:00
-- Description:	This stored procedure is intended for selecting a specific row from Estados table
-- ==========================================================================================
Create Procedure [dbo].[usp_Estados_SelectRow]
	@Id_estado int
As
Begin
	Select 
		[Id_estado],
		[Nombre_estado]
	From Estados
	Where
		[Id_estado] = @Id_estado
End


GO
/****** Object:  StoredProcedure [dbo].[usp_Estados_Update]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Estados_Update
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:18:00
-- Description:	This stored procedure is intended for updating Estados table
-- ==========================================================================================
Create Procedure [dbo].[usp_Estados_Update]
	@Id_estado int,
	@Nombre_estado varchar(100)
As
Begin
	Update Estados
	Set
		[Nombre_estado] = @Nombre_estado
	Where		
		[Id_estado] = @Id_estado

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Facturas_DeleteRow]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Facturas_DeleteRow
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:19:08
-- Description:	This stored procedure is intended for deleting a specific row from Facturas table
-- ==========================================================================================
Create Procedure [dbo].[usp_Facturas_DeleteRow]
	@Id_factura int
As
Begin
	Delete Facturas
	Where
		[Id_factura] = @Id_factura

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Facturas_Insert]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Facturas_Insert
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:19:08
-- Description:	This stored procedure is intended for inserting values to Facturas table
-- ==========================================================================================
Create Procedure [dbo].[usp_Facturas_Insert]
	@Id_producto int,
	@Precio decimal,
	@Cantidad int,
	@Total decimal,
	@Id_estado int,
	@Id_usuario int
As
Begin
	Insert Into Facturas
		([Id_producto],[Precio],[Cantidad],[Total],[Id_estado],[Id_usuario])
	Values
		(@Id_producto,@Precio,@Cantidad,@Total,@Id_estado,@Id_usuario)

	Declare @ReferenceID int
	Select @ReferenceID = @@IDENTITY

	Return @ReferenceID

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Facturas_SelectAll]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Facturas_SelectAll
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:19:08
-- Description:	This stored procedure is intended for selecting all rows from Facturas table
-- ==========================================================================================
Create Procedure [dbo].[usp_Facturas_SelectAll]
As
Begin
	Select 
		[Id_factura],
		[Id_producto],
		[Precio],
		[Cantidad],
		[Total],
		[Id_estado],
		[Id_usuario]
	From Facturas
End


GO
/****** Object:  StoredProcedure [dbo].[usp_Facturas_SelectRow]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Facturas_SelectRow
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:19:08
-- Description:	This stored procedure is intended for selecting a specific row from Facturas table
-- ==========================================================================================
Create Procedure [dbo].[usp_Facturas_SelectRow]
	@Id_factura int
As
Begin
	Select 
		[Id_factura],
		[Id_producto],
		[Precio],
		[Cantidad],
		[Total],
		[Id_estado],
		[Id_usuario]
	From Facturas
	Where
		[Id_factura] = @Id_factura
End


GO
/****** Object:  StoredProcedure [dbo].[usp_Facturas_Update]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Facturas_Update
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:19:08
-- Description:	This stored procedure is intended for updating Facturas table
-- ==========================================================================================
Create Procedure [dbo].[usp_Facturas_Update]
	@Id_factura int,
	@Id_producto int,
	@Precio decimal,
	@Cantidad int,
	@Total decimal,
	@Id_estado int,
	@Id_usuario int
As
Begin
	Update Facturas
	Set
		[Id_producto] = @Id_producto,
		[Precio] = @Precio,
		[Cantidad] = @Cantidad,
		[Total] = @Total,
		[Id_estado] = @Id_estado,
		[Id_usuario] = @Id_usuario
	Where		
		[Id_factura] = @Id_factura

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Productos_DeleteRow]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Productos_DeleteRow
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:19:38
-- Description:	This stored procedure is intended for deleting a specific row from Productos table
-- ==========================================================================================
Create Procedure [dbo].[usp_Productos_DeleteRow]
	@Id_producto int
As
Begin
	Delete Productos
	Where
		[Id_producto] = @Id_producto

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Productos_Insert]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Productos_Insert
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:19:38
-- Description:	This stored procedure is intended for inserting values to Productos table
-- ==========================================================================================
Create Procedure [dbo].[usp_Productos_Insert]
	@cantidad int,
	@Nombre_producto varchar(100),
	@Id_categoria int,
	@Precio decimal,
	@Id_promo int,
	@Imagen varchar(200),
	@Id_estado int
As
Begin
	Insert Into Productos
		([cantidad],[Nombre_producto],[Id_categoria],[Precio],[Id_promo],[Imagen],[Id_estado])
	Values
		(@cantidad,@Nombre_producto,@Id_categoria,@Precio,@Id_promo,@Imagen,@Id_estado)

	Declare @ReferenceID int
	Select @ReferenceID = @@IDENTITY

	Return @ReferenceID

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Productos_SelectAll]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Productos_SelectAll
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:19:38
-- Description:	This stored procedure is intended for selecting all rows from Productos table
-- ==========================================================================================
Create Procedure [dbo].[usp_Productos_SelectAll]
As
Begin
	Select 
		[Id_producto],
		[cantidad],
		[Nombre_producto],
		[Id_categoria],
		[Precio],
		[Id_promo],
		[Imagen],
		[Id_estado]
	From Productos
End


GO
/****** Object:  StoredProcedure [dbo].[usp_Productos_SelectRow]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Productos_SelectRow
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:19:38
-- Description:	This stored procedure is intended for selecting a specific row from Productos table
-- ==========================================================================================
Create Procedure [dbo].[usp_Productos_SelectRow]
	@Id_producto int
As
Begin
	Select 
		[Id_producto],
		[cantidad],
		[Nombre_producto],
		[Id_categoria],
		[Precio],
		[Id_promo],
		[Imagen],
		[Id_estado]
	From Productos
	Where
		[Id_producto] = @Id_producto
End


GO
/****** Object:  StoredProcedure [dbo].[usp_Productos_Update]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Productos_Update
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:19:38
-- Description:	This stored procedure is intended for updating Productos table
-- ==========================================================================================
Create Procedure [dbo].[usp_Productos_Update]
	@Id_producto int,
	@cantidad int,
	@Nombre_producto varchar(100),
	@Id_categoria int,
	@Precio decimal,
	@Id_promo int,
	@Imagen varchar(200),
	@Id_estado int
As
Begin
	Update Productos
	Set
		[cantidad] = @cantidad,
		[Nombre_producto] = @Nombre_producto,
		[Id_categoria] = @Id_categoria,
		[Precio] = @Precio,
		[Id_promo] = @Id_promo,
		[Imagen] = @Imagen,
		[Id_estado] = @Id_estado
	Where		
		[Id_producto] = @Id_producto

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Productos_Update_Estado]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Productos_Update_Estado
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:19:38
-- Description:	This stored procedure is intended for updating Productos table
-- ==========================================================================================
create Procedure [dbo].[usp_Productos_Update_Estado]
	@Id_producto int,
	@Id_estado int
As
Begin
	Update Productos
	Set
		
		[Id_estado] = @Id_estado
	Where		
		[Id_producto] = @Id_producto

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Promociones_DeleteRow]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Promociones_DeleteRow
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:20:14
-- Description:	This stored procedure is intended for deleting a specific row from Promociones table
-- ==========================================================================================
Create Procedure [dbo].[usp_Promociones_DeleteRow]
	@Id_promocion int
As
Begin
	Delete Promociones
	Where
		[Id_promocion] = @Id_promocion

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Promociones_Insert]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Promociones_Insert
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:20:14
-- Description:	This stored procedure is intended for inserting values to Promociones table
-- ==========================================================================================
Create Procedure [dbo].[usp_Promociones_Insert]
	@Descuento decimal,
	@Fecha_inicio datetime,
	@Fecha_fin datetime,
	@Descripcion varchar(1500)
As
Begin
	Insert Into Promociones
		([Descuento],[Fecha_inicio],[Fecha_fin],[Descripcion])
	Values
		(@Descuento,@Fecha_inicio,@Fecha_fin,@Descripcion)

	Declare @ReferenceID int
	Select @ReferenceID = @@IDENTITY

	Return @ReferenceID

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Promociones_SelectAll]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Promociones_SelectAll
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:20:14
-- Description:	This stored procedure is intended for selecting all rows from Promociones table
-- ==========================================================================================
Create Procedure [dbo].[usp_Promociones_SelectAll]
As
Begin
	Select 
		[Id_promocion],
		[Descuento],
		[Fecha_inicio],
		[Fecha_fin],
		[Descripcion]
	From Promociones
End


GO
/****** Object:  StoredProcedure [dbo].[usp_Promociones_SelectRow]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Promociones_SelectRow
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:20:14
-- Description:	This stored procedure is intended for selecting a specific row from Promociones table
-- ==========================================================================================
Create Procedure [dbo].[usp_Promociones_SelectRow]
	@Id_promocion int
As
Begin
	Select 
		[Id_promocion],
		[Descuento],
		[Fecha_inicio],
		[Fecha_fin],
		[Descripcion]
	From Promociones
	Where
		[Id_promocion] = @Id_promocion
End


GO
/****** Object:  StoredProcedure [dbo].[usp_Promociones_Update]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Promociones_Update
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:20:14
-- Description:	This stored procedure is intended for updating Promociones table
-- ==========================================================================================
Create Procedure [dbo].[usp_Promociones_Update]
	@Id_promocion int,
	@Descuento decimal,
	@Fecha_inicio datetime,
	@Fecha_fin datetime,
	@Descripcion varchar(1500)
As
Begin
	Update Promociones
	Set
		[Descuento] = @Descuento,
		[Fecha_inicio] = @Fecha_inicio,
		[Fecha_fin] = @Fecha_fin,
		[Descripcion] = @Descripcion
	Where		
		[Id_promocion] = @Id_promocion

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Registros_DeleteRow]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Registros_DeleteRow
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:20:38
-- Description:	This stored procedure is intended for deleting a specific row from Registros table
-- ==========================================================================================
Create Procedure [dbo].[usp_Registros_DeleteRow]
	@Id_registro int
As
Begin
	Delete Registros
	Where
		[Id_registro] = @Id_registro

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Registros_Insert]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Registros_Insert
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:20:38
-- Description:	This stored procedure is intended for inserting values to Registros table
-- ==========================================================================================
Create Procedure [dbo].[usp_Registros_Insert]
	@Nombres varchar(200),
	@Apellidos varchar(200),
	@Correo varchar(200),
	@sexo char(1)
As
Begin
	Insert Into Registros
		([Nombres],[Apellidos],[Correo],[sexo])
	Values
		(@Nombres,@Apellidos,@Correo,@sexo)

	Declare @ReferenceID int
	Select @ReferenceID = @@IDENTITY

	Return @ReferenceID

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Registros_SelectAll]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Registros_SelectAll
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:20:38
-- Description:	This stored procedure is intended for selecting all rows from Registros table
-- ==========================================================================================
Create Procedure [dbo].[usp_Registros_SelectAll]
As
Begin
	Select 
		[Id_registro],
		[Nombres],
		[Apellidos],
		[Correo],
		[sexo]
	From Registros
End


GO
/****** Object:  StoredProcedure [dbo].[usp_Registros_SelectRow]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Registros_SelectRow
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:20:38
-- Description:	This stored procedure is intended for selecting a specific row from Registros table
-- ==========================================================================================
Create Procedure [dbo].[usp_Registros_SelectRow]
	@Id_registro int
As
Begin
	Select 
		[Id_registro],
		[Nombres],
		[Apellidos],
		[Correo],
		[sexo]
	From Registros
	Where
		[Id_registro] = @Id_registro
End


GO
/****** Object:  StoredProcedure [dbo].[usp_Registros_Update]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Registros_Update
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:20:38
-- Description:	This stored procedure is intended for updating Registros table
-- ==========================================================================================
Create Procedure [dbo].[usp_Registros_Update]
	@Id_registro int,
	@Nombres varchar(200),
	@Apellidos varchar(200),
	@Correo varchar(200),
	@sexo char(1)
As
Begin
	Update Registros
	Set
		[Nombres] = @Nombres,
		[Apellidos] = @Apellidos,
		[Correo] = @Correo,
		[sexo] = @sexo
	Where		
		[Id_registro] = @Id_registro

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Usuarios_DeleteRow]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Usuarios_DeleteRow
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:21:06
-- Description:	This stored procedure is intended for deleting a specific row from Usuarios table
-- ==========================================================================================
Create Procedure [dbo].[usp_Usuarios_DeleteRow]
	@Id_usuario int
As
Begin
	Delete Usuarios
	Where
		[Id_usuario] = @Id_usuario

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Usuarios_Insert]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Usuarios_Insert
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:21:06
-- Description:	This stored procedure is intended for inserting values to Usuarios table
-- ==========================================================================================
Create Procedure [dbo].[usp_Usuarios_Insert]
	@codigo varchar(50),
	@clave varchar(50),
	@Id_registro int
As
Begin
	Insert Into Usuarios
		([codigo],[clave],[Id_registro])
	Values
		(@codigo,@clave,@Id_registro)

	Declare @ReferenceID int
	Select @ReferenceID = @@IDENTITY

	Return @ReferenceID

End


GO
/****** Object:  StoredProcedure [dbo].[usp_Usuarios_SelectAll]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Usuarios_SelectAll
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:21:06
-- Description:	This stored procedure is intended for selecting all rows from Usuarios table
-- ==========================================================================================
Create Procedure [dbo].[usp_Usuarios_SelectAll]
As
Begin
	Select 
		[Id_usuario],
		[codigo],
		[clave],
		[Id_registro]
	From Usuarios
End


GO
/****** Object:  StoredProcedure [dbo].[usp_Usuarios_SelectRow]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Usuarios_SelectRow
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:21:06
-- Description:	This stored procedure is intended for selecting a specific row from Usuarios table
-- ==========================================================================================
Create Procedure [dbo].[usp_Usuarios_SelectRow]
	@Id_usuario int
As
Begin
	Select 
		[Id_usuario],
		[codigo],
		[clave],
		[Id_registro]
	From Usuarios
	Where
		[Id_usuario] = @Id_usuario
End


GO
/****** Object:  StoredProcedure [dbo].[usp_Usuarios_Update]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Entity Name:	usp_Usuarios_Update
-- Author:	Luis Enrique Ortiz de Orué Flores
-- Create date:	30/11/2014 10:21:06
-- Description:	This stored procedure is intended for updating Usuarios table
-- ==========================================================================================
Create Procedure [dbo].[usp_Usuarios_Update]
	@Id_usuario int,
	@codigo varchar(50),
	@clave varchar(50),
	@Id_registro int
As
Begin
	Update Usuarios
	Set
		[codigo] = @codigo,
		[clave] = @clave,
		[Id_registro] = @Id_registro
	Where		
		[Id_usuario] = @Id_usuario

End


GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categorias](
	[Id_categoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_categoria] [varchar](100) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[Id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estados](
	[Id_estado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_estado] [varchar](100) NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[Id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[Id_factura] [int] IDENTITY(1,1) NOT NULL,
	[Id_producto] [int] NULL,
	[Precio] [decimal](18, 2) NULL,
	[Cantidad] [int] NULL,
	[Total] [decimal](18, 2) NULL,
	[Id_estado] [int] NULL,
	[Id_usuario] [int] NULL,
 CONSTRAINT [PK_Facturas] PRIMARY KEY CLUSTERED 
(
	[Id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Productos]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[Id_producto] [int] IDENTITY(1,1) NOT NULL,
	[cantidad] [int] NULL,
	[Nombre_producto] [varchar](100) NULL,
	[Id_categoria] [int] NULL,
	[Precio] [decimal](18, 2) NULL,
	[Id_promo] [int] NULL,
	[Imagen] [varchar](200) NULL,
	[Id_estado] [int] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Promociones]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Promociones](
	[Id_promocion] [int] IDENTITY(1,1) NOT NULL,
	[Descuento] [decimal](18, 2) NULL,
	[Fecha_inicio] [datetime] NULL,
	[Fecha_fin] [datetime] NULL,
	[Descripcion] [varchar](1500) NULL,
 CONSTRAINT [PK_Promociones] PRIMARY KEY CLUSTERED 
(
	[Id_promocion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Registros]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registros](
	[Id_registro] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](200) NULL,
	[Apellidos] [varchar](200) NULL,
	[Correo] [varchar](200) NULL,
	[sexo] [char](1) NULL,
 CONSTRAINT [PK_Registros] PRIMARY KEY CLUSTERED 
(
	[Id_registro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 25/01/2015 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](50) NULL,
	[clave] [varchar](50) NULL,
	[Id_registro] [int] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([Id_categoria], [Nombre_categoria]) VALUES (1, N'TERNERA')
INSERT [dbo].[Categorias] ([Id_categoria], [Nombre_categoria]) VALUES (2, N'CERDO')
INSERT [dbo].[Categorias] ([Id_categoria], [Nombre_categoria]) VALUES (3, N'CORDERO')
INSERT [dbo].[Categorias] ([Id_categoria], [Nombre_categoria]) VALUES (4, N'AVES Y CONEJO')
INSERT [dbo].[Categorias] ([Id_categoria], [Nombre_categoria]) VALUES (5, N'ADOBADO')
INSERT [dbo].[Categorias] ([Id_categoria], [Nombre_categoria]) VALUES (7, N'ELABORADOS')
INSERT [dbo].[Categorias] ([Id_categoria], [Nombre_categoria]) VALUES (8, N'EMBUTIDOS Y QUESOS')
INSERT [dbo].[Categorias] ([Id_categoria], [Nombre_categoria]) VALUES (9, N'CONSERVAS Y VINOS')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
SET IDENTITY_INSERT [dbo].[Estados] ON 

INSERT [dbo].[Estados] ([Id_estado], [Nombre_estado]) VALUES (1, N'Estado_Separado')
INSERT [dbo].[Estados] ([Id_estado], [Nombre_estado]) VALUES (2, N'Estado_Comprado')
INSERT [dbo].[Estados] ([Id_estado], [Nombre_estado]) VALUES (3, N'Estado_Liberado')
SET IDENTITY_INSERT [dbo].[Estados] OFF
SET IDENTITY_INSERT [dbo].[Facturas] ON 

INSERT [dbo].[Facturas] ([Id_factura], [Id_producto], [Precio], [Cantidad], [Total], [Id_estado], [Id_usuario]) VALUES (60, 1, CAST(120.00 AS Decimal(18, 2)), 1, CAST(120.00 AS Decimal(18, 2)), 2, 1)
INSERT [dbo].[Facturas] ([Id_factura], [Id_producto], [Precio], [Cantidad], [Total], [Id_estado], [Id_usuario]) VALUES (61, 24, CAST(100.00 AS Decimal(18, 2)), 1, CAST(100.00 AS Decimal(18, 2)), 2, 1)
INSERT [dbo].[Facturas] ([Id_factura], [Id_producto], [Precio], [Cantidad], [Total], [Id_estado], [Id_usuario]) VALUES (62, 1, CAST(120.00 AS Decimal(18, 2)), 5, CAST(600.00 AS Decimal(18, 2)), 2, 1)
INSERT [dbo].[Facturas] ([Id_factura], [Id_producto], [Precio], [Cantidad], [Total], [Id_estado], [Id_usuario]) VALUES (63, 1, CAST(120.00 AS Decimal(18, 2)), 44, CAST(5280.00 AS Decimal(18, 2)), 2, 1)
INSERT [dbo].[Facturas] ([Id_factura], [Id_producto], [Precio], [Cantidad], [Total], [Id_estado], [Id_usuario]) VALUES (66, 2, CAST(125.00 AS Decimal(18, 2)), 50, CAST(6250.00 AS Decimal(18, 2)), 2, 1)
INSERT [dbo].[Facturas] ([Id_factura], [Id_producto], [Precio], [Cantidad], [Total], [Id_estado], [Id_usuario]) VALUES (70, 3, CAST(100.00 AS Decimal(18, 2)), 50, CAST(5000.00 AS Decimal(18, 2)), 2, 1)
INSERT [dbo].[Facturas] ([Id_factura], [Id_producto], [Precio], [Cantidad], [Total], [Id_estado], [Id_usuario]) VALUES (71, 24, CAST(100.00 AS Decimal(18, 2)), 1, CAST(100.00 AS Decimal(18, 2)), 2, 1)
INSERT [dbo].[Facturas] ([Id_factura], [Id_producto], [Precio], [Cantidad], [Total], [Id_estado], [Id_usuario]) VALUES (73, 4, CAST(75.00 AS Decimal(18, 2)), 2, CAST(150.00 AS Decimal(18, 2)), 2, 1)
INSERT [dbo].[Facturas] ([Id_factura], [Id_producto], [Precio], [Cantidad], [Total], [Id_estado], [Id_usuario]) VALUES (74, 4, CAST(75.00 AS Decimal(18, 2)), 1, CAST(75.00 AS Decimal(18, 2)), 2, 1)
INSERT [dbo].[Facturas] ([Id_factura], [Id_producto], [Precio], [Cantidad], [Total], [Id_estado], [Id_usuario]) VALUES (76, 4, CAST(75.00 AS Decimal(18, 2)), 1, CAST(75.00 AS Decimal(18, 2)), 2, 1)
INSERT [dbo].[Facturas] ([Id_factura], [Id_producto], [Precio], [Cantidad], [Total], [Id_estado], [Id_usuario]) VALUES (1078, 1, CAST(6.00 AS Decimal(18, 2)), 1, CAST(6.00 AS Decimal(18, 2)), 2, 4)
INSERT [dbo].[Facturas] ([Id_factura], [Id_producto], [Precio], [Cantidad], [Total], [Id_estado], [Id_usuario]) VALUES (1079, 1, CAST(6.00 AS Decimal(18, 2)), 1, CAST(6.00 AS Decimal(18, 2)), 2, 4)
SET IDENTITY_INSERT [dbo].[Facturas] OFF
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (1, 8, N'Chuleton', 1, CAST(6.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/ternera/chuleton.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (2, 20, N'Entrecort', 1, CAST(2.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/ternera/entrecot.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (3, 3, N'Filetes de Aguja', 1, CAST(1.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/ternera/filetesdeaguja.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (4, 0, N'solomillo', 1, CAST(1.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/ternera/solomillo.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (11, 50, N'Chuletas', 2, CAST(2.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/Cerdo/Chuletas.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (12, 50, N'PancetaFresca', 2, CAST(3.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/Cerdo/PancetaFresca.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (13, 50, N'PancetaIberica', 2, CAST(3.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/Cerdo/PancetaIberica.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (14, 50, N'PatasdeCerdo', 2, CAST(4.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/Cerdo/PatasdeCerdo.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (15, 50, N'solomillo', 2, CAST(2.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/Cerdo/solomillo.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (16, 50, N'tiradaAdobadaNatural', 2, CAST(1.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/Cerdo/tiradaAdobadaNatural.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (17, 50, N'tiradelomo', 2, CAST(3.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/Cerdo/tiradelomo.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (21, 50, N'Chuletadepierna', 3, CAST(4.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/Cordero/Chuletadepierna.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (22, 50, N'chuletasdecorderolechal', 3, CAST(5.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/Cordero/chuletasdecorderolechal.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (23, 50, N'Corderolechal', 3, CAST(3.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/Cordero/Corderolechal.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (24, 48, N'Paletilladeleche', 3, CAST(7.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/Cordero/Paletilladeleche.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (25, 50, N'Alitas de Pollo', 4, CAST(2.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/avesYConejo/AlitasdePollo.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (26, 50, N'Chuletilla de conejo', 4, CAST(3.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/avesYConejo/Chuletilladeconejo.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (27, 50, N'GallinaEntera', 4, CAST(1.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/avesYConejo/GallinaEntera.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (28, 50, N'PechugadePavo', 4, CAST(1.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/avesYConejo/PechugadePavo.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (29, 50, N'Pollodecorral', 4, CAST(2.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/avesYConejo/Pollodecorral.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (31, 50, N'ChuletaSajonia', 5, CAST(3.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/adobado/ChuletaSajonia.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (32, 20, N'LomoAdobadoalHorno', 5, CAST(2.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/adobado/LomoAdobadoalHorno.jpg', 3)
INSERT [dbo].[Productos] ([Id_producto], [cantidad], [Nombre_producto], [Id_categoria], [Precio], [Id_promo], [Imagen], [Id_estado]) VALUES (33, 20, N'TiraAdobadanatural', 5, CAST(3.00 AS Decimal(18, 2)), NULL, N'~/Imagenes/adobado/TiraAdobadanatural.jpg', 3)
SET IDENTITY_INSERT [dbo].[Productos] OFF
SET IDENTITY_INSERT [dbo].[Registros] ON 

INSERT [dbo].[Registros] ([Id_registro], [Nombres], [Apellidos], [Correo], [sexo]) VALUES (1, N'gilmer alcides', N'melgarejo limas', N'admin@hotmail.com', N'1')
INSERT [dbo].[Registros] ([Id_registro], [Nombres], [Apellidos], [Correo], [sexo]) VALUES (2, N'user', N'user@hotmail.com', N'user@hotmail.com', N'1')
SET IDENTITY_INSERT [dbo].[Registros] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([Id_usuario], [codigo], [clave], [Id_registro]) VALUES (1, N'admin', N'admin', 1)
INSERT [dbo].[Usuarios] ([Id_usuario], [codigo], [clave], [Id_registro]) VALUES (4, N'user', N'user', 2)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Estados] FOREIGN KEY([Id_estado])
REFERENCES [dbo].[Estados] ([Id_estado])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Estados]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Productos] FOREIGN KEY([Id_producto])
REFERENCES [dbo].[Productos] ([Id_producto])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Productos]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Usuarios] FOREIGN KEY([Id_usuario])
REFERENCES [dbo].[Usuarios] ([Id_usuario])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Usuarios]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Categorias] FOREIGN KEY([Id_categoria])
REFERENCES [dbo].[Categorias] ([Id_categoria])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Categorias]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Estados] FOREIGN KEY([Id_estado])
REFERENCES [dbo].[Estados] ([Id_estado])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Estados]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Promociones] FOREIGN KEY([Id_promo])
REFERENCES [dbo].[Promociones] ([Id_promocion])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Promociones]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Registros] FOREIGN KEY([Id_registro])
REFERENCES [dbo].[Registros] ([Id_registro])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Registros]
GO
ALTER DATABASE [BDCARROONLINE] SET  READ_WRITE 
GO
