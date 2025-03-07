USE [kutupHane]
GO
/****** Object:  Table [dbo].[KitapBil]    Script Date: 5.05.2024 19:28:19 ******/
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
/****** Object:  Table [dbo].[kitapTur]    Script Date: 5.05.2024 19:28:19 ******/
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
/****** Object:  Table [dbo].[yayinList]    Script Date: 5.05.2024 19:28:19 ******/
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
/****** Object:  Table [dbo].[yazarList]    Script Date: 5.05.2024 19:28:19 ******/
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
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Açlık ', 352, 99, 4, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Aganta Burina Burinata ', 200, 100, 5, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Akdeniz ', 416, 101, 7, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Ayaşlı ile Kiracıları ', 352, 102, 6, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Babalar ve Oğullar ', 336, 103, 6, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Beyaz Diş ', 304, 104, 8, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Beyaz Gemi ', 160, 105, 9, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Bir Bilim Adamının Romanı ', 608, 106, 10, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Cemo ', 176, 107, 6, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Çalıkuşu ', 648, 108, 8, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Çanlar Kimin İçin Çalıyor ', 471, 109, 5, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Derviş ve Ölüm ', 192, 110, 9, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Dokuzuncu Hariciye Koğuşu ', 336, 111, 11, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Don Kişot ', 896, 112, 6, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Drina Köprüsü ', 288, 113, 10, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Drina’da Son Gün ', 276, 114, 10, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Esir Şehrin İnsanları ', 400, 115, 5, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Eskicinin Oğulları ', 624, 116, 8, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Fareler ve İnsanlar ', 112, 117, 6, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Fatih-Harbiye ', 416, 111, 6, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Gora ', 352, 118, 5, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Gün Olur Asra Bedel ', 256, 105, 9, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' İbrahim Efendi Konağı ', 422, 119, 5, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' İki Şehrin Hikayesi ', 352, 120, 6, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Kalpaklılar ', 312, 121, 9, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Kaplumbağalar ', 272, 122, 9, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Karartma Geceleri ', 472, 123, 10, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Kayıp Aranıyor ', 392, 124, 11, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Kiralık Konak ', 288, 125, 5, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Kuyruklu Yıldız Altında Bir İzdivaç ', 672, 126, 6, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Küçük Ağa ', 376, 127, 9, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Madame Bovary ', 544, 128, 6, 1)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Mai ve Siyah ', 480, 129, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Mor Salkımlı Ev ', 504, 130, 11, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Onlar da İnsandı ', 280, 131, 9, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Ölü Canlar ', 624, 132, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Robinson Crusoe ', 384, 133, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Sahnenin Dışındakiler ', 216, 134, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Savaş ve Barış ', 1488, 135, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Sefiller ', 176, 1, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Sergüzeşt ', 400, 136, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Ses ve Öfke ', 480, 137, 9, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Sinekli Bakkal ', 328, 130, 9, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N' Sokakta ', 424, 138, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Kuyucaklı Yusuf ', 224, 126, 11, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Yaban ', 288, 125, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'İçimizdeki Şeytan ', 208, 126, 11, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Kağnı ', 288, 126, 11, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Yalnızız ', 176, 126, 11, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Memleketimden İnsan Manzaraları ', 288, 139, 11, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Sineklerin Tanrısı ', 352, 140, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Fahrenheit 451 ', 208, 141, 10, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Dönüşüm ', 104, 142, 10, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Hayvan Çiftliği ', 120, 143, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Uçurtma Avcısı ', 360, 144, 12, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Kürk Mantolu Madonna ', 280, 126, 11, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Huzursuzluk ', 200, 145, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'İnci ', 144, 117, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Fareler ve İnsanlar ', 112, 117, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Beyaz Diş ', 304, 104, 13, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Suç ve Ceza ', 680, 146, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Otostopçunun Galaksi Rehberi ', 224, 147, 10, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Küçük Prens ', 96, 148, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Beyaz Gemi ', 160, 105, 9, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'İlyada ', 608, 149, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Odysseia ', 488, 149, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Simyacı ', 208, 150, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Şeker Portakalı ', 208, 151, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Uykudan Önce ', 226, 124, 11, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Yorgun Savaşçı ', 128, 152, 14, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Taht Oyunları ', 672, 153, 15, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Ejderha Dövmeli Kız ', 536, 154, 16, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Mezarlık Kitabı ', 312, 155, 10, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Yüzyıllık Yalnızlık ', 488, 156, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Sefiller ', 176, 1, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Küçük Kara Balık ', 64, 158, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Kaptan Grant''ın Çocukları ', 352, 159, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Kırmızı Pazartesi ', 160, 156, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Kimlik ', 360, 160, 5, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Akvaryum ', 200, 161, 11, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Beyaz Kale ', 448, 162, 9, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Altıncı Koğuş ', 240, 162, 9, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Ay Işığında Çocuklar ', 200, 130, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Beyaz Geceler ', 208, 146, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Binbir Gece Masalları ', 168, 163, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Bilinmeyen Bir Kadının Mektubu ', 100, 164, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Bozkırkurdu ', 280, 130, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Cezmi ', 352, 165, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Dava ', 208, 142, 10, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Don Kişot ', 896, 166, 6, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Ejderha Mızrağı ', 536, 167, 10, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'Fırtına Işığı Arşivi ', 688, 168, 10, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'hiko', 331, 193, 2, 3)
INSERT [dbo].[KitapBil] ([kitapAd], [sayfaSayisi], [yazarId], [yayId], [turId]) VALUES (N'hiko1', 313, 219, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[kitapTur] ON 

INSERT [dbo].[kitapTur] ([turId], [turIsim]) VALUES (1, N'Roman')
INSERT [dbo].[kitapTur] ([turId], [turIsim]) VALUES (2, N'Fantastik')
INSERT [dbo].[kitapTur] ([turId], [turIsim]) VALUES (3, N'Hikaye')
INSERT [dbo].[kitapTur] ([turId], [turIsim]) VALUES (12, N'Tarih')
INSERT [dbo].[kitapTur] ([turId], [turIsim]) VALUES (13, N'Polisiye')
INSERT [dbo].[kitapTur] ([turId], [turIsim]) VALUES (14, N'Spor')
INSERT [dbo].[kitapTur] ([turId], [turIsim]) VALUES (15, N'Okan')
SET IDENTITY_INSERT [dbo].[kitapTur] OFF
GO
SET IDENTITY_INSERT [dbo].[yayinList] ON 

INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (1, N'Antik Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (2, N'İş Bankası')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (3, N'Dex')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (4, N'YKY
')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (5, N'Can Yayınları
')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (6, N'İş Bankası Kültür Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (7, N'Doğan Kitap')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (8, N'Everest Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (9, N'İletişim Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (10, N'İthaki Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (11, N'Yapı Kredi Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (12, N'Doğan Kitap
')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (13, N'Everest Yayınları
')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (14, N'Kronik Kitap
')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (15, N'Epsilon Yayınevi
')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (16, N'Ayrıntı Yayınları
')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (17, N'Beyaz Balina')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (18, N'Akbank')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (25, N'Derin Tarih Kültür Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (26, N'Jaguar Kitap')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (27, N'Parola Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (28, N'Kapı Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (29, N'En Kitap')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (30, N'Bilgi Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (31, N'Timaş Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (32, N'Alfa Yayıncılık')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (33, N'Can Çocuk  Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (34, N'Pegasus Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (35, N'Altın Kitaplar')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (36, N' E Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (37, N'Koridor Yayıncılık')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (38, N'Tylko Dla Doroslych')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (39, N'Sonsuz Kitap')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (40, N'Martı Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (41, N'Yabancı Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (42, N'İndigo Yayınları')
INSERT [dbo].[yayinList] ([yayId], [yayIsim]) VALUES (44, N'Canbaz')
SET IDENTITY_INSERT [dbo].[yayinList] OFF
GO
SET IDENTITY_INSERT [dbo].[yazarList] ON 

INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (1, N'Victor Hugo')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (2, N'Voltaire')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (3, N'Stephanie Garber
')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (99, N'Knut Hamsun')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (100, N'Halikarnas Balıkçısı')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (101, N'Panait Istrati')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (102, N'Memduh Şevket Esendal')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (103, N'Turgenyev')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (104, N'Jack London')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (105, N'Cengiz Aytmatov')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (106, N'Oğuz Atay')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (107, N'Kemal Bilbaşar')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (108, N'Reşat Nuri Güntekin')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (109, N'Ernest Heming way')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (110, N'Mehmet Selimoviç')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (111, N'Peyami Safa')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (112, N'Cervantes')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (113, N'İvo Andriç')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (114, N'Faik Baysal')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (115, N'Kemal Tahir')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (116, N'Orhan Kemal')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (117, N'John Steinbeck')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (118, N'Rabindranath Tagore')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (119, N'Samiha Ayverdi')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (120, N'Charles Dickens')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (121, N'Samim Kocagöz')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (122, N'Fakir Baykurt')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (123, N'Rıfat Ilgaz')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (124, N'Sait Faik Abasıyanık')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (125, N'Yakup Kadri Karaosmanoğlu')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (126, N'Sabahattin Ali')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (127, N'Tarık Buğra')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (128, N'Flaubert')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (129, N'Halit Ziya Uşaklıgil')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (130, N'Halide Edib Adıvar')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (131, N'Cengiz Dağcı')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (132, N'Gogol')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (133, N'Daniel Defoe')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (134, N'Ahmet Hamdi Tanpınar')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (135, N'Tolstoy')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (136, N'Samipaşazade Sezai')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (137, N'William Faulkner')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (138, N'Bahattin Özkişi')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (139, N'Nazım Hikmet')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (140, N'William Golding')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (141, N'Ray Bradbury')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (142, N'Franz Kafka')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (143, N'George Orwell')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (144, N'Khaled Hosseini')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (145, N'Fernando Pessoa')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (146, N'Fyodor Dostoyevski')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (147, N'Douglas Adams')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (148, N'Exupéry')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (149, N'Homeros')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (150, N'Paulo Coelho')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (151, N'José Maurode Vasconcelos')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (152, N'Halil Cibran')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (153, N'George R.R.Martin')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (154, N'Stieg Larsson')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (155, N'Neil Gaiman')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (156, N'Gabriel García Márquez')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (158, N'Samed Behrengi')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (159, N'Jules Verne')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (160, N'Milan Kundera')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (161, N'Yaşar Kemal')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (162, N'Orhan Pamuk')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (163, N'Antoine Galland')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (164, N'Stefan Zweig')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (165, N'Namık Kemal')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (166, N'Miguelde Cervantes')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (167, N'MargaretWeis,TracyHickman')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (168, N'Brandon Sanderson')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (180, N'Taha Kılınç')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (181, N'Grigory Petrov')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (182, N'Amin Maalouf')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (183, N'Yu Hua')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (184, N'Mustafa Kemal Atatürk')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (185, N'İskender Pala')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (186, N'Adolf Hitler')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (187, N'Ahmet Ümit')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (188, N'Turgut Özakman')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (189, N'İlber Ortaylı')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (190, N'Nigel Warburton')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (191, N'Antoine de Saint-Exupéry')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (192, N'Michael Ende')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (193, N'J. K. Rowling (Robert Galbraith)')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (194, N'Madeline Miller')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (195, N'Suzanne Collins')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (196, N'Stephenie Meyer')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (197, N'Lewis Carroll')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (198, N'Stephen King')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (199, N'Trevanian')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (200, N'Agatha Christie')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (201, N'John Verdon')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (202, N'Dan Brown')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (203, N'Jean-Christophe Grangé')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (204, N'Krystian Bala')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (205, N'Wulf Dorn')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (206, N'Mario Mazzanti')
GO
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (207, N'John Verdon')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (208, N'Tess Gerritsen')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (209, N'Karen M. McManus')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (210, N'Eduardo Galeano')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (211, N'Marcos Eduardo Neves')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (212, N'Luca Caioli')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (213, N'Simon Kuper')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (214, N'Miguel Angel Violan')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (215, N'Roland Lazenby')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (216, N'David Lagercrantz')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (217, N'Michael Part')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (218, N'Rafael Nadal')
INSERT [dbo].[yazarList] ([yazarId], [yazarIsim]) VALUES (219, N'Erkut')
SET IDENTITY_INSERT [dbo].[yazarList] OFF
GO
ALTER TABLE [dbo].[KitapBil]  WITH CHECK ADD  CONSTRAINT [turId_key] FOREIGN KEY([turId])
REFERENCES [dbo].[kitapTur] ([turId])
GO
ALTER TABLE [dbo].[KitapBil] CHECK CONSTRAINT [turId_key]
GO
ALTER TABLE [dbo].[KitapBil]  WITH CHECK ADD  CONSTRAINT [yayinList_key] FOREIGN KEY([yayId])
REFERENCES [dbo].[yayinList] ([yayId])
GO
ALTER TABLE [dbo].[KitapBil] CHECK CONSTRAINT [yayinList_key]
GO
ALTER TABLE [dbo].[KitapBil]  WITH CHECK ADD  CONSTRAINT [yazarID_key] FOREIGN KEY([yazarId])
REFERENCES [dbo].[yazarList] ([yazarId])
GO
ALTER TABLE [dbo].[KitapBil] CHECK CONSTRAINT [yazarID_key]
GO
