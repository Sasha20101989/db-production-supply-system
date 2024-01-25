-- =============================================
-- Author:		<Felyugin,Aleksander>
-- Create date: <11/01/2024>
-- Description:	<>
-- =============================================


CREATE PROCEDURE [Docmapper].[usp_Update_Docmapper_Item]
  @DocmapperId int,
  @DocmapperName nvarchar(50),
  @DefaultFolder nvarchar(100),
  @SheetName nvarchar(50),
  @FirstDataRow int,
  @IsActive bit
AS
begin
   DECLARE @OldDocmapperName nvarchar(50);
   DECLARE @OldDefaultFolder nvarchar(100); 
   DECLARE @OldSheetName nvarchar(50);  
   DECLARE @OldFirstDataRow int;   
   DECLARE @OldIsActive bit;   
   DECLARE @machineName nvarchar(200) = 'Server';   
   DECLARE @domainUser nvarchar(200) = '';  
   DECLARE @logged DATETIME = GetDate();   
   DECLARE @level nvarchar(5) = 'Info';   
   DECLARE @message nvarchar(MAX) = '';   
   DECLARE @logger nvarchar(MAX) = '[Docmapper].[usp_Update_Docmapper_Item]';  

   SELECT @OldDocmapperName = Docmapper_Name,
          @OldDefaultFolder = Default_Folder,
          @OldSheetName = Sheet_Name,
          @OldFirstDataRow = First_Data_Row,
          @OldIsActive = Is_Active
   FROM Docmapper.tbd_Docmapper
   WHERE Docmapper_Id = @DocmapperId;

   UPDATE Docmapper.tbd_Docmapper
   SET    Docmapper_Name = @DocmapperName,
          Default_Folder = @DefaultFolder,
          Sheet_Name = @SheetName,
   	      First_Data_Row = @FirstDataRow,
   	      Is_Active = @IsActive 
   WHERE Docmapper_Id = @DocmapperId

   SET @message = CONCAT('Updated values for Docmapper_Id = ',  
                         @DocmapperId,  
                         '. Old Docmapper_Name = ',
                         @OldDocmapperName,
                         ', New Docmapper_Name = ',
                         @DocmapperName,
                         ', Old Default_Folder = ',
                         @OldDefaultFolder,
                         ', New Default_Folder = ',
                         @DefaultFolder,
                         ', Old Sheet_Name = ',
                         @OldSheetName,
                         ', New Sheet_Name = ',
                         @SheetName,
                         ', Old First_Data_Row = ',
                         CAST(@OldFirstDataRow AS NVARCHAR(MAX)),
                         ', New First_Data_Row = ',
                         CAST(@FirstDataRow AS NVARCHAR(MAX)),
                         ', Old Is_Active = ',
                         CAST(@OldIsActive AS NVARCHAR(MAX)),
                         ', New Is_Active = ',
                         CAST(@IsActive AS NVARCHAR(MAX)));

  exec usp_Insert_Log @machineName, @logged, @logger, @level, @domainUser, @message;
end