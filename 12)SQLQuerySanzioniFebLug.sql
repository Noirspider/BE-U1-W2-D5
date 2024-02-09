SELECT V.Nominativo_Agente, V.IndirizzoViolazione, V.DataViolazione, V.Importo, V.DecurtamentoPunti, A.Nome, A.Cognome, TV.descrizione 
FROM VERBALE AS V
INNER JOIN ANAGRAFICA AS A
ON A.IDanagrafica=V.idanagrafica
INNER JOIN TIPO_VIOLAZIONE AS TV
ON TV.IDviolazione = V.idviolazione
WHERE DataViolazione BETWEEN '2009-02-01' AND '2009-07-31'
GROUP BY V.Nominativo_Agente, V.IndirizzoViolazione, V.DataViolazione, V.Importo, V.DecurtamentoPunti, A.Nome, A.Cognome, TV.descrizione
