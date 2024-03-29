USE [master]
GO
/****** Object:  Database [Petshop]    Script Date: 29.12.2023 23:39:59 ******/
CREATE DATABASE [Petshop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Petshop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Petshop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Petshop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Petshop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Petshop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Petshop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Petshop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Petshop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Petshop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Petshop] SET ARITHABORT OFF 
GO
ALTER DATABASE [Petshop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Petshop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Petshop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Petshop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Petshop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Petshop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Petshop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Petshop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Petshop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Petshop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Petshop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Petshop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Petshop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Petshop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Petshop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Petshop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Petshop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Petshop] SET RECOVERY FULL 
GO
ALTER DATABASE [Petshop] SET  MULTI_USER 
GO
ALTER DATABASE [Petshop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Petshop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Petshop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Petshop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Petshop] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Petshop', N'ON'
GO
USE [Petshop]
GO
/****** Object:  Table [dbo].[Hayvan_bakim_esyalari]    Script Date: 29.12.2023 23:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hayvan_bakim_esyalari](
	[bakim_esyasi_no] [int] NOT NULL,
	[bakim_esyasi_turu] [varchar](255) NULL,
	[bakim_esyasi_marka] [varchar](255) NULL,
	[bakim_esyasi_fiyat] [int] NULL,
	[satis_no] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[bakim_esyasi_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hayvan_kiyafeti_ve_aksesuarlari]    Script Date: 29.12.2023 23:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hayvan_kiyafeti_ve_aksesuarlari](
	[kiyafet_aksesuar_no] [int] NOT NULL,
	[kiyafet_aksesuar_turu] [varchar](255) NULL,
	[kiyafet_aksesuar_marka] [varchar](255) NULL,
	[kiyafet_aksesuar_renk] [varchar](255) NULL,
	[kiyafet_aksesuar_fiyat] [int] NULL,
	[satis_no] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[kiyafet_aksesuar_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hayvanlar]    Script Date: 29.12.2023 23:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hayvanlar](
	[hayvan_no] [int] NOT NULL,
	[hayvan_adi] [varchar](255) NULL,
	[hayvan_yas] [int] NULL,
	[hayvan_turu] [varchar](255) NULL,
	[hayvan_cinsi] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[hayvan_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mamalar]    Script Date: 29.12.2023 23:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mamalar](
	[mama_no] [int] NOT NULL,
	[mama_turu] [nvarchar](255) NULL,
	[mama_marka] [nvarchar](255) NULL,
	[mama_fiyat] [int] NULL,
	[mama_agirlik] [int] NULL,
	[hayvan_no] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[mama_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oyuncaklar]    Script Date: 29.12.2023 23:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oyuncaklar](
	[oyuncak_no] [int] NOT NULL,
	[oyuncak_turu] [varchar](255) NULL,
	[oyuncak_fiyat] [int] NULL,
	[hayvan_id] [int] NULL,
	[satis_no] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[oyuncak_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Petshop_subeleri]    Script Date: 29.12.2023 23:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Petshop_subeleri](
	[sube_no] [int] NOT NULL,
	[sube_adi] [nvarchar](255) NULL,
	[sube_sehir] [varchar](255) NULL,
	[sube_adres] [nvarchar](255) NULL,
	[sube_telefon] [varchar](255) NULL,
	[satis_no] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sube_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Satis]    Script Date: 29.12.2023 23:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satis](
	[satis_no] [int] NOT NULL,
	[hayvan_no] [int] NULL,
	[mama_no] [int] NULL,
	[alan_no] [int] NULL,
	[kiyafet_aksesuar_no] [int] NULL,
	[bakim_esyasi_no] [int] NULL,
	[oyuncak_no] [int] NULL,
	[satis_miktari] [int] NULL,
	[satis_tarihi] [datetime] NULL,
	[sube_no] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[satis_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yasam_alanlari]    Script Date: 29.12.2023 23:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yasam_alanlari](
	[alan_no] [int] NOT NULL,
	[alan_turu] [varchar](255) NULL,
	[alan_boyut] [varchar](255) NULL,
	[alan_fiyat] [int] NULL,
	[hayvan_no] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[alan_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Mamalar]  WITH CHECK ADD  CONSTRAINT [FK_Mamalar_Hayvanlar] FOREIGN KEY([hayvan_no])
REFERENCES [dbo].[Hayvanlar] ([hayvan_no])
GO
ALTER TABLE [dbo].[Mamalar] CHECK CONSTRAINT [FK_Mamalar_Hayvanlar]
GO
ALTER TABLE [dbo].[Oyuncaklar]  WITH CHECK ADD  CONSTRAINT [FK_Oyuncaklar_Satis] FOREIGN KEY([satis_no])
REFERENCES [dbo].[Satis] ([satis_no])
GO
ALTER TABLE [dbo].[Oyuncaklar] CHECK CONSTRAINT [FK_Oyuncaklar_Satis]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Hayvan_bakim_esyalari] FOREIGN KEY([bakim_esyasi_no])
REFERENCES [dbo].[Hayvan_bakim_esyalari] ([bakim_esyasi_no])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Hayvan_bakim_esyalari]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Hayvan_kiyafeti_ve_aksesuarlari] FOREIGN KEY([kiyafet_aksesuar_no])
REFERENCES [dbo].[Hayvan_kiyafeti_ve_aksesuarlari] ([kiyafet_aksesuar_no])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Hayvan_kiyafeti_ve_aksesuarlari]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Hayvanlar] FOREIGN KEY([hayvan_no])
REFERENCES [dbo].[Hayvanlar] ([hayvan_no])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Hayvanlar]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Mamalar] FOREIGN KEY([mama_no])
REFERENCES [dbo].[Mamalar] ([mama_no])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Mamalar]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Oyuncaklar] FOREIGN KEY([oyuncak_no])
REFERENCES [dbo].[Oyuncaklar] ([oyuncak_no])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Oyuncaklar]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Petshop_subeleri] FOREIGN KEY([sube_no])
REFERENCES [dbo].[Petshop_subeleri] ([sube_no])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Petshop_subeleri]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Yasam_alanlari] FOREIGN KEY([alan_no])
REFERENCES [dbo].[Yasam_alanlari] ([alan_no])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Yasam_alanlari]
GO
ALTER TABLE [dbo].[Yasam_alanlari]  WITH CHECK ADD  CONSTRAINT [FK_Yasam_alanlari_Hayvanlar] FOREIGN KEY([hayvan_no])
REFERENCES [dbo].[Hayvanlar] ([hayvan_no])
GO
ALTER TABLE [dbo].[Yasam_alanlari] CHECK CONSTRAINT [FK_Yasam_alanlari_Hayvanlar]
GO
USE [master]
GO
ALTER DATABASE [Petshop] SET  READ_WRITE 
GO
