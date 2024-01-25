-- =============================================
-- Author:		<Felyugin,Aleksander>
-- Create date: <12/01/2024>
-- Description:	<>
-- =============================================
CREATE PROCEDURE [Docmapper].[usp_Update_Docmapper_Content] 
 @DocmapperContentId INT,
 @RowNumber INT,
 @ColumnNumber INT
AS
BEGIN
   DECLARE @OldRowNumber INT;
   DECLARE @OldColumnNumber INT;
   DECLARE @machineName nvarchar(200) = 'Server';
   DECLARE @domainUser nvarchar(200) = '';
   DECLARE @logged DATETIME = GetDate();
   DECLARE @level nvarchar(5) = 'Info';
   DECLARE @message nvarchar(MAX) = '';
   DECLARE @logger nvarchar(MAX) = '[Docmapper].[usp_Update_Docmapper_Content]';	

   SELECT @OldRowNumber = Row_Nr,
          @OldColumnNumber = Column_Nr
   FROM tbd_Docmapper_Content
   WHERE Docmapper_Content_Id = @DocmapperContentId;

   UPDATE tbd_Docmapper_Content
   SET    Row_Nr = @RowNumber,
           Column_Nr = @ColumnNumber
   WHERE  Docmapper_Content_Id = @DocmapperContentId
   
   SET @message = CONCAT('Updated values for Docmapper_Content_Id = ', 
                            @DocmapperContentId, 
                            '. Old Row_Nr = ',
                            @OldRowNumber,
							'. New Row_Nr = ',
							@RowNumber,
                            ', Old Column_Nr = ',
                            @OldColumnNumber,
							', New Column_Nr = ',
							@ColumnNumber);

   exec usp_Insert_Log @machineName, @logged, @logger, @level, @domainUser, @message
END