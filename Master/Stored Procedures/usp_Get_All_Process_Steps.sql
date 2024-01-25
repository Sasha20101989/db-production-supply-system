-- =============================================
-- Author:		<Felyugin,Aleksander>
-- Create date: <22.01.2023>
-- Description:	<>
-- =============================================


create PROCEDURE [Master].[usp_Get_All_Process_Steps]
AS
begin
SELECT       
		Process_Step_Id as ProcessStepId,
		Process_Id as ProcessId,
		Step,
		Docmapper_Id as DocmapperId,
		Section_Id as SectionId

FROM    Master.tbd_Processes_Steps
end