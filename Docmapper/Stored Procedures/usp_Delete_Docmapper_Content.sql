-- =============================================
-- Author:		<Felyugin,Aleksander>
-- Create date: <12/01/2024>
-- Description:	<>
-- =============================================
CREATE PROCEDURE [Docmapper].[usp_Delete_Docmapper_Content] 
 @DocmapperContentId INT
AS
BEGIN
	DELETE FROM tbd_Docmapper_Content 
	WHERE Docmapper_Content_Id = @DocmapperContentId

END