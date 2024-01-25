-- =============================================
-- Author:		<Satrapinsky, Alex>
-- Create date: <21.12.2023>
-- Description:	<>
-- =============================================
CREATE PROCEDURE [Docmapper].[usp_Add_New_Docmapper_Content] 
 @DocmapperId INT,
 @DocmapperColumnId INT,
 @RowNumber INT,
 @ColumnNumber INT

AS
BEGIN
    DECLARE @InsertedTable TABLE (
	    Docmapper_Content_Id INT,
        Docmapper_Id INT,
        Docmapper_Column_Id INT,
        Row_Nr INT,
        Column_Nr INT
    );

    INSERT INTO tbd_Docmapper_Content(
        Docmapper_Id,
        Docmapper_Column_Id,
		Row_Nr,
		Column_Nr
    )

	OUTPUT INSERTED.Docmapper_Content_Id, INSERTED.Docmapper_Id, INSERTED.Docmapper_Column_Id, INSERTED.Row_Nr, INSERTED.Column_Nr INTO @InsertedTable
	VALUES (
        @DocmapperId,
        @DocmapperColumnId,
		@RowNumber,
		@ColumnNumber
    );

	SELECT
	     Docmapper_Content_Id as DocmapperContentId,
	     Docmapper_Id as DocmapperId, 
	     Docmapper_Column_Id as DocmapperColumnId, 
	     Row_Nr as RowNumber, 
	     Column_Nr as ColumnNumber

	FROM @InsertedTable;
END