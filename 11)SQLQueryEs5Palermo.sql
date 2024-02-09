
SELECT A.Cognome, A.Nome, V.DataViolazione, V.IndirizzoViolazione, V.Importo, V.DecurtamentoPunti
FROM VERBALE V
JOIN Anagrafica A ON V.idanagrafica = A.IDanagrafica
WHERE A.Città = 'Palermo';
