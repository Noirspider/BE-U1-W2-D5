SELECT A.IDanagrafica, A.Nome, A.Cognome, SUM(V.Importo) AS TotaleImporti
FROM VERBALE AS V
INNER JOIN ANAGRAFICA AS A
ON A.IDanagrafica = V.idanagrafica
GROUP BY A.IDanagrafica, A.Nome, A.Cognome
