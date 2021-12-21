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