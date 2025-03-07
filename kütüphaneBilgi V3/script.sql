USE [kutupHane]
GO
/****** Object:  Table [dbo].[KitapBil]    Script Date: 12.05.2024 12:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KitapBil](
	[kitapAd] [nvarchar](40) NOT NULL,
	[sayfaSayisi] [smallint] NOT NULL,
	[yazarId] [int] NOT NULL,
	[yayId] [int] NOT NULL,
	[turId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kitapTur]    Script Date: 12.05.2024 12:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kitapTur](
	[turId] [int] IDENTITY(1,1) NOT NULL,
	[turIsim] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_kitapTur] PRIMARY KEY CLUSTERED 
(
	[turId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kullaniciBilgi]    Script Date: 12.05.2024 12:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kullaniciBilgi](
	[kullanciId] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciIsimSoyIsim] [nvarchar](50) NOT NULL,
	[kullaniciAd] [nvarchar](50) NOT NULL,
	[kullaniciSifre] [nvarchar](50) NOT NULL,
	[kullaniciTelefon] [nvarchar](11) NOT NULL,
 CONSTRAINT [PK_kullaniciBilgi] PRIMARY KEY CLUSTERED 
(
	[kullanciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yayinList]    Script Date: 12.05.2024 12:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yayinList](
	[yayId] [int] IDENTITY(1,1) NOT NULL,
	[yayIsim] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_yayinList] PRIMARY KEY CLUSTERED 
(
	[yayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yazarList]    Script Date: 12.05.2024 12:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yazarList](
	[yazarId] [int] IDENTITY(1,1) NOT NULL,
	[yazarIsim] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_yazarList] PRIMARY KEY CLUSTERED 
(
	[yazarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yoneticiBilgi]    Script Date: 12.05.2024 12:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yoneticiBilgi](
	[yoneticiId] [int] IDENTITY(1,1) NOT NULL,
	[yoneticiIsimSoyisim] [nvarchar](50) NOT NULL,
	[yoneticiAd] [nvarchar](50) NOT NULL,
	[yoneticiSifre] [nvarchar](50) NOT NULL,
	[yoneticiTelefon] [nvarchar](11) NOT NULL,
 CONSTRAINT [PK_yoneticiBilgi] PRIMARY KEY CLUSTERED 
(
	[yoneticiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Açlık ', 352, 4, 4, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Aganta Burina Burinata ', 200, 5, 5, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Akdeniz ', 416, 6, 7, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Ayaşlı ile Kiracıları ', 352, 7, 6, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Babalar ve Oğullar ', 336, 8, 6, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Beyaz Diş ', 304, 9, 8, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Beyaz Gemi ', 160, 10, 9, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Bir Bilim Adamının Romanı ', 608, 11, 10, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Cemo ', 176, 12, 6, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Çalıkuşu ', 648, 13, 8, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Çanlar Kimin İçin Çalıyor ', 471, 14, 5, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Derviş ve Ölüm ', 192, 15, 9, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Dokuzuncu Hariciye Koğuşu ', 336, 16, 11, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Don Kişot ', 896, 17, 6, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Drina Köprüsü ', 288, 18, 10, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Drina’da Son Gün ', 276, 19, 10, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Esir Şehrin İnsanları ', 400, 20, 5, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Eskicinin Oğulları ', 624, 21, 8, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Fareler ve İnsanlar ', 112, 22, 6, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Fatih-Harbiye ', 416, 16, 6, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Gora ', 352, 23, 5, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Gün Olur Asra Bedel ', 256, 10, 9, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'İbrahim Efendi Konağı ', 422, 24, 5, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'İki Şehrin Hikayesi ', 352, 25, 6, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Kalpaklılar ', 312, 26, 9, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Kaplumbağalar ', 272, 27, 9, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Karartma Geceleri ', 472, 28, 10, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Kayıp Aranıyor ', 392, 29, 11, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Kiralık Konak ', 288, 30, 5, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Kuyruklu Yıldız Altında Bir İzdivaç ', 672, 31, 6, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Küçük Ağa ', 376, 32, 9, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Madame Bovary ', 544, 33, 6, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Mai ve Siyah ', 480, 34, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Mor Salkımlı Ev ', 504, 35, 11, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Onlar da İnsandı ', 280, 36, 9, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Ölü Canlar ', 624, 37, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Robinson Crusoe ', 384, 38, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Sahnenin Dışındakiler ', 216, 39, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Savaş ve Barış ', 1488, 40, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Sefiller ', 176, 1, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Sergüzeşt ', 400, 41, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Ses ve Öfke ', 480, 42, 9, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Sinekli Bakkal ', 328, 35, 9, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Sokakta ', 424, 43, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Kuyucaklı Yusuf ', 224, 31, 11, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Yaban ', 288, 30, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'İçimizdeki Şeytan ', 208, 31, 11, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Kağnı ', 288, 31, 11, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Yalnızız ', 176, 31, 11, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Memleketimden İnsan Manzaraları ', 288, 44, 11, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Sineklerin Tanrısı ', 352, 45, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Fahrenheit 451 ', 208, 46, 10, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Dönüşüm ', 104, 47, 10, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Hayvan Çiftliği ', 120, 48, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Uçurtma Avcısı ', 360, 49, 7, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Kürk Mantolu Madonna ', 280, 31, 11, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Huzursuzluk ', 200, 50, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'İnci ', 144, 22, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Fareler ve İnsanlar ', 112, 22, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Beyaz Diş ', 304, 9, 8, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Suç ve Ceza ', 680, 51, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Otostopçunun Galaksi Rehberi ', 224, 52, 10, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Küçük Prens ', 96, 53, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Beyaz Gemi ', 160, 10, 9, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'İlyada ', 608, 54, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Odysseia ', 488, 54, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Simyacı ', 208, 55, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Şeker Portakalı ', 208, 56, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Uykudan Önce ', 226, 29, 11, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Yorgun Savaşçı ', 128, 57, 7, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Taht Oyunları ', 672, 58, 8, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Ejderha Dövmeli Kız ', 536, 59, 7, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Mezarlık Kitabı ', 312, 60, 10, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Yüzyıllık Yalnızlık ', 488, 61, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Küçük Kara Balık ', 64, 63, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Kaptan Grant''ın Çocukları ', 352, 63, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Kırmızı Pazartesi ', 160, 61, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Kimlik ', 360, 64, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Akvaryum ', 200, 65, 11, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Beyaz Kale ', 448, 66, 9, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Altıncı Koğuş ', 240, 66, 9, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Ay Işığında Çocuklar ', 200, 35, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Beyaz Geceler ', 208, 51, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Binbir Gece Masalları ', 168, 67, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Bilinmeyen Bir Kadının Mektubu ', 5, 68, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Bozkırkurdu ', 280, 35, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Cezmi ', 352, 69, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Dava ', 208, 47, 10, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Don Kişot ', 896, 70, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Ejderha Mızrağı ', 536, 71, 10, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Fırtına Işığı Arşivi ', 688, 72, 10, 3)
GO
SET IDENTITY_INSERT [dbo].[kitapTur] ON 

INSERT [dbo].[kitapTur] ([turId], [turIsim]) VALUES (2, N'Fantastik')
INSERT [dbo].[kitapTur] ([turId], [turIsim]) VALUES (3, N'Hikaye')
INSERT [dbo].[kitapTur] ([turId], [turIsim]) VALUES (9, N'Polisiye')
INSERT [dbo].[kitapTur] ([turId], [turIsim]) VALUES (1, N'Roman')
SET IDENTITY_INSERT [dbo].[kitapTur] OFF
GO
SET IDENTITY_INSERT [dbo].[kullaniciBilgi] ON 

INSERT [dbo].[kullaniciBilgi] ([kullanciId], [kullaniciIsimSoyIsim], [kullaniciAd], [kullaniciSifre], [kullaniciTelefon]) VALUES (1, N'Hikmet Manav', N'hiko', N'hiko123', N'05314563761')
INSERT [dbo].[kullaniciBilgi] ([kullanciId], [kullaniciIsimSoyIsim], [kullaniciAd], [kullaniciSifre], [kullaniciTelefon]) VALUES (2, N'alper çeltikçi', N'çeltikçiAlper', N'okanBekir', N'05112223344')
SET IDENTITY_INSERT [dbo].[kullaniciBilgi] OFF
GO
SET IDENTITY_INSERT [dbo].[yayinList] ON 

INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (1, N'Antik Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (14, N'Ayrıntı Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (5, N'Can Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (3, N'Dex')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (7, N'Doğan Kitap')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (13, N'Epsilon Yayınevi')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (8, N'Everest Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (9, N'İletişim Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (2, N'İş Bankası')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (6, N'İş Bankası Kültür Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (10, N'İthaki Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (12, N'Kronik Kitap')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (16, N'Okan')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (11, N'Yapı Kredi Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (4, N'YKY')
SET IDENTITY_INSERT [dbo].[yayinList] OFF
GO
SET IDENTITY_INSERT [dbo].[yazarList] ON 

INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (39, N'Ahmet Hamdi Tanpınar')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (67, N'Antoine Galland')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (43, N'Bahattin Özkişi')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (72, N'Brandon Sanderson')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (10, N'Cengiz Aytmatov')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (36, N'Cengiz Dağcı')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (17, N'Cervantes')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (25, N'Charles Dickens')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (38, N'Daniel Defoe')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (52, N'Douglas Adams')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (14, N'Ernest Heming way')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (53, N'Exupéry')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (19, N'Faik Baysal')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (27, N'Fakir Baykurt')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (50, N'Fernando Pessoa')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (33, N'Flaubert')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (47, N'Franz Kafka')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (51, N'Fyodor Dostoyevski')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (61, N'Gabriel García Márquez')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (48, N'George Orwell')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (58, N'George R.R.Martin')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (37, N'Gogol')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (35, N'Halide Edib Adıvar')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (5, N'Halikarnas Balıkçısı')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (57, N'Halil Cibran')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (34, N'Halit Ziya Uşaklıgil')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (54, N'Homeros')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (18, N'İvo Andriç')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (9, N'Jack London')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (22, N'John Steinbeck')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (56, N'José Maurode Vasconcelos')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (63, N'Jules Verne')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (12, N'Kemal Bilbaşar')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (20, N'Kemal Tahir')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (49, N'Khaled Hosseini')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (4, N'Knut Hamsun')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (71, N'MargaretWeis,TracyHickman')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (15, N'Mehmet Selimoviç')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (7, N'Memduh Şevket Esendal')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (70, N'Miguelde Cervantes')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (64, N'Milan Kundera')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (69, N'Namık Kemal')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (44, N'Nazım Hikmet')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (60, N'Neil Gaiman')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (11, N'Oğuz Atay')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (21, N'Orhan Kemal')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (66, N'Orhan Pamuk')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (6, N'Panait Istrati')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (55, N'Paulo Coelho')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (16, N'Peyami Safa')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (23, N'Rabindranath Tagore')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (46, N'Ray Bradbury')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (13, N'Reşat Nuri Güntekin')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (28, N'Rıfat Ilgaz')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (31, N'Sabahattin Ali')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (29, N'Sait Faik Abasıyanık')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (62, N'Samed Behrengi')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (24, N'Samiha Ayverdi')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (26, N'Samim Kocagöz')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (41, N'Samipaşazade Sezai')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (68, N'Stefan Zweig')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (3, N'Stephanie Garber')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (59, N'Stieg Larsson')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (32, N'Tarık Buğra')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (40, N'Tolstoy')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (8, N'Turgenyev')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (1, N'Victor Hugo')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (2, N'Voltaire')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (42, N'William Faulkner')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (45, N'William Golding')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (30, N'Yakup Kadri Karaosmanoğlu')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (65, N'Yaşar Kemal')
SET IDENTITY_INSERT [dbo].[yazarList] OFF
GO
SET IDENTITY_INSERT [dbo].[yoneticiBilgi] ON 

INSERT [dbo].[yoneticiBilgi] ([yoneticiId], [yoneticiIsimSoyisim], [yoneticiAd], [yoneticiSifre], [yoneticiTelefon]) VALUES (1, N'hiko', N'admin', N'admin', N'12345557788')
SET IDENTITY_INSERT [dbo].[yoneticiBilgi] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_kitapTur_Unique]    Script Date: 12.05.2024 12:48:14 ******/
ALTER TABLE [dbo].[kitapTur] ADD  CONSTRAINT [IX_kitapTur_Unique] UNIQUE NONCLUSTERED 
(
	[turIsim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_yayinList_Unique]    Script Date: 12.05.2024 12:48:14 ******/
ALTER TABLE [dbo].[yayinList] ADD  CONSTRAINT [IX_yayinList_Unique] UNIQUE NONCLUSTERED 
(
	[yayIsim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_yazarList_Unique]    Script Date: 12.05.2024 12:48:14 ******/
ALTER TABLE [dbo].[yazarList] ADD  CONSTRAINT [IX_yazarList_Unique] UNIQUE NONCLUSTERED 
(
	[yazarIsim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[KitapBil]  WITH CHECK ADD  CONSTRAINT [FK_KitapBil_kitapTur] FOREIGN KEY([turId])
REFERENCES [dbo].[kitapTur] ([turId])
GO
ALTER TABLE [dbo].[KitapBil] CHECK CONSTRAINT [FK_KitapBil_kitapTur]
GO
ALTER TABLE [dbo].[KitapBil]  WITH CHECK ADD  CONSTRAINT [FK_KitapBil_yayinList] FOREIGN KEY([yayId])
REFERENCES [dbo].[yayinList] ([yayId])
GO
ALTER TABLE [dbo].[KitapBil] CHECK CONSTRAINT [FK_KitapBil_yayinList]
GO
ALTER TABLE [dbo].[KitapBil]  WITH CHECK ADD  CONSTRAINT [FK_KitapBil_yazarList] FOREIGN KEY([yazarId])
REFERENCES [dbo].[yazarList] ([yazarId])
GO
ALTER TABLE [dbo].[KitapBil] CHECK CONSTRAINT [FK_KitapBil_yazarList]
GO
