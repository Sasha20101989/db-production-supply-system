-- =============================================
-- Author:		<Satrapinsky,Alex>
-- Create date: <21/12/2023>
-- Description:	<>
-- =============================================


CREATE PROCEDURE [Docmapper].[usp_Get_All_Docmapper_Content_Items]
AS
begin
SELECT  
        Docmapper_Content_Id as DocmapperContentId,
        Docmapper_Id as DocmapperId,
        Docmapper_Column_Id as DocmapperColumnId,
        Row_Nr as RowNumber,
        Column_Nr as ColumnNumber

FROM    Docmapper.tbd_Docmapper_Content

end