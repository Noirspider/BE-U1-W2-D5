SELECT A.IDanagrafica, A.Nome, A.Cognome, A.Cod_Fisc ,SUM(DecurtamentoPunti) AS TotalePuntiDecurtati
FROM VERBALE AS V
INNER JOIN ANAGRAFICA AS A
ON A.IDanagrafica = V.idanagrafica
GROUP BY A.IDanagrafica, A.Nome, A.Cognome, A.Cod_Fisc;
