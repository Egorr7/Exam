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