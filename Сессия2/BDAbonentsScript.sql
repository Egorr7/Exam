USE [master]
GO
/****** Object:  Database [Abonents]    Script Date: 21.12.2021 10:57:15 ******/
CREATE DATABASE [Abonents]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Abonents', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Abonents.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Abonents_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Abonents_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Abonents] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Abonents].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Abonents] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Abonents] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Abonents] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Abonents] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Abonents] SET ARITHABORT OFF 
GO
ALTER DATABASE [Abonents] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Abonents] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Abonents] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Abonents] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Abonents] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Abonents] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Abonents] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Abonents] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Abonents] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Abonents] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Abonents] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Abonents] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Abonents] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Abonents] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Abonents] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Abonents] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Abonents] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Abonents] SET RECOVERY FULL 
GO
ALTER DATABASE [Abonents] SET  MULTI_USER 
GO
ALTER DATABASE [Abonents] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Abonents] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Abonents] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Abonents] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Abonents] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Abonents', N'ON'
GO
ALTER DATABASE [Abonents] SET QUERY_STORE = OFF
GO
USE [Abonents]
GO
/****** Object:  Table [dbo].[Абоненты]    Script Date: 21.12.2021 10:57:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Абоненты](
	[НомерАбонента] [int] NULL,
	[ФИОАбонента] [nvarchar](50) NULL,
	[Адрес] [nvarchar](50) NULL,
	[НомерТелефона] [nvarchar](20) NULL,
	[НомерДоговора] [nvarchar](20) NULL,
	[ДатаУстакновкиТелефона] [date] NULL,
	[НомерРазговора] [int] NULL,
	[ДатаРазговора] [date] NULL,
	[ВремяРазговора] [int] NULL,
	[КодГорода] [int] NULL,
	[НазваниеГорода] [nvarchar](50) NULL,
	[Тариф] [int] NULL,
	[Оплачен] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Статистика_Разговоров]    Script Date: 21.12.2021 10:57:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Статистика_Разговоров]
AS
SELECT        НомерТелефона, ФИОАбонента, COUNT(НомерРазговора) AS КоличествоРазговоров
FROM            dbo.Абоненты
GROUP BY НомерТелефона, ФИОАбонента
GO
INSERT [dbo].[Абоненты] ([НомерАбонента], [ФИОАбонента], [Адрес], [НомерТелефона], [НомерДоговора], [ДатаУстакновкиТелефона], [НомерРазговора], [ДатаРазговора], [ВремяРазговора], [КодГорода], [НазваниеГорода], [Тариф], [Оплачен]) VALUES (4, N'Титова Александра Иввановна', N'г. Омск, ул. Ленина, 5,24



', N'(3812)333490', N'3465Ф', CAST(N'2012-10-09' AS Date), 4, CAST(N'2021-03-08' AS Date), 5, 3, N'Воронеж', 20, 1)
INSERT [dbo].[Абоненты] ([НомерАбонента], [ФИОАбонента], [Адрес], [НомерТелефона], [НомерДоговора], [ДатаУстакновкиТелефона], [НомерРазговора], [ДатаРазговора], [ВремяРазговора], [КодГорода], [НазваниеГорода], [Тариф], [Оплачен]) VALUES (4, N'Титова Александра Иввановна', N'г. Омск, ул. Ленина, 5,24



', N'(3812)333490', N'3465Ф', CAST(N'2012-10-09' AS Date), 7, CAST(N'2021-03-15' AS Date), 10, 1, N'Омск', 10, 0)
INSERT [dbo].[Абоненты] ([НомерАбонента], [ФИОАбонента], [Адрес], [НомерТелефона], [НомерДоговора], [ДатаУстакновкиТелефона], [НомерРазговора], [ДатаРазговора], [ВремяРазговора], [КодГорода], [НазваниеГорода], [Тариф], [Оплачен]) VALUES (4, N'Титова Александра Иввановна', N'г. Омск, ул. Ленина, 5,24



', N'(3812)951211', N'3466Ф', CAST(N'2012-10-09' AS Date), 2, CAST(N'2021-03-02' AS Date), 2, 4, N'Новосибирск', 10, 1)
INSERT [dbo].[Абоненты] ([НомерАбонента], [ФИОАбонента], [Адрес], [НомерТелефона], [НомерДоговора], [ДатаУстакновкиТелефона], [НомерРазговора], [ДатаРазговора], [ВремяРазговора], [КодГорода], [НазваниеГорода], [Тариф], [Оплачен]) VALUES (4, N'Титова Александра Иввановна', N'г. Омск, ул. Ленина, 5,24



', N'(3812)951211', N'3466Ф', CAST(N'2012-10-09' AS Date), 8, CAST(N'2021-03-15' AS Date), 1, 2, N'Москва', 30, 1)
INSERT [dbo].[Абоненты] ([НомерАбонента], [ФИОАбонента], [Адрес], [НомерТелефона], [НомерДоговора], [ДатаУстакновкиТелефона], [НомерРазговора], [ДатаРазговора], [ВремяРазговора], [КодГорода], [НазваниеГорода], [Тариф], [Оплачен]) VALUES (4, N'Титова Александра Иввановна', N'г. Омск, ул. Ленина, 5,24



', N'(3812)951211', N'3466Ф', CAST(N'2012-10-09' AS Date), 11, CAST(N'2021-04-01' AS Date), 3, 3, N'Воронеж', 20, 1)
INSERT [dbo].[Абоненты] ([НомерАбонента], [ФИОАбонента], [Адрес], [НомерТелефона], [НомерДоговора], [ДатаУстакновкиТелефона], [НомерРазговора], [ДатаРазговора], [ВремяРазговора], [КодГорода], [НазваниеГорода], [Тариф], [Оплачен]) VALUES (1, N'Орлов 
Сергей Борисович
', N'г.Омск, ул. Мира, 54,4', N'(3812)531178', N'4523В', CAST(N'2004-08-04' AS Date), 3, CAST(N'2021-03-08' AS Date), 15, 3, N'Воронеж', 20, 1)
INSERT [dbo].[Абоненты] ([НомерАбонента], [ФИОАбонента], [Адрес], [НомерТелефона], [НомерДоговора], [ДатаУстакновкиТелефона], [НомерРазговора], [ДатаРазговора], [ВремяРазговора], [КодГорода], [НазваниеГорода], [Тариф], [Оплачен]) VALUES (1, N'Орлов 
Сергей Борисович
', N'г.Омск, ул. Мира, 54,4', N'(3812)531178', N'4523В', CAST(N'2004-08-04' AS Date), 6, CAST(N'2021-03-15' AS Date), 1, 1, N'Омск', 10, 0)
INSERT [dbo].[Абоненты] ([НомерАбонента], [ФИОАбонента], [Адрес], [НомерТелефона], [НомерДоговора], [ДатаУстакновкиТелефона], [НомерРазговора], [ДатаРазговора], [ВремяРазговора], [КодГорода], [НазваниеГорода], [Тариф], [Оплачен]) VALUES (1, N'Орлов 
Сергей Борисович
', N'г.Омск, ул. Мира, 54,4', N'(3812)326789', N'2378Ф', CAST(N'1996-01-01' AS Date), 1, CAST(N'2021-03-02' AS Date), 12, 1, N'Омск', 10, 0)
INSERT [dbo].[Абоненты] ([НомерАбонента], [ФИОАбонента], [Адрес], [НомерТелефона], [НомерДоговора], [ДатаУстакновкиТелефона], [НомерРазговора], [ДатаРазговора], [ВремяРазговора], [КодГорода], [НазваниеГорода], [Тариф], [Оплачен]) VALUES (1, N'Орлов 
Сергей Борисович
', N'г.Омск, ул. Мира, 54,4', N'(3812)326789', N'2378Ф', CAST(N'1996-01-01' AS Date), 5, CAST(N'2021-03-15' AS Date), 10, 5, N'Санкт-Петербург', 30, 1)
INSERT [dbo].[Абоненты] ([НомерАбонента], [ФИОАбонента], [Адрес], [НомерТелефона], [НомерДоговора], [ДатаУстакновкиТелефона], [НомерРазговора], [ДатаРазговора], [ВремяРазговора], [КодГорода], [НазваниеГорода], [Тариф], [Оплачен]) VALUES (1, N'Орлов 
Сергей Борисович
', N'г.Омск, ул. Мира, 54,4', N'(3812)326789', N'2378Ф', CAST(N'1996-01-01' AS Date), 10, CAST(N'2021-04-01' AS Date), 3, 3, N'Воронеж', 20, 0)
INSERT [dbo].[Абоненты] ([НомерАбонента], [ФИОАбонента], [Адрес], [НомерТелефона], [НомерДоговора], [ДатаУстакновкиТелефона], [НомерРазговора], [ДатаРазговора], [ВремяРазговора], [КодГорода], [НазваниеГорода], [Тариф], [Оплачен]) VALUES (3, N'Вавилов
Сергей Борисович
', N'Г. Омск, пр.Маркса, 34,23', N'(3812)953412', N'99345Р', CAST(N'2013-01-01' AS Date), 9, CAST(N'2021-03-23' AS Date), 6, 3, N'Воронеж', 20, 1)
GO
/****** Object:  StoredProcedure [dbo].[AddNewAbonent]    Script Date: 21.12.2021 10:57:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddNewAbonent]
	@AbonentNumber int,
	@FIOAbonent nvarchar(50),
	@Adress nvarchar(50),
	@TelefonNumber nvarchar(20),
	@NumberDogovor nvarchar(20),
	@DateSetupTelefon date,
	@NumberRazgovora int,
	@DateRazgovor date,
	@LengthRazgovor int,
	@CityCode int,
	@CityName nvarchar(50),
	@Tariff int,
	@Payed bit

AS
	INSERT INTO dbo.Абоненты (НомерАбонента, ФИОАбонента, Адрес, НомерТелефона, НомерДоговора, ДатаУстакновкиТелефона, НомерРазговора, ДатаРазговора, ВремяРазговора, КодГорода, НазваниеГорода, Тариф, Оплачен)
	VALUES (@AbonentNumber, @FIOAbonent, @Adress, @TelefonNumber, @NumberDogovor, @DateSetupTelefon, @NumberRazgovora, @DateRazgovor, @LengthRazgovor, @CityCode, @CityName, @Tariff, @Payed)

	SELECT SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[DeleteAbonents]    Script Date: 21.12.2021 10:57:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteAbonents]
	@AbonentNumber int,
	@FIOAbonent nvarchar(50),
	@Adress nvarchar(50),
	@TelefonNumber nvarchar(20),
	@NumberDogovor nvarchar(20),
	@DateSetupTelefon date,
	@NumberRazgovora int,
	@DateRazgovor date,
	@LengthRazgovor int,
	@CityCode int,
	@CityName nvarchar(50),
	@Tariff int,
	@Payed bit
AS
	DELETE FROM Абоненты WHERE НомерАбонента = @AbonentNumber
	SELECT SCOPE_IDENTITY()
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Абоненты"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 270
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 2505
         Alias = 1695
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Статистика_Разговоров'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Статистика_Разговоров'
GO
USE [master]
GO
ALTER DATABASE [Abonents] SET  READ_WRITE 
GO
