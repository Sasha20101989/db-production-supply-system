-- =============================================
-- Author:		<Felyugin, Aleksander>
-- Create date: <6.12.2023>
-- Description:	<>
-- =============================================
CREATE PROCEDURE [Users].[usp_Get_User_By_Account]
   @Account nvarchar(10)
AS
BEGIN
   SELECT   Users.tbd_Users.id, 
            Users.tbd_Users.Account, 
			Users.tbd_Users.Name, 
			Users.tbd_Users.Surname, 
			Users.tbd_Users.Patronymic,
			Users.tbd_Users.Section_Id as SectionId

    FROM    Users.tbd_Users

    WHERE   Account = @Account
END