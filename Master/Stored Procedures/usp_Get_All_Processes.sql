-- =============================================
-- Author:		<Felyugin,Aleksander>
-- Create date: <22.01.2023>
-- Description:	<>
-- =============================================


create PROCEDURE [Master].[usp_Get_All_Processes]
AS
begin
SELECT       
		Process_Id as ProcessId,
		Process_Name as ProcessName

FROM    Master.tbd_Processes
end