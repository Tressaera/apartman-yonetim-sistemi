--apartman_isimleri adlý tablomuz

USE [apartman]GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[apartman_islemleri](
[id] [int] IDENTITY(1,1) NOT NULL,
[apartman_adi] [nvarchar](50) NULL,
[blok] [nvarchar](50) NULL,
[adres] [nvarchar](150) NULL,
[daire_sayisi] [tinyint] NULL,
[yonetici_id] [int] NULL,
CONSTRAINT [PK_apartman_islemleri] PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]) ON [PRIMARY]

GO

--borc_tipi adlý talomuzu oluþturuyoruz.

USE [apartman]GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[borc_tipi](
[id] [int] IDENTITY(1,1) NOT NULL,
[borc_tipi] [nvarchar](50) NULL,
[aciklama] [nvarchar](50) NULL,
CONSTRAINT [PK_borc_tipi] PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]) ON [PRIMARY]

GO

--borclar adýndaki tablomuz

USE [apartman]GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[borclar](
[id] [int] IDENTITY(1,1) NOT NULL,
[kategori] [nvarchar](50) NULL,
[kullanici] [nvarchar](50) NULL,
[tutar] [decimal](18, 2) NULL,
[aciklama] [nvarchar](150) NULL,
[tarih] [nvarchar](50) NULL,
CONSTRAINT [PK_borclar] PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]) ON [PRIMARY]

GO

--daire adýndaki tablomuz

USE [apartman]GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[daire](
[id] [int] IDENTITY(1,1) NOT NULL,
[tipi] [nvarchar](50) NULL,
[kira] [decimal](18, 2) NULL,
[aidat] [decimal](18, 2) NULL,
[apartman_id] [int] NOT NULL,
[daire_no] [nvarchar](50) NULL,
CONSTRAINT [PK_daire] PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]) ON [PRIMARY]

GO

ALTER TABLE [dbo].[daire] WITH CHECK ADD FOREIGN KEY([apartman_id])
REFERENCES [dbo].[apartman_islemleri] ([id])
GO

--gelirler adýndaki tablomuz

USE [apartman]GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gelirler](
[id] [int] IDENTITY(1,1) NOT NULL,
[kategori] [nvarchar](50) NULL,
[tutar] [decimal](18, 2) NULL,
[aciklama] [nvarchar](50) NULL,
[tarih] [nvarchar](50) NULL,
CONSTRAINT [PK_gelirler] PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]) ON [PRIMARY]

GO

--giderler adýndaki tablomuz

USE [apartman]GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[giderler](
[id] [int] IDENTITY(1,1) NOT NULL,
[kategori] [nvarchar](50) NULL,
[tutar] [decimal](18, 2) NULL,
[aciklama] [nvarchar](150) NULL,
[tarih] [nvarchar](50) NULL,
CONSTRAINT [PK_giderler] PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]) ON [PRIMARY]

GO

--kullanici adýndaki tablomuz

USE [apartman]GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[kullanici](
[id] [int] IDENTITY(1,1) NOT NULL,
[tc_no] [nvarchar](50) NOT NULL,
[soyisim] [nvarchar](50) NULL,
[email] [nvarchar](50) NULL,
[telefon] [nvarchar](50) NULL,
[apartman_id] [int] NULL,
[daire_no] [nvarchar](50) NULL,
[ev_durumu] [nvarchar](50) NULL,
[rol] [nvarchar](50) NULL,
[sifre] [nvarchar](50) NULL,
[ad] [nvarchar](50) NULL,
CONSTRAINT [PK_kullanici] PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]) ON [PRIMARY]

GO

--log adýndaki tablomuz

USE [apartman]GO

/****** Object: Table [dbo].[log] Script Date: 25.02.2020 01:22:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[log](
[id] [int] IDENTITY(1,1) NOT NULL,
[islem] [nvarchar](50) NULL,
[ip] [nvarchar](50) NULL,
[tc] [nvarchar](50) NULL,
[aciklama] [nvarchar](50) NULL,
[tarih] [nvarchar](50) NULL,
CONSTRAINT [PK_log] PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]) ON [PRIMARY]

GO

--odenen adýndaki tablomuz

USE [apartman]GO

/****** Object: Table [dbo].[odenen] Script Date: 25.02.2020 01:22:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[odenen](
[id] [int] IDENTITY(1,1) NOT NULL,
[odeyen] [nvarchar](50) NULL,
[miktar] [decimal](18, 2) NULL,
[odeme_turu] [nvarchar](50) NULL,
[odeme_onaylayan] [nvarchar](50) NULL,
CONSTRAINT [PK_odenen] PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]) ON [PRIMARY]

GO

--yetki adýndaki tablomuz

USE [apartman]GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[yetki](
[id] [int] IDENTITY(1,1) NOT NULL,
[tc] [nvarchar](50) NOT NULL,
[gelir_isleri] [tinyint] NULL,
[gider_isleri] [tinyint] NULL,
[kasa_isleri] [tinyint] NULL,
[borc_isleri] [tinyint] NULL,
[daire_isleri] [tinyint] NULL,
[kullanici_isleri] [tinyint] NULL,
CONSTRAINT [PK_yetki] PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]) ON [PRIMARY]

GO

