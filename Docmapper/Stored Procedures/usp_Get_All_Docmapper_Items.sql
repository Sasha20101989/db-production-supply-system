-- =============================================
-- Author:		<Satrapinsky,Alex>
-- Create date: <21/12/2023>
-- Description:	<>
-- =============================================


CREATE PROCEDURE [Docmapper].[usp_Get_All_Docmapper_Items]
AS
begin
SELECT       
Docmapper_Id as DocmapperId,
Docmapper_Name as DocmapperName,
Default_Folder as DefaultFolder,
Sheet_Name as SheetName,
First_Data_Row as FirstDataRow,
Is_Active as IsActive

FROM    Docmapper.tbd_Docmapper
end