-- =============================================
-- Author:		<Felyugin,Aleksander>
-- Create date: <22.01.2023>
-- Description:	<>
-- =============================================


CREATE PROCEDURE [dbo].[usp_Get_All_Sections]
AS
begin
SELECT       
		Section_Id as SectionId,
		Section_Name as SectionName,
		Section_Id as SectionId

FROM    dbo.tbd_Sections
end