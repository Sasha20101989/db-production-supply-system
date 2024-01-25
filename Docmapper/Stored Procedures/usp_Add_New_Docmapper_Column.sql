-- =============================================
-- Author:		<Felyugin, Alexander>
-- Create date: <22.12.2023>
-- Description:	<>
-- =============================================
CREATE PROCEDURE [Docmapper].[usp_Add_New_Docmapper_Column]
    @ElementName NVARCHAR(50),
    @SystemColumnName NVARCHAR(50)
AS

BEGIN
    DECLARE @InsertedTable TABLE (
	     Docmapper_Column_Id INT,
	     Element_Name NVARCHAR(50),
         System_Column_Name NVARCHAR(50)
    );

    INSERT INTO tbd_Docmapper_Columns(
	    Element_Name, 
		System_Column_Name
	)

	OUTPUT INSERTED.Docmapper_Column_Id, INSERTED.Element_Name, INSERTED.System_Column_Name INTO @InsertedTable

    VALUES (
	    @ElementName, 
		@SystemColumnName
	);

	SELECT
	     Docmapper_Column_Id as DocmapperColumnId,
	     Element_Name as ElementName, 
	     System_Column_Name as SystemColumnName

    FROM @InsertedTable;
END