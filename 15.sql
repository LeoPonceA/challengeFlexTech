CREATE PROC eliminar_persona(@id_persona INT)
AS BEGIN
	DELETE FROM TABLE vencimiento_pasaporte WHERE ID_edad_nacionalidad = @id_persona;
	
	BEGIN TRY 
		DELETE FROM TABLE edad_nacionalidad WHERE ID_edad_nacionalidad = @id_persona;
		
	END TRY
	BEGIN CATCH
		PRINT "-1"
	END CATCH
GO
	