
CREATE PROCEDURE EliminaVerbale
 @IdVerbale INT
AS
BEGIN DELETE FROM VERBALE
WHERE idverbale = @IdVerbale;

END 
GO
