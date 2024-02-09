
CREATE PROCEDURE VisualizzaContravvenzioniPerAnno
	@Anno INT
AS
BEGIN
SELECT A.Nome, A.Cognome, A.Indirizzo, V.DataViolazione, V.IndirizzoViolazione, V.Importo, V.DecurtamentoPunti
FROM VERBALE V
INNER JOIN ANAGRAFICA A ON V.idanagrafica = A.IDanagrafica
GROUP BY  A.Nome, A.Cognome, A.Indirizzo, V.DataViolazione, V.IndirizzoViolazione, V.Importo, V.DecurtamentoPunti
HAVING YEAR(V.DataViolazione) = @Anno
END
GO
