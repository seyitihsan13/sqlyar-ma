USE [master]
GO
/****** Object:  Database [soru]    Script Date: 31.08.2021 17:05:25 ******/
CREATE DATABASE [soru]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'soru', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\soru.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'soru_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\soru_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [soru] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [soru].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [soru] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [soru] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [soru] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [soru] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [soru] SET ARITHABORT OFF 
GO
ALTER DATABASE [soru] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [soru] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [soru] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [soru] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [soru] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [soru] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [soru] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [soru] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [soru] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [soru] SET  DISABLE_BROKER 
GO
ALTER DATABASE [soru] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [soru] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [soru] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [soru] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [soru] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [soru] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [soru] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [soru] SET RECOVERY FULL 
GO
ALTER DATABASE [soru] SET  MULTI_USER 
GO
ALTER DATABASE [soru] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [soru] SET DB_CHAINING OFF 
GO
ALTER DATABASE [soru] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [soru] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [soru] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [soru] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'soru', N'ON'
GO
ALTER DATABASE [soru] SET QUERY_STORE = OFF
GO
USE [soru]
GO
/****** Object:  Table [dbo].[GirisYap]    Script Date: 31.08.2021 17:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GirisYap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [varchar](255) NULL,
	[Sifre] [varchar](255) NULL,
	[YarismaAdi] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 31.08.2021 17:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[id] [int] NULL,
	[kategori] [varchar](255) NULL,
	[sorular] [varchar](255) NULL,
	[a] [varchar](255) NULL,
	[b] [varchar](255) NULL,
	[c] [varchar](255) NULL,
	[d] [varchar](255) NULL,
	[dogru] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kayit]    Script Date: 31.08.2021 17:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kayit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[YarismaAdi] [varchar](255) NULL,
	[KullaniciAdi] [varchar](255) NULL,
	[Sifre] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkorTablosu]    Script Date: 31.08.2021 17:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkorTablosu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [varchar](255) NULL,
	[KazandigiPara] [int] NULL,
	[YarismayaVerdigiAd] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sooru]    Script Date: 31.08.2021 17:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sooru](
	[id] [text] NOT NULL,
	[Sorular] [nvarchar](255) NULL,
	[a] [nvarchar](255) NULL,
	[b] [nvarchar](255) NULL,
	[c] [nvarchar](255) NULL,
	[d] [nvarchar](255) NULL,
	[dogru] [nvarchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Soru]    Script Date: 31.08.2021 17:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Soru](
	[id] [int] NULL,
	[sorular] [varchar](255) NULL,
	[a] [varchar](255) NULL,
	[b] [varchar](255) NULL,
	[c] [varchar](255) NULL,
	[d] [varchar](255) NULL,
	[dogru] [varchar](255) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (1, N'Tarih', N'Kaç Dünya Savaşı Olmuştur?', N'1', N'2', N'3', N'4', N'2')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (2, N'Genel Kültür', N'Eyfel Kulesi''nin Yüksekliği Kaç Metredir?', N'200m', N'250m', N'300m', N'350m', N'300m')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (3, N'Tarih', N'Olimpiyatlar Kaç Yılında Yapılmaya Başlandı?', N'1896', N'1990', N'1945', N'1900', N'1896')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (4, N'Coğrafya', N'Türkiyenin En Büyük Dağı''nın Adı Nedir?', N'CudiDağı', N'Kayışdağı', N'Ağrı Dağı', N'Uludağ', N'Ağrı Dağı')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (5, N'Tarih', N'Albert Einstein hangi alanda Nobel ödülü almıştır?', N'Fizik', N'Kimya', N'Matematik', N'Biyoloji', N'Fizik')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (6, N'Tarih', N'Fatih Sultan Mehmet’in babası kimdir?', N'Yıldırım Beyazıt', N'2.Murat', N'1.Mehmet', N'Osmangazi', N'2.Murat')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (7, N'Tarih', N'İlk Halife Kimdir?', N'Hz.Ali', N'Hz.Ebubekir', N'Hz.Ömer', N'Hz.Osman', N'Hz.Ebubekir')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (8, N'Coğrafya', N'Dünyanın Yüz Ölçümü Bakımından En Büyük Ülkesi Hangi Ülkedir?', N'Rusya', N'Amerika', N'Türkiye', N'Avusturalya', N'Rusya')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (9, N'Coğrafya', N'Hangi Şehrimiz''de Pamuk Yetişir?', N'Denizli', N'Aydın', N'Isparta', N'Nevşehir', N'Denizli')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (10, N'Bilim', N'İlk Dijital Bilgisayarlar Hangi Yılda Üretilmiştir?', N'1945', N'1958', N'1964', N'1990', N'1945')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (11, N'Genel Kültür', N'Scoville ölçeği hangisini ölçer?', N'Deniz tuzluluğunu', N'Çikolata tatlılığını', N'Limon ekşiliğini', N'Biber Acılığını', N'Biber Acılığını')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (12, N'Coğrafya', N'Çin Seddi Nerededir?', N'Güney Kore', N'Çin', N'Hindistan', N'Japonya', N'Çin')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (13, N'Genel Kültür', N'Bir işin uygun ve kolay olduğunu belirtmek için hangisi söylenir?', N'Burnuma göre', N'Kaşıma Göre', N'Bıyığıma göre', N'Dişime göre', N'Dişime göre')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (14, N'Genel Kültür', N'Hangi ülkenin iki tane başkenti vardır?', N'Kamboçya', N'Güney Afrika', N'Senegal', N'Venezuela', N'Kamboçya')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (15, N'Tarih', N'Çanakkale Zaferi hangi savaşa dahildir?', N'1.Dünya Savaşı', N'2.Dünya Savaşı', N'Kurtuluş Savaşı', N'2.Balkan Savaşı', N'Kurtuluş Savaşı')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (16, N'Tarih', N'Türkiye’nin en eski şehri hangisidir?', N'İstanbul', N'Hakkari', N'Ankara', N'Eskişehir', N'Hakkari')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (17, N'Matematik', N'Kurduğu okulun girişine "Matematik Bilmeyen Giremez" yazdıran matematikçi kimdir?', N'Pisagor', N'Thales', N'Arşimet', N'Platon', N'Pisagor')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (18, N'Coğrafya', N'Türkiye''nin yüz ölçümü en büyük olan komşusu hangisidir?', N'İran', N'Gürcistan', N'Suriye', N'Yunanistan', N'Suriye')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (19, N'Bilim', N'Elektrik akımı ölçü birimi bunlardan hangisidir?', N'Voltmetre', N'Amper', N'Metre', N'Direnç', N'Direnç')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (20, N'Bilim', N'"Fe" hangi elementin simgesidir?', N'Bor', N'Demir', N'Kalay', N'Fosfat', N'Demir')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (21, N'Tarih', N'Google Ne Zaman Kurulmuştur?', N'1998', N'1999', N'2000', N'1997', N'1998')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (22, N'Genel Kültür', N'Kanada''nın resmi dilli Nedir?', N'Fransızca', N'İngilizce', N'İspanyolca', N'İtalyanca', N'Fransızca')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (23, N'Genel Kültür', N'Avrupa Birliği''nin başkenti neresidir?', N'Lüksemburg', N'Berlin', N'Brüksel', N'Londra', N'Brüksel')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (24, N'Genel Kültür', N'13 Hangi İlimizin Plakasıdır?', N'Bursa', N'Burdur', N'Bitlis', N'Bingöl', N'Bitlis')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (25, N'Genel Kültür', N'Pisa Kulesi Hangi Ülkededir?', N'Amerika', N'Almanya', N'Fransa', N'İtalya', N'İtalya')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (26, N'Coğrafya', N'Kıtalararası dağılımda en az nüfuslu kıta hangisidir?', N'Antartika', N'Avrasya', N'Avusturalya', N'Asya', N'Antartika')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (27, N'Tarih', N'Ünlü fizikçi Albert Einstein hangi yıl Amerikan vatandaşı olmuştur?', N'1933', N'1940', N'1935', N'1942', N'1933')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (28, N'Tarih', N'Cumhuriyet Kaç Yılında İlan Edilmiştir?', N'1920', N'1921', N'1922', N'1923', N'1923')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (29, N'Genel Kültür', N'Eğer dünyada tek bir ülke olsaydı başkenti ''İstanbul'' olurdu sözü kime aittir?', N'Napolyon', N'Fatih Sultan Mehmet', N'Adolf Hitler', N'Küçük İskender', N'Napolyon')
INSERT [dbo].[Kategori] ([id], [kategori], [sorular], [a], [b], [c], [d], [dogru]) VALUES (30, N'Coğrafya', N'türkiye''nin nüfus olarak en küçük ili hangisidir?', N'Bilecik', N'Bayburt', N'Iğdır', N'Isparta', N'Bayburt')
GO
SET IDENTITY_INSERT [dbo].[Kayit] ON 

INSERT [dbo].[Kayit] ([id], [YarismaAdi], [KullaniciAdi], [Sifre]) VALUES (1, N'Deneme1', N'Deneme', N'1234')
INSERT [dbo].[Kayit] ([id], [YarismaAdi], [KullaniciAdi], [Sifre]) VALUES (2, N'deneme', N'Seyit İhsan', N'123789')
INSERT [dbo].[Kayit] ([id], [YarismaAdi], [KullaniciAdi], [Sifre]) VALUES (3, N'Test', N'Test', N'456')
INSERT [dbo].[Kayit] ([id], [YarismaAdi], [KullaniciAdi], [Sifre]) VALUES (4, N'Demo', N'Demoo', N'ses123')
INSERT [dbo].[Kayit] ([id], [YarismaAdi], [KullaniciAdi], [Sifre]) VALUES (5, N'Sınav', N'mucar', N'1234')
SET IDENTITY_INSERT [dbo].[Kayit] OFF
GO
SET IDENTITY_INSERT [dbo].[SkorTablosu] ON 

INSERT [dbo].[SkorTablosu] ([id], [KullaniciAdi], [KazandigiPara], [YarismayaVerdigiAd]) VALUES (1, N'fgdf', 52, N'fgd')
SET IDENTITY_INSERT [dbo].[SkorTablosu] OFF
GO
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (1, N'Kaç Dünya Savaşı Olmuştur?', N'1', N'2', N'3', N'4', N'2')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (2, N'Eyfel Kulesi''nin Yüksekliği Kaç Metredir?', N'200m', N'250m', N'300m', N'350m', N'300m')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (3, N'Olimpiyatlar Kaç Yılında Yapılmaya Başlandı?', N'1896', N'1990', N'1945', N'1900', N'1896')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (4, N'Türkiyenin En Büyük Dağı''nın Adı Nedir?', N'CudiDağı', N'Kayışdağı', N'Ağrı Dağı', N'Uludağ', N'Ağrı Dağı')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (5, N'Albert Einstein hangi alanda Nobel ödülü almıştır?', N'Fizik', N'Kimya', N'Matematik', N'Biyoloji', N'Fizik')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (6, N'Fatih Sultan Mehmet’in babası kimdir?', N'Yıldırım Beyazıt', N'2.Murat', N'1.Mehmet', N'Osmangazi', N'2.Murat')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (7, N'İlk Halife Kimdir?', N'Hz.Ali', N'Hz.Ebubekir', N'Hz.Ömer', N'Hz.Osman', N'Hz.Ebubekir')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (8, N'Dünyanın Yüz Ölçümü Bakımından En Büyük Ülkesi Hangi Ülkedir?', N'Rusya', N'Amerika', N'Türkiye', N'Avusturalya', N'Rusya')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (9, N'Hangi Şehrimiz''de Pamuk Yetişir?', N'Denizli', N'Aydın', N'Isparta', N'Nevşehir', N'Denizli')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (10, N'İlk Dijital Bilgisayarlar Hangi Yılda Üretilmiştir?', N'1945', N'1958', N'1964', N'1990', N'1945')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (11, N'Scoville ölçeği hangisini ölçer?', N'Deniz tuzluluğunu', N'Çikolata tatlılığını', N'Limon ekşiliğini', N'Biber Acılığını', N'Biber Acılığını')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (12, N'Çin Seddi Nerededir?', N'Güney Kore', N'Çin', N'Hindistan', N'Japonya', N'Çin')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (13, N'Bir işin uygun ve kolay olduğunu belirtmek için hangisi söylenir?', N'Burnuma göre', N'Kaşıma Göre', N'Bıyığıma göre', N'Dişime göre', N'Dişime göre')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (14, N'Hangi ülkenin iki tane başkenti vardır?', N'Kamboçya', N'Güney Afrika', N'Senegal', N'Venezuela', N'Kamboçya')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (15, N'Çanakkale Zaferi hangi savaşa dahildir?', N'1.Dünya Savaşı', N'2.Dünya Savaşı', N'Kurtuluş Savaşı', N'2.Balkan Savaşı', N'Kurtuluş Savaşı')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (16, N'Türkiye’nin en eski şehri hangisidir?', N'İstanbul', N'Hakkari', N'Ankara', N'Eskişehir', N'Hakkari')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (17, N'Kurduğu okulun girişine "Matematik Bilmeyen Giremez" yazdıran matematikçi kimdir?', N'Pisagor', N'Thales', N'Arşimet', N'Platon', N'Pisagor')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (18, N'Türkiye''nin yüz ölçümü en büyük olan komşusu hangisidir?', N'İran', N'Gürcistan', N'Suriye', N'Yunanistan', N'Suriye')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (19, N'Elektrik akımı ölçü birimi bunlardan hangisidir?', N'Voltmetre', N'Amper', N'Metre', N'Direnç', N'Direnç')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (20, N'"Fe" hangi elementin simgesidir?', N'Bor', N'Demir', N'Kalay', N'Fosfat', N'Demir')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (21, N'Google Ne Zaman Kurulmuştur?', N'1998', N'1999', N'2000', N'1997', N'1998')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (22, N'Kanada''nın resmi dilli Nedir?', N'Fransızca', N'İngilizce', N'İspanyolca', N'İtalyanca', N'Fransızca')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (23, N'Avrupa Birliği''nin başkenti neresidir?', N'Lüksemburg', N'Berlin', N'Brüksel', N'Londra', N'Brüksel')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (24, N'13 Hangi İlimizin Plakasıdır?', N'Bursa', N'Burdur', N'Bitlis', N'Bingöl', N'Bitlis')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (25, N'Pisa Kulesi Hangi Ülkededir?', N'Amerika', N'Almanya', N'Fransa', N'İtalya', N'İtalya')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (26, N'Kıtalararası dağılımda en az nüfuslu kıta hangisidir?', N'Antartika', N'Avrasya', N'Avusturalya', N'Asya', N'Antartika')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (27, N'Ünlü fizikçi Albert Einstein hangi yıl Amerikan vatandaşı olmuştur?', N'1933', N'1940', N'1935', N'1942', N'1933')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (28, N'Cumhuriyet Kaç Yılında İlan Edilmiştir?', N'1920', N'1921', N'1922', N'1923', N'1923')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (29, N'Eğer dünyada tek bir ülke olsaydı başkenti ''İstanbul'' olurdu sözü kime aittir?', N'Napolyon', N'Fatih Sultan Mehmet', N'Adolf Hitler', N'Küçük İskender', N'Napolyon')
INSERT [dbo].[Soru] ([id], [sorular], [a], [b], [c], [d], [dogru]) VALUES (30, N'türkiye''nin nüfus olarak en küçük ili hangisidir?', N'Bilecik', N'Bayburt', N'Iğdır', N'Isparta', N'Bayburt')
GO
USE [master]
GO
ALTER DATABASE [soru] SET  READ_WRITE 
GO
