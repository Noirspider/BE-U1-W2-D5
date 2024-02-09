SELECT Nominativo_Agente, COUNT(*) AS NumeroViolazioniContestate
FROM VERBALE
GROUP BY Nominativo_Agente;
