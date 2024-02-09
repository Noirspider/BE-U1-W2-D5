SELECT A.IDanagrafica, A.Cod_Fisc , COUNT(*) AS NumeroVerbaliTrascritti
FROM VERBALE AS V
INNER JOIN ANAGRAFICA AS A 
ON A.IDanagrafica = V.idanagrafica
GROUP BY A.IDanagrafica, A.Cod_Fisc;
