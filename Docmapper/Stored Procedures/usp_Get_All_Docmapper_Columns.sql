-- =============================================
-- Author:		<Felyugin, Alexander>
-- Create date: <22.12.2023>
-- Description:	<>
-- =============================================
CREATE PROCEDURE [Docmapper].[usp_Get_All_Docmapper_Columns]

AS

BEGIN

    SELECT Docmapper_Column_Id as DocmapperColumnId, 
	       Element_Name as ElementName, 
		   System_Column_Name as SystemColumnName

    FROM Docmapper.tbd_Docmapper_Columns;

END