SELECT A.Nome, A.Cognome, A.Indirizzo, V.DataViolazione, V.IndirizzoViolazione, V.Importo, V.DecurtamentoPunti
FROM VERBALE AS V
INNER JOIN ANAGRAFICA AS A
ON A.IDanagrafica = V.idanagrafica 
GROUP BY A.Nome, A.Cognome, A.Indirizzo, V.DataViolazione, V.IndirizzoViolazione, V.Importo, V.DecurtamentoPunti
HAVING V.DecurtamentoPunti > 5