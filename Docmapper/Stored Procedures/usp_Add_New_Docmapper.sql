-- =============================================
-- Author:		<Satrapinsky, Alex>
-- Create date: <12.20.2023>
-- Description:	<>
-- =============================================
CREATE PROCEDURE [Docmapper].[usp_Add_New_Docmapper]
 @DocmapperName NVARCHAR(50),
 @DefaultFolder NVARCHAR(100),
 @SheetName NVARCHAR(50),
 @FirstDataRow INT
AS
BEGIN
    DECLARE @IsActive BIT = 'true';

    DECLARE @InsertedTable TABLE (
        Docmapper_Id INT,
        Docmapper_Name NVARCHAR(50),
        Default_Folder NVARCHAR(100),
		Sheet_Name NVARCHAR(50),
		First_Data_Row INT,
		Is_Active BIT
    );

    INSERT INTO tbd_Docmapper(
        Docmapper_Name,
        Default_Folder,
		Sheet_Name,
		First_Data_Row,
		Is_Active
    )

	OUTPUT INSERTED.Docmapper_Id, INSERTED.Docmapper_Name, INSERTED.Default_Folder, INSERTED.Sheet_Name, INSERTED.First_Data_Row, INSERTED.Is_Active INTO @InsertedTable
	VALUES (
        @DocmapperName,
        @DefaultFolder,
		@SheetName,
		@FirstDataRow,
		@IsActive
    );

	SELECT Docmapper_Id as DocmapperId,
	       Docmapper_Name as DocmapperName, 
	       Default_Folder as DefaultFolder, 
	       Sheet_Name as SheetName, 
	       First_Data_Row as FirstDataRow,
		   Is_Active as IsActive
    
	FROM @InsertedTable;

END