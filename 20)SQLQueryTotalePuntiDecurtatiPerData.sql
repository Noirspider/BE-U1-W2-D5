CREATE PROCEDURE [dbo].[VisualizzaTotalePuntiDecurtatiPerData]
    @Data NVARCHAR(10)
AS
BEGIN
    SELECT SUM(DecurtamentoPunti) AS TotalePuntiDecurtati
    FROM VERBALE
    WHERE DataViolazione = @Data;
END;
