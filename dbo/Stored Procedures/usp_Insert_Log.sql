-- =============================================
-- Author:		<Felyugin Aleksandr>
-- Create date: <30/11/2023
-- Description:	<>
-- =============================================
CREATE PROCEDURE [dbo].[usp_Insert_Log] (
  @machineName nvarchar(200),
  @logged datetime,
  @logger nvarchar(300),
  @level nvarchar(5),
  @domainUser nvarchar(300),
  @message nvarchar(max)
) AS
BEGIN
  INSERT INTO [dbo].[tbd_Log] (
    [Machine_Name],
    [Log_Date],
    [Log_Level],
    [Log_Message],
	[Domain_User],
    [Logger]
  ) VALUES (
    @machineName,
    @logged,
    @level,
    @message,
	@domainUser,
    @logger
  );
END