CREATE PROCEDURE VisualizzaViolazioniPerData
    @DataViolazione DATE
AS
BEGIN
    SELECT DataViolazione, Importo, DecurtamentoPunti
    FROM VERBALE
    WHERE DataViolazione = @DataViolazione;
END
GO