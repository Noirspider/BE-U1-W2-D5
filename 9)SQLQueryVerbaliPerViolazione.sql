SELECT TV.IDviolazione, TV.descrizione ,COUNT(*) AS NumeroVerbaliViolazione
FROM VERBALE AS V
INNER JOIN TIPO_VIOLAZIONE AS TV
ON TV.IDviolazione = V.idviolazione
GROUP BY TV.IDviolazione, TV.descrizione ;